package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public abstract class zzgmp {
    private final zzgvo zza;
    private final Class zzb;

    public /* synthetic */ zzgmp(zzgvo zzgvoVar, Class cls, zzgmo zzgmoVar) {
        this.zza = zzgvoVar;
        this.zzb = cls;
    }

    public static zzgmp zzb(zzgmn zzgmnVar, zzgvo zzgvoVar, Class cls) {
        return new zzgmm(zzgvoVar, cls, zzgmnVar);
    }

    public abstract zzgek zza(zzgnm zzgnmVar);

    public final zzgvo zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
