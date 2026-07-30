package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzciw implements zzdsz {
    private final Long zza;
    private final String zzb;
    private final zzcih zzc;
    private final zzciy zzd;

    public /* synthetic */ zzciw(zzcih zzcihVar, zzciy zzciyVar, Long l, String str, zzcjm zzcjmVar) {
        this.zzc = zzcihVar;
        this.zzd = zzciyVar;
        this.zza = l;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdsz
    public final zzdtj zza() {
        Context context;
        zzdtc zzc;
        zzciy zzciyVar = this.zzd;
        long longValue = this.zza.longValue();
        context = zzciyVar.zza;
        zzc = zzdtd.zzc(zzciyVar.zzb);
        return zzdtk.zza(longValue, context, zzc, this.zzc, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzdsz
    public final zzdtn zzb() {
        Context context;
        zzdtc zzc;
        zzciy zzciyVar = this.zzd;
        long longValue = this.zza.longValue();
        context = zzciyVar.zza;
        zzc = zzdtd.zzc(zzciyVar.zzb);
        return zzdto.zza(longValue, context, zzc, this.zzc, this.zzb);
    }
}
