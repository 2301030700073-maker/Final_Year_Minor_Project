package c.b.b;

import com.google.protobuf.Utf8$UnpairedSurrogateException;

/* loaded from: classes.dex */
public final class Y0 {

    /* renamed from: a, reason: collision with root package name */
    public static final V0 f3161a;

    static {
        f3161a = (!(U0.e && U0.f3155d) || C0447d.a()) ? new W0() : new X0();
    }

    public static int a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int b(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        int i4 = -1;
        if (i3 == 0) {
            if (b2 > -12) {
                b2 = -1;
            }
            return b2;
        }
        if (i3 != 1) {
            if (i3 == 2) {
                return e(b2, bArr[i], bArr[i + 1]);
            }
            throw new AssertionError();
        }
        byte b3 = bArr[i];
        if (b2 <= -12 && b3 <= -65) {
            i4 = b2 ^ (b3 << 8);
        }
        return i4;
    }

    public static int c(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    public static int d(CharSequence charSequence) {
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
                                throw new Utf8$UnpairedSurrogateException(i2, length2);
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
        StringBuilder f = c.a.c.a.a.f("UTF-8 length does not fit in int: ");
        f.append(i3 + 4294967296L);
        throw new IllegalArgumentException(f.toString());
    }

    public static int e(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static boolean f(byte[] bArr, int i, int i2) {
        return f3161a.c(0, bArr, i, i2) == 0;
    }
}
