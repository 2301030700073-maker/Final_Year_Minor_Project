package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdgw implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;
    private final zzhfj zzd;
    private final zzhfj zze;
    private final zzhfj zzf;

    public zzdgw(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4, zzhfj zzhfjVar5, zzhfj zzhfjVar6) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
        this.zzd = zzhfjVar4;
        this.zze = zzhfjVar5;
        this.zzf = zzhfjVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcgx zzcgxVar = (zzcgx) this.zza.zzb();
        zzcva zza = ((zzcvl) this.zzb).zza();
        zzdbm zza2 = ((zzdcg) this.zzc).zza();
        zzdgl zza3 = ((zzdgn) this.zzd).zza();
        zzcyl zzb = ((zzcol) this.zze).zzb();
        zzegq zzegqVar = (zzegq) this.zzf.zzb();
        zzcpp zze = zzcgxVar.zze();
        zze.zzi(zza.zzl());
        zze.zzf(zza2);
        zze.zzd(zza3);
        zze.zze(new zzeiw(null));
        zze.zzg(new zzcqr(zzb, null));
        zze.zzc(new zzcoj(null));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdK)).booleanValue()) {
            zze.zzj(zzegz.zzb(zzegqVar));
        }
        zzcrc zzc = zze.zzh().zzc();
        zzhez.zzb(zzc);
        return zzc;
    }
}
