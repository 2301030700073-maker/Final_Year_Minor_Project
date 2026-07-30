package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class EF extends BF {
    public static boolean k(CharSequence charSequence, String str) {
        C0173Do.m401try(charSequence, "<this>");
        C0173Do.m401try(str, "other");
        return o(charSequence, str, 0, false, 2) >= 0;
    }

    public static final int l(CharSequence charSequence) {
        C0173Do.m401try(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int m(int i, CharSequence charSequence, String str, boolean z) {
        C0173Do.m401try(charSequence, "<this>");
        C0173Do.m401try(str, "string");
        return (z || !(charSequence instanceof String)) ? n(charSequence, str, i, charSequence.length(), z, false) : ((String) charSequence).indexOf(str, i);
    }

    /* JADX WARN: Incorrect condition in loop: B:18:0x004a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int n(java.lang.CharSequence r8, java.lang.CharSequence r9, int r10, int r11, boolean r12, boolean r13) {
        /*
            r0 = -1
            r1 = 0
            if (r13 != 0) goto L14
            vo r13 = new vo
            if (r10 >= 0) goto L9
            r10 = 0
        L9:
            int r1 = r8.length()
            if (r11 <= r1) goto L10
            r11 = r1
        L10:
            r13.<init>(r10, r11)
            goto L23
        L14:
            int r13 = l(r8)
            if (r10 <= r13) goto L1b
            r10 = r13
        L1b:
            if (r11 >= 0) goto L1e
            r11 = 0
        L1e:
            to r13 = new to
            r13.<init>(r10, r11, r0)
        L23:
            boolean r10 = r8 instanceof java.lang.String
            int r11 = r13.f15768for
            int r1 = r13.f15770try
            int r13 = r13.f15769new
            if (r10 == 0) goto L51
            boolean r10 = r9 instanceof java.lang.String
            if (r10 == 0) goto L51
            if (r1 <= 0) goto L35
            if (r11 <= r13) goto L39
        L35:
            if (r1 >= 0) goto L68
            if (r13 > r11) goto L68
        L39:
            r5 = r9
            java.lang.String r5 = (java.lang.String) r5
            r2 = 0
            r6 = r8
            java.lang.String r6 = (java.lang.String) r6
            int r4 = r9.length()
            r3 = r11
            r7 = r12
            boolean r10 = defpackage.BF.g(r2, r3, r4, r5, r6, r7)
            if (r10 == 0) goto L4d
            return r11
        L4d:
            if (r11 == r13) goto L68
            int r11 = r11 + r1
            goto L39
        L51:
            if (r1 <= 0) goto L55
            if (r11 <= r13) goto L59
        L55:
            if (r1 >= 0) goto L68
            if (r13 > r11) goto L68
        L59:
            int r10 = r9.length()
            boolean r10 = r(r9, r8, r11, r10, r12)
            if (r10 == 0) goto L64
            return r11
        L64:
            if (r11 == r13) goto L68
            int r11 = r11 + r1
            goto L59
        L68:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.EF.n(java.lang.CharSequence, java.lang.CharSequence, int, int, boolean, boolean):int");
    }

    public static /* synthetic */ int o(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m(i, charSequence, str, z);
    }

    public static int p(CharSequence charSequence) {
        int l = l(charSequence);
        C0173Do.m401try(charSequence, "<this>");
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(46, l);
        }
        char[] cArr = {'.'};
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(J2.g(cArr), l);
        }
        int l2 = l(charSequence);
        if (l > l2) {
            l = l2;
        }
        while (-1 < l) {
            if (C3645ro.m8016switch(cArr[0], charSequence.charAt(l), false)) {
                return l;
            }
            l--;
        }
        return -1;
    }

    public static C0469Rd q(CharSequence charSequence, String[] strArr, boolean z, int i) {
        s(i);
        return new C0469Rd(charSequence, 0, i, new CF(J2.d(strArr), z));
    }

    public static final boolean r(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z) {
        C0173Do.m401try(charSequence, "<this>");
        C0173Do.m401try(charSequence2, "other");
        if (i < 0 || charSequence.length() - i2 < 0 || i > charSequence2.length() - i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (!C3645ro.m8016switch(charSequence.charAt(0 + i3), charSequence2.charAt(i + i3), z)) {
                return false;
            }
        }
        return true;
    }

    public static final void s(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(V1.m2494case("Limit must be non-negative, but was ", i).toString());
        }
    }

    public static List t(CharSequence charSequence, String[] strArr, int i, int i2) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        C0173Do.m401try(charSequence, "<this>");
        if (strArr.length == 1) {
            String str = strArr[0];
            if (!(str.length() == 0)) {
                s(i);
                int m = m(0, charSequence, str, false);
                if (m == -1 || i == 1) {
                    return O4.m1617package(charSequence.toString());
                }
                boolean z = i > 0;
                int i3 = 10;
                if (z && i <= 10) {
                    i3 = i;
                }
                ArrayList arrayList = new ArrayList(i3);
                int i4 = 0;
                do {
                    arrayList.add(charSequence.subSequence(i4, m).toString());
                    i4 = str.length() + m;
                    if (z && arrayList.size() == i - 1) {
                        break;
                    }
                    m = m(i4, charSequence, str, false);
                } while (m != -1);
                arrayList.add(charSequence.subSequence(i4, charSequence.length()).toString());
                return arrayList;
            }
        }
        C3494pC c3494pC = new C3494pC(q(charSequence, strArr, false, i));
        ArrayList arrayList2 = new ArrayList(B8.c(c3494pC));
        Iterator<Object> it = c3494pC.iterator();
        while (it.hasNext()) {
            arrayList2.add(u(charSequence, (C3881vo) it.next()));
        }
        return arrayList2;
    }

    public static final String u(CharSequence charSequence, C3881vo c3881vo) {
        C0173Do.m401try(charSequence, "<this>");
        C0173Do.m401try(c3881vo, "range");
        return charSequence.subSequence(Integer.valueOf(c3881vo.f15768for).intValue(), Integer.valueOf(c3881vo.f15769new).intValue() + 1).toString();
    }

    public static String v(String str, String str2) {
        C0173Do.m401try(str2, "delimiter");
        int o = o(str, str2, 0, false, 6);
        if (o == -1) {
            return str;
        }
        String substring = str.substring(str2.length() + o, str.length());
        C0173Do.m399new(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final String w(String str, String str2) {
        C0173Do.m401try(str, "<this>");
        C0173Do.m401try(str2, "missingDelimiterValue");
        int p = p(str);
        if (p == -1) {
            return str2;
        }
        String substring = str.substring(p + 1, str.length());
        C0173Do.m399new(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final CharSequence x(String str) {
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean m8009private = C3645ro.m8009private(str.charAt(!z ? i : length));
            if (z) {
                if (!m8009private) {
                    break;
                }
                length--;
            } else if (m8009private) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1);
    }
}
