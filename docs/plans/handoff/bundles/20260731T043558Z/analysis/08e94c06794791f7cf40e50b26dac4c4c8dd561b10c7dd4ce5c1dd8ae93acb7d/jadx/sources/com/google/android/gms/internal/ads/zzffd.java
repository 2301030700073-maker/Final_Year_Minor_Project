package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzffd implements zzguf {
    final /* synthetic */ zzepi zza;
    final /* synthetic */ zzflm zzb;
    final /* synthetic */ zzflc zzc;
    final /* synthetic */ zzffg zzd;
    final /* synthetic */ zzffh zze;

    zzffd(zzffh zzffhVar, zzepi zzepiVar, zzflm zzflmVar, zzflc zzflcVar, zzffg zzffgVar) {
        this.zza = zzepiVar;
        this.zzb = zzflmVar;
        this.zzc = zzflcVar;
        this.zzd = zzffgVar;
        Objects.requireNonNull(zzffhVar);
        this.zze = zzffhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        zzflm zzflmVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgq)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Rewarded ad failed to load", th);
        }
        zzffh zzffhVar = this.zze;
        zzdrn zzdrnVar = (zzdrn) zzffhVar.zzh().zzd();
        final com.google.android.gms.ads.internal.client.zze zzb = zzdrnVar == null ? zzfhp.zzb(th, null) : zzdrnVar.zza().zzg(th);
        synchronized (zzffhVar) {
            if (zzdrnVar != null) {
                zzdrnVar.zze().zzdN(zzb);
                zzffhVar.zzf().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffc
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzffd.this.zze.zzg().zzdN(zzb);
                    }
                });
            } else {
                zzffhVar.zzg().zzdN(zzb);
                zzffhVar.zze(this.zzd).zzh().zza().zzd().zzo();
            }
            zzfhk.zza(zzb.zza, th, "RewardedAdLoader.onFailure");
            this.zza.zza();
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zzb) == null) {
                zzflp zzi = zzffhVar.zzi();
                zzflc zzflcVar = this.zzc;
                zzflcVar.zzh(zzb);
                zzflcVar.zzj(th);
                zzflcVar.zzd(false);
                zzi.zzb(zzflcVar.zzm());
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
        zzffh zzffhVar = this.zze;
        zzdri zzdriVar = (zzdri) obj;
        synchronized (zzffhVar) {
            if (zzdriVar != null) {
                zzdriVar.zzt();
            }
            zzdriVar.zzq().zzd(zzffhVar.zzg());
            this.zza.zzb(zzdriVar);
            Executor zzf = zzffhVar.zzf();
            final zzfey zzg = zzffhVar.zzg();
            Objects.requireNonNull(zzg);
            zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffb
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfey.this.zzg();
                }
            });
            zzffhVar.zzg().onAdMetadataChanged();
            if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzflmVar = this.zzb) == null) {
                zzflp zzi = zzffhVar.zzi();
                zzflc zzflcVar = this.zzc;
                zzflcVar.zzg(zzdriVar.zzr().zzb);
                zzflcVar.zzi(zzdriVar.zzn().zze());
                zzflcVar.zzd(true);
                zzi.zzb(zzflcVar.zzm());
            } else {
                zzflmVar.zze(zzdriVar.zzr().zzb);
                zzflmVar.zzg(zzdriVar.zzn().zze());
                zzflc zzflcVar2 = this.zzc;
                zzflcVar2.zzd(true);
                zzflmVar.zza(zzflcVar2);
                zzflmVar.zzh();
            }
        }
    }
}
