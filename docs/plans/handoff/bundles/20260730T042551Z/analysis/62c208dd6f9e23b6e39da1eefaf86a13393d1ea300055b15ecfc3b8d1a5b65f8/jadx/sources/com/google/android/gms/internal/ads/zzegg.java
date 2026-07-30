package com.google.android.gms.internal.ads;

import android.os.Bundle;
import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzegg extends zzegf {
    private final zzcgx zza;
    private final zzcva zzb;
    private final zzdbm zzc;
    private final zzegq zzd;
    private final zzedb zze;

    public zzegg(zzcgx zzcgxVar, zzcva zzcvaVar, zzdbm zzdbmVar, zzegq zzegqVar, zzedb zzedbVar) {
        this.zza = zzcgxVar;
        this.zzb = zzcvaVar;
        this.zzc = zzdbmVar;
        this.zzd = zzegqVar;
        this.zze = zzedbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegf
    public final InterfaceFutureC3942wq zzc(zzfcj zzfcjVar, Bundle bundle, zzfbo zzfboVar, zzfca zzfcaVar) {
        zzcva zzcvaVar = this.zzb;
        zzcvaVar.zzk(zzfcjVar);
        zzcvaVar.zzg(bundle);
        zzcvaVar.zzh(new zzcut(zzfcaVar, zzfboVar, this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdH)).booleanValue()) {
            this.zzb.zze(this.zze);
        }
        zzcgx zzcgxVar = this.zza;
        zzcva zzcvaVar2 = this.zzb;
        zzcnz zzd = zzcgxVar.zzd();
        zzd.zzd(zzcvaVar2.zzl());
        zzd.zzc(this.zzc);
        zzcsd zzb = zzd.zze().zzb();
        return zzb.zzh(zzb.zzi());
    }
}
