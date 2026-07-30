package defpackage;

/* loaded from: classes3.dex */
public final class PJ {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f2772do;

    /* renamed from: PJ$do, reason: invalid class name */
    public static abstract class Cdo {
        /* renamed from: do, reason: not valid java name */
        public abstract int mo1766do(CharSequence charSequence, byte[] bArr, int i, int i2);

        /* renamed from: if, reason: not valid java name */
        public abstract int mo1767if(byte[] bArr, int i, int i2);
    }

    /* renamed from: PJ$for, reason: invalid class name */
    public static class Cfor extends IllegalArgumentException {
        public Cfor(int i, int i2) {
            super(defpackage.Cif.m6918new("Unpaired surrogate at index ", i, " of ", i2));
        }
    }

    /* renamed from: PJ$if, reason: invalid class name */
    public static final class Cif extends Cdo {
        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        
            return r10 + r0;
         */
        @Override // defpackage.PJ.Cdo
        /* renamed from: do */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int mo1766do(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 250
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.PJ.Cif.mo1766do(java.lang.CharSequence, byte[], int, int):int");
        }

        @Override // defpackage.PJ.Cdo
        /* renamed from: if */
        public final int mo1767if(byte[] bArr, int i, int i2) {
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
                                return PJ.m1762do(bArr, i3, i2);
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
                                return PJ.m1762do(bArr, i3, i2);
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
    }

    /* renamed from: PJ$new, reason: invalid class name */
    public static final class Cnew extends Cdo {
        /* renamed from: for, reason: not valid java name */
        public static int m1768for(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                Cdo cdo = PJ.f2772do;
                if (i > -12) {
                    return -1;
                }
                return i;
            }
            if (i2 == 1) {
                return PJ.m1763for(i, C3677sJ.m8097goto(bArr, j));
            }
            if (i2 == 2) {
                return PJ.m1765new(i, C3677sJ.m8097goto(bArr, j), C3677sJ.m8097goto(bArr, j + 1));
            }
            throw new AssertionError();
        }

