package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.support.v7.media.MediaRouteProviderProtocol;
import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

@zzgd
/* loaded from: classes.dex */
public final class zzdo implements zzdg {
    private final Map<zzid, Integer> zzwA = new WeakHashMap();

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        if (str2 != null) {
            try {
                return com.google.android.gms.ads.internal.client.zzk.zzcA().zzb(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                com.google.android.gms.ads.internal.util.client.zzb.zzaC("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.zzdg
    public void zza(zzid zzidVar, Map<String, String> map) {
        String str;
        String str2;
        StringBuilder sb;
        String str3;
        String str4;
        com.google.android.gms.ads.internal.overlay.zzh zzeq;
        String str5 = map.get("action");
        if (str5 == null) {
            str4 = "Action missing from video GMSG.";
        } else {
            if (com.google.android.gms.ads.internal.util.client.zzb.zzL(3)) {
                JSONObject jSONObject = new JSONObject(map);
                jSONObject.remove("google.afma.Notify_dt");
                com.google.android.gms.ads.internal.util.client.zzb.zzay("Video GMSG: " + str5 + " " + jSONObject.toString());
            }
            if ("background".equals(str5)) {
                String str6 = map.get("color");
                if (!TextUtils.isEmpty(str6)) {
                    try {
                        int parseColor = Color.parseColor(str6);
                        com.google.android.gms.ads.internal.overlay.zzc zzgD = zzidVar.zzgD();
                        if (zzgD == null || (zzeq = zzgD.zzeq()) == null) {
                            this.zzwA.put(zzidVar, Integer.valueOf(parseColor));
                            return;
                        } else {
                            zzeq.setBackgroundColor(parseColor);
                            return;
                        }
                    } catch (IllegalArgumentException e) {
                        com.google.android.gms.ads.internal.util.client.zzb.zzaC("Invalid color parameter in video GMSG.");
                        return;
                    }
                }
                str4 = "Color parameter missing from color video GMSG.";
            } else {
                com.google.android.gms.ads.internal.overlay.zzc zzgD2 = zzidVar.zzgD();
                if (zzgD2 == null) {
                    str4 = "Could not get ad overlay for a video GMSG.";
                } else {
                    boolean equals = "new".equals(str5);
                    boolean equals2 = "position".equals(str5);
                    if (equals || equals2) {
                        Context context = zzidVar.getContext();
                        int zza = zza(context, map, "x", 0);
                        int zza2 = zza(context, map, "y", 0);
                        int zza3 = zza(context, map, "w", -1);
                        int zza4 = zza(context, map, "h", -1);
                        if (!equals || zzgD2.zzeq() != null) {
                            zzgD2.zzd(zza, zza2, zza3, zza4);
                            return;
                        }
                        zzgD2.zze(zza, zza2, zza3, zza4);
                        if (this.zzwA.containsKey(zzidVar)) {
                            zzgD2.zzeq().setBackgroundColor(this.zzwA.get(zzidVar).intValue());
                            return;
                        }
                        return;
                    }
                    com.google.android.gms.ads.internal.overlay.zzh zzeq2 = zzgD2.zzeq();
                    if (zzeq2 == null) {
                        com.google.android.gms.ads.internal.overlay.zzh.zzd(zzidVar);
                        return;
                    }
                    if ("click".equals(str5)) {
                        Context context2 = zzidVar.getContext();
                        int zza5 = zza(context2, map, "x", 0);
                        int zza6 = zza(context2, map, "y", 0);
                        long uptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, zza5, zza6, 0);
                        zzeq2.zzc(obtain);
                        obtain.recycle();
                        return;
                    }
                    if ("currentTime".equals(str5)) {
                        str2 = map.get("time");
                        if (str2 != null) {
                            try {
                                zzeq2.seekTo((int) (Float.parseFloat(str2) * 1000.0f));
                                return;
                            } catch (NumberFormatException e2) {
                                sb = new StringBuilder();
                                str3 = "Could not parse time parameter from currentTime video GMSG: ";
                                sb.append(str3);
                                sb.append(str2);
                                str = sb.toString();
                                com.google.android.gms.ads.internal.util.client.zzb.zzaC(str);
                                return;
                            }
                        }
                        str4 = "Time parameter missing from currentTime video GMSG.";
                    } else {
                        if ("hide".equals(str5)) {
                            zzeq2.setVisibility(4);
                            return;
                        }
                        if ("load".equals(str5)) {
                            zzeq2.zzeH();
                            return;
                        }
                        if ("muted".equals(str5)) {
                            if (Boolean.parseBoolean(map.get("muted"))) {
                                zzeq2.zzeI();
                                return;
                            } else {
                                zzeq2.zzeJ();
                                return;
                            }
                        }
                        if ("pause".equals(str5)) {
                            zzeq2.pause();
                            return;
                        }
                        if ("play".equals(str5)) {
                            zzeq2.play();
                            return;
                        }
                        if ("show".equals(str5)) {
                            zzeq2.setVisibility(0);
                            return;
                        }
                        if ("src".equals(str5)) {
                            zzeq2.zzah(map.get("src"));
                            return;
                        }
                        if (!MediaRouteProviderProtocol.CLIENT_DATA_VOLUME.equals(str5)) {
                            if ("watermark".equals(str5)) {
                                zzeq2.zzeK();
                                return;
                            }
                            str = "Unknown video action: " + str5;
                            com.google.android.gms.ads.internal.util.client.zzb.zzaC(str);
                            return;
                        }
                        str2 = map.get(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME);
                        if (str2 != null) {
                            try {
                                zzeq2.zza(Float.parseFloat(str2));
                                return;
                            } catch (NumberFormatException e3) {
                                sb = new StringBuilder();
                                str3 = "Could not parse volume parameter from volume video GMSG: ";
                                sb.append(str3);
                                sb.append(str2);
                                str = sb.toString();
                                com.google.android.gms.ads.internal.util.client.zzb.zzaC(str);
                                return;
                            }
                        }
                        str4 = "Level parameter missing from volume video GMSG.";
                    }
                }
            }
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzaC(str4);
    }
}
