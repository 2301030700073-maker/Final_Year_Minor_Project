package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzezq implements zzgcd {
    final /* synthetic */ zzelc zza;
    final /* synthetic */ zzfhh zzb;
    final /* synthetic */ zzfgw zzc;
    final /* synthetic */ zzdfu zzd;
    final /* synthetic */ zzezr zze;

    public zzezq(zzezr zzezrVar, zzelc zzelcVar, zzfhh zzfhhVar, zzfgw zzfgwVar, zzdfu zzdfuVar) {
        this.zza = zzelcVar;
        this.zzb = zzfhhVar;
        this.zzc = zzfgwVar;
        this.zzd = zzdfuVar;
        this.zze = zzezrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzfhk zzfhkVar;
        zzfhh zzfhhVar;
        Executor executor;
        Executor executor2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfG)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Interstitial ad failed to load", th);
        }
        final com.google.android.gms.ads.internal.client.zze zza = this.zzd.zza().zza(th);
        synchronized (this.zze) {
            this.zze.zzi = null;
            this.zzd.zzb().zzdz(zza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzib)).booleanValue()) {
                executor = this.zze.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezm
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzekn zzeknVar;
                        zzeknVar = zzezq.this.zze.zzd;
                        zzeknVar.zzdz(zza);
                    }
                });
                executor2 = this.zze.zzb;
                executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezn
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfar zzfarVar;
                        zzfarVar = zzezq.this.zze.zze;
                        zzfarVar.zzdz(zza);
                    }
                });
            }
            zzfdg.zzb(zza.zza, th, "InterstitialAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzfhhVar = this.zzb) == null) {
                zzfhkVar = this.zze.zzg;
                zzfgw zzfgwVar = this.zzc;
                zzfgwVar.zza(zza);
                zzfgwVar.zzh(th);
                zzfgwVar.zzg(false);
                zzfhkVar.zzb(zzfgwVar.zzm());
            } else {
                zzfhhVar.zzc(zza);
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
        Executor executor;
        Executor executor2;
        zzekn zzeknVar;
        zzfar zzfarVar;
        zzdeq zzdeqVar = (zzdeq) obj;
        synchronized (this.zze) {
            this.zze.zzi = null;
            zzbcc zzbccVar = zzbcl.zzib;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
                zzczz zzo = zzdeqVar.zzo();
                zzeknVar = this.zze.zzd;
                zzo.zza(zzeknVar);
                zzfarVar = this.zze.zze;
                zzo.zzd(zzfarVar);
            }
            this.zza.zzb(zzdeqVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
                executor = this.zze.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzekn zzeknVar2;
                        zzeknVar2 = zzezq.this.zze.zzd;
                        zzeknVar2.zzs();
                    }
                });
                executor2 = this.zze.zzb;
                executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezp
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfar zzfarVar2;
                        zzfarVar2 = zzezq.this.zze.zze;
                        zzfarVar2.zzs();
                    }
                });
            }
            if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzfhhVar = this.zzb) == null) {
                zzfhkVar = this.zze.zzg;
                zzfgw zzfgwVar = this.zzc;
                zzfgwVar.zzb(zzdeqVar.zzq().zzb);
                zzfgwVar.zzd(zzdeqVar.zzm().zzg());
                zzfgwVar.zzg(true);
                zzfhkVar.zzb(zzfgwVar.zzm());
            } else {
                zzfhhVar.zzg(zzdeqVar.zzq().zzb);
                zzfhhVar.zze(zzdeqVar.zzm().zzg());
                zzfgw zzfgwVar2 = this.zzc;
                zzfgwVar2.zzg(true);
                zzfhhVar.zza(zzfgwVar2);
                zzfhhVar.zzh();
            }
        }
    }
}
