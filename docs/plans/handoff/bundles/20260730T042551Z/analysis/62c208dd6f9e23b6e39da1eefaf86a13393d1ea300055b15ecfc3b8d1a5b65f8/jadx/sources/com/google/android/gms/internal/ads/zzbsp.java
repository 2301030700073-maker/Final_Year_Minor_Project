package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes.dex */
final class zzbsp extends zzbhc {
    final /* synthetic */ zzbsr zza;

    public /* synthetic */ zzbsp(zzbsr zzbsrVar, zzbsq zzbsqVar) {
        this.zza = zzbsrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zze(zzbgq zzbgqVar) {
        NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener;
        NativeCustomFormatAd zzf;
        zzbsr zzbsrVar = this.zza;
        onCustomFormatAdLoadedListener = zzbsrVar.zza;
        zzf = zzbsrVar.zzf(zzbgqVar);
        onCustomFormatAdLoadedListener.onCustomFormatAdLoaded(zzf);
    }
}
