package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeez implements zzecw {
    private final Context zza;
    private final zzdow zzb;
    private final zzdfu zzc;
    private final zzfcj zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbjs zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziM)).booleanValue();
    private final zzebv zzi;
    private final zzdrq zzj;
    private final zzdrw zzk;

    public zzeez(Context context, VersionInfoParcel versionInfoParcel, zzfcj zzfcjVar, Executor executor, zzdfu zzdfuVar, zzdow zzdowVar, zzbjs zzbjsVar, zzebv zzebvVar, zzdrq zzdrqVar, zzdrw zzdrwVar) {
        this.zza = context;
        this.zzd = zzfcjVar;
        this.zzc = zzdfuVar;
        this.zze = executor;
        this.zzf = versionInfoParcel;
        this.zzb = zzdowVar;
        this.zzg = zzbjsVar;
        this.zzi = zzebvVar;
        this.zzj = zzdrqVar;
        this.zzk = zzdrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        final zzdpa zzdpaVar = new zzdpa();
        InterfaceFutureC3942wq zzn = zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeeu
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzeez.this.zzc(zzfboVar, zzfcaVar, zzdpaVar, obj);
            }
        }, this.zze);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeev
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
        final zzeez zzeezVar;
        zzbcc zzbccVar = zzbcl.zzcm;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzj.zza(), zzdre.RENDERING_WEBVIEW_CREATION_START.zza());
        }
        final zzcex zza = this.zzb.zza(this.zzd.zze, zzfboVar, zzfcaVar.zzb.zzb);
        zza.zzac(zzfboVar.zzW);
        zzdpaVar.zza(this.zza, zza.zzF());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzj.zza(), zzdre.RENDERING_WEBVIEW_CREATION_END.zza());
        }
        zzcab zzcabVar = new zzcab();
        final zzder zze = this.zzc.zze(new zzcrp(zzfcaVar, zzfboVar, null), new zzdeu(new zzeey(this.zza, this.zzf, zzcabVar, zzfboVar, zza, this.zzd, this.zzh, this.zzg, this.zzi, this.zzk), zza));
        zzcabVar.zzc(zze);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            zzeezVar = this;
            V1.m2496class(zzeezVar.zzj.zza(), zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza());
        } else {
            zzeezVar = this;
        }
        zze.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzeew
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzr() {
                zzcex zzcexVar = zzcex.this;
                if (zzcexVar.zzN() != null) {
                    zzcexVar.zzN().zzs();
                }
            }
        }, zzbzw.zzg);
        String str = zzfboVar.zzs.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && zze.zzl().zze(true)) {
            str = zzcgi.zzb(str, zzcgi.zza(zzfboVar));
        }
        zze.zzi().zzi(zza, true, zzeezVar.zzh ? zzeezVar.zzg : null, zzeezVar.zzj.zza());
        zze.zzi();
        return zzgch.zzm(zzdov.zzj(zza, zzfboVar.zzs.zzb, str, zzeezVar.zzj.zza()), new zzfuc(zzeezVar) { // from class: com.google.android.gms.internal.ads.zzeex
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj2) {
                zzcex zzcexVar = zza;
                if (zzfboVar.zzM) {
                    zzcexVar.zzah();
                }
                zzder zzderVar = zze;
                zzcexVar.zzab();
                zzcexVar.onPause();
                return zzderVar.zzg();
            }
        }, zzeezVar.zze);
    }
}
