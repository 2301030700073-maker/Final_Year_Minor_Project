package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfba implements zzguf {
    final /* synthetic */ zzepi zza;
    final /* synthetic */ zzflm zzb;
    final /* synthetic */ zzflc zzc;
    final /* synthetic */ zzfbb zzd;
    final /* synthetic */ zzfbe zze;

    zzfba(zzfbe zzfbeVar, zzepi zzepiVar, zzflm zzflmVar, zzflc zzflcVar, zzfbb zzfbbVar) {
        this.zza = zzepiVar;
        this.zzb = zzflmVar;
        this.zzc = zzflcVar;
        this.zzd = zzfbbVar;
        Objects.requireNonNull(zzfbeVar);
        this.zze = zzfbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        zzflm zzflmVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgq)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("App open ad failed to load", th);
        }
        zzfbe zzfbeVar = this.zze;
        zzcqq zzcqqVar = (zzcqq) zzfbeVar.zzj().zzd();
        final com.google.android.gms.ads.internal.client.zze zzb = zzcqqVar == null ? zzfhp.zzb(th, null) : zzcqqVar.zza().zzg(th);
        synchronized (zzfbeVar) {
            zzfbeVar.zzl(null);
            if (zzcqqVar != null) {
                zzcqqVar.zze().zzdN(zzb);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzja)).booleanValue()) {
                    zzfbeVar.zzh().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfaz
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzfba.this.zze.zzi().zzdN(zzb);
                        }
                    });
                }
            } else {
                zzfbeVar.zzi().zzdN(zzb);
                ((zzcqq) zzfbeVar.zzg(this.zzd).zzh()).zza().zzd().zzo();
            }
            zzfhk.zza(zzb.zza, th, "AppOpenAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zzb) == null) {
                zzflp zzk = zzfbeVar.zzk();
                zzflc zzflcVar = this.zzc;
                zzflcVar.zzh(zzb);
                zzflcVar.zzj(th);
                zzflcVar.zzd(false);
                zzk.zzb(zzflcVar.zzm());
            } else {
                zzflmVar.zzf(zzb);
                zzflc zzflcVar2 = this.zzc;
                zzflcVar2.zzj(th);
                zzflcVar2.zzd(false);
                zzflmVar.zza(zzflcVar2);
                zzflmVar.zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzflm zzflmVar;
        zzfbe zzfbeVar = this.zze;
        zzcto zzctoVar = (zzcto) obj;
        synchronized (zzfbeVar) {
            if (zzctoVar != null) {
                zzctoVar.zzt();
            }
            zzfbeVar.zzl(null);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzja)).booleanValue()) {
                zzctoVar.zzq().zzc(zzfbeVar.zzi());
            }
            this.zza.zzb(zzctoVar);
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zzb) == null) {
                zzflp zzk = zzfbeVar.zzk();
                zzflc zzflcVar = this.zzc;
                zzflcVar.zzg(zzctoVar.zzr().zzb);
                zzflcVar.zzi(zzctoVar.zzn().zze());
                zzflcVar.zzd(true);
                zzk.zzb(zzflcVar.zzm());
            } else {
                zzflmVar.zze(zzctoVar.zzr().zzb);
                zzflmVar.zzg(zzctoVar.zzn().zze());
                zzflc zzflcVar2 = this.zzc;
                zzflcVar2.zzd(true);
                zzflmVar.zza(zzflcVar2);
                zzflmVar.zzh();
            }
        }
    }
}
