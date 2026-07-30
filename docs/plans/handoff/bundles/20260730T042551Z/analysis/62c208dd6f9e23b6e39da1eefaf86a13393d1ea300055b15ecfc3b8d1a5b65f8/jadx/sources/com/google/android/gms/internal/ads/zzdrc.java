package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;
import defpackage.C0315Kc;

/* loaded from: classes.dex */
public final class zzdrc implements zzcyq, zzcxh, zzcvw, zzdee {
    private final zzdrq zza;
    private final zzdsb zzb;
    private final int zzc;

    public zzdrc(zzdrq zzdrqVar, zzdsb zzdsbVar, int i) {
        this.zza = zzdrqVar;
        this.zzb = zzdsbVar;
        this.zzc = i;
    }

    private final void zzc(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (String str : bundle.keySet()) {
            long j = bundle.getLong(str);
            if (j >= 0) {
                this.zza.zzc(str, String.valueOf(j));
            }
        }
    }

    private final void zzd(Bundle bundle, zzfxn zzfxnVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue() || bundle == null) {
            return;
        }
        bundle.putLong(zzdre.PUBLIC_API_CALLBACK.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        boolean containsKey = bundle.containsKey("ls");
        String str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        if (containsKey) {
            this.zza.zzc("ls", true != bundle.getBoolean("ls") ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        int size = zzfxnVar.size();
        for (int i = 0; i < size; i++) {
            zzdrf zzdrfVar = (zzdrf) zzfxnVar.get(i);
            long j = bundle.getLong(zzdrfVar.zza().zza(), -1L);
            long j2 = bundle.getLong(zzdrfVar.zzb().zza(), -1L);
            if (j > 0 && j2 > 0) {
                this.zza.zzc(zzdrfVar.zzc(), String.valueOf(j2 - j));
            }
        }
        zzc(bundle.getBundle("client_sig_latency_key"));
        zzc(bundle.getBundle("gms_sig_latency_key"));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhq)).booleanValue()) {
            if (bundle.containsKey("sod_h")) {
                zzdrq zzdrqVar = this.zza;
                if (true == bundle.getBoolean("sod_h")) {
                    str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
                }
                zzdrqVar.zzc("sod_h", str);
            }
            if (bundle.containsKey("cmr")) {
                this.zza.zzc("cmr", String.valueOf(bundle.getInt("cmr")));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyq
    public final void zzdl(zzbvk zzbvkVar) {
        this.zza.zze(zzbvkVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcyq
    public final void zzdm(zzfca zzfcaVar) {
        this.zza.zzd(zzfcaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdz(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zza.zzb().put(NativeProtocol.WEB_DIALOG_ACTION, "ftl");
        this.zza.zzc("ftl", String.valueOf(zzeVar.zza));
        this.zza.zzc("ed", zzeVar.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgY)).booleanValue()) {
            this.zza.zzc("emsg", zzeVar.zzb);
        }
        this.zzb.zzg(this.zza.zzb());
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00d1  */
    @Override // com.google.android.gms.internal.ads.zzdee
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(com.google.android.gms.ads.nonagon.signalgeneration.zzbk r5) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrc.zze(com.google.android.gms.ads.nonagon.signalgeneration.zzbk):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zzf(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgM)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhq)).booleanValue()) {
                this.zza.zzb().put("sgw", String.valueOf(this.zzc));
            }
            this.zza.zzb().put(NativeProtocol.WEB_DIALOG_ACTION, "sgf");
            this.zza.zzc("sgf_reason", str);
            this.zzb.zzg(this.zza.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzs() {
        this.zza.zzb().put(NativeProtocol.WEB_DIALOG_ACTION, "loaded");
        zzd(this.zza.zza(), zzdrf.zzb);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmw)).booleanValue()) {
            this.zza.zzb().put("mafe", true != C0315Kc.m1176return("MUTE_AUDIO") ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        this.zzb.zzg(this.zza.zzb());
    }
}
