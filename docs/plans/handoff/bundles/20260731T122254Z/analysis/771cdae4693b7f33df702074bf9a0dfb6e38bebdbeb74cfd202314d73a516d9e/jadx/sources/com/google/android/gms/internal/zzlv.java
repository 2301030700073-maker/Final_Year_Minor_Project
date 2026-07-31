package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.util.Log;

/* loaded from: classes.dex */
public class zzlv {
    private static int zzakU = -1;

    public static boolean zzam(Context context) {
        return zzap(context) == 3;
    }

    private static int zzan(Context context) {
        return ((zzao(context) % 1000) / 100) + 5;
    }

    private static int zzao(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("Fitness", "Could not find package info for Google Play Services");
            return -1;
        }
    }

    public static int zzap(Context context) {
        int i;
        if (zzakU == -1) {
            int zzan = zzan(context);
            if (zzan != 8) {
                if (zzan == 10) {
                    i = 3;
                } else if (zzan != 13) {
                    i = zzaq(context) ? 1 : 2;
                }
                zzakU = i;
            }
            i = 0;
            zzakU = i;
        }
        return zzakU;
    }

    private static boolean zzaq(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getPhoneType() != 0;
    }
}