        @Override // defpackage.PJ.Cdo
        /* renamed from: do */
        public final int mo1766do(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                C3677sJ.m8109while(bArr, j5, (byte) charAt);
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
                        C3677sJ.m8109while(bArr, j5, (byte) ((charAt2 >>> 6) | 960));
                        C3677sJ.m8109while(bArr, j7, (byte) ((charAt2 & '?') | 128));
                        j4 = j7 + j;
                        j3 = j;
                    } else {
                        if ((charAt2 >= 55296 && 57343 >= charAt2) || j5 > j6 - 3) {
                            if (j5 > j6 - 4) {
                                if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                                    throw new Cfor(i4, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j5);
                            }
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char charAt3 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    long j8 = j5 + 1;
                                    C3677sJ.m8109while(bArr, j5, (byte) ((codePoint >>> 18) | 240));
                                    long j9 = j8 + 1;
                                    C3677sJ.m8109while(bArr, j8, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j10 = j9 + 1;
                                    C3677sJ.m8109while(bArr, j9, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j3 = 1;
                                    j4 = j10 + 1;
                                    C3677sJ.m8109while(bArr, j10, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new Cfor(i4 - 1, length);
                        }
                        long j11 = j5 + j;
                        C3677sJ.m8109while(bArr, j5, (byte) ((charAt2 >>> '\f') | 480));
                        long j12 = j11 + j;
                        C3677sJ.m8109while(bArr, j11, (byte) (((charAt2 >>> 6) & 63) | 128));
                        C3677sJ.m8109while(bArr, j12, (byte) ((charAt2 & '?') | 128));
                        j2 = j12 + 1;
                    }
                    i4++;
                    c = 128;
                    long j13 = j3;
                    j5 = j4;
                    j = j13;
                } else {
                    j2 = j5 + j;
                    C3677sJ.m8109while(bArr, j5, (byte) charAt2);
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

        @Override // defpackage.PJ.Cdo
        /* renamed from: if */
        public final int mo1767if(byte[] bArr, int i, int i2) {
            int i3;
            long j;
            if ((i | i2 | (bArr.length - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            long j2 = i;
            int i4 = (int) (i2 - j2);
            if (i4 >= 16) {
                int i5 = 8 - (((int) j2) & 7);
                long j3 = j2;
                i3 = 0;
                while (true) {
                    if (i3 >= i5) {
                        while (true) {
                            int i6 = i3 + 8;
                            if (i6 > i4 || (C3677sJ.m8095final(C3677sJ.f15431do + j3, bArr) & (-9187201950435737472L)) != 0) {
                                break;
                            }
                            j3 += 8;
                            i3 = i6;
                        }
                        while (true) {
                            if (i3 >= i4) {
                                i3 = i4;
                                break;
                            }
                            long j4 = j3 + 1;
                            if (C3677sJ.m8097goto(bArr, j3) < 0) {
                                break;
                            }
                            i3++;
                            j3 = j4;
                        }
                    } else {
                        long j5 = j3 + 1;
                        if (C3677sJ.m8097goto(bArr, j3) < 0) {
                            break;
                        }
                        i3++;
                        j3 = j5;
                    }
                }
            } else {
                i3 = 0;
            }
            int i7 = i4 - i3;
            long j6 = j2 + i3;
            while (true) {
                byte b = 0;
                while (true) {
                    if (i7 <= 0) {
                        break;
                    }
                    long j7 = j6 + 1;
                    b = C3677sJ.m8097goto(bArr, j6);
                    if (b < 0) {
                        j6 = j7;
                        break;
                    }
                    i7--;
                    j6 = j7;
                }
                if (i7 != 0) {
                    int i8 = i7 - 1;
                    if (b >= -32) {
                        if (b >= -16) {
                            if (i8 >= 3) {
                                i7 = i8 - 3;
                                long j8 = j6 + 1;
                                byte m8097goto = C3677sJ.m8097goto(bArr, j6);
                                if (m8097goto > -65 || (((m8097goto + 112) + (b << 28)) >> 30) != 0) {
                                    break;
                                }
                                long j9 = j8 + 1;
                                if (C3677sJ.m8097goto(bArr, j8) > -65) {
                                    break;
                                }
                                j = j9 + 1;
                                if (C3677sJ.m8097goto(bArr, j9) > -65) {
                                    break;
                                }
                                j6 = j;
                            } else {
                                return m1768for(bArr, b, j6, i8);
                            }
                        } else if (i8 >= 2) {
                            i7 = i8 - 2;
                            long j10 = j6 + 1;
                            byte m8097goto2 = C3677sJ.m8097goto(bArr, j6);
                            if (m8097goto2 > -65 || ((b == -32 && m8097goto2 < -96) || (b == -19 && m8097goto2 >= -96))) {
                                break;
                            }
                            j6 = j10 + 1;
                            if (C3677sJ.m8097goto(bArr, j10) > -65) {
                                break;
                            }
                        } else {
                            return m1768for(bArr, b, j6, i8);
                        }
                    } else if (i8 != 0) {
                        i7 = i8 - 1;
                        if (b < -62) {
                            break;
                        }
                        j = j6 + 1;
                        if (C3677sJ.m8097goto(bArr, j6) > -65) {
                            break;
                        }
                        j6 = j;
                    } else {
                        return b;
                    }
                } else {
                    return 0;
                }
            }
        }
    }

    static {
        f2772do = (!(C3677sJ.f15437if && C3677sJ.f15435do) || J0.m997do()) ? new Cif() : new Cnew();
    }

    /* renamed from: do, reason: not valid java name */
    public static int m1762do(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            if (b > -12) {
                b = -1;
            }
            return b;
        }
        if (i3 == 1) {
            return m1763for(b, bArr[i]);
        }
        if (i3 == 2) {
            return m1765new(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: for, reason: not valid java name */
    public static int m1763for(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m1764if(CharSequence charSequence) {
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
                                throw new Cfor(i2, length2);
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
    public static int m1765new(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }
}
