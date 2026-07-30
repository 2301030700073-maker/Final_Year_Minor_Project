package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzcqr {
    private final zzcyl zza;
    private final zzdar zzb;

    public zzcqr(zzcyl zzcylVar, zzdar zzdarVar) {
        this.zza = zzcylVar;
        this.zzb = zzdarVar;
    }

    public final zzcyl zza() {
        return this.zza;
    }

    public final zzdar zzb() {
        return this.zzb;
    }

    public final zzddk zzc() {
        zzdar zzdarVar = this.zzb;
        return zzdarVar != null ? new zzddk(zzdarVar, zzbzw.zzg) : new zzddk(new zzcqq(this), zzbzw.zzg);
    }
}
