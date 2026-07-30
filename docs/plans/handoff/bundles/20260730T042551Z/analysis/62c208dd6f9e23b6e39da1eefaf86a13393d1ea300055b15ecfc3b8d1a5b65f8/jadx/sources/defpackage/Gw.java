package defpackage;

import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class Gw {
    /* renamed from: for, reason: not valid java name */
    public static String m772for(String str) {
        if (str == null) {
            return "Metric name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Metric name must not exceed %d characters", 100);
        }
        if (!str.startsWith("_")) {
            return null;
        }
        for (int i : C4122zt.m8821const(6)) {
            if (Cpublic.m7820do(i).equals(str)) {
                return null;
            }
        }
        return "Metric name must not start with '_'";
    }

    /* renamed from: if, reason: not valid java name */
    public static void m773if(String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Attribute key must not be null or empty");
        }
        if (str2 == null || str2.length() == 0) {
            throw new IllegalArgumentException("Attribute value must not be null or empty");
        }
        if (str.length() > 40) {
            throw new IllegalArgumentException(String.format(Locale.US, "Attribute key length must not exceed %d characters", 40));
        }
        if (str2.length() > 100) {
            throw new IllegalArgumentException(String.format(Locale.US, "Attribute value length must not exceed %d characters", 100));
        }
        if (!str.matches("^(?!(firebase_|google_|ga_))[A-Za-z][A-Za-z_0-9]*")) {
            throw new IllegalArgumentException("Attribute key must start with letter, must only contain alphanumeric characters and underscore and must not start with \"firebase_\", \"google_\" and \"ga_");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract boolean mo774do();
}
