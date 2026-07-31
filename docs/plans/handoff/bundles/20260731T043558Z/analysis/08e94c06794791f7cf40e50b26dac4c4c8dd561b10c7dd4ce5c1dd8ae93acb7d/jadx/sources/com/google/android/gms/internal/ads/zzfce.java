package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfce implements zzguf {
    final /* synthetic */ zzflm zza;
    final /* synthetic */ zzflc zzb;
    final /* synthetic */ zzcsl zzc;
    final /* synthetic */ zzfci zzd;

    zzfce(zzfci zzfciVar, zzflm zzflmVar, zzflc zzflcVar, zzcsl zzcslVar) {
        this.zza = zzflmVar;
        this.zzb = zzflcVar;
        this.zzc = zzcslVar;
        Objects.requireNonNull(zzfciVar);
        this.zzd = zzfciVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        zzflm zzflmVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgq)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Banner ad failed to load", th);
        }
        zzfci zzfciVar = this.zzd;
        synchronized (zzfciVar) {
            zzcsl zzcslVar = this.zzc;
            com.google.android.gms.ads.internal.client.zze zzg = zzcslVar.zzc().zzg(th);
            zzfciVar.zzs(zzg);
            zzcslVar.zzb().zzdN(zzg);
            zzfhk.zza(zzg.zza, th, "BannerAdLoader.onFailure");
            if (zzfciVar.zzr()) {
                zzfciVar.zzn();
                zzfciVar.zzo().zzd(zzfciVar.zzq().zzc());
            }
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zza) == null) {
                zzflp zzp = zzfciVar.zzp();
                zzflc zzflcVar = this.zzb;
                zzflcVar.zzh(zzg);
                zzflcVar.zzj(th);
                zzflcVar.zzd(false);
                zzp.zzb(zzflcVar.zzm());
            } else {
                zzflmVar.zzf(zzg);
                zzflc zzflcVar2 = this.zzb;
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
        zzfci zzfciVar = this.zzd;
        zzcrg zzcrgVar = (zzcrg) obj;
        synchronized (zzfciVar) {
            if (zzcrgVar != null) {
                zzcrgVar.zzt();
            }
            if (zzfciVar.zzr()) {
                zzfciVar.zzc();
            }
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zza) == null) {
                zzflp zzp = zzfciVar.zzp();
                zzflc zzflcVar = this.zzb;
                zzflcVar.zzg(zzcrgVar.zzr().zzb);
                zzflcVar.zzi(zzcrgVar.zzn().zze());
                zzflcVar.zzd(true);
                zzp.zzb(zzflcVar.zzm());
            } else {
                zzflmVar.zze(zzcrgVar.zzr().zzb);
                zzflmVar.zzg(zzcrgVar.zzn().zze());
                zzflc zzflcVar2 = this.zzb;
                zzflcVar2.zzd(true);
                zzflmVar.zza(zzflcVar2);
                zzflmVar.zzh();
            }
        }
    }
}
