package defpackage;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.zzf;
import com.google.android.gms.ads.formats.zzg;
import com.google.android.gms.ads.formats.zzi;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.internal.ads.zzbgr;

/* loaded from: classes.dex */
public final class CR extends AdListener implements zzi, zzg, zzf {

    /* renamed from: do, reason: not valid java name */
    public final AbstractAdViewAdapter f375do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MediationNativeListener f376do;

    public CR(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
        this.f375do = abstractAdViewAdapter;
        this.f376do = mediationNativeListener;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClicked() {
        this.f376do.onAdClicked(this.f375do);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
        this.f376do.onAdClosed(this.f375do);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f376do.onAdFailedToLoad(this.f375do, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdImpression() {
        this.f376do.onAdImpression(this.f375do);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdOpened() {
        this.f376do.onAdOpened(this.f375do);
    }

    @Override // com.google.android.gms.ads.formats.zzi
    public final void zza(UnifiedNativeAd unifiedNativeAd) {
        this.f376do.onAdLoaded(this.f375do, new MO(unifiedNativeAd));
    }

    @Override // com.google.android.gms.ads.formats.zzf
    public final void zzb(zzbgr zzbgrVar, String str) {
        this.f376do.zze(this.f375do, zzbgrVar, str);
    }

    @Override // com.google.android.gms.ads.formats.zzg
    public final void zzc(zzbgr zzbgrVar) {
        this.f376do.zzd(this.f375do, zzbgrVar);
    }
}
