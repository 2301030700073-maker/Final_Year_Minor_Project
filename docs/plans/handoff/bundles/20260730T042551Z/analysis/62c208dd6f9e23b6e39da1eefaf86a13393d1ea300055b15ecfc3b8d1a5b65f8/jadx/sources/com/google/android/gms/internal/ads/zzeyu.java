package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzeyu implements zzezf {
    private zzcuz zza;

    @Override // com.google.android.gms.internal.ads.zzezf
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcuz zzd() {
        return this.zza;
    }

    public final synchronized InterfaceFutureC3942wq zzb(zzezg zzezgVar, zzeze zzezeVar, zzcuz zzcuzVar) {
        zzcsd zzb;
        if (zzcuzVar != null) {
            this.zza = zzcuzVar;
        } else {
            this.zza = (zzcuz) zzezeVar.zza(zzezgVar.zzb).zzh();
        }
        zzb = this.zza.zzb();
        return zzb.zzh(zzb.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzezf
    public final /* bridge */ /* synthetic */ InterfaceFutureC3942wq zzc(zzezg zzezgVar, zzeze zzezeVar, Object obj) {
        return zzb(zzezgVar, zzezeVar, null);
    }
}
