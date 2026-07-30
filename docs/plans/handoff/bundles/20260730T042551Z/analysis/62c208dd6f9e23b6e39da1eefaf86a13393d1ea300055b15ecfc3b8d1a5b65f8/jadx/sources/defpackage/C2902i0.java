package defpackage;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import defpackage.C3128j0;

/* renamed from: i0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2902i0 extends AdListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3128j0.Cif f13418do;

    public C2902i0(C3128j0.Cif cif) {
        this.f13418do = cif;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClicked() {
        try {
            C3210kN.m7252if("AdMobNative", "Clicked");
        } catch (Exception unused) {
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        try {
            C0766bi.m4854do().m4856if("RCB::AdMobNative native ad failed: " + loadAdError.getMessage());
        } catch (Exception unused) {
        }
        ((C2843h0) this.f13418do).m6775do(null);
    }
}
