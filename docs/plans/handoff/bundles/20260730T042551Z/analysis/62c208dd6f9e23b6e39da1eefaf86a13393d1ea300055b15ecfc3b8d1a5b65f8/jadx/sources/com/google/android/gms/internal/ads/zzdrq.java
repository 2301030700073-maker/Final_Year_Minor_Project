package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdrq {
    private final ConcurrentHashMap zza;
    private final zzbzq zzb;
    private final zzfcj zzc;
    private final String zzd;
    private final String zze;
    private final com.google.android.gms.ads.internal.zzk zzf;
    private final Bundle zzg = new Bundle();
    private final Context zzh;

    public zzdrq(Context context, zzdsb zzdsbVar, zzbzq zzbzqVar, zzfcj zzfcjVar, String str, String str2, com.google.android.gms.ads.internal.zzk zzkVar) {
        ActivityManager.MemoryInfo zzc;
        ConcurrentHashMap zzc2 = zzdsbVar.zzc();
        this.zza = zzc2;
        this.zzb = zzbzqVar;
        this.zzc = zzfcjVar;
        this.zzd = str;
        this.zze = str2;
        this.zzf = zzkVar;
        this.zzh = context;
        zzc2.put("ad_format", str2.toUpperCase(Locale.ROOT));
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjs)).booleanValue();
        String str3 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        if (booleanValue) {
            int zzp = zzkVar.zzp();
            int i = zzp - 1;
            if (zzp == 0) {
                throw null;
            }
            zzc2.put("asv", i != 0 ? i != 1 ? "na" : "2" : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue()) {
            Runtime runtime = Runtime.getRuntime();
            zzc("rt_f", String.valueOf(runtime.freeMemory()));
            zzc("rt_m", String.valueOf(runtime.maxMemory()));
            zzc("rt_t", String.valueOf(runtime.totalMemory()));
            zzc("wv_c", String.valueOf(com.google.android.gms.ads.internal.zzv.zzp().zzb()));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcp)).booleanValue() && (zzc = com.google.android.gms.ads.internal.util.client.zzf.zzc(context)) != null) {
                zzc("mem_avl", String.valueOf(zzc.availMem));
                zzc("mem_tt", String.valueOf(zzc.totalMem));
                zzc("low_m", true != zzc.lowMemory ? AppEventsConstants.EVENT_PARAM_VALUE_NO : str3);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgM)).booleanValue()) {
            int zzf = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzf(zzfcjVar) - 1;
            if (zzf == 0) {
                zzc2.put("request_id", str);
                zzc2.put("scar", "false");
                return;
            }
            if (zzf == 1) {
                zzc2.put("request_id", str);
                zzc2.put("se", "query_g");
            } else if (zzf == 2) {
                zzc2.put("se", "r_adinfo");
            } else if (zzf != 3) {
                zzc2.put("se", "r_both");
            } else {
                zzc2.put("se", "r_adstring");
            }
            zzc2.put("scar", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            zzc("ragent", zzfcjVar.zzd.zzp);
            zzc("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfcjVar.zzd)));
        }
    }

    public final Bundle zza() {
        return this.zzg;
    }

    public final Map zzb() {
        return this.zza;
    }

    public final void zzc(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.zza.put(str, str2);
    }

    public final void zzd(zzfca zzfcaVar) {
        if (!zzfcaVar.zzb.zza.isEmpty()) {
            zzfbo zzfboVar = (zzfbo) zzfcaVar.zzb.zza.get(0);
            zzc("ad_format", zzfbo.zza(zzfboVar.zzb));
            if (zzfboVar.zzb == 6) {
                this.zza.put("as", true != this.zzb.zzm() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
            }
        }
        zzc("gqi", zzfcaVar.zzb.zzb.zzb);
    }

    public final void zze(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("cnt")) {
            zzc("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            zzc("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
