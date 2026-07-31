package j$.time.format;

import j$.util.Objects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class k implements e {
    public static final String[] d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};
    public static final k e = new k("+HH:MM:ss", "Z");
    public static final k f = new k("+HH:MM:ss", "0");
    public final String a;
    public final int b;
    public final int c;

    public k(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        for (int i = 0; i < 22; i++) {
            if (d[i].equals(str)) {
                this.b = i;
                this.c = i % 11;
                this.a = str2;
                return;
            }
        }
        throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
    }

    public static void a(boolean z, int i, StringBuilder sb) {
        sb.append(z ? ":" : "");
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    public static boolean b(CharSequence charSequence, boolean z, int i, int[] iArr) {
        int i2 = iArr[0];
        if (i2 < 0) {
            return true;
        }
        if (z && i != 1) {
            int i3 = i2 + 1;
            if (i3 <= charSequence.length() && charSequence.charAt(i2) == ':') {
                i2 = i3;
            }
            return false;
        }
        int i4 = i2 + 2;
        if (i4 <= charSequence.length()) {
            int i5 = i2 + 1;
            char charAt = charSequence.charAt(i2);
            char charAt2 = charSequence.charAt(i5);
            if (charAt >= '0' && charAt <= '9' && charAt2 >= '0' && charAt2 <= '9') {
                int i6 = (charAt2 - '0') + ((charAt - '0') * 10);
                if (i6 >= 0 && i6 <= 59) {
                    iArr[i] = i6;
                    iArr[0] = i4;
                    return true;
                }
            }
        }
        return false;
    }

    public static void c(CharSequence charSequence, boolean z, int[] iArr) {
        if (!z) {
            e(charSequence, 1, 2, iArr);
        } else {
            if (b(charSequence, false, 1, iArr)) {
                return;
            }
            iArr[0] = ~iArr[0];
        }
    }

    public static void d(CharSequence charSequence, boolean z, boolean z2, int[] iArr) {
        if (b(charSequence, z, 2, iArr) || !z2) {
            return;
        }
        iArr[0] = ~iArr[0];
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
    
        r12[0] = ~r12[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(java.lang.CharSequence r9, int r10, int r11, int[] r12) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.k.e(java.lang.CharSequence, int, int, int[]):void");
    }

    @Override // j$.time.format.e
    public final boolean f(y yVar, StringBuilder sb) {
        Long a = yVar.a(j$.time.temporal.a.OFFSET_SECONDS);
        boolean z = false;
        if (a == null) {
            return false;
        }
        int O = j$.time.a.O(a.longValue());
        String str = this.a;
        if (O == 0) {
            sb.append(str);
            return true;
        }
        int abs = Math.abs((O / 3600) % 100);
        int abs2 = Math.abs((O / 60) % 60);
        int abs3 = Math.abs(O % 60);
        int length = sb.length();
        sb.append(O < 0 ? "-" : "+");
        if (this.b >= 11 && abs < 10) {
            sb.append((char) (abs + 48));
        } else {
            a(false, abs, sb);
        }
        int i = this.c;
        if ((i >= 3 && i <= 8) || ((i >= 9 && abs3 > 0) || (i >= 1 && abs2 > 0))) {
            a(i > 0 && i % 2 == 0, abs2, sb);
            abs += abs2;
            if (i == 7 || i == 8 || (i >= 5 && abs3 > 0)) {
                if (i > 0 && i % 2 == 0) {
                    z = true;
                }
                a(z, abs3, sb);
                abs += abs3;
            }
        }
        if (abs == 0) {
            sb.setLength(length);
            sb.append(str);
        }
        return true;
    }

    @Override // j$.time.format.e
    public final int g(w wVar, CharSequence charSequence, int i) {
        CharSequence charSequence2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int length = charSequence.length();
        String str = this.a;
        int length2 = str.length();
        if (length2 == 0) {
            if (i == length) {
                return wVar.g(j$.time.temporal.a.OFFSET_SECONDS, 0L, i, i);
            }
            charSequence2 = charSequence;
        } else {
            if (i == length) {
                return ~i;
            }
            charSequence2 = charSequence;
            if (wVar.h(charSequence2, i, str, 0, length2)) {
                return wVar.g(j$.time.temporal.a.OFFSET_SECONDS, 0L, i, i + length2);
            }
        }
        char charAt = charSequence.charAt(i);
        if (charAt == '+' || charAt == '-') {
            int i7 = charAt == '-' ? -1 : 1;
            int i8 = this.c;
            boolean z = i8 > 0 && i8 % 2 == 0;
            int i9 = this.b;
            boolean z2 = i9 < 11;
            int[] iArr = new int[4];
            iArr[0] = i + 1;
            if (!wVar.c) {
                if (z2) {
                    if (z || (i9 == 0 && length > (i6 = i + 3) && charSequence2.charAt(i6) == ':')) {
                        i9 = 10;
                        z = true;
                    } else {
                        i9 = 9;
                    }
                } else if (z || (i9 == 11 && length > (i5 = i + 3) && (charSequence2.charAt(i + 2) == ':' || charSequence2.charAt(i5) == ':'))) {
                    i9 = 21;
                    z = true;
                } else {
                    i9 = 20;
                }
            }
            switch (i9) {
                case 0:
                case 11:
                    c(charSequence2, z2, iArr);
                    break;
                case 1:
                case 2:
                case IMAGE_VALUE:
                    c(charSequence2, z2, iArr);
                    d(charSequence2, z, false, iArr);
                    break;
                case 3:
                case 4:
                case 15:
                    c(charSequence2, z2, iArr);
                    d(charSequence2, z, true, iArr);
                    break;
                case 5:
                case 6:
                case VERTICAL_GRID_ITEM_VALUE:
                    c(charSequence2, z2, iArr);
                    d(charSequence2, z, true, iArr);
                    b(charSequence2, z, 3, iArr);
                    break;
                case 7:
                case 8:
                case RADIO_BUTTON_VALUE:
                    c(charSequence2, z2, iArr);
                    d(charSequence2, z, true, iArr);
                    if (!b(charSequence2, z, 3, iArr)) {
                        iArr[0] = ~iArr[0];
                        break;
                    }
                    break;
                case 9:
                case 10:
                case RADIO_COLUMN_VALUE:
                    c(charSequence2, z2, iArr);
                    if (b(charSequence2, z, 2, iArr)) {
                        b(charSequence2, z, 3, iArr);
                        break;
                    }
                    break;
                case 12:
                    e(charSequence2, 1, 4, iArr);
                    break;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    e(charSequence2, 3, 4, iArr);
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    e(charSequence2, 3, 6, iArr);
                    break;
                case RADIO_GROUP_VALUE:
                    e(charSequence2, 5, 6, iArr);
                    break;
                case RADIO_ROW_VALUE:
                    e(charSequence2, 1, 6, iArr);
                    break;
            }
            i2 = length2;
            int i10 = iArr[0];
            if (i10 > 0) {
                int i11 = iArr[1];
                if (i11 <= 23 && (i3 = iArr[2]) <= 59 && (i4 = iArr[3]) <= 59) {
                    return wVar.g(j$.time.temporal.a.OFFSET_SECONDS, ((i3 * 60) + (i11 * 3600) + i4) * i7, i, i10);
                }
                j$.time.h.k("Value out of range: Hour[0-23], Minute[0-59], Second[0-59]");
                return 0;
            }
        } else {
            i2 = length2;
        }
        return i2 == 0 ? wVar.g(j$.time.temporal.a.OFFSET_SECONDS, 0L, i, i) : ~i;
    }

    public final String toString() {
        String replace = this.a.replace("'", "''");
        return "Offset(" + d[this.b] + ",'" + replace + "')";
    }
}
