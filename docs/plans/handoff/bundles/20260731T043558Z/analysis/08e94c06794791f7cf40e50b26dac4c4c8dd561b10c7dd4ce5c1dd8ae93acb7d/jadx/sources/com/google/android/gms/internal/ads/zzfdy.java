package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfdy implements zzepj {
    private final Context zza;
    private final Executor zzb;
    private final zzcjn zzc;
    private final zzeot zzd;
    private final zzfey zze;
    private zzbfp zzf;
    private final zzflp zzg;
    private final zzfgm zzh;
    private ListenableFuture zzi;

    public zzfdy(Context context, Executor executor, zzcjn zzcjnVar, zzeot zzeotVar, zzfey zzfeyVar, zzfgm zzfgmVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcjnVar;
        this.zzd = zzeotVar;
        this.zzh = zzfgmVar;
        this.zze = zzfeyVar;
        this.zzg = zzcjnVar.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzepj
    public final boolean zza(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzeph zzephVar, zzepi zzepiVar) {
        zzdjd zzh;
        zzflm zzflmVar;
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad unit ID should not be null for interstitial ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdx
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfdy.this.zzd();
                }
            });
            return false;
        }
        if (zzb()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjT)).booleanValue() && zzmVar.zzf) {
            this.zzc.zzw().zzc(true);
        }
        com.google.android.gms.ads.internal.client.zzr zzrVar = ((zzfdr) zzephVar).zza;
        Bundle zza = zzdus.zza(new Pair(zzduq.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzduq.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis())));
        zzfgm zzfgmVar = this.zzh;
        zzfgmVar.zzg(str);
        zzfgmVar.zzc(zzrVar);
        zzfgmVar.zza(zzmVar);
        zzfgmVar.zzv(zza);
        Context context = this.zza;
        zzfgn zzz = zzfgmVar.zzz();
        zzflc zzo = zzflc.zzo(context, zzfll.zzg(zzz), 4, zzmVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjb)).booleanValue()) {
            zzdjc zzm = this.zzc.zzm();
            zzcxw zzcxwVar = new zzcxw();
            zzcxwVar.zza(context);
            zzcxwVar.zzb(zzz);
            zzm.zze(zzcxwVar.zze());
            zzden zzdenVar = new zzden();
            zzeot zzeotVar = this.zzd;
            Executor executor = this.zzb;
            zzdenVar.zzm(zzeotVar, executor);
            zzdenVar.zze(zzeotVar, executor);
            zzm.zzf(zzdenVar.zzn());
            zzm.zzd(new zzena(this.zzf));
            zzh = zzm.zzh();
        } else {
            zzden zzdenVar2 = new zzden();
            zzfey zzfeyVar = this.zze;
            if (zzfeyVar != null) {
                Executor executor2 = this.zzb;
                zzdenVar2.zza(zzfeyVar, executor2);
                zzdenVar2.zzb(zzfeyVar, executor2);
                zzdenVar2.zzc(zzfeyVar, executor2);
            }
            zzdjc zzm2 = this.zzc.zzm();
            zzcxw zzcxwVar2 = new zzcxw();
            zzcxwVar2.zza(context);
            zzcxwVar2.zzb(zzz);
            zzm2.zze(zzcxwVar2.zze());
            zzeot zzeotVar2 = this.zzd;
            Executor executor3 = this.zzb;
            zzdenVar2.zzm(zzeotVar2, executor3);
            zzdenVar2.zza(zzeotVar2, executor3);
            zzdenVar2.zzb(zzeotVar2, executor3);
            zzdenVar2.zzc(zzeotVar2, executor3);
            zzdenVar2.zzf(zzeotVar2, executor3);
            zzdenVar2.zzg(zzeotVar2, executor3);
            zzdenVar2.zze(zzeotVar2, executor3);
            zzdenVar2.zzk(zzeotVar2, executor3);
            zzdenVar2.zzd(zzeotVar2, executor3);
            zzm2.zzf(zzdenVar2.zzn());
            zzm2.zzd(new zzena(this.zzf));
            zzh = zzm2.zzh();
        }
        zzdjd zzdjdVar = zzh;
        if (((Boolean) zzbgn.zzc.zze()).booleanValue()) {
            zzflm zzc = zzdjdVar.zzc();
            zzc.zzi(4);
            zzc.zzc(zzmVar.zzp);
            zzc.zzd(zzmVar.zzm);
            zzflmVar = zzc;
        } else {
            zzflmVar = null;
        }
        zzcus zzb = zzdjdVar.zzb();
        ListenableFuture zzc2 = zzb.zzc(zzb.zzb());
        this.zzi = zzc2;
        zzgui.zzr(zzc2, new zzfdw(this, zzepiVar, zzflmVar, zzo, zzdjdVar), this.zzb);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzepj
    public final boolean zzb() {
        ListenableFuture listenableFuture = this.zzi;
        return (listenableFuture == null || listenableFuture.isDone()) ? false : true;
    }

    public final void zzc(zzbfp zzbfpVar) {
        this.zzf = zzbfpVar;
    }

    final /* synthetic */ void zzd() {
        this.zzd.zzdN(zzfhp.zzd(6, null, null));
    }

    final /* synthetic */ Executor zze() {
        return this.zzb;
    }

    final /* synthetic */ zzeot zzf() {
        return this.zzd;
    }

    final /* synthetic */ zzfey zzg() {
        return this.zze;
    }

    final /* synthetic */ zzflp zzh() {
        return this.zzg;
    }

    final /* synthetic */ void zzi(ListenableFuture listenableFuture) {
        this.zzi = null;
    }
}
