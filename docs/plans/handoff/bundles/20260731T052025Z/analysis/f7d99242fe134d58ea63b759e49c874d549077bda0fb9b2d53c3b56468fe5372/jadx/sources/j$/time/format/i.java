package j$.time.format;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.temporal.ChronoField;
import j$.util.Objects;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class i implements e {
    public static final String[] d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};
    public static final i e = new i("+HH:MM:ss", "Z");
    public static final i f = new i("+HH:MM:ss", "0");
    public final String a;
    public final int b;
    public final int c;

    public i(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i = 0;
        while (true) {
            String[] strArr = d;
            if (i >= strArr.length) {
                throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
            }
            if (strArr[i].equals(str)) {
                this.b = i;
                this.c = i % 11;
                this.a = str2;
                return;
            }
            i++;
        }
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
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.i.e(java.lang.CharSequence, int, int, int[]):void");
    }

    @Override // j$.time.format.e
    public final boolean k(r rVar, StringBuilder sb) {
        Long a = rVar.a(ChronoField.OFFSET_SECONDS);
        boolean z = false;
        if (a == null) {
            return false;
        }
        long longValue = a.longValue();
        int i = (int) longValue;
        if (longValue != i) {
            throw new ArithmeticException();
        }
        String str = this.a;
        if (i == 0) {
            sb.append(str);
            return true;
        }
        int abs = Math.abs((i / 3600) % 100);
        int abs2 = Math.abs((i / 60) % 60);
        int abs3 = Math.abs(i % 60);
        int length = sb.length();
        sb.append(i < 0 ? "-" : "+");
        if (this.b >= 11 && abs < 10) {
            sb.append((char) (abs + 48));
        } else {
            a(false, abs, sb);
        }
        int i2 = this.c;
        if ((i2 >= 3 && i2 <= 8) || ((i2 >= 9 && abs3 > 0) || (i2 >= 1 && abs2 > 0))) {
            a(i2 > 0 && i2 % 2 == 0, abs2, sb);
            abs += abs2;
            if (i2 == 7 || i2 == 8 || (i2 >= 5 && abs3 > 0)) {
                if (i2 > 0 && i2 % 2 == 0) {
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
    public final int m(p pVar, CharSequence charSequence, int i) {
        p pVar2;
        int i2;
        CharSequence charSequence2;
        int i3;
        int i4;
        int i5;
        int i6;
        int length = charSequence.length();
        int length2 = this.a.length();
        if (length2 != 0) {
            pVar2 = pVar;
            i2 = i;
            if (i2 == length) {
                return ~i2;
            }
            charSequence2 = charSequence;
            if (pVar2.g(charSequence2, i2, this.a, 0, length2)) {
                return pVar2.f(ChronoField.OFFSET_SECONDS, 0L, i2, i2 + length2);
            }
        } else {
            if (i == length) {
                return pVar.f(ChronoField.OFFSET_SECONDS, 0L, i, i);
            }
            pVar2 = pVar;
            charSequence2 = charSequence;
            i2 = i;
        }
        char charAt = charSequence2.charAt(i2);
        if (charAt == '+' || charAt == '-') {
            int i7 = charAt == '-' ? -1 : 1;
            int i8 = this.c;
            boolean z = i8 > 0 && i8 % 2 == 0;
            int i9 = this.b;
            boolean z2 = i9 < 11;
            int[] iArr = new int[4];
            iArr[0] = i2 + 1;
            if (!pVar2.c) {
                if (z2) {
                    if (z || (i9 == 0 && length > (i6 = i2 + 3) && charSequence2.charAt(i6) == ':')) {
                        i9 = 10;
                        z = true;
                    } else {
                        i9 = 9;
                    }
                } else if (z || (i9 == 11 && length > (i5 = i2 + 3) && (charSequence2.charAt(i2 + 2) == ':' || charSequence2.charAt(i5) == ':'))) {
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
                case 13:
                    c(charSequence2, z2, iArr);
                    d(charSequence2, z, false, iArr);
                    break;
                case 3:
                case 4:
                case OffsetKt.Horizontal /* 15 */:
                    c(charSequence2, z2, iArr);
                    d(charSequence2, z, true, iArr);
                    break;
                case 5:
                case 6:
                case 17:
                    c(charSequence2, z2, iArr);
                    d(charSequence2, z, true, iArr);
                    b(charSequence2, z, 3, iArr);
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                case 19:
                    c(charSequence2, z2, iArr);
                    d(charSequence2, z, true, iArr);
                    if (!b(charSequence2, z, 3, iArr)) {
                        iArr[0] = ~iArr[0];
                        break;
                    }
                    break;
                case 9:
                case 10:
                case 21:
                    c(charSequence2, z2, iArr);
                    if (b(charSequence2, z, 2, iArr)) {
                        b(charSequence2, z, 3, iArr);
                        break;
                    }
                    break;
                case BasicTextKt.ShiftMeta /* 12 */:
                    e(charSequence2, 1, 4, iArr);
                    break;
                case 14:
                    e(charSequence2, 3, 4, iArr);
                    break;
                case 16:
                    e(charSequence2, 3, 6, iArr);
                    break;
                case 18:
                    e(charSequence2, 5, 6, iArr);
                    break;
                case 20:
                    e(charSequence2, 1, 6, iArr);
                    break;
            }
            int i10 = iArr[0];
            if (i10 > 0) {
                int i11 = iArr[1];
                if (i11 <= 23 && (i3 = iArr[2]) <= 59 && (i4 = iArr[3]) <= 59) {
                    return pVar2.f(ChronoField.OFFSET_SECONDS, i7 * ((i3 * 60) + (i11 * 3600) + i4), i2, i10);
                }
                j$.nio.file.j.k("Value out of range: Hour[0-23], Minute[0-59], Second[0-59]");
                return 0;
            }
        }
        return length2 == 0 ? pVar2.f(ChronoField.OFFSET_SECONDS, 0L, i2, i2) : ~i2;
    }

    public final String toString() {
        String replace = this.a.replace("'", "''");
        return "Offset(" + d[this.b] + ",'" + replace + "')";
    }
}
