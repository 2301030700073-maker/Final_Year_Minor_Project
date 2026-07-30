package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class zzeww implements zzeld {
    protected final zzcgx zza;
    private final Context zzb;
    private final Executor zzc;
    private final zzexm zzd;
    private final zzezf zze;
    private final VersionInfoParcel zzf;
    private final ViewGroup zzg;
    private final zzfhk zzh;
    private final zzfch zzi;
    private InterfaceFutureC3942wq zzj;

    public zzeww(Context context, Executor executor, zzcgx zzcgxVar, zzezf zzezfVar, zzexm zzexmVar, zzfch zzfchVar, VersionInfoParcel versionInfoParcel) {
        this.zzb = context;
        this.zzc = executor;
        this.zza = zzcgxVar;
        this.zze = zzezfVar;
        this.zzd = zzexmVar;
        this.zzi = zzfchVar;
        this.zzf = versionInfoParcel;
        this.zzg = new FrameLayout(context);
        this.zzh = zzcgxVar.zzz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized zzcuy zzm(zzezd zzezdVar) {
        zzewu zzewuVar = (zzewu) zzezdVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzia)).booleanValue()) {
            zzcoj zzcojVar = new zzcoj(this.zzg);
            zzcva zzcvaVar = new zzcva();
            zzcvaVar.zzf(this.zzb);
            zzcvaVar.zzk(zzewuVar.zza);
            zzcvc zzl = zzcvaVar.zzl();
            zzdbk zzdbkVar = new zzdbk();
            zzdbkVar.zzc(this.zzd, this.zzc);
            zzdbkVar.zzl(this.zzd, this.zzc);
            return zze(zzcojVar, zzl, zzdbkVar.zzn());
        }
        zzexm zzi = zzexm.zzi(this.zzd);
        zzdbk zzdbkVar2 = new zzdbk();
        zzdbkVar2.zzb(zzi, this.zzc);
        zzdbkVar2.zzg(zzi, this.zzc);
        zzdbkVar2.zzh(zzi, this.zzc);
        zzdbkVar2.zzi(zzi, this.zzc);
        zzdbkVar2.zzc(zzi, this.zzc);
        zzdbkVar2.zzl(zzi, this.zzc);
        zzdbkVar2.zzm(zzi);
        zzcoj zzcojVar2 = new zzcoj(this.zzg);
        zzcva zzcvaVar2 = new zzcva();
        zzcvaVar2.zzf(this.zzb);
        zzcvaVar2.zzk(zzewuVar.zza);
        return zze(zzcojVar2, zzcvaVar2.zzl(), zzdbkVar2.zzn());
    }

    @Override // com.google.android.gms.internal.ads.zzeld
    public final boolean zza() {
        InterfaceFutureC3942wq interfaceFutureC3942wq = this.zzj;
        return (interfaceFutureC3942wq == null || interfaceFutureC3942wq.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeld
    public final synchronized boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzelb zzelbVar, zzelc zzelcVar) {
        zzfhh zzfhhVar;
        zzcnw zzcnwVar;
        if (!zzmVar.zzb()) {
            boolean z = ((Boolean) zzbej.zzd.zze()).booleanValue() && ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzla)).booleanValue();
            if (this.zzf.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlb)).intValue() || !z) {
                Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            }
        }
        if (str == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for app open ad.");
            this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewq
                @Override // java.lang.Runnable
                public final void run() {
                    zzeww.this.zzk();
                }
            });
            return false;
        }
        if (this.zzj != null) {
            return false;
        }
        if (!((Boolean) zzbee.zzc.zze()).booleanValue() || (zzcnwVar = (zzcnw) this.zze.zzd()) == null) {
            zzfhhVar = null;
        } else {
            zzfhh zzh = zzcnwVar.zzh();
            zzh.zzi(7);
            zzh.zzb(zzmVar.zzp);
            zzh.zzf(zzmVar.zzm);
            zzfhhVar = zzh;
        }
        zzfdg.zza(this.zzb, zzmVar.zzf);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziN)).booleanValue() && zzmVar.zzf) {
            this.zza.zzl().zzo(true);
        }
        Bundle zza = zzdrg.zza(new Pair(zzdre.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdre.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis())));
        zzfch zzfchVar = this.zzi;
        zzfchVar.zzt(str);
        zzfchVar.zzs(com.google.android.gms.ads.internal.client.zzs.zzb());
        zzfchVar.zzH(zzmVar);
        zzfchVar.zzA(zza);
        Context context = this.zzb;
        zzfcj zzJ = zzfchVar.zzJ();
        zzfgw zzb = zzfgv.zzb(context, zzfhg.zzf(zzJ), 7, zzmVar);
        zzewu zzewuVar = new zzewu(null);
        zzewuVar.zza = zzJ;
        InterfaceFutureC3942wq zzc = this.zze.zzc(new zzezg(zzewuVar, null), new zzeze() { // from class: com.google.android.gms.internal.ads.zzewr
            @Override // com.google.android.gms.internal.ads.zzeze
            public final zzcuy zza(zzezd zzezdVar) {
                zzcuy zzm;
                zzm = zzeww.this.zzm(zzezdVar);
                return zzm;
            }
        }, null);
        this.zzj = zzc;
        zzgch.zzr(zzc, new zzewt(this, zzelcVar, zzfhhVar, zzb, zzewuVar), this.zzc);
        return true;
    }

    public abstract zzcuy zze(zzcoj zzcojVar, zzcvc zzcvcVar, zzdbm zzdbmVar);

    public final /* synthetic */ void zzk() {
        this.zzd.zzdz(zzfdk.zzd(6, null, null));
    }

    public final void zzl(com.google.android.gms.ads.internal.client.zzy zzyVar) {
        this.zzi.zzu(zzyVar);
    }
}
