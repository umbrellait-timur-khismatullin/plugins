// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package io.flutter.plugins.urllauncher;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.provider.Browser;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import io.flutter.Log;

/*  Launches WebView activity */
public class WebViewActivity extends Activity {

    /*
     * Use this to trigger a BroadcastReceiver inside WebViewActivity
     * that will request the current instance to finish.
     * */
    public static String ACTION_CLOSE = "close action";
    private Context contextPop;
    private WebView webViewPop;
    private AlertDialog builder;
    private String userAgent;
    private WebView webview;

    private final BroadcastReceiver broadcastReceiver =
            new BroadcastReceiver() {
                @Override
                public void onReceive(Context context, Intent intent) {
                    String action = intent.getAction();
                    if (ACTION_CLOSE.equals(action)) {
                        finish();
                    }
                }
            };

    private final WebViewClient webViewClient =
            new WebViewClient() {

                /*
                 * This method is deprecated in API 24. Still overridden to support
                 * earlier Android versions.
                 */
                @SuppressWarnings("deprecation")
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, String url) {
                    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) {
                        view.loadUrl(url);
                        return false;
                    }
                    return super.shouldOverrideUrlLoading(view, url);
                }

                @RequiresApi(Build.VERSION_CODES.N)
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                        view.loadUrl(request.getUrl().toString());
                    }
                    return false;
                }
            };



    private IntentFilter closeIntentFilter = new IntentFilter(ACTION_CLOSE);

    // Verifies that a url opened by `Window.open` has a secure url.
    private class FlutterWebChromeClient extends WebChromeClient {
        @Override
        public boolean onCreateWindow(
                final WebView view, boolean isDialog, boolean isUserGesture, Message resultMsg) {
            final WebViewClient webViewClient =
                    new WebViewClient() {
                        @TargetApi(Build.VERSION_CODES.LOLLIPOP)
                        @Override
                        public boolean shouldOverrideUrlLoading(
                                @NonNull WebView view, @NonNull WebResourceRequest request) {
                            webview.loadUrl(request.getUrl().toString());
                            return true;
                        }

                        /*
                         * This method is deprecated in API 24. Still overridden to support
                         * earlier Android versions.
                         */
                        @SuppressWarnings("deprecation")
                        @Override
                        public boolean shouldOverrideUrlLoading(WebView view, String url) {
                            webview.loadUrl(url);
                            return true;
                        }
                    };

            final WebView newWebView = new WebView(webview.getContext());
            newWebView.setWebViewClient(webViewClient);

            final WebView.WebViewTransport transport = (WebView.WebViewTransport) resultMsg.obj;
            transport.setWebView(newWebView);
            resultMsg.sendToTarget();

            return true;
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        webview = new WebView(this);
        setContentView(webview);
        // Get the Intent that started this activity and extract the string
        final Intent intent = getIntent();
        final String url = intent.getStringExtra(URL_EXTRA);
        final boolean enableJavaScript = intent.getBooleanExtra(ENABLE_JS_EXTRA, false);
        final boolean enableDomStorage = intent.getBooleanExtra(ENABLE_DOM_EXTRA, false);
        final Bundle headersBundle = intent.getBundleExtra(Browser.EXTRA_HEADERS);

        final Map<String, String> headersMap = extractHeaders(headersBundle);

        webview.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                // to continue loading a given URL in the current WebView.
                // needed to handle redirects.
                return false;
            }
        });

        WebSettings webSettings = webview.getSettings();
        // Set User Agent
        //userAgent = System.getProperty("http.agent");
        // the upper line sometimes causes "403: disallowed user agent error"
        userAgent = "Tomahawk 0.0.1";
        webSettings.setUserAgentString(userAgent);

        // Enable Cookies
        CookieManager.getInstance().setAcceptCookie(true);
        if(android.os.Build.VERSION.SDK_INT >= 21)
            CookieManager.getInstance().setAcceptThirdPartyCookies(webview, true);

        // WebView Tweaks
        webSettings.setJavaScriptEnabled(true);
        webSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        webSettings.setCacheMode(WebSettings.LOAD_DEFAULT);
        webSettings.setAppCacheEnabled(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        webSettings.setUseWideViewPort(true);
        webSettings.setSaveFormData(true);
        webSettings.setEnableSmoothTransition(true);
        webview.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);

        // Handle Popups
        webview.setWebChromeClient(new CustomChromeClient());
        webSettings.setJavaScriptCanOpenWindowsAutomatically(true);
        webSettings.setSupportMultipleWindows(true);
        contextPop = this.getApplicationContext();

        webview.loadUrl(url, headersMap);

