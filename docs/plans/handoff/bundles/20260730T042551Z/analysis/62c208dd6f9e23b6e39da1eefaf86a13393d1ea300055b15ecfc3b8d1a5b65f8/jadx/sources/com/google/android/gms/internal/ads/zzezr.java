package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzezr implements zzeld {
    private final Context zza;
    private final Executor zzb;
    private final zzcgx zzc;
    private final zzekn zzd;
    private final zzfar zze;
    private zzbdg zzf;
    private final zzfhk zzg;
    private final zzfch zzh;
    private InterfaceFutureC3942wq zzi;

    public zzezr(Context context, Executor executor, zzcgx zzcgxVar, zzekn zzeknVar, zzfar zzfarVar, zzfch zzfchVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcgxVar;
        this.zzd = zzeknVar;
        this.zzh = zzfchVar;
        this.zze = zzfarVar;
        this.zzg = zzcgxVar.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzeld
    public final boolean zza() {
        InterfaceFutureC3942wq interfaceFutureC3942wq = this.zzi;
        return (interfaceFutureC3942wq == null || interfaceFutureC3942wq.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeld
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzelb zzelbVar, zzelc zzelcVar) {
        zzdfu zzh;
        zzfhh zzfhhVar;
        if (str == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for interstitial ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezl
                @Override // java.lang.Runnable
                public final void run() {
                    zzezr.this.zzh();
                }
            });
            return false;
        }
        if (zza()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziN)).booleanValue() && zzmVar.zzf) {
            this.zzc.zzl().zzo(true);
        }
        com.google.android.gms.ads.internal.client.zzs zzsVar = ((zzezk) zzelbVar).zza;
        Bundle zza = zzdrg.zza(new Pair(zzdre.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdre.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis())));
        zzfch zzfchVar = this.zzh;
        zzfchVar.zzt(str);
        zzfchVar.zzs(zzsVar);
        zzfchVar.zzH(zzmVar);
        zzfchVar.zzA(zza);
        Context context = this.zza;
        zzfcj zzJ = zzfchVar.zzJ();
        zzfgw zzb = zzfgv.zzb(context, zzfhg.zzf(zzJ), 4, zzmVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzib)).booleanValue()) {
            zzdft zzg = this.zzc.zzg();
            zzcva zzcvaVar = new zzcva();
            zzcvaVar.zzf(this.zza);
            zzcvaVar.zzk(zzJ);
            zzg.zze(zzcvaVar.zzl());
            zzdbk zzdbkVar = new zzdbk();
            zzdbkVar.zzj(this.zzd, this.zzb);
            zzdbkVar.zzk(this.zzd, this.zzb);
            zzg.zzd(zzdbkVar.zzn());
            zzg.zzc(new zzeiw(this.zzf));
            zzh = zzg.zzh();
        } else {
            zzdbk zzdbkVar2 = new zzdbk();
            zzfar zzfarVar = this.zze;
            if (zzfarVar != null) {
                zzdbkVar2.zze(zzfarVar, this.zzb);
                zzdbkVar2.zzf(this.zze, this.zzb);
                zzdbkVar2.zzb(this.zze, this.zzb);
            }
            zzdft zzg2 = this.zzc.zzg();
            zzcva zzcvaVar2 = new zzcva();
            zzcvaVar2.zzf(this.zza);
            zzcvaVar2.zzk(zzJ);
            zzg2.zze(zzcvaVar2.zzl());
            zzdbkVar2.zzj(this.zzd, this.zzb);
            zzdbkVar2.zze(this.zzd, this.zzb);
            zzdbkVar2.zzf(this.zzd, this.zzb);
            zzdbkVar2.zzb(this.zzd, this.zzb);
            zzdbkVar2.zza(this.zzd, this.zzb);
            zzdbkVar2.zzl(this.zzd, this.zzb);
            zzdbkVar2.zzk(this.zzd, this.zzb);
            zzdbkVar2.zzi(this.zzd, this.zzb);
            zzdbkVar2.zzc(this.zzd, this.zzb);
            zzg2.zzd(zzdbkVar2.zzn());
            zzg2.zzc(new zzeiw(this.zzf));
            zzh = zzg2.zzh();
        }
        zzdfu zzdfuVar = zzh;
        if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
            zzfhh zzf = zzdfuVar.zzf();
            zzf.zzi(4);
            zzf.zzb(zzmVar.zzp);
            zzf.zzf(zzmVar.zzm);
            zzfhhVar = zzf;
        } else {
            zzfhhVar = null;
        }
        zzcsd zza2 = zzdfuVar.zza();
        InterfaceFutureC3942wq zzh2 = zza2.zzh(zza2.zzi());
        this.zzi = zzh2;
        zzgch.zzr(zzh2, new zzezq(this, zzelcVar, zzfhhVar, zzb, zzdfuVar), this.zzb);
        return true;
    }

    public final /* synthetic */ void zzh() {
        this.zzd.zzdz(zzfdk.zzd(6, null, null));
    }

    public final void zzi(zzbdg zzbdgVar) {
        this.zzf = zzbdgVar;
    }
}
