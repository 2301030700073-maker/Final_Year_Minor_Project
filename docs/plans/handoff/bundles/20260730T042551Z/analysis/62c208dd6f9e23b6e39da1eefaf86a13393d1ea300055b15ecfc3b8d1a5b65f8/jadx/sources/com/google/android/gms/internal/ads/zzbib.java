package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;

/* loaded from: classes.dex */
final class zzbib implements Runnable {
    final /* synthetic */ AdManagerAdView zza;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzby zzb;
    final /* synthetic */ zzbic zzc;

    public zzbib(zzbic zzbicVar, AdManagerAdView adManagerAdView, com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        this.zza = adManagerAdView;
        this.zzb = zzbyVar;
        this.zzc = zzbicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener;
        if (!this.zza.zzb(this.zzb)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not bind.");
            return;
        }
        zzbic zzbicVar = this.zzc;
        AdManagerAdView adManagerAdView = this.zza;
        onAdManagerAdViewLoadedListener = zzbicVar.zza;
        onAdManagerAdViewLoadedListener.onAdManagerAdViewLoaded(adManagerAdView);
    }
}