//        webview.getSettings().setJavaScriptEnabled(enableJavaScript);
//        webview.getSettings().setDomStorageEnabled(enableDomStorage);
//
//        // Open new urls inside the webview itself.
//        webview.setWebViewClient(webViewClient);
//
//        // Multi windows is set with FlutterWebChromeClient by default to handle internal bug: b/159892679.
//        webview.getSettings().setSupportMultipleWindows(true);
//        webview.setWebChromeClient(new FlutterWebChromeClient());

        // Register receiver that may finish this Activity.
        registerReceiver(broadcastReceiver, closeIntentFilter);
    }

    @VisibleForTesting
    public static Map<String, String> extractHeaders(@Nullable Bundle headersBundle) {
        if (headersBundle == null) {
            return Collections.emptyMap();
        }
        final Map<String, String> headersMap = new HashMap<>();
        for (String key : headersBundle.keySet()) {
            final String value = headersBundle.getString(key);
            headersMap.put(key, value);
        }
        return headersMap;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(broadcastReceiver);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && webview.canGoBack()) {
            webview.goBack();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    private static String URL_EXTRA = "url";
    private static String ENABLE_JS_EXTRA = "enableJavaScript";
    private static String ENABLE_DOM_EXTRA = "enableDomStorage";

    /* Hides the constants used to forward data to the Activity instance. */
    public static Intent createIntent(
            Context context,
            String url,
            boolean enableJavaScript,
            boolean enableDomStorage,
            Bundle headersBundle) {
        return new Intent(context, WebViewActivity.class)
                .putExtra(URL_EXTRA, url)
                .putExtra(ENABLE_JS_EXTRA, enableJavaScript)
                .putExtra(ENABLE_DOM_EXTRA, enableDomStorage)
                .putExtra(Browser.EXTRA_HEADERS, headersBundle);
    }

    class CustomChromeClient extends WebChromeClient {

        @Override
        public boolean onCreateWindow(WebView view, boolean isDialog,
                                      boolean isUserGesture, Message resultMsg) {
            webViewPop = new WebView(contextPop);
            webViewPop.setWebViewClient(new WebViewClient() {
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, String url) {
                    // to continue loading a given URL in the current WebView.
                    // needed to handle redirects.
                    return false;
                }
            });

            // Enable Cookies
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                cookieManager.setAcceptThirdPartyCookies(webViewPop, true);
                cookieManager.setAcceptThirdPartyCookies(webview, true);
            }

            WebSettings popSettings = webViewPop.getSettings();
            // WebView tweaks for popups
            webViewPop.setVerticalScrollBarEnabled(false);
            webViewPop.setHorizontalScrollBarEnabled(false);
            popSettings.setJavaScriptEnabled(true);
            popSettings.setSaveFormData(true);
            popSettings.setEnableSmoothTransition(true);
            // Set User Agent
            popSettings.setUserAgentString(userAgent + "Your App Info/Version");
            // to support content re-layout for redirects
            popSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);

            // handle new popups
            webViewPop.setWebChromeClient(new CustomChromeClient());

            // set the WebView as the AlertDialog.Builder’s view
            builder = new AlertDialog.Builder(WebViewActivity.this, AlertDialog.THEME_DEVICE_DEFAULT_LIGHT).create();
            builder.setTitle("");
            builder.setView(webViewPop);

            builder.setButton("Close", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int id) {
                    webViewPop.destroy();
                    dialog.dismiss();
                }
            });

            builder.show();
            builder.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM);

            WebView.WebViewTransport transport = (WebView.WebViewTransport) resultMsg.obj;
            transport.setWebView(webViewPop);
            resultMsg.sendToTarget();

            return true;
        }

        @Override
        public void onCloseWindow(WebView window) {
            //Toast.makeText(contextPop,"onCloseWindow called",Toast.LENGTH_SHORT).show();
            try {
                webViewPop.destroy();
            } catch (Exception e) {
                Log.d("Webview Destroy Error: ", e.getStackTrace().toString());
            }

            try {
                builder.dismiss();
            } catch (Exception e) {
                Log.d("Builder Dismiss Error: ", e.getStackTrace().toString());
            }

        }
    }

}
