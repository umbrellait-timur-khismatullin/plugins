// Mocks generated by Mockito 5.1.0 from annotations
// in webview_flutter_android/test/webview_android_widget_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:typed_data' as _i5;
import 'dart:ui' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:webview_flutter_android/src/android_webview.dart' as _i2;
import 'package:webview_flutter_android/webview_android_widget.dart' as _i7;
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeWebSettings_0 extends _i1.Fake implements _i2.WebSettings {}

class _FakeJavascriptChannelRegistry_1 extends _i1.Fake
    implements _i3.JavascriptChannelRegistry {}

class _FakeWebView_2 extends _i1.Fake implements _i2.WebView {}

/// A class which mocks [FlutterAssetManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterAssetManager extends _i1.Mock
    implements _i2.FlutterAssetManager {
  MockFlutterAssetManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<String?>> list(String? path) =>
      (super.noSuchMethod(Invocation.method(#list, [path]),
              returnValue: Future<List<String?>>.value(<String?>[]))
          as _i4.Future<List<String?>>);
  @override
  _i4.Future<String> getAssetFilePathByName(String? name) =>
      (super.noSuchMethod(Invocation.method(#getAssetFilePathByName, [name]),
          returnValue: Future<String>.value('')) as _i4.Future<String>);
}

/// A class which mocks [WebSettings].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebSettings extends _i1.Mock implements _i2.WebSettings {
  MockWebSettings() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> setDomStorageEnabled(bool? flag) =>
      (super.noSuchMethod(Invocation.method(#setDomStorageEnabled, [flag]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setJavaScriptCanOpenWindowsAutomatically(bool? flag) =>
      (super.noSuchMethod(
          Invocation.method(#setJavaScriptCanOpenWindowsAutomatically, [flag]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setSupportMultipleWindows(bool? support) => (super
      .noSuchMethod(Invocation.method(#setSupportMultipleWindows, [support]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setJavaScriptEnabled(bool? flag) =>
      (super.noSuchMethod(Invocation.method(#setJavaScriptEnabled, [flag]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setUserAgentString(String? userAgentString) => (super
      .noSuchMethod(Invocation.method(#setUserAgentString, [userAgentString]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setMediaPlaybackRequiresUserGesture(bool? require) =>
      (super.noSuchMethod(
          Invocation.method(#setMediaPlaybackRequiresUserGesture, [require]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setSupportZoom(bool? support) =>
      (super.noSuchMethod(Invocation.method(#setSupportZoom, [support]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setLoadWithOverviewMode(bool? overview) => (super
      .noSuchMethod(Invocation.method(#setLoadWithOverviewMode, [overview]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setUseWideViewPort(bool? use) =>
      (super.noSuchMethod(Invocation.method(#setUseWideViewPort, [use]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setDisplayZoomControls(bool? enabled) =>
      (super.noSuchMethod(Invocation.method(#setDisplayZoomControls, [enabled]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setBuiltInZoomControls(bool? enabled) =>
      (super.noSuchMethod(Invocation.method(#setBuiltInZoomControls, [enabled]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setAllowFileAccess(bool? enabled) =>
      (super.noSuchMethod(Invocation.method(#setAllowFileAccess, [enabled]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
}

/// A class which mocks [WebStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebStorage extends _i1.Mock implements _i2.WebStorage {
  MockWebStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> deleteAllData() =>
      (super.noSuchMethod(Invocation.method(#deleteAllData, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
}

/// A class which mocks [WebView].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebView extends _i1.Mock implements _i2.WebView {
  MockWebView() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get useHybridComposition =>
      (super.noSuchMethod(Invocation.getter(#useHybridComposition),
          returnValue: false) as bool);
  @override
  _i2.WebSettings get settings =>
      (super.noSuchMethod(Invocation.getter(#settings),
          returnValue: _FakeWebSettings_0()) as _i2.WebSettings);
  @override
  _i4.Future<void> loadData(
          {String? data, String? mimeType, String? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#loadData, [],
              {#data: data, #mimeType: mimeType, #encoding: encoding}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> loadDataWithBaseUrl(
          {String? baseUrl,
          String? data,
          String? mimeType,
          String? encoding,
          String? historyUrl}) =>
      (super.noSuchMethod(
          Invocation.method(#loadDataWithBaseUrl, [], {
            #baseUrl: baseUrl,
            #data: data,
            #mimeType: mimeType,
            #encoding: encoding,
            #historyUrl: historyUrl
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> loadUrl(String? url, Map<String, String>? headers) =>
      (super.noSuchMethod(Invocation.method(#loadUrl, [url, headers]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> postUrl(String? url, _i5.Uint8List? data) =>
      (super.noSuchMethod(Invocation.method(#postUrl, [url, data]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<String?> getUrl() =>
      (super.noSuchMethod(Invocation.method(#getUrl, []),
          returnValue: Future<String?>.value()) as _i4.Future<String?>);
  @override
  _i4.Future<bool> canGoBack() =>
      (super.noSuchMethod(Invocation.method(#canGoBack, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<bool> canGoForward() =>
      (super.noSuchMethod(Invocation.method(#canGoForward, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<void> goBack() =>
      (super.noSuchMethod(Invocation.method(#goBack, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> goForward() =>
      (super.noSuchMethod(Invocation.method(#goForward, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> reload() =>
      (super.noSuchMethod(Invocation.method(#reload, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> clearCache(bool? includeDiskFiles) =>
      (super.noSuchMethod(Invocation.method(#clearCache, [includeDiskFiles]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<String?> evaluateJavascript(String? javascriptString) => (super
      .noSuchMethod(Invocation.method(#evaluateJavascript, [javascriptString]),
          returnValue: Future<String?>.value()) as _i4.Future<String?>);
  @override
  _i4.Future<String?> getTitle() =>
      (super.noSuchMethod(Invocation.method(#getTitle, []),
          returnValue: Future<String?>.value()) as _i4.Future<String?>);
  @override
  _i4.Future<void> scrollTo(int? x, int? y) =>
      (super.noSuchMethod(Invocation.method(#scrollTo, [x, y]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> scrollBy(int? x, int? y) =>
      (super.noSuchMethod(Invocation.method(#scrollBy, [x, y]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<int> getScrollX() =>
      (super.noSuchMethod(Invocation.method(#getScrollX, []),
          returnValue: Future<int>.value(0)) as _i4.Future<int>);
  @override
  _i4.Future<int> getScrollY() =>
      (super.noSuchMethod(Invocation.method(#getScrollY, []),
          returnValue: Future<int>.value(0)) as _i4.Future<int>);
  @override
  _i4.Future<void> setWebViewClient(_i2.WebViewClient? webViewClient) =>
      (super.noSuchMethod(Invocation.method(#setWebViewClient, [webViewClient]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> addJavaScriptChannel(
          _i2.JavaScriptChannel? javaScriptChannel) =>
      (super.noSuchMethod(
          Invocation.method(#addJavaScriptChannel, [javaScriptChannel]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> removeJavaScriptChannel(
          _i2.JavaScriptChannel? javaScriptChannel) =>
      (super.noSuchMethod(
          Invocation.method(#removeJavaScriptChannel, [javaScriptChannel]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setDownloadListener(_i2.DownloadListener? listener) =>
      (super.noSuchMethod(Invocation.method(#setDownloadListener, [listener]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setWebChromeClient(_i2.WebChromeClient? client) =>
      (super.noSuchMethod(Invocation.method(#setWebChromeClient, [client]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setBackgroundColor(_i6.Color? color) =>
      (super.noSuchMethod(Invocation.method(#setBackgroundColor, [color]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> release() =>
      (super.noSuchMethod(Invocation.method(#release, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
}

/// A class which mocks [WebViewAndroidDownloadListener].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebViewAndroidDownloadListener extends _i1.Mock
    implements _i7.WebViewAndroidDownloadListener {
  MockWebViewAndroidDownloadListener() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> Function(String, Map<String, String>?) get loadUrl =>
      (super.noSuchMethod(Invocation.getter(#loadUrl),
          returnValue: (String url, Map<String, String>? headers) =>
              Future<void>.value()) as _i4.Future<void> Function(
          String, Map<String, String>?));
  @override
  void onDownloadStart(String? url, String? userAgent,
          String? contentDisposition, String? mimetype, int? contentLength) =>
      super.noSuchMethod(
          Invocation.method(#onDownloadStart,
              [url, userAgent, contentDisposition, mimetype, contentLength]),
          returnValueForMissingStub: null);
}

/// A class which mocks [WebViewAndroidJavaScriptChannel].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebViewAndroidJavaScriptChannel extends _i1.Mock
    implements _i7.WebViewAndroidJavaScriptChannel {
  MockWebViewAndroidJavaScriptChannel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.JavascriptChannelRegistry get javascriptChannelRegistry =>
      (super.noSuchMethod(Invocation.getter(#javascriptChannelRegistry),
              returnValue: _FakeJavascriptChannelRegistry_1())
          as _i3.JavascriptChannelRegistry);
  @override
  String get channelName =>
      (super.noSuchMethod(Invocation.getter(#channelName), returnValue: '')
          as String);
  @override
  void postMessage(String? message) =>
      super.noSuchMethod(Invocation.method(#postMessage, [message]),
          returnValueForMissingStub: null);
}

/// A class which mocks [WebViewAndroidWebChromeClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebViewAndroidWebChromeClient extends _i1.Mock
    implements _i7.WebViewAndroidWebChromeClient {
  MockWebViewAndroidWebChromeClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void onProgressChanged(_i2.WebView? webView, int? progress) => super
      .noSuchMethod(Invocation.method(#onProgressChanged, [webView, progress]),
          returnValueForMissingStub: null);
}

/// A class which mocks [WebViewAndroidWebViewClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebViewAndroidWebViewClient extends _i1.Mock
    implements _i7.WebViewAndroidWebViewClient {
  MockWebViewAndroidWebViewClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void Function(String) get onPageStartedCallback =>
      (super.noSuchMethod(Invocation.getter(#onPageStartedCallback),
          returnValue: (String url) {}) as void Function(String));
  @override
  void Function(String) get onPageFinishedCallback =>
      (super.noSuchMethod(Invocation.getter(#onPageFinishedCallback),
          returnValue: (String url) {}) as void Function(String));
  @override
  void Function(_i3.WebResourceError) get onWebResourceErrorCallback =>
      (super.noSuchMethod(Invocation.getter(#onWebResourceErrorCallback),
              returnValue: (_i3.WebResourceError error) {})
          as void Function(_i3.WebResourceError));
  @override
  set onWebResourceErrorCallback(
          void Function(_i3.WebResourceError)? _onWebResourceErrorCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onWebResourceErrorCallback, _onWebResourceErrorCallback),
          returnValueForMissingStub: null);
  @override
  bool get handlesNavigation =>
      (super.noSuchMethod(Invocation.getter(#handlesNavigation),
          returnValue: false) as bool);
  @override
  bool get shouldOverrideUrlLoading =>
      (super.noSuchMethod(Invocation.getter(#shouldOverrideUrlLoading),
          returnValue: false) as bool);
  @override
  void onPageStarted(_i2.WebView? webView, String? url) =>
      super.noSuchMethod(Invocation.method(#onPageStarted, [webView, url]),
          returnValueForMissingStub: null);
  @override
  void onPageFinished(_i2.WebView? webView, String? url) =>
      super.noSuchMethod(Invocation.method(#onPageFinished, [webView, url]),
          returnValueForMissingStub: null);
  @override
  void onReceivedError(_i2.WebView? webView, int? errorCode,
          String? description, String? failingUrl) =>
      super.noSuchMethod(
          Invocation.method(
              #onReceivedError, [webView, errorCode, description, failingUrl]),
          returnValueForMissingStub: null);
  @override
  void onReceivedRequestError(_i2.WebView? webView,
          _i2.WebResourceRequest? request, _i2.WebResourceError? error) =>
      super.noSuchMethod(
          Invocation.method(#onReceivedRequestError, [webView, request, error]),
          returnValueForMissingStub: null);
  @override
  void urlLoading(_i2.WebView? webView, String? url) =>
      super.noSuchMethod(Invocation.method(#urlLoading, [webView, url]),
          returnValueForMissingStub: null);
  @override
  void requestLoading(_i2.WebView? webView, _i2.WebResourceRequest? request) =>
      super.noSuchMethod(Invocation.method(#requestLoading, [webView, request]),
          returnValueForMissingStub: null);
}

/// A class which mocks [JavascriptChannelRegistry].
///
/// See the documentation for Mockito's code generation for more information.
class MockJavascriptChannelRegistry extends _i1.Mock
    implements _i3.JavascriptChannelRegistry {
  MockJavascriptChannelRegistry() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Map<String, _i3.JavascriptChannel> get channels =>
      (super.noSuchMethod(Invocation.getter(#channels),
              returnValue: <String, _i3.JavascriptChannel>{})
          as Map<String, _i3.JavascriptChannel>);
  @override
  void onJavascriptChannelMessage(String? channel, String? message) =>
      super.noSuchMethod(
          Invocation.method(#onJavascriptChannelMessage, [channel, message]),
          returnValueForMissingStub: null);
  @override
  void updateJavascriptChannelsFromSet(Set<_i3.JavascriptChannel>? channels) =>
      super.noSuchMethod(
          Invocation.method(#updateJavascriptChannelsFromSet, [channels]),
          returnValueForMissingStub: null);
}

/// A class which mocks [WebViewPlatformCallbacksHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebViewPlatformCallbacksHandler extends _i1.Mock
    implements _i3.WebViewPlatformCallbacksHandler {
  MockWebViewPlatformCallbacksHandler() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.FutureOr<bool> onNavigationRequest({String? url, bool? isForMainFrame}) =>
      (super.noSuchMethod(
          Invocation.method(#onNavigationRequest, [],
              {#url: url, #isForMainFrame: isForMainFrame}),
          returnValue: Future<bool>.value(false)) as _i4.FutureOr<bool>);
  @override
  void onPageStarted(String? url) =>
      super.noSuchMethod(Invocation.method(#onPageStarted, [url]),
          returnValueForMissingStub: null);
  @override
  void onPageFinished(String? url) =>
      super.noSuchMethod(Invocation.method(#onPageFinished, [url]),
          returnValueForMissingStub: null);
  @override
  void onProgress(int? progress) =>
      super.noSuchMethod(Invocation.method(#onProgress, [progress]),
          returnValueForMissingStub: null);
  @override
  void onWebResourceError(_i3.WebResourceError? error) =>
      super.noSuchMethod(Invocation.method(#onWebResourceError, [error]),
          returnValueForMissingStub: null);
}

/// A class which mocks [WebViewProxy].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebViewProxy extends _i1.Mock implements _i7.WebViewProxy {
  MockWebViewProxy() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.WebView createWebView({bool? useHybridComposition}) =>
      (super.noSuchMethod(
          Invocation.method(#createWebView, [],
              {#useHybridComposition: useHybridComposition}),
          returnValue: _FakeWebView_2()) as _i2.WebView);
  @override
  _i4.Future<void> setWebContentsDebuggingEnabled(bool? enabled) =>
      (super.noSuchMethod(
          Invocation.method(#setWebContentsDebuggingEnabled, [enabled]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
}
