package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzerk implements zzetr {
    private final zzgcs zza;
    private final zzduv zzb;

    public zzerk(zzgcs zzgcsVar, zzduv zzduvVar) {
        this.zza = zzgcsVar;
        this.zzb = zzduvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 23;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerk.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzerl zzc() {
        zzduv zzduvVar = this.zzb;
        String zzc = zzduvVar.zzc();
        boolean zzr = zzduvVar.zzr();
        boolean zzl = com.google.android.gms.ads.internal.zzv.zzt().zzl();
        zzduv zzduvVar2 = this.zzb;
        return new zzerl(zzc, zzr, zzl, zzduvVar2.zzp(), zzduvVar2.zzs());
    }
}
