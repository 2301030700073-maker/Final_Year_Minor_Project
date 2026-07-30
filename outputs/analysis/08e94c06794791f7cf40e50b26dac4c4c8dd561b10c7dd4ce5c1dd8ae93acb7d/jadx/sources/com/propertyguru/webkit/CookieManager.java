package com.propertyguru.webkit;

import android.webkit.ValueCallback;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.module.annotations.ReactModule;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CookieManager.kt */
@ReactModule(hasConstants = false, name = CookieManager.COOKIE_MANAGER_NAME, needsEagerInit = false)
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fH\u0007J \u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\u0012"}, d2 = {"Lcom/propertyguru/webkit/CookieManager;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "getCookies", "", "uri", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "setCookies", "cookie", "Lcom/facebook/react/bridge/ReadableArray;", "clearCookies", "Companion", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class CookieManager extends ReactContextBaseJavaModule {
    public static final String COOKIE_MANAGER_NAME = "CookieManager";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CookieManager(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return COOKIE_MANAGER_NAME;
    }

    @ReactMethod
    public final void getCookies(String uri, Promise promise) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(promise, "promise");
        android.webkit.CookieManager cookieManager = android.webkit.CookieManager.getInstance();
        cookieManager.flush();
        promise.resolve(cookieManager.getCookie(uri));
    }

    @ReactMethod
    public final void setCookies(final String uri, final ReadableArray cookie, Promise promise) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(cookie, "cookie");
        Intrinsics.checkNotNullParameter(promise, "promise");
        final android.webkit.CookieManager cookieManager = android.webkit.CookieManager.getInstance();
        final int size = cookie.size();
        final WritableArray createArray = Arguments.createArray();
        final CountDownLatch countDownLatch = new CountDownLatch(size);
        UiThreadUtil.runOnUiThread(new Runnable() { // from class: com.propertyguru.webkit.CookieManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CookieManager.setCookies$lambda$1(size, cookieManager, uri, cookie, createArray, countDownLatch);
            }
        });
        countDownLatch.await();
        cookieManager.flush();
        promise.resolve(createArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCookies$lambda$1(int i, android.webkit.CookieManager cookieManager, String str, ReadableArray readableArray, final WritableArray writableArray, final CountDownLatch countDownLatch) {
        for (int i2 = 0; i2 < i; i2++) {
            cookieManager.setCookie(str, readableArray.getString(i2), new ValueCallback() { // from class: com.propertyguru.webkit.CookieManager$$ExternalSyntheticLambda3
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    CookieManager.setCookies$lambda$1$lambda$0(WritableArray.this, countDownLatch, (Boolean) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCookies$lambda$1$lambda$0(WritableArray writableArray, CountDownLatch countDownLatch, Boolean bool) {
        Intrinsics.checkNotNull(bool);
        writableArray.pushBoolean(bool.booleanValue());
        countDownLatch.countDown();
    }

    @ReactMethod
    public final void clearCookies(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        UiThreadUtil.runOnUiThread(new Runnable() { // from class: com.propertyguru.webkit.CookieManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CookieManager.clearCookies$lambda$3(Promise.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearCookies$lambda$3(final Promise promise) {
        final android.webkit.CookieManager cookieManager = android.webkit.CookieManager.getInstance();
        cookieManager.removeAllCookies(new ValueCallback() { // from class: com.propertyguru.webkit.CookieManager$$ExternalSyntheticLambda2
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                CookieManager.clearCookies$lambda$3$lambda$2(cookieManager, promise, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearCookies$lambda$3$lambda$2(android.webkit.CookieManager cookieManager, Promise promise, Boolean bool) {
        cookieManager.flush();
        promise.resolve(bool);
    }
}
