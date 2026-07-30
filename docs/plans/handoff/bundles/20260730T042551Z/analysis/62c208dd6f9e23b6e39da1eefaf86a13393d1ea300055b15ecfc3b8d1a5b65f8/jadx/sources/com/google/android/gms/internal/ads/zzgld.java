package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public abstract class zzgld {
    private final zzgvo zza;
    private final Class zzb;

    public /* synthetic */ zzgld(zzgvo zzgvoVar, Class cls, zzglc zzglcVar) {
        this.zza = zzgvoVar;
        this.zzb = cls;
    }

    public static zzgld zzb(zzglb zzglbVar, zzgvo zzgvoVar, Class cls) {
        return new zzgla(zzgvoVar, cls, zzglbVar);
    }

    public abstract zzgdx zza(zzgnm zzgnmVar, zzgeo zzgeoVar);

    public final zzgvo zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
