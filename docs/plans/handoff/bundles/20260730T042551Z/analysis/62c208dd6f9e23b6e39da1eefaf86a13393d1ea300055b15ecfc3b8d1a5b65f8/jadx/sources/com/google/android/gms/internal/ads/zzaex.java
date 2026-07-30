package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
abstract class zzaex {
    protected final zzadt zza;

    public zzaex(zzadt zzadtVar) {
        this.zza = zzadtVar;
    }

    public abstract boolean zza(zzdy zzdyVar);

    public abstract boolean zzb(zzdy zzdyVar, long j);

    public final boolean zzf(zzdy zzdyVar, long j) {
        return zza(zzdyVar) && zzb(zzdyVar, j);
    }
}
