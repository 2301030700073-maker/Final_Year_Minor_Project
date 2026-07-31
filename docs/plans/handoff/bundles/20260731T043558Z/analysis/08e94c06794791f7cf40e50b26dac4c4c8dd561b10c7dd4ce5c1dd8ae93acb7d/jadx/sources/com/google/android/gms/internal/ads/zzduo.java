package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.webkit.WebViewFeature;
import com.facebook.appevents.AppEventsConstants;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzduo implements zzdbu, zzdac, zzcyr, zzdhh {
    private final zzdvc zza;
    private final zzdvn zzb;
    private final int zzc;

    zzduo(zzdvc zzdvcVar, zzdvn zzdvnVar, int i) {
        this.zza = zzdvcVar;
        this.zzb = zzdvnVar;
        this.zzc = i;
    }

    private final void zzc(Bundle bundle, zzgpe zzgpeVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcv)).booleanValue() || bundle == null) {
            return;
        }
        bundle.putLong(zzduq.PUBLIC_API_CALLBACK.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        zzdvc zzdvcVar = this.zza;
        zzdvcVar.zzf();
        boolean containsKey = bundle.containsKey("ls");
        String str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        if (containsKey) {
            zzdvcVar.zzd("ls", true != bundle.getBoolean("ls") ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1");
        }
        int size = zzgpeVar.size();
        for (int i = 0; i < size; i++) {
            zzdur zzdurVar = (zzdur) zzgpeVar.get(i);
            long j = bundle.getLong(zzdurVar.zzb().zza(), -1L);
            long j2 = bundle.getLong(zzdurVar.zzc().zza(), -1L);
            if (j > 0 && j2 > 0) {
                zzdvcVar.zzd(zzdurVar.zza(), String.valueOf(j2 - j));
            }
        }
        zzf(bundle.getBundle("client_sig_latency_key"));
        zzf(bundle.getBundle("gms_sig_latency_key"));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzid)).booleanValue()) {
            if (bundle.containsKey("sod_h")) {
                if (true == bundle.getBoolean("sod_h")) {
                    str = "1";
                }
                zzdvcVar.zzd("sod_h", str);
            }
            if (bundle.containsKey("cmr")) {
                zzdvcVar.zzd("cmr", String.valueOf(bundle.getInt("cmr")));
            }
        }
    }

    private final void zzf(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (String str : bundle.keySet()) {
            long j = bundle.getLong(str);
            if (j >= 0) {
                this.zza.zzd(str, String.valueOf(j));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00cd  */
    @Override // com.google.android.gms.internal.ads.zzdhh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.ads.nonagon.signalgeneration.zzbj r6) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzduo.zzd(com.google.android.gms.ads.nonagon.signalgeneration.zzbj):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcyr
    public final void zzdN(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzdvc zzdvcVar = this.zza;
        zzdvcVar.zzc().put("action", "ftl");
        zzdvcVar.zzd("ftl", String.valueOf(zzeVar.zza));
        zzdvcVar.zzd("ed", zzeVar.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhL)).booleanValue()) {
            zzdvcVar.zzd("emsg", zzeVar.zzb);
        }
        zzdvcVar.zzg();
        this.zzb.zzb(zzdvcVar.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzdbu
    public final void zzdT(zzbxj zzbxjVar) {
        this.zza.zzb(zzbxjVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbu
    public final void zzdU(zzfgf zzfgfVar) {
        this.zza.zza(zzfgfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdhh
    public final void zze(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhw)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzid)).booleanValue()) {
                this.zza.zzc().put("sgw", String.valueOf(this.zzc));
            }
            zzdvc zzdvcVar = this.zza;
            zzdvcVar.zzc().put("action", "sgf");
            zzdvcVar.zzd("sgf_reason", str);
            zzdvcVar.zzg();
            this.zzb.zzb(zzdvcVar.zzc());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdac
    public final void zzg() {
        zzdvc zzdvcVar = this.zza;
        zzdvcVar.zzc().put("action", "loaded");
        zzc(zzdvcVar.zze(), zzdur.zzb);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zznF)).booleanValue()) {
            zzdvcVar.zzc().put("mafe", true != WebViewFeature.isFeatureSupported("MUTE_AUDIO") ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1");
        }
        zzdvcVar.zzg();
        this.zzb.zzb(zzdvcVar.zzc());
    }
}
