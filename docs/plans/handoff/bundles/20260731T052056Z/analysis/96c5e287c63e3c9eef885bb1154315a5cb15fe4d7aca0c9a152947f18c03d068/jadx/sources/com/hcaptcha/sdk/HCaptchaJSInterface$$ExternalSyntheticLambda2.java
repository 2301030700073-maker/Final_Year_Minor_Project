package com.hcaptcha.sdk;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HCaptchaJSInterface$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ IHCaptchaVerifier f$0;

    public /* synthetic */ HCaptchaJSInterface$$ExternalSyntheticLambda2(IHCaptchaVerifier iHCaptchaVerifier, int i) {
        this.$r8$classId = i;
        this.f$0 = iHCaptchaVerifier;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        IHCaptchaVerifier iHCaptchaVerifier = this.f$0;
        switch (i) {
            case 0:
                iHCaptchaVerifier.onOpen();
                break;
            default:
                iHCaptchaVerifier.onLoaded();
                break;
        }
    }
}
