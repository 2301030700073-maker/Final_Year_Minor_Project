package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.facebook.appevents.AppEventsConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class zzbco {
    private final String zza = (String) zzbef.zza.zze();
    private final Map zzb;
    private final Context zzc;
    private final String zzd;

    public zzbco(Context context, String str) {
        this.zzc = context;
        this.zzd = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzv.zzq();
        linkedHashMap.put("device", com.google.android.gms.ads.internal.util.zzs.zzs());
        linkedHashMap.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        com.google.android.gms.ads.internal.zzv.zzq();
        boolean zzF = com.google.android.gms.ads.internal.util.zzs.zzF(context);
        String str2 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        linkedHashMap.put("is_lite_sdk", true != zzF ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        Future zzb = com.google.android.gms.ads.internal.zzv.zzn().zzb(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(((zzbvo) zzb.get()).zzj));
            linkedHashMap.put("network_fine", Integer.toString(((zzbvo) zzb.get()).zzk));
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "CsiConfiguration.CsiConfiguration");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzli)).booleanValue()) {
            Map map = this.zzb;
            com.google.android.gms.ads.internal.zzv.zzq();
            map.put("is_bstar", true == com.google.android.gms.ads.internal.util.zzs.zzC(context) ? AppEventsConstants.EVENT_PARAM_VALUE_YES : str2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjn)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzct)).booleanValue() || zzfve.zzd(com.google.android.gms.ads.internal.zzv.zzp().zzn())) {
                return;
            }
            this.zzb.put("plugin", com.google.android.gms.ads.internal.zzv.zzp().zzn());
        }
    }

    public final Context zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zza;
    }

    public final Map zzd() {
        return this.zzb;
    }
}
