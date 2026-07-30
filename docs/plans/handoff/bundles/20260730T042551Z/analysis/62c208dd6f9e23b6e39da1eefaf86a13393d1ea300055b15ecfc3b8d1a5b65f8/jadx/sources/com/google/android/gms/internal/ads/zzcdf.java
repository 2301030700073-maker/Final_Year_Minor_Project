package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcdf implements zzbjp {
    private static final Integer zzb(Map map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache invalid numeric parameter '" + str + "': " + ((String) map.get(str)));
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcde zzcdeVar;
        zzccw zza;
        zzcbs zzcbsVar = (zzcbs) obj;
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            com.google.android.gms.ads.internal.util.client.zzo.zze("Precache GMSG: ".concat(jSONObject.toString()));
        }
        zzccx zzz = com.google.android.gms.ads.internal.zzv.zzz();
        if (map.containsKey("abort")) {
            if (zzz.zzd(zzcbsVar)) {
                return;
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer zzb = zzb(map, "periodicReportIntervalMs");
        Integer zzb2 = zzb(map, "exoPlayerRenderingIntervalMs");
        Integer zzb3 = zzb(map, "exoPlayerIdleIntervalMs");
        zzcbr zzcbrVar = new zzcbr((String) map.get("flags"));
        boolean z = zzcbrVar.zzk;
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
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Malformed demuxed URL list for precache: ".concat(str2));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (z) {
                Iterator it = zzz.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        zza = null;
                        break;
                    }
                    zzccw zzccwVar = (zzccw) it.next();
                    if (zzccwVar.zza == zzcbsVar && str.equals(zzccwVar.zze())) {
                        zza = zzccwVar;
                        break;
                    }
                }
            } else {
                zza = zzz.zza(zzcbsVar);
            }
            if (zza != null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache task is already running.");
                return;
            }
            if (zzcbsVar.zzj() == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache requires a dependency provider.");
                return;
            }
            Integer zzb4 = zzb(map, "player");
            if (zzb4 == null) {
                zzb4 = 0;
            }
            if (zzb != null) {
                zzcbsVar.zzA(zzb.intValue());
            }
            if (zzb2 != null) {
                zzcbsVar.zzy(zzb2.intValue());
            }
            if (zzb3 != null) {
                zzcbsVar.zzx(zzb3.intValue());
            }
            int intValue = zzb4.intValue();
            zzccp zzccpVar = zzcbsVar.zzj().zzb;
            if (intValue > 0) {
                int i2 = zzcbrVar.zzg;
                int zzu = zzcbj.zzu();
                if (zzu < i2) {
                    zzcdeVar = new zzcdn(zzcbsVar, zzcbrVar);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzn)).booleanValue()) {
                        zzu = zzcdk.zzi();
                    }
                    zzcdeVar = zzu < zzcbrVar.zzb ? new zzcdk(zzcbsVar, zzcbrVar) : new zzcdi(zzcbsVar);
                }
            } else {
                zzcdeVar = new zzcdh(zzcbsVar);
            }
            new zzccw(zzcbsVar, zzcdeVar, str, strArr).zzb();
        } else {
            zzccw zza2 = zzz.zza(zzcbsVar);
            if (zza2 == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache must specify a source.");
                return;
            }
            zzcdeVar = zza2.zzb;
        }
        Integer zzb5 = zzb(map, "minBufferMs");
        if (zzb5 != null) {
            zzcdeVar.zzs(zzb5.intValue());
        }
        Integer zzb6 = zzb(map, "maxBufferMs");
        if (zzb6 != null) {
            zzcdeVar.zzr(zzb6.intValue());
        }
        Integer zzb7 = zzb(map, "bufferForPlaybackMs");
        if (zzb7 != null) {
            zzcdeVar.zzp(zzb7.intValue());
        }
        Integer zzb8 = zzb(map, "bufferForPlaybackAfterRebufferMs");
        if (zzb8 != null) {
            zzcdeVar.zzq(zzb8.intValue());
        }
    }
}
