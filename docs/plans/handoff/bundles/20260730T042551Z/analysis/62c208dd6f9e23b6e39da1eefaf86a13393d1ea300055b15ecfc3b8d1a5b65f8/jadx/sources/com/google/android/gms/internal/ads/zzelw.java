package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzelw implements zzetr {
    private final zzgcs zza;
    private final zzfcj zzb;

    public zzelw(zzgcs zzgcsVar, zzfcj zzfcjVar, zzfcy zzfcyVar) {
        this.zza = zzgcsVar;
        this.zzb = zzfcjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 5;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzelv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzelw.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzelx zzc() {
        String str = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgR)).booleanValue() && "requester_type_2".equals(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(this.zzb.zzd))) {
            str = zzfcy.zza();
        }
        return new zzelx(str);
    }
}
