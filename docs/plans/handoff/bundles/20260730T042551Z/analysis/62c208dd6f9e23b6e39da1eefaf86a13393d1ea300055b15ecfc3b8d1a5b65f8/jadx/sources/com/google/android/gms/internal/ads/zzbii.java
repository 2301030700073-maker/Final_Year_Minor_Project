package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.NativeProtocol;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbii implements zzbjp {
    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        String str = (String) map.get(NativeProtocol.WEB_DIALOG_ACTION);
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No label given for CSI tick.");
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No timestamp given for CSI tick.");
                return;
            }
            try {
                long parseLong = (Long.parseLong(str4) - com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()) + com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
                if (true == TextUtils.isEmpty(str3)) {
                    str3 = "native:view_load";
                }
                zzcexVar.zzm().zzc(str2, str3, parseLong);
                return;
            } catch (NumberFormatException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Malformed timestamp for CSI tick.", e);
                return;
            }
        }
        if ("experiment".equals(str)) {
            String str5 = (String) map.get("value");
            if (TextUtils.isEmpty(str5)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No value given for CSI experiment.");
                return;
            } else {
                zzcexVar.zzm().zza().zzd("e", str5);
                return;
            }
        }
        if ("extra".equals(str)) {
            String str6 = (String) map.get(FacebookRequestErrorClassification.KEY_NAME);
            String str7 = (String) map.get("value");
            if (TextUtils.isEmpty(str7)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str6)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No name given for CSI extra.");
            } else {
                zzcexVar.zzm().zza().zzd(str6, str7);
            }
        }
    }
}
