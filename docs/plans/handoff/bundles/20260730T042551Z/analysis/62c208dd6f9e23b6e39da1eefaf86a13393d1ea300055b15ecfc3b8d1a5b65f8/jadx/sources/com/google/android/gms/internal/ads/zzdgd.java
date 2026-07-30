package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbbq;
import defpackage.F2;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzdgd implements zzcxh, com.google.android.gms.ads.internal.overlay.zzr, zzcwn {
    zzecr zza;
    private final Context zzb;
    private final zzcex zzc;
    private final zzfbo zzd;
    private final VersionInfoParcel zze;
    private final zzbbq.zza.EnumC0054zza zzf;
    private final zzecp zzg;

    public zzdgd(Context context, zzcex zzcexVar, zzfbo zzfboVar, VersionInfoParcel versionInfoParcel, zzbbq.zza.EnumC0054zza enumC0054zza, zzecp zzecpVar) {
        this.zzb = context;
        this.zzc = zzcexVar;
        this.zzd = zzfboVar;
        this.zze = versionInfoParcel;
        this.zzf = enumC0054zza;
        this.zzg = zzecpVar;
    }

    private final boolean zzg() {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && this.zzg.zzd();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdE() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdi() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfk)).booleanValue() || this.zzc == null) {
            return;
        }
        if (this.zza != null || zzg()) {
            if (this.zza != null) {
                this.zzc.zzd("onSdkImpression", new F2());
            } else {
                this.zzg.zzb();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdr() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzds(int i) {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzr() {
        if (zzg()) {
            this.zzg.zzb();
            return;
        }
        if (this.zza == null || this.zzc == null) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfk)).booleanValue()) {
            this.zzc.zzd("onSdkImpression", new F2());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzs() {
        zzeco zzecoVar;
        zzecn zzecnVar;
        zzbbq.zza.EnumC0054zza enumC0054zza;
        if ((((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfn)).booleanValue() || (enumC0054zza = this.zzf) == zzbbq.zza.EnumC0054zza.REWARD_BASED_VIDEO_AD || enumC0054zza == zzbbq.zza.EnumC0054zza.INTERSTITIAL || enumC0054zza == zzbbq.zza.EnumC0054zza.APP_OPEN) && this.zzd.zzT && this.zzc != null) {
            if (com.google.android.gms.ads.internal.zzv.zzB().zzl(this.zzb)) {
                if (zzg()) {
                    this.zzg.zzc();
                    return;
                }
                VersionInfoParcel versionInfoParcel = this.zze;
                String str = versionInfoParcel.buddyApkVersion + "." + versionInfoParcel.clientJarVersion;
                zzfcm zzfcmVar = this.zzd.zzV;
                String zza = zzfcmVar.zza();
                if (zzfcmVar.zzc() == 1) {
                    zzecnVar = zzecn.VIDEO;
                    zzecoVar = zzeco.DEFINED_BY_JAVASCRIPT;
                } else {
                    zzecoVar = this.zzd.zzY == 2 ? zzeco.UNSPECIFIED : zzeco.BEGIN_TO_RENDER;
                    zzecnVar = zzecn.HTML_DISPLAY;
                }
                this.zza = com.google.android.gms.ads.internal.zzv.zzB().zza(str, this.zzc.zzG(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "javascript", zza, zzecoVar, zzecnVar, this.zzd.zzal);
                View zzF = this.zzc.zzF();
                zzecr zzecrVar = this.zza;
                if (zzecrVar != null) {
                    zzfkp zza2 = zzecrVar.zza();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfe)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzv.zzB().zzj(zza2, this.zzc.zzG());
                        Iterator it = this.zzc.zzV().iterator();
                        while (it.hasNext()) {
                            com.google.android.gms.ads.internal.zzv.zzB().zzg(zza2, (View) it.next());
                        }
                    } else {
                        com.google.android.gms.ads.internal.zzv.zzB().zzj(zza2, zzF);
                    }
                    this.zzc.zzat(this.zza);
                    com.google.android.gms.ads.internal.zzv.zzB().zzk(zza2);
                    this.zzc.zzd("onSdkLoaded", new F2());
                }
            }
        }
    }
}
