package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes.dex */
public final class zzbsr {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zza;
    private final NativeCustomFormatAd.OnCustomClickListener zzb;
    private NativeCustomFormatAd zzc;

    public zzbsr(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomFormatAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized NativeCustomFormatAd zzf(zzbgq zzbgqVar) {
        NativeCustomFormatAd nativeCustomFormatAd = this.zzc;
        if (nativeCustomFormatAd != null) {
            return nativeCustomFormatAd;
        }
        zzbss zzbssVar = new zzbss(zzbgqVar);
        this.zzc = zzbssVar;
        return zzbssVar;
    }

    public final zzbha zza() {
        zzbsq zzbsqVar = null;
        if (this.zzb == null) {
            return null;
        }
        return new zzbso(this, zzbsqVar);
    }

    public final zzbhd zzb() {
        return new zzbsp(this, null);
    }
}
