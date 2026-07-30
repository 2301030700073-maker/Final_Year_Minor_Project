package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzexz implements zzgcd {
    final /* synthetic */ zzfhh zza;
    final /* synthetic */ zzfgw zzb;
    final /* synthetic */ zzcpq zzc;
    final /* synthetic */ zzeya zzd;

    public zzexz(zzeya zzeyaVar, zzfhh zzfhhVar, zzfgw zzfgwVar, zzcpq zzcpqVar) {
        this.zza = zzfhhVar;
        this.zzb = zzfgwVar;
        this.zzc = zzcpqVar;
        this.zzd = zzeyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        boolean z;
        zzfhk zzfhkVar;
        zzfhh zzfhhVar;
        zzcyl zzcylVar;
        zzdar zzdarVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfG)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Banner ad failed to load", th);
        }
        synchronized (this.zzd) {
            com.google.android.gms.ads.internal.client.zze zza = this.zzc.zzd().zza(th);
            this.zzd.zzn = zza;
            this.zzc.zzf().zzdz(zza);
            zzfdg.zzb(zza.zza, th, "BannerAdLoader.onFailure");
            zzeya zzeyaVar = this.zzd;
            z = zzeyaVar.zzm;
            if (z) {
                zzeyaVar.zzt();
                zzeya zzeyaVar2 = this.zzd;
                zzcylVar = zzeyaVar2.zzh;
                zzdarVar = zzeyaVar2.zzj;
                zzcylVar.zzd(zzdarVar.zzc());
            }
            if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzfhhVar = this.zza) == null) {
                zzfhkVar = this.zzd.zzi;
                zzfgw zzfgwVar = this.zzb;
                zzfgwVar.zza(zza);
                zzfgwVar.zzh(th);
                zzfgwVar.zzg(false);
                zzfhkVar.zzb(zzfgwVar.zzm());
            } else {
                zzfhhVar.zzc(zza);
                zzfgw zzfgwVar2 = this.zzb;
                zzfgwVar2.zzh(th);
                zzfgwVar2.zzg(false);
                zzfhhVar.zza(zzfgwVar2);
                zzfhhVar.zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean z;
        zzfhk zzfhkVar;
        zzfhh zzfhhVar;
        zzcom zzcomVar = (zzcom) obj;
        synchronized (this.zzd) {
            zzeya zzeyaVar = this.zzd;
            z = zzeyaVar.zzm;
            if (z) {
                zzeyaVar.zzq();
            }
            if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzfhhVar = this.zza) == null) {
                zzfhkVar = this.zzd.zzi;
                zzfgw zzfgwVar = this.zzb;
                zzfgwVar.zzb(zzcomVar.zzq().zzb);
                zzfgwVar.zzd(zzcomVar.zzm().zzg());
                zzfgwVar.zzg(true);
                zzfhkVar.zzb(zzfgwVar.zzm());
            } else {
                zzfhhVar.zzg(zzcomVar.zzq().zzb);
                zzfhhVar.zze(zzcomVar.zzm().zzg());
                zzfgw zzfgwVar2 = this.zzb;
                zzfgwVar2.zzg(true);
                zzfhhVar.zza(zzfgwVar2);
                zzfhhVar.zzh();
            }
        }
    }
}
