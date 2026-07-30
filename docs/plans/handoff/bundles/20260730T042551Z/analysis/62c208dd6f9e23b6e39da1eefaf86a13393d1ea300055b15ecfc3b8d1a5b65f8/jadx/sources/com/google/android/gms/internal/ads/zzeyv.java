package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzeyv implements zzezf {
    private final zzezf zza;
    private zzcuz zzb;

    public zzeyv(zzezf zzezfVar) {
        this.zza = zzezfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezf
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcuz zzd() {
        return this.zzb;
    }

    public final synchronized InterfaceFutureC3942wq zzb(zzezg zzezgVar, zzeze zzezeVar, zzcuz zzcuzVar) {
        zzbvk zzbvkVar;
        this.zzb = zzcuzVar;
        if (zzcuzVar == null || (zzbvkVar = zzezgVar.zza) == null) {
            return ((zzeyu) this.zza).zzb(zzezgVar, zzezeVar, zzcuzVar);
        }
        zzcsd zzb = zzcuzVar.zzb();
        return zzb.zzh(zzb.zzj(zzgch.zzh(zzbvkVar)));
    }

    @Override // com.google.android.gms.internal.ads.zzezf
    public final /* bridge */ /* synthetic */ InterfaceFutureC3942wq zzc(zzezg zzezgVar, zzeze zzezeVar, Object obj) {
        return zzb(zzezgVar, zzezeVar, null);
    }
}
