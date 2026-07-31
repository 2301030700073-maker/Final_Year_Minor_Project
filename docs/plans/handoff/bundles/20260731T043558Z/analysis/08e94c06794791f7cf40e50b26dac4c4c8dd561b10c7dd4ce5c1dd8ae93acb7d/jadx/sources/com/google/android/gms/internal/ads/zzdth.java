package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbdz;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdth implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;
    private final zzifq zzc;
    private final zzifq zzd;
    private final zzifq zze;

    private zzdth(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4, zzifq zzifqVar5) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
        this.zzc = zzifqVar3;
        this.zzd = zzifqVar4;
        this.zze = zzifqVar5;
    }

    public static zzdth zza(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4, zzifq zzifqVar5) {
        return new zzdth(zzifqVar, zzifqVar2, zzifqVar3, zzifqVar4, zzifqVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzcjv) this.zza).zza();
        final String zzb = ((zzeaq) this.zzb).zzb();
        VersionInfoParcel zza2 = ((zzckk) this.zzc).zza();
        final zzbdz.zza.EnumC0014zza enumC0014zza = (zzbdz.zza.EnumC0014zza) this.zzd.zzb();
        final String str = (String) this.zze.zzb();
        zzbdt zzbdtVar = new zzbdt(new zzbdy(zza));
        zzbdz.zzar.zza zzs = zzbdz.zzar.zzs();
        zzs.zzc(zza2.buddyApkVersion);
        zzs.zzg(zza2.clientJarVersion);
        zzs.zzk(true != zza2.isClientJar ? 2 : 0);
        final zzbdz.zzar zzbu = zzs.zzbu();
        zzbdtVar.zzb(new zzbds() { // from class: com.google.android.gms.internal.ads.zzdtg
            @Override // com.google.android.gms.internal.ads.zzbds
            public final /* synthetic */ void zza(zzbdz.zzt.zza zzaVar) {
                zzbdz.zza.zzb zzcc = zzaVar.zzY().zzcc();
                zzcc.zzc(zzbdz.zza.EnumC0014zza.this);
                zzaVar.zzaa(zzcc);
                zzbdz.zzm.zza zzcc2 = zzaVar.zzG().zzcc();
                zzcc2.zzd(zzb);
                zzcc2.zzs(zzbu);
                zzaVar.zzI(zzcc2);
                zzaVar.zzh(str);
            }
        });
        return zzbdtVar;
    }
}
