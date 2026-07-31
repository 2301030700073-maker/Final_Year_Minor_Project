package com.hcaptcha.sdk;

import android.os.Handler;
import android.util.Log;
import android.webkit.JavascriptInterface;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptchaJSInterface implements Serializable {
    public final transient IHCaptchaVerifier captchaVerifier;
    public final String config;
    public final transient Handler handler;

    public HCaptchaJSInterface(Handler handler, HCaptchaConfig hCaptchaConfig, IHCaptchaVerifier iHCaptchaVerifier) {
        String str;
        this.handler = handler;
        this.captchaVerifier = iHCaptchaVerifier;
        try {
            str = new ObjectMapper(0).writeValueAsString(hCaptchaConfig);
        } catch (JsonProcessingException unused) {
            Log.w("JSInterface", "Cannot prepare config for passing to WebView. A fallback config will be used");
            str = null;
        }
        this.config = str;
    }

    @JavascriptInterface
    public String getConfig() {
        return this.config;
    }

    @JavascriptInterface
    public void onError(int i) {
        this.handler.post(new Processor$$ExternalSyntheticLambda2(14, this, HCaptchaError.fromId(i)));
    }

    @JavascriptInterface
    public void onLoaded() {
        this.handler.post(new HCaptchaJSInterface$$ExternalSyntheticLambda2(this.captchaVerifier, 1));
    }

    @JavascriptInterface
    public void onOpen() {
        this.handler.post(new HCaptchaJSInterface$$ExternalSyntheticLambda2(this.captchaVerifier, 0));
    }

    @JavascriptInterface
    public void onPass(String str) {
        this.handler.post(new Processor$$ExternalSyntheticLambda2(13, this, str));
    }
}
