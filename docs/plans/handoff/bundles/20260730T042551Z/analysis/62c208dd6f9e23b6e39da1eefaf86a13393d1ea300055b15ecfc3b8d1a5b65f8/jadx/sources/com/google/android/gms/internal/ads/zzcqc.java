package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzcqc implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;

    public zzcqc(zzhfj zzhfjVar, zzhfj zzhfjVar2) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzcqb zzb() {
        return new zzcqb(((zzcpj) this.zza).zza(), (Executor) this.zzb.zzb());
    }
}
