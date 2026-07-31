package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfdo implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;
    private final zzifq zzc;

    private zzfdo(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
        this.zzc = zzifqVar3;
    }

    public static zzfdo zzc(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3) {
        return new zzfdo(zzifqVar, zzifqVar2, zzifqVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzfdm zzb() {
        zzfdm zzfdcVar;
        Context context = (Context) this.zza.zzb();
        zzfhy zzfhyVar = (zzfhy) this.zzb.zzb();
        zzfiq zzfiqVar = (zzfiq) this.zzc.zzb();
        zzcbe zzi = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgQ)).booleanValue() ? com.google.android.gms.ads.internal.zzt.zzh().zzo().zzi() : com.google.android.gms.ads.internal.zzt.zzh().zzo().zzj();
        boolean z = false;
        if (zzi != null && zzi.zzi()) {
            z = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhg)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgP)).booleanValue() || z) {
                zzfip zza = zzfiqVar.zza(zzfig.AppOpen, context, zzfhyVar, new zzfcp(new zzfco()));
                zzfdd zzfddVar = new zzfdd(new zzfdc());
                zzfic zzficVar = zza.zza;
                zzgus zzgusVar = zzcbv.zza;
                zzfdcVar = new zzfct(zzfddVar, new zzfcz(zzficVar, zzgusVar), zza.zzb, zzficVar.zze().zzf, zzgusVar);
                return zzfdcVar;
            }
        }
        zzfdcVar = new zzfdc();
        return zzfdcVar;
    }
}
