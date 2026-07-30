package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzemd implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;

    public zzemd(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzemb((InterfaceFutureC3942wq) this.zza.zzb(), zzffh.zzc(), (ScheduledExecutorService) this.zzb.zzb());
    }
}
