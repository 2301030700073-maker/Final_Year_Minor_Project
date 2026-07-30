package c.b.b.a1;

import com.google.protobuf.nano.CodedOutputByteBufferNano$OutOfSpaceException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f3167a;

    public b(byte[] bArr, int i, int i2) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, i2);
        this.f3167a = wrap;
        wrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int a(int i, boolean z) {
        return g(i) + 1;
    }

    public static int b(int i, int i2) {
        return g(i) + (i2 >= 0 ? e(i2) : 10);
    }

    public static int c(int i, long j) {
        return g(i) + (((-128) & j) == 0 ? 1 : ((-16384) & j) == 0 ? 2 : ((-2097152) & j) == 0 ? 3 : ((-268435456) & j) == 0 ? 4 : ((-34359738368L) & j) == 0 ? 5 : ((-4398046511104L) & j) == 0 ? 6 : ((-562949953421312L) & j) == 0 ? 7 : ((-72057594037927936L) & j) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10);
    }

    public static int d(int i, e eVar) {
        int g = g(i);
        int serializedSize = eVar.getSerializedSize();
        return g + e(serializedSize) + serializedSize;
    }

    public static int e(int i) {
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

    public static int f(int i, String str) {
        int g = g(i);
        int j = j(str);
        return g + e(j) + j;
    }

    public static int g(int i) {
        return e((i << 3) | 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r8 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int h(java.lang.CharSequence r6, byte[] r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.a1.b.h(java.lang.CharSequence, byte[], int, int):int");
    }

    public static void i(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(h(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
                return;
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        }
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 128) {
                byteBuffer.put((byte) charAt);
            } else if (charAt < 2048) {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            } else {
                if (charAt >= 55296 && 57343 >= charAt) {
                    int i2 = i + 1;
                    if (i2 != charSequence.length()) {
                        char charAt2 = charSequence.charAt(i2);
                        if (Character.isSurrogatePair(charAt, charAt2)) {
                            int codePoint = Character.toCodePoint(charAt, charAt2);
                            byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                            byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((codePoint & 63) | 128));
                            i = i2;
                        } else {
                            i = i2;
                        }
                    }
                    StringBuilder f = c.a.c.a.a.f("Unpaired surrogate at index ");
                    f.append(i - 1);
                    throw new IllegalArgumentException(f.toString());
                }
                byteBuffer.put((byte) ((charAt >>> '\f') | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            }
            i++;
        }
    }

    public static int j(CharSequence charSequence) {
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
                                throw new IllegalArgumentException(c.a.c.a.a.c("Unpaired surrogate at index ", i2));
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

    public void k(int i, boolean z) {
        q((i << 3) | 0);
        p(z ? 1 : 0);
    }

    public void l(int i, long j) {
        q((i << 3) | 1);
        if (this.f3167a.remaining() < 8) {
            throw new CodedOutputByteBufferNano$OutOfSpaceException(this.f3167a.position(), this.f3167a.limit());
        }
        this.f3167a.putLong(j);
    }

    public void m(int i, int i2) {
        q((i << 3) | 0);
        if (i2 >= 0) {
            q(i2);
        } else {
            r(i2);
        }
    }

    public void n(int i, long j) {
        q((i << 3) | 0);
        r(j);
    }

    public void o(int i, e eVar) {
        q((i << 3) | 2);
        if (eVar.cachedSize < 0) {
            eVar.getSerializedSize();
        }
        q(eVar.cachedSize);
        eVar.writeTo(this);
    }

    public void p(int i) {
        byte b2 = (byte) i;
        if (!this.f3167a.hasRemaining()) {
            throw new CodedOutputByteBufferNano$OutOfSpaceException(this.f3167a.position(), this.f3167a.limit());
        }
        this.f3167a.put(b2);
    }

    public void q(int i) {
        while ((i & (-128)) != 0) {
            p((i & 127) | 128);
            i >>>= 7;
        }
        p(i);
    }

    public void r(long j) {
        while (((-128) & j) != 0) {
            p((((int) j) & 127) | 128);
            j >>>= 7;
        }
        p((int) j);
    }

    public void s(int i, String str) {
        q((i << 3) | 2);
        try {
            int e = e(str.length());
            if (e != e(str.length() * 3)) {
                q(j(str));
                i(str, this.f3167a);
                return;
            }
            int position = this.f3167a.position();
            if (this.f3167a.remaining() < e) {
                throw new CodedOutputByteBufferNano$OutOfSpaceException(position + e, this.f3167a.limit());
            }
            this.f3167a.position(position + e);
            i(str, this.f3167a);
            int position2 = this.f3167a.position();
            this.f3167a.position(position);
            q((position2 - position) - e);
            this.f3167a.position(position2);
        } catch (BufferOverflowException e2) {
            CodedOutputByteBufferNano$OutOfSpaceException codedOutputByteBufferNano$OutOfSpaceException = new CodedOutputByteBufferNano$OutOfSpaceException(this.f3167a.position(), this.f3167a.limit());
            codedOutputByteBufferNano$OutOfSpaceException.initCause(e2);
            throw codedOutputByteBufferNano$OutOfSpaceException;
        }
    }
}
