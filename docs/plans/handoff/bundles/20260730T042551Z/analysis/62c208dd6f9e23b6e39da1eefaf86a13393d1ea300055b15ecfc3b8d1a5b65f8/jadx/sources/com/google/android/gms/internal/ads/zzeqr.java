package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeqr implements zzetr {
    private final zzgcs zza;

    public zzeqr(zzgcs zzgcsVar) {
        this.zza = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 20;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeqq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeqs(com.google.android.gms.ads.internal.zzv.zzt().zzb(), com.google.android.gms.ads.internal.zzv.zzt().zzm());
            }
        });
    }
}
