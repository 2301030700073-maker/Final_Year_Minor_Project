package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzfve;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CsiParamDefaults {

    /* renamed from: do, reason: not valid java name */
    public final Context f10111do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f10112do;

    /* renamed from: if, reason: not valid java name */
    public final String f10113if;

    public CsiParamDefaults(Context context, VersionInfoParcel versionInfoParcel) {
        this.f10111do = context;
        this.f10112do = context.getPackageName();
        this.f10113if = versionInfoParcel.afmaVersion;
    }

    public void set(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzv.zzq();
        map.put("device", zzs.zzs());
        map.put("app", this.f10112do);
        zzv.zzq();
        Context context = this.f10111do;
        boolean zzF = zzs.zzF(context);
        String str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        map.put("is_lite_sdk", true != zzF ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        zzbcc zzbccVar = zzbcl.zza;
        List zzb = zzbe.zza().zzb();
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzgI)).booleanValue()) {
            zzb.addAll(zzv.zzp().zzi().zzg().zzd());
        }
        map.put("e", TextUtils.join(",", zzb));
        map.put("sdkVersion", this.f10113if);
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzli)).booleanValue()) {
            zzv.zzq();
            if (true == zzs.zzC(context)) {
                str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
            }
            map.put("is_bstar", str);
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzjn)).booleanValue()) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzct)).booleanValue()) {
                map.put("plugin", zzfve.zzc(zzv.zzp().zzn()));
            }
        }
    }
}
