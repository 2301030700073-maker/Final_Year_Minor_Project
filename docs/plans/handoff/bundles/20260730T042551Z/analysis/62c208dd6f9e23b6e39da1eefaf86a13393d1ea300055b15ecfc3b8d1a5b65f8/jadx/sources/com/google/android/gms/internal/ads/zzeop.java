package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeop implements zzetr {
    private final zzgcs zza;
    private final zzdpr zzb;
    private final String zzc;
    private final zzfcj zzd;

    public zzeop(zzgcs zzgcsVar, zzdpr zzdprVar, zzfcj zzfcjVar, String str) {
        this.zza = zzgcsVar;
        this.zzb = zzdprVar;
        this.zzd = zzfcjVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 17;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeoo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeop.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzeoq zzc() {
        zzdpr zzdprVar = this.zzb;
        return new zzeoq(zzdprVar.zzb(this.zzd.zzf, this.zzc), zzdprVar.zza());
    }
}
