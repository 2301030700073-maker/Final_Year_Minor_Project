package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzedh implements zzecw {
    private final zzcoa zza;
    private final Context zzb;
    private final zzdow zzc;
    private final zzfcj zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbjs zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziM)).booleanValue();
    private final zzebv zzi;
    private final zzdrq zzj;
    private final zzdrw zzk;

    public zzedh(zzcoa zzcoaVar, Context context, Executor executor, zzdow zzdowVar, zzfcj zzfcjVar, VersionInfoParcel versionInfoParcel, zzbjs zzbjsVar, zzebv zzebvVar, zzdrq zzdrqVar, zzdrw zzdrwVar) {
        this.zzb = context;
        this.zza = zzcoaVar;
        this.zze = executor;
        this.zzc = zzdowVar;
        this.zzd = zzfcjVar;
        this.zzf = versionInfoParcel;
        this.zzg = zzbjsVar;
        this.zzi = zzebvVar;
        this.zzj = zzdrqVar;
        this.zzk = zzdrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        final zzdpa zzdpaVar = new zzdpa();
        InterfaceFutureC3942wq zzn = zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzedd
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzedh.this.zzc(zzfboVar, zzfcaVar, zzdpaVar, obj);
            }
        }, this.zze);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzede
            @Override // java.lang.Runnable
            public final void run() {
                zzdpa.this.zzb();
            }
        }, this.zze);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzfbt zzfbtVar = zzfboVar.zzs;
        return (zzfbtVar == null || zzfbtVar.zza == null) ? false : true;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(final zzfbo zzfboVar, zzfca zzfcaVar, zzdpa zzdpaVar, Object obj) {
        final zzedh zzedhVar;
        zzbcc zzbccVar = zzbcl.zzcm;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzj.zza(), zzdre.RENDERING_WEBVIEW_CREATION_START.zza());
        }
        final zzcex zza = this.zzc.zza(this.zzd.zze, zzfboVar, zzfcaVar.zzb.zzb);
        zza.zzac(zzfboVar.zzW);
        zzdpaVar.zza(this.zzb, zza.zzF());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzj.zza(), zzdre.RENDERING_WEBVIEW_CREATION_END.zza());
        }
        zzcab zzcabVar = new zzcab();
        final zzcnx zza2 = this.zza.zza(new zzcrp(zzfcaVar, zzfboVar, null), new zzdeu(new zzedj(this.zzf, zzcabVar, zzfboVar, zza, this.zzd, this.zzh, this.zzg, this.zzi, this.zzk), zza), new zzcny(zzfboVar.zzaa));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            zzedhVar = this;
            V1.m2496class(zzedhVar.zzj.zza(), zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza());
        } else {
            zzedhVar = this;
        }
        zza2.zzh().zzi(zza, false, zzedhVar.zzh ? zzedhVar.zzg : null, zzedhVar.zzj.zza());
        zzcabVar.zzc(zza2);
        zza2.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzedf
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzr() {
                zzcex zzcexVar = zzcex.this;
                if (zzcexVar.zzN() != null) {
                    zzcexVar.zzN().zzs();
                }
            }
        }, zzbzw.zzg);
        String str = zzfboVar.zzs.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && zza2.zzi().zze(true)) {
            str = zzcgi.zzb(str, zzcgi.zza(zzfboVar));
        }
        zza2.zzh();
        return zzgch.zzm(zzdov.zzj(zza, zzfboVar.zzs.zzb, str, zzedhVar.zzj.zza()), new zzfuc(zzedhVar) { // from class: com.google.android.gms.internal.ads.zzedg
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj2) {
                zzcex zzcexVar = zza;
                if (zzfboVar.zzM) {
                    zzcexVar.zzah();
                }
                zzcnx zzcnxVar = zza2;
                zzcexVar.zzab();
                zzcexVar.onPause();
                return zzcnxVar.zza();
            }
        }, zzedhVar.zze);
    }
}
