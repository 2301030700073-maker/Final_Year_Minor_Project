package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import defpackage.Creturn;
import defpackage.F2;

/* loaded from: classes.dex */
public final class zzhk {
    private static final F2<String, Uri> zza = new F2<>();

    public static synchronized Uri zza(String str) {
        Uri orDefault;
        synchronized (zzhk.class) {
            F2<String, Uri> f2 = zza;
            orDefault = f2.getOrDefault(str, null);
            if (orDefault == null) {
                orDefault = Uri.parse("content://com.google.android.gms.phenotype/" + Uri.encode(str));
                f2.put(str, orDefault);
            }
        }
        return orDefault;
    }

    public static String zza(Context context, String str) {
        if (!str.contains("#")) {
            return Creturn.m7982new(str, "#", context.getPackageName());
        }
        throw new IllegalArgumentException("The passed in package cannot already have a subpackage: ".concat(str));
    }

    public static boolean zza(String str, String str2) {
        if (str.equals("eng") || str.equals("userdebug")) {
            return str2.contains("dev-keys") || str2.contains("test-keys");
        }
        return false;
    }
}
