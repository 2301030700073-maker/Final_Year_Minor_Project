package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcff implements zzblx {
    private static final Integer zzb(Map map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = (String) map.get(str);
            StringBuilder sb = new StringBuilder(str.length() + 39 + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            String sb2 = sb.toString();
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfe zzcfeVar;
        zzcew zzb;
        zzcdr zzcdrVar = (zzcdr) obj;
        if (com.google.android.gms.ads.internal.util.zze.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Precache GMSG: ".concat(jSONObject.toString()));
        }
        zzcex zzB = com.google.android.gms.ads.internal.zzt.zzB();
        if (map.containsKey("abort")) {
            if (zzB.zza(zzcdrVar)) {
                return;
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer zzb2 = zzb(map, "periodicReportIntervalMs");
        Integer zzb3 = zzb(map, "exoPlayerRenderingIntervalMs");
        Integer zzb4 = zzb(map, "exoPlayerIdleIntervalMs");
        zzcdq zzcdqVar = new zzcdq((String) map.get("flags"));
        boolean z = zzcdqVar.zzk;
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Malformed demuxed URL list for precache: ".concat(str2));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (z) {
                Iterator it = zzB.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        zzb = null;
                        break;
                    }
                    zzcew zzcewVar = (zzcew) it.next();
                    if (zzcewVar.zza == zzcdrVar && str.equals(zzcewVar.zzd())) {
                        zzb = zzcewVar;
                        break;
                    }
                }
            } else {
                zzb = zzB.zzb(zzcdrVar);
            }
            if (zzb != null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Precache task is already running.");
                return;
            }
            if (zzcdrVar.zzk() == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Precache requires a dependency provider.");
                return;
            }
            Integer zzb5 = zzb(map, "player");
            if (zzb5 == null) {
                zzb5 = 0;
            }
            if (zzb2 != null) {
                zzcdrVar.zzo(zzb2.intValue());
            }
            if (zzb3 != null) {
                zzcdrVar.zzA(zzb3.intValue());
            }
            if (zzb4 != null) {
                zzcdrVar.zzB(zzb4.intValue());
            }
            int intValue = zzb5.intValue();
            zzceo zzceoVar = zzcdrVar.zzk().zzb;
            if (intValue > 0) {
                int i2 = zzcdqVar.zzg;
                int zzQ = zzcdi.zzQ();
                if (zzQ < i2) {
                    zzcfeVar = new zzcfn(zzcdrVar, zzcdqVar);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzq)).booleanValue()) {
                        zzQ = zzcfk.zzr();
                    }
                    zzcfeVar = zzQ < zzcdqVar.zzb ? new zzcfk(zzcdrVar, zzcdqVar) : new zzcfi(zzcdrVar);
                }
            } else {
                zzcfeVar = new zzcfh(zzcdrVar);
            }
            new zzcew(zzcdrVar, zzcfeVar, str, strArr).zzb();
        } else {
            zzcew zzb6 = zzB.zzb(zzcdrVar);
            if (zzb6 == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Precache must specify a source.");
                return;
            }
            zzcfeVar = zzb6.zzb;
        }
        Integer zzb7 = zzb(map, "minBufferMs");
        if (zzb7 != null) {
            zzcfeVar.zzi(zzb7.intValue());
        }
        Integer zzb8 = zzb(map, "maxBufferMs");
        if (zzb8 != null) {
            zzcfeVar.zzh(zzb8.intValue());
        }
        Integer zzb9 = zzb(map, "bufferForPlaybackMs");
        if (zzb9 != null) {
            zzcfeVar.zzj(zzb9.intValue());
        }
        Integer zzb10 = zzb(map, "bufferForPlaybackAfterRebufferMs");
        if (zzb10 != null) {
            zzcfeVar.zzk(zzb10.intValue());
        }
    }
}
