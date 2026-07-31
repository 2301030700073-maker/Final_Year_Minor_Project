package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdkf implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;
    private final zzifq zzc;
    private final zzifq zzd;
    private final zzifq zze;
    private final zzifq zzf;

    private zzdkf(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4, zzifq zzifqVar5, zzifq zzifqVar6) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
        this.zzc = zzifqVar3;
        this.zzd = zzifqVar4;
        this.zze = zzifqVar5;
        this.zzf = zzifqVar6;
    }

    public static zzdkf zza(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4, zzifq zzifqVar5, zzifq zzifqVar6) {
        return new zzdkf(zzifqVar, zzifqVar2, zzifqVar3, zzifqVar4, zzifqVar5, zzifqVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcjn zzcjnVar = (zzcjn) this.zza.zzb();
        zzcxw zza = ((zzcyg) this.zzb).zza();
        zzdeo zza2 = ((zzdfj) this.zzc).zza();
        zzdju zza3 = ((zzdjw) this.zzd).zza();
        zzdbp zzb = ((zzcrf) this.zze).zzb();
        zzekv zzekvVar = (zzekv) this.zzf.zzb();
        zzcsk zzi = zzcjnVar.zzi();
        zzi.zzl(zza.zze());
        zzi.zzm(zza2);
        zzi.zzd(zza3);
        zzi.zzk(new zzena(null));
        zzi.zzg(new zzctg(zzb, null));
        zzi.zze(new zzcrd(null));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzeh)).booleanValue()) {
            zzi.zzf(zzele.zza(zzekvVar));
        }
        zzctr zzd = zzi.zzh().zzd();
        zzifp.zzb(zzd);
        return zzd;
    }
}
