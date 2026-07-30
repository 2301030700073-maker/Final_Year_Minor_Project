package defpackage;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.mediation.MediationBannerListener;

/* renamed from: dQ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2634dQ extends AdListener implements AppEventListener, zza {

    /* renamed from: do, reason: not valid java name */
    public final AbstractAdViewAdapter f12481do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MediationBannerListener f12482do;

    public C2634dQ(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
        this.f12481do = abstractAdViewAdapter;
        this.f12482do = mediationBannerListener;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClicked() {
        this.f12482do.onAdClicked(this.f12481do);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
        this.f12482do.onAdClosed(this.f12481do);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f12482do.onAdFailedToLoad(this.f12481do, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.f12482do.onAdLoaded(this.f12481do);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdOpened() {
        this.f12482do.onAdOpened(this.f12481do);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(String str, String str2) {
        this.f12482do.zzb(this.f12481do, str, str2);
    }
}
