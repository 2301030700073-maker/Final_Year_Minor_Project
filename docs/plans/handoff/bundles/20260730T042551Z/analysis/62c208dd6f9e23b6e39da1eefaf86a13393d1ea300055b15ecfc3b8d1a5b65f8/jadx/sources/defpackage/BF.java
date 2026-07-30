package defpackage;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class BF extends AF {
    public static final boolean e(String str, String str2) {
        return str == null ? str2 == null : str.equalsIgnoreCase(str2);
    }

    public static final boolean f(String str) {
        boolean z;
        C0173Do.m401try(str, "<this>");
        if (str.length() == 0) {
            return true;
        }
        Iterable c3881vo = new C3881vo(0, str.length() - 1);
        if (!(c3881vo instanceof Collection) || !((Collection) c3881vo).isEmpty()) {
            Iterator<Integer> it = c3881vo.iterator();
            while (((C3822uo) it).f15951do) {
                if (!C3645ro.m8009private(str.charAt(((AbstractC3704so) it).nextInt()))) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        return z;
    }

    public static final boolean g(int i, int i2, int i3, String str, String str2, boolean z) {
        C0173Do.m401try(str, "<this>");
        C0173Do.m401try(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    public static String h() {
        String replace = "16.0.0".replace('.', '|');
        C0173Do.m399new(replace, "this as java.lang.String…replace(oldChar, newChar)");
        return replace;
    }

    public static String i(String str, String str2, String str3) {
        C0173Do.m401try(str, "<this>");
        C0173Do.m401try(str2, "oldValue");
        C0173Do.m401try(str3, "newValue");
        int m = EF.m(0, str, str2, false);
        if (m < 0) {
            return str;
        }
        int length = str2.length();
        int i = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i2 = 0;
        do {
            sb.append((CharSequence) str, i2, m);
            sb.append(str3);
            i2 = m + length;
            if (m >= str.length()) {
                break;
            }
            m = EF.m(m + i, str, str2, false);
        } while (m > 0);
        sb.append((CharSequence) str, i2, str.length());
        String sb2 = sb.toString();
        C0173Do.m399new(sb2, "stringBuilder.append(this, i, length).toString()");
        return sb2;
    }

    public static boolean j(String str, String str2) {
        C0173Do.m401try(str, "<this>");
        C0173Do.m401try(str2, "prefix");
        return str.startsWith(str2);
    }
}
