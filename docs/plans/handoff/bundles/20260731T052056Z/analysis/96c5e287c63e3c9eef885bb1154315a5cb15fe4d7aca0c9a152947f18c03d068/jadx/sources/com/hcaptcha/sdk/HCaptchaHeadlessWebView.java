package com.hcaptcha.sdk;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import coil3.ImageLoader$Builder;
import com.hcaptcha.sdk.HCaptcha;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptchaHeadlessWebView implements IHCaptchaVerifier {
    public final HCaptcha.AnonymousClass1 listener;
    public boolean shouldExecuteOnLoad;
    public boolean shouldResetOnLoad;
    public final ImageLoader$Builder webViewHelper;
    public boolean webViewLoaded;

    public HCaptchaHeadlessWebView(BaseActivity baseActivity, HCaptchaConfig hCaptchaConfig, HCaptchaInternalConfig hCaptchaInternalConfig, HCaptcha.AnonymousClass1 anonymousClass1) {
        if (baseActivity == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("activity is marked non-null but is null");
            throw null;
        }
        if (hCaptchaInternalConfig == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("internalConfig is marked non-null but is null");
            throw null;
        }
        this.listener = anonymousClass1;
        HCaptchaWebView hCaptchaWebView = new HCaptchaWebView(baseActivity);
        hCaptchaWebView.setId(R.id.webView);
        hCaptchaWebView.setVisibility(8);
        if (hCaptchaWebView.getParent() == null) {
            ((ViewGroup) baseActivity.getWindow().getDecorView().getRootView()).addView(hCaptchaWebView);
        }
        this.webViewHelper = new ImageLoader$Builder(new Handler(Looper.getMainLooper()), baseActivity, hCaptchaConfig, hCaptchaInternalConfig, this, hCaptchaWebView);
    }

    @Override // com.hcaptcha.sdk.tasks.OnFailureListener
    public final void onFailure(HCaptchaException hCaptchaException) {
        boolean lambda$$default$retryPredicate$41a513e9$1;
        if (hCaptchaException == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("exception is marked non-null but is null");
            return;
        }
        ImageLoader$Builder imageLoader$Builder = this.webViewHelper;
        HCaptchaConfig hCaptchaConfig = (HCaptchaConfig) imageLoader$Builder.defaults;
        ((HCaptchaConfig$$ExternalSyntheticLambda0) hCaptchaConfig.getRetryPredicate()).getClass();
        lambda$$default$retryPredicate$41a513e9$1 = HCaptchaConfig.lambda$$default$retryPredicate$41a513e9$1(hCaptchaConfig, hCaptchaException);
        if (lambda$$default$retryPredicate$41a513e9$1) {
            imageLoader$Builder.resetAndExecute();
        } else {
            this.listener.onFailure(hCaptchaException);
        }
    }

    @Override // com.hcaptcha.sdk.IHCaptchaVerifier
    public final void onLoaded() {
        this.webViewLoaded = true;
        if (this.shouldResetOnLoad) {
            this.shouldResetOnLoad = false;
            reset$1();
        } else if (this.shouldExecuteOnLoad) {
            this.shouldExecuteOnLoad = false;
            this.webViewHelper.resetAndExecute();
        }
    }

    @Override // com.hcaptcha.sdk.tasks.OnOpenListener
    public final void onOpen() {
        this.listener.onOpen();
    }

    @Override // com.hcaptcha.sdk.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        this.listener.onSuccess((String) obj);
    }

    @Override // com.hcaptcha.sdk.IHCaptchaVerifier
    public final void reset$1() {
        if (!this.webViewLoaded) {
            this.shouldResetOnLoad = true;
            return;
        }
        ImageLoader$Builder imageLoader$Builder = this.webViewHelper;
        imageLoader$Builder.reset();
        HCaptchaWebView hCaptchaWebView = (HCaptchaWebView) imageLoader$Builder.extras;
        if (hCaptchaWebView.getParent() != null) {
            ((ViewGroup) hCaptchaWebView.getParent()).removeView(hCaptchaWebView);
        }
    }

    @Override // com.hcaptcha.sdk.IHCaptchaVerifier
    public final void startVerification(BaseActivity baseActivity) {
        if (baseActivity == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("activity is marked non-null but is null");
        } else if (this.webViewLoaded) {
            this.webViewHelper.resetAndExecute();
        } else {
            this.shouldExecuteOnLoad = true;
        }
    }
}
