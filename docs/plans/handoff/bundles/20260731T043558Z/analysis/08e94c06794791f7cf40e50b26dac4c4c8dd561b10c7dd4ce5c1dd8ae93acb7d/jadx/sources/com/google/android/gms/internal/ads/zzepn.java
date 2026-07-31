package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzepn implements zzguf {
    final /* synthetic */ zzepi zza;
    final /* synthetic */ zzflm zzb;
    final /* synthetic */ zzflc zzc;
    final /* synthetic */ zzdjz zzd;
    final /* synthetic */ zzepq zze;

    zzepn(zzepq zzepqVar, zzepi zzepiVar, zzflm zzflmVar, zzflc zzflcVar, zzdjz zzdjzVar) {
        this.zza = zzepiVar;
        this.zzb = zzflmVar;
        this.zzc = zzflcVar;
        this.zzd = zzdjzVar;
        Objects.requireNonNull(zzepqVar);
        this.zze = zzepqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        zzflm zzflmVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgq)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Native ad failed to load", th);
        }
        zzdjz zzdjzVar = this.zzd;
        final com.google.android.gms.ads.internal.client.zze zzg = zzdjzVar.zza().zzg(th);
        zzdjzVar.zzb().zzdN(zzg);
        zzepq zzepqVar = this.zze;
        zzepqVar.zze().zzb().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepl
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzepn.this.zze.zzf().zze().zzdN(zzg);
            }
        });
        zzfhk.zza(zzg.zza, th, "NativeAdLoader.onFailure");
        this.zza.zza();
        if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zzb) == null) {
            zzflp zzg2 = zzepqVar.zzg();
            zzflc zzflcVar = this.zzc;
            zzflcVar.zzh(zzg);
            zzflcVar.zzj(th);
            zzflcVar.zzd(false);
            zzg2.zzb(zzflcVar.zzm());
            return;
        }
        zzflmVar.zzf(zzg);
        zzflc zzflcVar2 = this.zzc;
        zzflcVar2.zzj(th);
        zzflcVar2.zzd(false);
        zzflmVar.zza(zzflcVar2);
        zzflmVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzflm zzflmVar;
        zzepq zzepqVar = this.zze;
        zzcto zzctoVar = (zzcto) obj;
        synchronized (zzepqVar) {
            if (zzctoVar != null) {
                zzctoVar.zzt();
            }
            zzctoVar.zzq().zza(zzepqVar.zzf().zzc());
            this.zza.zzb(zzctoVar);
            zzepqVar.zze().zzb().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepm
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzepn.this.zze.zzf().zzd().zzg();
                }
            });
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zzb) == null) {
                zzflp zzg = zzepqVar.zzg();
                zzflc zzflcVar = this.zzc;
                zzflcVar.zzg(zzctoVar.zzr().zzb);
                zzflcVar.zzi(zzctoVar.zzn().zze());
                zzflcVar.zzd(true);
                zzg.zzb(zzflcVar.zzm());
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
