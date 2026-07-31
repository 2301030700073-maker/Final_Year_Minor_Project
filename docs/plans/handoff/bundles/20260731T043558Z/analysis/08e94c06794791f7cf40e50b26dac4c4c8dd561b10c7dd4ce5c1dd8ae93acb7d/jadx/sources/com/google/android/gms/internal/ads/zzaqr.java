package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import com.google.common.net.HttpHeaders;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaqr {
    public static zzapd zza(zzapq zzapqVar) {
        boolean z;
        long j;
        long j2;
        long j3;
        long j4;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = zzapqVar.zzc;
        if (map == null) {
            return null;
        }
        String str = (String) map.get(HttpHeaders.DATE);
        long zzb = str != null ? zzb(str) : 0L;
        String str2 = (String) map.get(HttpHeaders.CACHE_CONTROL);
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z = false;
            j = 0;
            j2 = 0;
            while (i < split.length) {
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j2 = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j = Long.parseLong(trim.substring(23));
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z = true;
                }
                i++;
            }
            i = 1;
        } else {
            z = false;
            j = 0;
            j2 = 0;
        }
        String str3 = (String) map.get(HttpHeaders.EXPIRES);
        long zzb2 = str3 != null ? zzb(str3) : 0L;
        String str4 = (String) map.get(HttpHeaders.LAST_MODIFIED);
        long zzb3 = str4 != null ? zzb(str4) : 0L;
        String str5 = (String) map.get(HttpHeaders.ETAG);
        if (i != 0) {
            j4 = currentTimeMillis + (j2 * 1000);
            j3 = z ? j4 : (j * 1000) + j4;
        } else {
            j3 = 0;
            if (zzb <= 0 || zzb2 < zzb) {
                j4 = 0;
            } else {
                j4 = currentTimeMillis + (zzb2 - zzb);
                j3 = j4;
            }
        }
        zzapd zzapdVar = new zzapd();
        zzapdVar.zza = zzapqVar.zzb;
        zzapdVar.zzb = str5;
        zzapdVar.zzf = j4;
        zzapdVar.zze = j3;
        zzapdVar.zzc = zzb;
        zzapdVar.zzd = zzb3;
        zzapdVar.zzg = map;
        zzapdVar.zzh = zzapqVar.zzd;
        return zzapdVar;
    }

    public static long zzb(String str) {
        try {
            return zzd("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if (AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(str) || "-1".equals(str)) {
                zzaqg.zza("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            zzaqg.zzd(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    static String zzc(long j) {
        return zzd("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j));
    }

    private static SimpleDateFormat zzd(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
