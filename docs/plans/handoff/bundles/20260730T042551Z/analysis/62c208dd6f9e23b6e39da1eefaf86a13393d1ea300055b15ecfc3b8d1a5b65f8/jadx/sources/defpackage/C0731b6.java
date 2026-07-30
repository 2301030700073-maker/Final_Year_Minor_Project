package defpackage;

import android.os.Build;
import android.os.ext.SdkExtensions;
import java.util.Locale;

/* renamed from: b6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0731b6 {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f8326do = 0;

    /* renamed from: b6$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f8327do = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final int m4814do(int i) {
            return SdkExtensions.getExtensionVersion(i);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        Cdo cdo = Cdo.f8327do;
        if (i >= 30) {
            cdo.m4814do(30);
        }
        if (i >= 30) {
            cdo.m4814do(31);
        }
        if (i >= 30) {
            cdo.m4814do(33);
        }
        if (i >= 30) {
            cdo.m4814do(1000000);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final boolean m4811do(String str, String str2) {
        if (C0173Do.m394do("REL", str2)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String upperCase = str2.toUpperCase(locale);
        C0173Do.m399new(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = str.toUpperCase(locale);
        C0173Do.m399new(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase.compareTo(upperCase2) >= 0;
    }

    /* renamed from: for, reason: not valid java name */
    public static final boolean m4812for() {
        int i = Build.VERSION.SDK_INT;
        if (i < 33) {
            if (i >= 32) {
                String str = Build.VERSION.CODENAME;
                C0173Do.m399new(str, "CODENAME");
                if (m4811do("Tiramisu", str)) {
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static final boolean m4813if() {
        int i = Build.VERSION.SDK_INT;
        if (i < 31) {
            if (i >= 30) {
                String str = Build.VERSION.CODENAME;
                C0173Do.m399new(str, "CODENAME");
                if (m4811do("S", str)) {
                }
            }
            return false;
        }
        return true;
    }
}
