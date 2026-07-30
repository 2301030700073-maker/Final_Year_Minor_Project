package defpackage;

/* renamed from: k8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3195k8 extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public static final char f13872do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final char[] f13873do;

    /* renamed from: if, reason: not valid java name */
    public static final char[] f13875if = {'T', 'N', '*', 'E'};

    /* renamed from: for, reason: not valid java name */
    public static final char[] f13874for = {'/', ':', '+', '.'};

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        f13873do = cArr;
        f13872do = cArr[0];
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: try */
    public final boolean[] mo2288try(String str) {
        int i;
        int length = str.length();
        char c = f13872do;
        if (length < 2) {
            str = c + str + c;
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = f13873do;
            boolean m7040for = C3136j8.m7040for(upperCase, cArr);
            boolean m7040for2 = C3136j8.m7040for(upperCase2, cArr);
            char[] cArr2 = f13875if;
            boolean m7040for3 = C3136j8.m7040for(upperCase, cArr2);
            boolean m7040for4 = C3136j8.m7040for(upperCase2, cArr2);
            if (m7040for) {
                if (!m7040for2) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (!m7040for3) {
                if (m7040for2 || m7040for4) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
                str = c + str + c;
            } else if (!m7040for4) {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
            }
        }
        int i2 = 20;
        for (int i3 = 1; i3 < str.length() - 1; i3++) {
            if (Character.isDigit(str.charAt(i3)) || str.charAt(i3) == '-' || str.charAt(i3) == '$') {
                i2 += 9;
            } else {
                if (!C3136j8.m7040for(str.charAt(i3), f13874for)) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i3) + '\'');
                }
                i2 += 10;
            }
        }
        boolean[] zArr = new boolean[(str.length() - 1) + i2];
        int i4 = 0;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i5));
            if (i5 == 0 || i5 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i6 = 0;
            while (true) {
                char[] cArr3 = C3136j8.f13641do;
                if (i6 >= cArr3.length) {
                    i = 0;
                    break;
                }
                if (upperCase3 == cArr3[i6]) {
                    i = C3136j8.f13642do[i6];
                    break;
                }
                i6++;
            }
            int i7 = 0;
            boolean z = true;
            while (true) {
                int i8 = 0;
                while (i7 < 7) {
                    zArr[i4] = z;
                    i4++;
                    if (((i >> (6 - i7)) & 1) == 0 || i8 == 1) {
                        z = !z;
                        i7++;
                    } else {
                        i8++;
                    }
                }
                break;
            }
            if (i5 < str.length() - 1) {
                zArr[i4] = false;
                i4++;
            }
        }
        return zArr;
    }
}
