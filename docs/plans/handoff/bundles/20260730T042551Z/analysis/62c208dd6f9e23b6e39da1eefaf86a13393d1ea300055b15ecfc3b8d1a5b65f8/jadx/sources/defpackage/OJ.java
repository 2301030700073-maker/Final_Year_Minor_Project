package defpackage;

import androidx.datastore.preferences.protobuf.Cwhile;

/* loaded from: classes.dex */
public final class OJ {

    /* renamed from: do, reason: not valid java name */
    public static final Cif f2633do;

    /* renamed from: OJ$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m1663do(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
            if (!m1664for(b2)) {
                if ((((b2 + 112) + (b << 28)) >> 30) == 0 && !m1664for(b3) && !m1664for(b4)) {
                    int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
                    cArr[i] = (char) ((i2 >>> 10) + 55232);
                    cArr[i + 1] = (char) ((i2 & 1023) + 56320);
                    return;
                }
            }
            throw Cwhile.m4054do();
        }

        /* renamed from: for, reason: not valid java name */
        public static boolean m1664for(byte b) {
            return b > -65;
        }

        /* renamed from: if, reason: not valid java name */
        public static void m1665if(byte b, byte b2, byte b3, char[] cArr, int i) {
            if (m1664for(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m1664for(b3)))) {
                throw Cwhile.m4054do();
            }
            cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
        }
    }

    /* renamed from: OJ$for, reason: invalid class name */
    public static final class Cfor extends Cif {
        @Override // defpackage.OJ.Cif
        /* renamed from: do, reason: not valid java name */
        public final String mo1666do(byte[] bArr, int i, int i2) {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (!(b >= 0)) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = bArr[i];
                if (b2 >= 0) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) b2;
                    i = i6;
                    while (true) {
                        i5 = i7;
                        if (i >= i3) {
                            break;
                        }
                        byte b3 = bArr[i];
                        if (!(b3 >= 0)) {
                            break;
                        }
                        i++;
                        i7 = i5 + 1;
                        cArr[i5] = (char) b3;
                    }
                } else {
                    if (!(b2 < -32)) {
                        if (b2 < -16) {
                            if (i6 >= i3 - 1) {
                                throw Cwhile.m4054do();
                            }
                            int i8 = i6 + 1;
                            Cdo.m1665if(b2, bArr[i6], bArr[i8], cArr, i5);
                            i = i8 + 1;
                            i5++;
                        } else {
                            if (i6 >= i3 - 2) {
                                throw Cwhile.m4054do();
                            }
                            int i9 = i6 + 1;
                            byte b4 = bArr[i6];
                            int i10 = i9 + 1;
                            Cdo.m1663do(b2, b4, bArr[i9], bArr[i10], cArr, i5);
                            i5 = i5 + 1 + 1;
                            i = i10 + 1;
                        }
                    } else {
                        if (i6 >= i3) {
                            throw Cwhile.m4054do();
                        }
                        int i11 = i6 + 1;
                        byte b5 = bArr[i6];
                        int i12 = i5 + 1;
                        if (b2 < -62 || Cdo.m1664for(b5)) {
                            throw Cwhile.m4054do();
                        }
                        cArr[i5] = (char) (((b2 & 31) << 6) | (b5 & 63));
                        i = i11;
                        i5 = i12;
                    }
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // defpackage.OJ.Cif
        /* renamed from: for, reason: not valid java name */
        public final int mo1667for(byte[] bArr, int i, int i2) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            if (i < i2) {
                while (i < i2) {
                    int i3 = i + 1;
                    byte b = bArr[i];
                    if (b < 0) {
                        if (b < -32) {
                            if (i3 >= i2) {
                                return b;
                            }
                            if (b >= -62) {
                                i = i3 + 1;
                                if (bArr[i3] > -65) {
                                }
                            }
                            return -1;
                        }
                        if (b < -16) {
                            if (i3 >= i2 - 1) {
                                return OJ.m1659do(bArr, i3, i2);
                            }
                            int i4 = i3 + 1;
                            byte b2 = bArr[i3];
                            if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                                i = i4 + 1;
                                if (bArr[i4] > -65) {
                                }
                            }
                        } else {
                            if (i3 >= i2 - 2) {
                                return OJ.m1659do(bArr, i3, i2);
                            }
                            int i5 = i3 + 1;
                            byte b3 = bArr[i3];
                            if (b3 <= -65) {
                                if ((((b3 + 112) + (b << 28)) >> 30) == 0) {
                                    int i6 = i5 + 1;
                                    if (bArr[i5] <= -65) {
                                        i3 = i6 + 1;
                                        if (bArr[i6] > -65) {
                                        }
                                    }
                                }
                            }
                        }
                        return -1;
                    }
                    i = i3;
                }
            }
            return 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        
            return r10 + r0;
         */
        @Override // defpackage.OJ.Cif
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int mo1668if(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 250
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.OJ.Cfor.mo1668if(java.lang.CharSequence, byte[], int, int):int");
        }
    }

    /* renamed from: OJ$if, reason: invalid class name */
    public static abstract class Cif {
        /* renamed from: do */
        public abstract String mo1666do(byte[] bArr, int i, int i2);

        /* renamed from: for */
        public abstract int mo1667for(byte[] bArr, int i, int i2);

        /* renamed from: if */
        public abstract int mo1668if(CharSequence charSequence, byte[] bArr, int i, int i2);
    }

    /* renamed from: OJ$new, reason: invalid class name */
    public static class Cnew extends IllegalArgumentException {
        public Cnew(int i, int i2) {
            super(defpackage.Cif.m6918new("Unpaired surrogate at index ", i, " of ", i2));
        }
    }

    /* renamed from: OJ$try, reason: invalid class name */
    public static final class Ctry extends Cif {
        /* renamed from: new, reason: not valid java name */
        public static int m1669new(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                Cif cif = OJ.f2633do;
                if (i > -12) {
                    return -1;
                }
                return i;
            }
            if (i2 == 1) {
                return OJ.m1660for(i, C3736tJ.m8247else(bArr, j));
            }
            if (i2 == 2) {
                return OJ.m1662new(i, C3736tJ.m8247else(bArr, j), C3736tJ.m8247else(bArr, j + 1));
            }
            throw new AssertionError();
        }

        @Override // defpackage.OJ.Cif
        /* renamed from: do */
        public final String mo1666do(byte[] bArr, int i, int i2) {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte m8247else = C3736tJ.m8247else(bArr, i);
                if (!(m8247else >= 0)) {
                    break;
                }
                i++;
                cArr[i4] = (char) m8247else;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte m8247else2 = C3736tJ.m8247else(bArr, i);
                if (m8247else2 >= 0) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) m8247else2;
                    i = i6;
                    while (true) {
                        i5 = i7;
                        if (i >= i3) {
                            break;
                        }
                        byte m8247else3 = C3736tJ.m8247else(bArr, i);
                        if (!(m8247else3 >= 0)) {
                            break;
                        }
                        i++;
                        i7 = i5 + 1;
                        cArr[i5] = (char) m8247else3;
                    }
                } else {
                    if (!(m8247else2 < -32)) {
                        if (m8247else2 < -16) {
                            if (i6 >= i3 - 1) {
                                throw Cwhile.m4054do();
                            }
                            int i8 = i6 + 1;
                            Cdo.m1665if(m8247else2, C3736tJ.m8247else(bArr, i6), C3736tJ.m8247else(bArr, i8), cArr, i5);
                            i = i8 + 1;
                            i5++;
                        } else {
                            if (i6 >= i3 - 2) {
                                throw Cwhile.m4054do();
                            }
                            int i9 = i6 + 1;
                            byte m8247else4 = C3736tJ.m8247else(bArr, i6);
                            int i10 = i9 + 1;
                            Cdo.m1663do(m8247else2, m8247else4, C3736tJ.m8247else(bArr, i9), C3736tJ.m8247else(bArr, i10), cArr, i5);
                            i5 = i5 + 1 + 1;
                            i = i10 + 1;
                        }
                    } else {
                        if (i6 >= i3) {
                            throw Cwhile.m4054do();
                        }
                        int i11 = i6 + 1;
                        byte m8247else5 = C3736tJ.m8247else(bArr, i6);
                        int i12 = i5 + 1;
                        if (m8247else2 < -62 || Cdo.m1664for(m8247else5)) {
                            throw Cwhile.m4054do();
                        }
                        cArr[i5] = (char) (((m8247else2 & 31) << 6) | (m8247else5 & 63));
                        i = i11;
                        i5 = i12;
                    }
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // defpackage.OJ.Cif
        /* renamed from: for */
        public final int mo1667for(byte[] bArr, int i, int i2) {
            int i3;
            long j;
            if ((i | i2 | (bArr.length - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            long j2 = i;
            int i4 = (int) (i2 - j2);
            if (i4 >= 16) {
                long j3 = j2;
                i3 = 0;
                while (true) {
                    if (i3 >= i4) {
                        i3 = i4;
                        break;
                    }
                    long j4 = j3 + 1;
                    if (C3736tJ.m8247else(bArr, j3) < 0) {
                        break;
                    }
                    i3++;
                    j3 = j4;
                }
            } else {
                i3 = 0;
            }
            int i5 = i4 - i3;
            long j5 = j2 + i3;
            while (true) {
                byte b = 0;
                while (true) {
                    if (i5 <= 0) {
                        break;
                    }
                    long j6 = j5 + 1;
                    b = C3736tJ.m8247else(bArr, j5);
                    if (b < 0) {
                        j5 = j6;
                        break;
                    }
                    i5--;
                    j5 = j6;
                }
                if (i5 != 0) {
                    int i6 = i5 - 1;
                    if (b >= -32) {
                        if (b >= -16) {
                            if (i6 >= 3) {
                                i5 = i6 - 3;
                                long j7 = j5 + 1;
                                byte m8247else = C3736tJ.m8247else(bArr, j5);
                                if (m8247else > -65 || (((m8247else + 112) + (b << 28)) >> 30) != 0) {
                                    break;
                                }
                                long j8 = j7 + 1;
                                if (C3736tJ.m8247else(bArr, j7) > -65) {
                                    break;
                                }
                                j = j8 + 1;
                                if (C3736tJ.m8247else(bArr, j8) > -65) {
                                    break;
                                }
                                j5 = j;
                            } else {
                                return m1669new(bArr, b, j5, i6);
                            }
                        } else if (i6 >= 2) {
                            i5 = i6 - 2;
                            long j9 = j5 + 1;
                            byte m8247else2 = C3736tJ.m8247else(bArr, j5);
                            if (m8247else2 > -65 || ((b == -32 && m8247else2 < -96) || (b == -19 && m8247else2 >= -96))) {
                                break;
                            }
                            j5 = j9 + 1;
                            if (C3736tJ.m8247else(bArr, j9) > -65) {
                                break;
                            }
                        } else {
                            return m1669new(bArr, b, j5, i6);
                        }
                    } else if (i6 != 0) {
                        i5 = i6 - 1;
                        if (b < -62) {
                            break;
                        }
                        j = j5 + 1;
                        if (C3736tJ.m8247else(bArr, j5) > -65) {
                            break;
                        }
                        j5 = j;
                    } else {
                        return b;
                    }
                } else {
                    return 0;
                }
            }
            return -1;
        }

        @Override // defpackage.OJ.Cif
        /* renamed from: if */
        public final int mo1668if(CharSequence charSequence, byte[] bArr, int i, int i2) {
            long j;
            char c;
            long j2;
            int i3;
            long j3;
            long j4;
            char charAt;
            long j5 = i;
            long j6 = i2 + j5;
            int length = charSequence.length();
            if (length > i2 || bArr.length - i2 < i) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i + i2));
            }
            int i4 = 0;
            while (true) {
                j = 1;
                c = 128;
                if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                C3736tJ.m8259throw(bArr, j5, (byte) charAt);
                i4++;
                j5 = 1 + j5;
            }
            if (i4 == length) {
                return (int) j5;
            }
            while (i4 < length) {
                char charAt2 = charSequence.charAt(i4);
                if (charAt2 >= c || j5 >= j6) {
                    if (charAt2 < 2048 && j5 <= j6 - 2) {
                        long j7 = j5 + j;
                        C3736tJ.m8259throw(bArr, j5, (byte) ((charAt2 >>> 6) | 960));
                        C3736tJ.m8259throw(bArr, j7, (byte) ((charAt2 & '?') | 128));
                        j4 = j7 + j;
                        j3 = j;
                    } else {
                        if ((charAt2 >= 55296 && 57343 >= charAt2) || j5 > j6 - 3) {
                            if (j5 > j6 - 4) {
                                if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                                    throw new Cnew(i4, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j5);
                            }
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char charAt3 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    long j8 = j5 + 1;
                                    C3736tJ.m8259throw(bArr, j5, (byte) ((codePoint >>> 18) | 240));
                                    long j9 = j8 + 1;
                                    C3736tJ.m8259throw(bArr, j8, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j10 = j9 + 1;
                                    C3736tJ.m8259throw(bArr, j9, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j3 = 1;
                                    j4 = j10 + 1;
                                    C3736tJ.m8259throw(bArr, j10, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new Cnew(i4 - 1, length);
                        }
                        long j11 = j5 + j;
                        C3736tJ.m8259throw(bArr, j5, (byte) ((charAt2 >>> '\f') | 480));
                        long j12 = j11 + j;
                        C3736tJ.m8259throw(bArr, j11, (byte) (((charAt2 >>> 6) & 63) | 128));
                        C3736tJ.m8259throw(bArr, j12, (byte) ((charAt2 & '?') | 128));
                        j2 = j12 + 1;
                    }
                    i4++;
                    c = 128;
                    long j13 = j3;
                    j5 = j4;
                    j = j13;
                } else {
                    j2 = j5 + j;
                    C3736tJ.m8259throw(bArr, j5, (byte) charAt2);
                }
                j4 = j2;
                j3 = 1;
                i4++;
                c = 128;
                long j132 = j3;
                j5 = j4;
                j = j132;
            }
            return (int) j5;
        }
    }

    static {
        f2633do = (!(C3736tJ.f15691if && C3736tJ.f15689do) || K0.m1100do()) ? new Cfor() : new Ctry();
    }

    /* renamed from: do, reason: not valid java name */
    public static int m1659do(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            if (b > -12) {
                b = -1;
            }
            return b;
        }
        if (i3 == 1) {
            return m1660for(b, bArr[i]);
        }
        if (i3 == 2) {
            return m1662new(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: for, reason: not valid java name */
    public static int m1660for(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m1661if(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char charAt2 = charSequence.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                throw new Cnew(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + 4294967296L));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m1662new(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }
}
