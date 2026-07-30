package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzevn implements zzetr {
    public zzevn(zzbza zzbzaVar, zzgcs zzgcsVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 47;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        final InterfaceFutureC3942wq zzh = zzgch.zzh(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfJ)).booleanValue()) {
            zzh = zzgch.zzh(null);
        }
        final InterfaceFutureC3942wq zzh2 = zzgch.zzh(null);
        return zzgch.zzc(zzh, zzh2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzevm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzevo((String) InterfaceFutureC3942wq.this.get(), (String) zzh2.get());
            }
        }, zzbzw.zza);
    }
}
