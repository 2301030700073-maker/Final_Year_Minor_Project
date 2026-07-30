package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeht implements zzecw {
    private final Context zza;
    private final zzdow zzb;
    private final zzdof zzc;
    private final zzfcj zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbjs zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziM)).booleanValue();
    private final zzebv zzi;
    private final zzdrq zzj;
    private final zzdrw zzk;

    public zzeht(Context context, VersionInfoParcel versionInfoParcel, zzfcj zzfcjVar, Executor executor, zzdof zzdofVar, zzdow zzdowVar, zzbjs zzbjsVar, zzebv zzebvVar, zzdrq zzdrqVar, zzdrw zzdrwVar) {
        this.zza = context;
        this.zzd = zzfcjVar;
        this.zzc = zzdofVar;
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
        InterfaceFutureC3942wq zzn = zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeho
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzeht.this.zzc(zzfboVar, zzfcaVar, zzdpaVar, obj);
            }
        }, this.zze);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehp
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
        final zzeht zzehtVar;
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
        final zzdob zze = this.zzc.zze(new zzcrp(zzfcaVar, zzfboVar, null), new zzdoc(new zzehs(this.zza, this.zzb, this.zzd, this.zzf, zzfboVar, zzcabVar, zza, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk), zza));
        zzcabVar.zzc(zze);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            zzehtVar = this;
            V1.m2496class(zzehtVar.zzj.zza(), zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza());
        } else {
            zzehtVar = this;
        }
        zzbkh.zzb(zza, zze.zzg());
        zze.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzehm
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzr() {
                zzcex zzcexVar = zzcex.this;
                if (zzcexVar.zzN() != null) {
                    zzcexVar.zzN().zzs();
                }
            }
        }, zzbzw.zzg);
        zze.zzl().zzi(zza, true, zzehtVar.zzh ? zzehtVar.zzg : null, zzehtVar.zzj.zza());
        String str = zzfboVar.zzs.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && zze.zzm().zze(true)) {
            str = zzcgi.zzb(str, zzcgi.zza(zzfboVar));
        }
        zze.zzl();
        return zzgch.zzm(zzdov.zzj(zza, zzfboVar.zzs.zzb, str, zzehtVar.zzj.zza()), new zzfuc(zzehtVar) { // from class: com.google.android.gms.internal.ads.zzehn
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj2) {
                zzcex zzcexVar = zza;
                if (zzfboVar.zzM) {
                    zzcexVar.zzah();
                }
                zzdob zzdobVar = zze;
                zzcexVar.zzab();
                zzcexVar.onPause();
                return zzdobVar.zzi();
            }
        }, zzehtVar.zze);
    }
}
