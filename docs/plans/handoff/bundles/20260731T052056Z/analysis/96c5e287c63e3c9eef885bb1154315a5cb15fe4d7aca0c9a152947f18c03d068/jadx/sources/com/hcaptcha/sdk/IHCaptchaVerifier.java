package com.hcaptcha.sdk;

import com.hcaptcha.sdk.tasks.OnFailureListener;
import com.hcaptcha.sdk.tasks.OnOpenListener;
import com.hcaptcha.sdk.tasks.OnSuccessListener;
import org.wikipedia.activity.BaseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface IHCaptchaVerifier extends OnOpenListener, OnSuccessListener, OnFailureListener {
    void onLoaded();

    void reset$1();

    void startVerification(BaseActivity baseActivity);
}
