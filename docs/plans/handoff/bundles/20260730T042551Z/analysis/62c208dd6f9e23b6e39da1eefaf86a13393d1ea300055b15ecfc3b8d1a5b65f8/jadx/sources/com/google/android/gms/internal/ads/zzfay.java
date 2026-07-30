package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzfay implements zzgcd {
    final /* synthetic */ zzelc zza;
    final /* synthetic */ zzfhh zzb;
    final /* synthetic */ zzfgw zzc;
    final /* synthetic */ zzfaz zzd;
    final /* synthetic */ zzfbb zze;

    public zzfay(zzfbb zzfbbVar, zzelc zzelcVar, zzfhh zzfhhVar, zzfgw zzfgwVar, zzfaz zzfazVar) {
        this.zza = zzelcVar;
        this.zzb = zzfhhVar;
        this.zzc = zzfgwVar;
        this.zzd = zzfazVar;
        this.zze = zzfbbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzezf zzezfVar;
        zzfar zzfarVar;
        zzdoe zzk;
        zzfhk zzfhkVar;
        zzfhh zzfhhVar;
        Executor executor;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfG)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Rewarded ad failed to load", th);
        }
        zzezfVar = this.zze.zze;
        zzdof zzdofVar = (zzdof) zzezfVar.zzd();
        final com.google.android.gms.ads.internal.client.zze zzb = zzdofVar == null ? zzfdk.zzb(th, null) : zzdofVar.zzb().zza(th);
        synchronized (this.zze) {
            if (zzdofVar != null) {
                zzdofVar.zza().zzdz(zzb);
                executor = this.zze.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfaw
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfar zzfarVar2;
                        zzfarVar2 = zzfay.this.zze.zzd;
                        zzfarVar2.zzdz(zzb);
                    }
                });
            } else {
                zzfarVar = this.zze.zzd;
                zzfarVar.zzdz(zzb);
                zzk = this.zze.zzk(this.zzd);
                zzk.zzh().zzb().zzc().zzh();
            }
            zzfdg.zzb(zzb.zza, th, "RewardedAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzfhhVar = this.zzb) == null) {
                zzfhkVar = this.zze.zzg;
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
        zzfar zzfarVar;
        Executor executor;
        final zzfar zzfarVar2;
        zzfar zzfarVar3;
        zzfhk zzfhkVar;
        zzfhh zzfhhVar;
        zzdoa zzdoaVar = (zzdoa) obj;
        synchronized (this.zze) {
            zzczz zzo = zzdoaVar.zzo();
            zzfarVar = this.zze.zzd;
            zzo.zzd(zzfarVar);
            this.zza.zzb(zzdoaVar);
            zzfbb zzfbbVar = this.zze;
            executor = zzfbbVar.zzb;
            zzfarVar2 = zzfbbVar.zzd;
            Objects.requireNonNull(zzfarVar2);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfax
                @Override // java.lang.Runnable
                public final void run() {
                    zzfar.this.zzs();
                }
            });
            zzfarVar3 = this.zze.zzd;
            zzfarVar3.onAdMetadataChanged();
            if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzfhhVar = this.zzb) == null) {
                zzfhkVar = this.zze.zzg;
                zzfgw zzfgwVar = this.zzc;
                zzfgwVar.zzb(zzdoaVar.zzq().zzb);
                zzfgwVar.zzd(zzdoaVar.zzm().zzg());
                zzfgwVar.zzg(true);
                zzfhkVar.zzb(zzfgwVar.zzm());
            } else {
                zzfhhVar.zzg(zzdoaVar.zzq().zzb);
                zzfhhVar.zze(zzdoaVar.zzm().zzg());
                zzfgw zzfgwVar2 = this.zzc;
                zzfgwVar2.zzg(true);
                zzfhhVar.zza(zzfgwVar2);
                zzfhhVar.zzh();
            }
        }
    }
}
