package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzelk implements zzeld {
    private final zzfch zza;
    private final zzcgx zzb;
    private final Context zzc;
    private final zzela zzd;
    private final zzfhk zze;
    private zzcro zzf;

    public zzelk(zzcgx zzcgxVar, Context context, zzela zzelaVar, zzfch zzfchVar) {
        this.zzb = zzcgxVar;
        this.zzc = context;
        this.zzd = zzelaVar;
        this.zza = zzfchVar;
        this.zze = zzcgxVar.zzz();
        zzfchVar.zzv(zzelaVar.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzeld
    public final boolean zza() {
        zzcro zzcroVar = this.zzf;
        return zzcroVar != null && zzcroVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzeld
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzelb zzelbVar, zzelc zzelcVar) {
        zzfhh zzfhhVar;
        com.google.android.gms.ads.internal.zzv.zzq();
        if (com.google.android.gms.ads.internal.util.zzs.zzI(this.zzc) && zzmVar.zzs == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to load the ad because app ID is missing.");
            this.zzb.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelf
                @Override // java.lang.Runnable
                public final void run() {
                    zzelk.this.zzf();
                }
            });
            return false;
        }
        if (str == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for NativeAdLoader.");
            this.zzb.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelg
                @Override // java.lang.Runnable
                public final void run() {
                    zzelk.this.zzg();
                }
            });
            return false;
        }
        zzfdg.zza(this.zzc, zzmVar.zzf);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziN)).booleanValue() && zzmVar.zzf) {
            this.zzb.zzl().zzo(true);
        }
        int i = ((zzele) zzelbVar).zza;
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
        String zza = zzdre.PUBLIC_API_CALL.zza();
        Long valueOf = Long.valueOf(currentTimeMillis);
        Bundle zza2 = zzdrg.zza(new Pair(zza, valueOf), new Pair(zzdre.DYNAMITE_ENTER.zza(), valueOf));
        zzfch zzfchVar = this.zza;
        zzfchVar.zzH(zzmVar);
        zzfchVar.zzA(zza2);
        zzfchVar.zzC(i);
        Context context = this.zzc;
        zzfcj zzJ = zzfchVar.zzJ();
        zzfgw zzb = zzfgv.zzb(context, zzfhg.zzf(zzJ), 8, zzmVar);
        com.google.android.gms.ads.internal.client.zzcm zzcmVar = zzJ.zzn;
        if (zzcmVar != null) {
            this.zzd.zzd().zzm(zzcmVar);
        }
        zzdgp zzh = this.zzb.zzh();
        zzcva zzcvaVar = new zzcva();
        zzcvaVar.zzf(this.zzc);
        zzcvaVar.zzk(zzJ);
        zzh.zzf(zzcvaVar.zzl());
        zzdbk zzdbkVar = new zzdbk();
        zzdbkVar.zzk(this.zzd.zzd(), this.zzb.zzC());
        zzh.zze(zzdbkVar.zzn());
        zzh.zzd(this.zzd.zzc());
        zzh.zzc(new zzcoj(null));
        zzdgq zzg = zzh.zzg();
        if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
            zzfhh zzf = zzg.zzf();
            zzf.zzi(8);
            zzf.zzb(zzmVar.zzp);
            zzf.zzf(zzmVar.zzm);
            zzfhhVar = zzf;
        } else {
            zzfhhVar = null;
        }
        this.zzb.zzy().zzc(1);
        zzcgx zzcgxVar = this.zzb;
        zzgcs zzc = zzffh.zzc();
        ScheduledExecutorService zzD = zzcgxVar.zzD();
        zzcsd zza3 = zzg.zza();
        zzcro zzcroVar = new zzcro(zzc, zzD, zza3.zzh(zza3.zzi()));
        this.zzf = zzcroVar;
        zzcroVar.zze(new zzelj(this, zzelcVar, zzfhhVar, zzb, zzg));
        return true;
    }

    public final /* synthetic */ void zzf() {
        this.zzd.zza().zzdz(zzfdk.zzd(4, null, null));
    }

    public final /* synthetic */ void zzg() {
        this.zzd.zza().zzdz(zzfdk.zzd(6, null, null));
    }
}
