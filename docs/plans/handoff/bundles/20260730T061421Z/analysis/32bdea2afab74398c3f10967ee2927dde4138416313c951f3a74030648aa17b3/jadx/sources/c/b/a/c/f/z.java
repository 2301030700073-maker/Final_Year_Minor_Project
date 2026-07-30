package c.b.a.c.f;

import com.google.android.gms.internal.zzgrs;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f3063a;

    public z(byte[] bArr, int i, int i2) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, i2);
        this.f3063a = wrap;
        wrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int a(int i) {
        if (i >= 0) {
            return q(i);
        }
        return 10;
    }

    public static int b(CharSequence charSequence) {
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
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i2);
                                throw new IllegalArgumentException(sb.toString());
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
        long j = i3 + 4294967296L;
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int c(String str) {
        int b2 = b(str);
        return q(b2) + b2;
    }

    public static void i(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        char charAt;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i3 = 0;
        if (!byteBuffer.hasArray()) {
            int length = charSequence.length();
            while (i3 < length) {
                char charAt2 = charSequence.charAt(i3);
                if (charAt2 < 128) {
                    byteBuffer.put((byte) charAt2);
                } else if (charAt2 < 2048) {
                    byteBuffer.put((byte) ((charAt2 >>> 6) | 960));
                    byteBuffer.put((byte) ((charAt2 & '?') | 128));
                } else {
                    if (charAt2 >= 55296 && 57343 >= charAt2) {
                        int i4 = i3 + 1;
                        if (i4 != charSequence.length()) {
                            char charAt3 = charSequence.charAt(i4);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                                byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint & 63) | 128));
                                i3 = i4;
                            } else {
                                i3 = i4;
                            }
                        }
                        StringBuilder sb = new StringBuilder(39);
                        sb.append("Unpaired surrogate at index ");
                        sb.append(i3 - 1);
                        throw new IllegalArgumentException(sb.toString());
                    }
                    byteBuffer.put((byte) ((charAt2 >>> '\f') | 480));
                    byteBuffer.put((byte) (((charAt2 >>> 6) & 63) | 128));
                    byteBuffer.put((byte) ((charAt2 & '?') | 128));
                }
                i3++;
            }
            return;
        }
        try {
            byte[] array = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            int remaining = byteBuffer.remaining();
            int length2 = charSequence.length();
            int i5 = remaining + arrayOffset;
            while (i3 < length2) {
                int i6 = i3 + arrayOffset;
                if (i6 >= i5 || (charAt = charSequence.charAt(i3)) >= 128) {
                    break;
                }
                array[i6] = (byte) charAt;
                i3++;
            }
            if (i3 == length2) {
                i = arrayOffset + length2;
            } else {
                i = arrayOffset + i3;
                while (i3 < length2) {
                    char charAt4 = charSequence.charAt(i3);
                    if (charAt4 >= 128 || i >= i5) {
                        if (charAt4 < 2048 && i <= i5 - 2) {
                            int i7 = i + 1;
                            array[i] = (byte) ((charAt4 >>> 6) | 960);
                            i = i7 + 1;
                            array[i7] = (byte) ((charAt4 & '?') | 128);
                        } else {
                            if ((charAt4 >= 55296 && 57343 >= charAt4) || i > i5 - 3) {
                                if (i > i5 - 4) {
                                    StringBuilder sb2 = new StringBuilder(37);
                                    sb2.append("Failed writing ");
                                    sb2.append(charAt4);
                                    sb2.append(" at index ");
                                    sb2.append(i);
                                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                                }
                                int i8 = i3 + 1;
                                if (i8 != charSequence.length()) {
                                    char charAt5 = charSequence.charAt(i8);
                                    if (Character.isSurrogatePair(charAt4, charAt5)) {
                                        int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                        int i9 = i + 1;
                                        array[i] = (byte) ((codePoint2 >>> 18) | 240);
                                        int i10 = i9 + 1;
                                        array[i9] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                        int i11 = i10 + 1;
                                        array[i10] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                        i = i11 + 1;
                                        array[i11] = (byte) ((codePoint2 & 63) | 128);
                                        i3 = i8;
                                    } else {
                                        i3 = i8;
                                    }
                                }
                                StringBuilder sb3 = new StringBuilder(39);
                                sb3.append("Unpaired surrogate at index ");
                                sb3.append(i3 - 1);
                                throw new IllegalArgumentException(sb3.toString());
                            }
                            int i12 = i + 1;
                            array[i] = (byte) ((charAt4 >>> '\f') | 480);
                            int i13 = i12 + 1;
                            array[i12] = (byte) (((charAt4 >>> 6) & 63) | 128);
                            i2 = i13 + 1;
                            array[i13] = (byte) ((charAt4 & '?') | 128);
                        }
                        i3++;
                    } else {
                        i2 = i + 1;
                        array[i] = (byte) charAt4;
                    }
                    i = i2;
                    i3++;
                }
            }
            byteBuffer.position(i - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    public static int j(int i) {
        return q(i << 3);
    }

    public static int k(int i, F f) {
        int j = j(i);
        int c2 = f.c();
        return q(c2) + c2 + j;
    }

    public static int l(int i, String str) {
        return c(str) + j(i);
    }

    public static int m(int i, byte[] bArr) {
        return j(i) + q(bArr.length) + bArr.length;
    }

    public static int n(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int q(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int s(int i, long j) {
        return n(j) + j(i);
    }

    public final void d(int i, int i2) {
        p((i << 3) | 0);
        if (i2 >= 0) {
            p(i2);
        } else {
            h(i2);
        }
    }

    public final void e(int i, F f) {
        p((i << 3) | 2);
        if (f.f3022a < 0) {
            f.c();
        }
        p(f.f3022a);
        f.e(this);
    }

    public final void f(int i, String str) {
        p((i << 3) | 2);
        try {
            int q = q(str.length());
            if (q != q(str.length() * 3)) {
                p(b(str));
                i(str, this.f3063a);
                return;
            }
            int position = this.f3063a.position();
            if (this.f3063a.remaining() < q) {
                throw new zzgrs(position + q, this.f3063a.limit());
            }
            this.f3063a.position(position + q);
            i(str, this.f3063a);
            int position2 = this.f3063a.position();
            this.f3063a.position(position);
            p((position2 - position) - q);
            this.f3063a.position(position2);
        } catch (BufferOverflowException e) {
            zzgrs zzgrsVar = new zzgrs(this.f3063a.position(), this.f3063a.limit());
            zzgrsVar.initCause(e);
            throw zzgrsVar;
        }
    }

    public final void g(int i, byte[] bArr) {
        p((i << 3) | 2);
        p(bArr.length);
        r(bArr);
    }

    public final void h(long j) {
        while (((-128) & j) != 0) {
            t((((int) j) & 127) | 128);
            j >>>= 7;
        }
        t((int) j);
    }

    public final void o(int i, long j) {
        p((i << 3) | 0);
        h(j);
    }

    public final void p(int i) {
        while ((i & (-128)) != 0) {
            t((i & 127) | 128);
            i >>>= 7;
        }
        t(i);
    }

    public final void r(byte[] bArr) {
        int length = bArr.length;
        if (this.f3063a.remaining() < length) {
            throw new zzgrs(this.f3063a.position(), this.f3063a.limit());
        }
        this.f3063a.put(bArr, 0, length);
    }

    public final void t(int i) {
        byte b2 = (byte) i;
        if (!this.f3063a.hasRemaining()) {
            throw new zzgrs(this.f3063a.position(), this.f3063a.limit());
        }
        this.f3063a.put(b2);
    }
}
