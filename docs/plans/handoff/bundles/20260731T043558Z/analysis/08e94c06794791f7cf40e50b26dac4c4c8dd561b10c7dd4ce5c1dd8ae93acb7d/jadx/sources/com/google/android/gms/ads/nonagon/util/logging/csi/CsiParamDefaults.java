package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbeu;
import com.google.android.gms.internal.ads.zzgmu;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.sentry.protocol.App;
import io.sentry.protocol.OperatingSystem;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public class CsiParamDefaults {
    private final Context zza;
    private final String zzb;
    private final String zzc;

    public CsiParamDefaults(Context context, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = context.getPackageName();
        this.zzc = versionInfoParcel.afmaVersion;
    }

    public void set(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", ExifInterface.GPS_MEASUREMENT_3D);
        map.put(OperatingSystem.TYPE, Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzt.zzc();
        map.put("device", zzs.zzv());
        map.put(App.TYPE, this.zzb);
        zzt.zzc();
        Context context = this.zza;
        boolean zzI = zzs.zzI(context);
        String str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        map.put("is_lite_sdk", true != zzI ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1");
        zzbel zzbelVar = zzbeu.zza;
        List zzf = zzbd.zzb().zzf();
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzhs)).booleanValue()) {
            zzf.addAll(zzt.zzh().zzo().zzi().zzh());
        }
        map.put("e", TextUtils.join(",", zzf));
        map.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, this.zzc);
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzmq)).booleanValue()) {
            zzt.zzc();
            if (true == zzs.zzF(context)) {
                str = "1";
            }
            map.put("is_bstar", str);
        }
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzku)).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzd(zzbeu.zzcI)).booleanValue()) {
                map.put("plugin", zzgmu.zza(zzt.zzh().zzu()));
            }
        }
    }
}
