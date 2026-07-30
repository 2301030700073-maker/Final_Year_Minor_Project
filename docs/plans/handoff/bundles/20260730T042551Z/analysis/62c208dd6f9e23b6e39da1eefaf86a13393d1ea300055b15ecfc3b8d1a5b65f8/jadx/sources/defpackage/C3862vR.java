package defpackage;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

/* renamed from: vR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3862vR extends FullScreenContentCallback {

    /* renamed from: do, reason: not valid java name */
    public final AbstractAdViewAdapter f16087do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MediationInterstitialListener f16088do;

    public C3862vR(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f16087do = abstractAdViewAdapter;
        this.f16088do = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdDismissedFullScreenContent() {
        this.f16088do.onAdClosed(this.f16087do);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdShowedFullScreenContent() {
        this.f16088do.onAdOpened(this.f16087do);
    }
}
