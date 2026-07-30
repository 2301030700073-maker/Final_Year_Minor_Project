package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeol implements zzetr {
    private final zzgcs zza;

    public zzeol(zzgcs zzgcsVar) {
        this.zza = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 55;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeok
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeom(Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg().zza()).longValue());
            }
        });
    }
}
