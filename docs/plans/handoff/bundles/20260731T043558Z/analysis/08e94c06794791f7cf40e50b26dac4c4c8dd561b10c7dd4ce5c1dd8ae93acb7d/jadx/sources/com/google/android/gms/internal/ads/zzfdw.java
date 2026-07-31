package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfdw implements zzguf {
    final /* synthetic */ zzepi zza;
    final /* synthetic */ zzflm zzb;
    final /* synthetic */ zzflc zzc;
    final /* synthetic */ zzdjd zzd;
    final /* synthetic */ zzfdy zze;

    zzfdw(zzfdy zzfdyVar, zzepi zzepiVar, zzflm zzflmVar, zzflc zzflcVar, zzdjd zzdjdVar) {
        this.zza = zzepiVar;
        this.zzb = zzflmVar;
        this.zzc = zzflcVar;
        this.zzd = zzdjdVar;
        Objects.requireNonNull(zzfdyVar);
        this.zze = zzfdyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        zzflm zzflmVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgq)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Interstitial ad failed to load", th);
        }
        zzdjd zzdjdVar = this.zzd;
        final com.google.android.gms.ads.internal.client.zze zzg = zzdjdVar.zzb().zzg(th);
        zzfdy zzfdyVar = this.zze;
        synchronized (zzfdyVar) {
            zzfdyVar.zzi(null);
            zzdjdVar.zza().zzdN(zzg);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjb)).booleanValue()) {
                zzfdyVar.zze().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdt
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfdw.this.zze.zzf().zzdN(zzg);
                    }
                });
                zzfdyVar.zze().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdu
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfdw.this.zze.zzg().zzdN(zzg);
                    }
                });
            }
            zzfhk.zza(zzg.zza, th, "InterstitialAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zzb) == null) {
                zzflp zzh = zzfdyVar.zzh();
                zzflc zzflcVar = this.zzc;
                zzflcVar.zzh(zzg);
                zzflcVar.zzj(th);
                zzflcVar.zzd(false);
                zzh.zzb(zzflcVar.zzm());
            } else {
                zzflmVar.zzf(zzg);
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
        zzfdy zzfdyVar = this.zze;
        zzdhw zzdhwVar = (zzdhw) obj;
        synchronized (zzfdyVar) {
            if (zzdhwVar != null) {
                zzdhwVar.zzt();
            }
            zzfdyVar.zzi(null);
            zzbel zzbelVar = zzbeu.zzjb;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
                zzdce zzq = zzdhwVar.zzq();
                zzq.zza(zzfdyVar.zzf());
                zzq.zzd(zzfdyVar.zzg());
            }
            this.zza.zzb(zzdhwVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
                zzfdyVar.zze().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdv
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfdw.this.zze.zzf().zzg();
                    }
                });
                zzfdyVar.zze().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfds
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfdw.this.zze.zzg().zzg();
                    }
                });
            }
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zzb) == null) {
                zzflp zzh = zzfdyVar.zzh();
                zzflc zzflcVar = this.zzc;
                zzflcVar.zzg(zzdhwVar.zzr().zzb);
                zzflcVar.zzi(zzdhwVar.zzn().zze());
                zzflcVar.zzd(true);
                zzh.zzb(zzflcVar.zzm());
            } else {
                zzflmVar.zze(zzdhwVar.zzr().zzb);
                zzflmVar.zzg(zzdhwVar.zzn().zze());
                zzflc zzflcVar2 = this.zzc;
                zzflcVar2.zzd(true);
                zzflmVar.zza(zzflcVar2);
                zzflmVar.zzh();
            }
        }
    }
}
