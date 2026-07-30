package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes.dex */
final class zzbso extends zzbgz {
    final /* synthetic */ zzbsr zza;

    public /* synthetic */ zzbso(zzbsr zzbsrVar, zzbsq zzbsqVar) {
        this.zza = zzbsrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zze(zzbgq zzbgqVar, String str) {
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener;
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener2;
        NativeCustomFormatAd zzf;
        zzbsr zzbsrVar = this.zza;
        onCustomClickListener = zzbsrVar.zzb;
        if (onCustomClickListener == null) {
            return;
        }
        onCustomClickListener2 = zzbsrVar.zzb;
        zzf = zzbsrVar.zzf(zzbgqVar);
        onCustomClickListener2.onCustomClick(zzf, str);
    }
}
