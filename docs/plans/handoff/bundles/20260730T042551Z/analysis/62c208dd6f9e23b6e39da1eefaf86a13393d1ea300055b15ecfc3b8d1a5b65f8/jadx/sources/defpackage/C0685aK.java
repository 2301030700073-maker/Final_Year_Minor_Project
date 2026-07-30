package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.api.Api;

/* renamed from: aK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0685aK {

    /* renamed from: do, reason: not valid java name */
    public static Boolean f4940do;

    /* renamed from: do, reason: not valid java name */
    public static boolean m3118do(Context context) {
        Boolean bool = f4940do;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean valueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            f4940do = valueOf;
            return valueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            Q0 m1818new = Q0.m1818new();
            e.getMessage();
            m1818new.m1820do();
            return false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3119if(long j) {
        if (j > 2147483647L) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }
}
