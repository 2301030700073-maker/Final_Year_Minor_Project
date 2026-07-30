package c.b.b;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Utf8$UnpairedSurrogateException;

/* loaded from: classes.dex */
public final class X0 extends V0 {
    public static int d(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return Y0.c(i);
        }
        if (i2 == 1) {
            return Y0.a(i, U0.f(bArr, j));
        }
        if (i2 == 2) {
            return Y0.e(i, U0.f(bArr, j), U0.f(bArr, j + 1));
        }
        throw new AssertionError();
    }

    @Override // c.b.b.V0
    public String a(byte[] bArr, int i, int i2) {
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte f = U0.f(bArr, i);
            if (!c.b.a.c.b.a.b(f)) {
                break;
            }
            i++;
            cArr[i4] = (char) f;
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte f2 = U0.f(bArr, i);
            if (c.b.a.c.b.a.b(f2)) {
                int i7 = i5 + 1;
                cArr[i5] = (char) f2;
                i = i6;
                while (true) {
                    i5 = i7;
                    if (i < i3) {
                        byte f3 = U0.f(bArr, i);
                        if (!c.b.a.c.b.a.b(f3)) {
                            break;
                        }
                        i++;
                        i7 = i5 + 1;
                        cArr[i5] = (char) f3;
                    }
                }
            } else {
                if (!(f2 < -32)) {
                    if (f2 < -16) {
                        if (i6 >= i3 - 1) {
                            throw InvalidProtocolBufferException.b();
                        }
                        int i8 = i6 + 1;
                        c.b.a.c.b.a.d(f2, U0.f(bArr, i6), U0.f(bArr, i8), cArr, i5);
                        i = i8 + 1;
                        i5++;
                    } else {
                        if (i6 >= i3 - 2) {
                            throw InvalidProtocolBufferException.b();
                        }
                        int i9 = i6 + 1;
                        byte f4 = U0.f(bArr, i6);
                        int i10 = i9 + 1;
                        c.b.a.c.b.a.a(f2, f4, U0.f(bArr, i9), U0.f(bArr, i10), cArr, i5);
                        i5 = i5 + 1 + 1;
                        i = i10 + 1;
                    }
                } else {
                    if (i6 >= i3) {
                        throw InvalidProtocolBufferException.b();
                    }
                    c.b.a.c.b.a.c(f2, U0.f(bArr, i6), cArr, i5);
                    i = i6 + 1;
                    i5++;
                }
            }
        }
        return new String(cArr, 0, i5);
    }

    @Override // c.b.b.V0
    public int b(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c2;
        long j;
        long j2;
        int i3;
        char charAt;
        long j3 = i;
        long j4 = i2 + j3;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            StringBuilder f = c.a.c.a.a.f("Failed writing ");
            f.append(charSequence.charAt(length - 1));
            f.append(" at index ");
            f.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(f.toString());
        }
        int i4 = 0;
        while (true) {
            c2 = 128;
            j = 1;
            if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            U0.m(bArr, j3, (byte) charAt);
            i4++;
            j3 = 1 + j3;
        }
        if (i4 == length) {
            return (int) j3;
        }
        while (i4 < length) {
            char charAt2 = charSequence.charAt(i4);
            if (charAt2 >= c2 || j3 >= j4) {
                if (charAt2 < 2048 && j3 <= j4 - 2) {
                    long j5 = j3 + j;
                    U0.m(bArr, j3, (byte) ((charAt2 >>> 6) | 960));
                    j2 = j5 + j;
                    U0.m(bArr, j5, (byte) ((charAt2 & '?') | 128));
                } else {
                    if ((charAt2 >= 55296 && 57343 >= charAt2) || j3 > j4 - 3) {
                        if (j3 > j4 - 4) {
                            if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                                throw new Utf8$UnpairedSurrogateException(i4, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j3);
                        }
                        int i5 = i4 + 1;
                        if (i5 != length) {
                            char charAt3 = charSequence.charAt(i5);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                long j6 = j3 + 1;
                                U0.m(bArr, j3, (byte) ((codePoint >>> 18) | 240));
                                long j7 = 1 + j6;
                                U0.m(bArr, j6, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j8 = 1 + j7;
                                U0.m(bArr, j7, (byte) (((codePoint >>> 6) & 63) | 128));
                                j = 1;
                                U0.m(bArr, j8, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                                c2 = 128;
                                j3 = j8 + 1;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new Utf8$UnpairedSurrogateException(i4 - 1, length);
                    }
                    long j9 = j3 + j;
                    U0.m(bArr, j3, (byte) ((charAt2 >>> '\f') | 480));
                    long j10 = j + j9;
                    U0.m(bArr, j9, (byte) (((charAt2 >>> 6) & 63) | 128));
                    j2 = 1 + j10;
                    U0.m(bArr, j10, (byte) ((charAt2 & '?') | 128));
                    j = 1;
                }
                long j11 = j2;
                c2 = 128;
                j3 = j11;
            } else {
                U0.m(bArr, j3, (byte) charAt2);
                j3 += j;
            }
            i4++;
        }
        return (int) j3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        if (c.b.b.U0.f(r24, r8) > (-65)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
    
        if (c.b.b.U0.f(r24, r8) > (-65)) goto L32;
     */
    @Override // c.b.b.V0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int c(int r23, byte[] r24, int r25, int r26) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.X0.c(int, byte[], int, int):int");
    }
}
