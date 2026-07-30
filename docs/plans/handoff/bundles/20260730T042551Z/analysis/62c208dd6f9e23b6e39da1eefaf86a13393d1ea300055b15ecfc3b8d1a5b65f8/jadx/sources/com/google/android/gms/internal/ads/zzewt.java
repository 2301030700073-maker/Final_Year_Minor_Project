package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzewt implements zzgcd {
    final /* synthetic */ zzelc zza;
    final /* synthetic */ zzfhh zzb;
    final /* synthetic */ zzfgw zzc;
    final /* synthetic */ zzewu zzd;
    final /* synthetic */ zzeww zze;

    public zzewt(zzeww zzewwVar, zzelc zzelcVar, zzfhh zzfhhVar, zzfgw zzfgwVar, zzewu zzewuVar) {
        this.zza = zzelcVar;
        this.zzb = zzfhhVar;
        this.zzc = zzfgwVar;
        this.zzd = zzewuVar;
        this.zze = zzewwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzezf zzezfVar;
        zzexm zzexmVar;
        zzcuy zzm;
        zzfhk zzfhkVar;
        zzfhh zzfhhVar;
        Executor executor;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfG)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("App open ad failed to load", th);
        }
        zzezfVar = this.zze.zze;
        zzcnw zzcnwVar = (zzcnw) zzezfVar.zzd();
        final com.google.android.gms.ads.internal.client.zze zzb = zzcnwVar == null ? zzfdk.zzb(th, null) : zzcnwVar.zzb().zza(th);
        synchronized (this.zze) {
            this.zze.zzj = null;
            if (zzcnwVar != null) {
                zzcnwVar.zzc().zzdz(zzb);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzia)).booleanValue()) {
                    executor = this.zze.zzc;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzews
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzexm zzexmVar2;
                            zzexmVar2 = zzewt.this.zze.zzd;
                            zzexmVar2.zzdz(zzb);
                        }
                    });
                }
            } else {
                zzexmVar = this.zze.zzd;
                zzexmVar.zzdz(zzb);
                zzm = this.zze.zzm(this.zzd);
                ((zzcnw) zzm.zzh()).zzb().zzc().zzh();
            }
            zzfdg.zzb(zzb.zza, th, "AppOpenAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzfhhVar = this.zzb) == null) {
                zzfhkVar = this.zze.zzh;
                zzfgw zzfgwVar = this.zzc;
                zzfgwVar.zza(zzb);
                zzfgwVar.zzh(th);
                zzfgwVar.zzg(false);
                zzfhkVar.zzb(zzfgwVar.zzm());
            } else {
                zzfhhVar.zzc(zzb);
                zzfgw zzfgwVar2 = this.zzc;
                zzfgwVar2.zzh(th);
                zzfgwVar2.zzg(false);
                zzfhhVar.zza(zzfgwVar2);
                zzfhhVar.zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfhk zzfhkVar;
        zzfhh zzfhhVar;
        zzexm zzexmVar;
        zzcqz zzcqzVar = (zzcqz) obj;
        synchronized (this.zze) {
            this.zze.zzj = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzia)).booleanValue()) {
                zzczz zzo = zzcqzVar.zzo();
                zzexmVar = this.zze.zzd;
                zzo.zzb(zzexmVar);
            }
            this.zza.zzb(zzcqzVar);
            if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzfhhVar = this.zzb) == null) {
                zzfhkVar = this.zze.zzh;
                zzfgw zzfgwVar = this.zzc;
                zzfgwVar.zzb(zzcqzVar.zzq().zzb);
                zzfgwVar.zzd(zzcqzVar.zzm().zzg());
                zzfgwVar.zzg(true);
                zzfhkVar.zzb(zzfgwVar.zzm());
            } else {
                zzfhhVar.zzg(zzcqzVar.zzq().zzb);
                zzfhhVar.zze(zzcqzVar.zzm().zzg());
                zzfgw zzfgwVar2 = this.zzc;
                zzfgwVar2.zzg(true);
                zzfhhVar.zza(zzfgwVar2);
                zzfhhVar.zzh();
            }
        }
    }
}
