package com.google.android.gms.ads.internal.util.client;

import android.util.Log;
import com.google.android.gms.internal.ads.zzfvc;
import com.google.android.gms.wearable.WearableStatusCodes;

/* loaded from: classes.dex */
public class zzo {

    /* renamed from: do, reason: not valid java name */
    public static final zzfvc f9743do = zzfvc.zza(WearableStatusCodes.TARGET_NODE_NOT_CONNECTED);

    /* renamed from: do, reason: not valid java name */
    public static String m5560do(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4) {
            return str;
        }
        return str + " @" + stackTrace[3].getLineNumber();
    }

    public static void zze(String str) {
        if (!zzm(3) || str.length() <= 4000) {
            return;
        }
        for (String str2 : f9743do.zzd(str)) {
        }
    }

    public static void zzf(String str, Throwable th) {
        zzm(3);
    }

    public static void zzg(String str) {
        if (!zzm(6) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : f9743do.zzd(str)) {
        }
    }

    public static void zzh(String str, Throwable th) {
        zzm(6);
    }

    public static void zzi(String str) {
        if (!zzm(4) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : f9743do.zzd(str)) {
        }
    }

    public static void zzj(String str) {
        if (!zzm(5) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : f9743do.zzd(str)) {
        }
    }

    public static void zzk(String str, Throwable th) {
        zzm(5);
    }

    public static void zzl(String str, Throwable th) {
        if (zzm(5)) {
            if (th != null) {
                zzk(m5560do(str), th);
            } else {
                zzj(m5560do(str));
            }
        }
    }

    public static boolean zzm(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }
}
