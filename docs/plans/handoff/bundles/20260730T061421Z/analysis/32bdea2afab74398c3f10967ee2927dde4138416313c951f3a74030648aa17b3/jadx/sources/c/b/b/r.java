package c.b.b;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream$OutOfSpaceException;
import com.google.protobuf.Utf8$UnpairedSurrogateException;
import java.util.logging.Level;

/* loaded from: classes.dex */
public class r extends AbstractC0476s {

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f3204d;
    public final int e;
    public int f;

    public r(byte[] bArr, int i, int i2) {
        super(null);
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        int i3 = i + i2;
        if ((i | i2 | (bArr.length - i3)) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        this.f3204d = bArr;
        this.f = i;
        this.e = i3;
    }

    @Override // c.b.b.AbstractC0476s
    public final int O() {
        return this.e - this.f;
    }

    @Override // c.b.b.AbstractC0476s
    public final void P(byte b2) {
        try {
            byte[] bArr = this.f3204d;
            int i = this.f;
            this.f = i + 1;
            bArr[i] = b2;
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
        }
    }

    @Override // c.b.b.AbstractC0476s
    public final void R(int i) {
        try {
            byte[] bArr = this.f3204d;
            int i2 = this.f;
            int i3 = i2 + 1;
            this.f = i3;
            bArr[i2] = (byte) (i & 255);
            byte[] bArr2 = this.f3204d;
            int i4 = i3 + 1;
            this.f = i4;
            bArr2[i3] = (byte) ((i >> 8) & 255);
            byte[] bArr3 = this.f3204d;
            int i5 = i4 + 1;
            this.f = i5;
            bArr3[i4] = (byte) ((i >> 16) & 255);
            byte[] bArr4 = this.f3204d;
            this.f = i5 + 1;
            bArr4[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
        }
    }

    @Override // c.b.b.AbstractC0476s
    public final void S(long j) {
        try {
            byte[] bArr = this.f3204d;
            int i = this.f;
            int i2 = i + 1;
            this.f = i2;
            bArr[i] = (byte) (((int) j) & 255);
            byte[] bArr2 = this.f3204d;
            int i3 = i2 + 1;
            this.f = i3;
            bArr2[i2] = (byte) (((int) (j >> 8)) & 255);
            byte[] bArr3 = this.f3204d;
            int i4 = i3 + 1;
            this.f = i4;
            bArr3[i3] = (byte) (((int) (j >> 16)) & 255);
            byte[] bArr4 = this.f3204d;
            int i5 = i4 + 1;
            this.f = i5;
            bArr4[i4] = (byte) (((int) (j >> 24)) & 255);
            byte[] bArr5 = this.f3204d;
            int i6 = i5 + 1;
            this.f = i6;
            bArr5[i5] = (byte) (((int) (j >> 32)) & 255);
            byte[] bArr6 = this.f3204d;
            int i7 = i6 + 1;
            this.f = i7;
            bArr6[i6] = (byte) (((int) (j >> 40)) & 255);
            byte[] bArr7 = this.f3204d;
            int i8 = i7 + 1;
            this.f = i8;
            bArr7[i7] = (byte) (((int) (j >> 48)) & 255);
            byte[] bArr8 = this.f3204d;
            this.f = i8 + 1;
            bArr8[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
        }
    }

    @Override // c.b.b.AbstractC0476s
    public final void T(int i, int i2) {
        V((i << 3) | 0);
        if (i2 >= 0) {
            V(i2);
        } else {
            W(i2);
        }
    }

    @Override // c.b.b.AbstractC0476s
    public final void U(int i) {
        if (i >= 0) {
            V(i);
        } else {
            W(i);
        }
    }

    @Override // c.b.b.AbstractC0476s
    public final void V(int i) {
        if (!AbstractC0476s.f3210c || C0447d.a() || O() < 5) {
            while ((i & (-128)) != 0) {
                try {
                    byte[] bArr = this.f3204d;
                    int i2 = this.f;
                    this.f = i2 + 1;
                    bArr[i2] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
                }
            }
            byte[] bArr2 = this.f3204d;
            int i3 = this.f;
            this.f = i3 + 1;
            bArr2[i3] = (byte) i;
            return;
        }
        if ((i & (-128)) == 0) {
            byte[] bArr3 = this.f3204d;
            int i4 = this.f;
            this.f = i4 + 1;
            U0.m(bArr3, i4, (byte) i);
            return;
        }
        byte[] bArr4 = this.f3204d;
        int i5 = this.f;
        this.f = i5 + 1;
        U0.m(bArr4, i5, (byte) (i | 128));
        int i6 = i >>> 7;
        if ((i6 & (-128)) == 0) {
            byte[] bArr5 = this.f3204d;
            int i7 = this.f;
            this.f = i7 + 1;
            U0.m(bArr5, i7, (byte) i6);
            return;
        }
        byte[] bArr6 = this.f3204d;
        int i8 = this.f;
        this.f = i8 + 1;
        U0.m(bArr6, i8, (byte) (i6 | 128));
        int i9 = i6 >>> 7;
        if ((i9 & (-128)) == 0) {
            byte[] bArr7 = this.f3204d;
            int i10 = this.f;
            this.f = i10 + 1;
            U0.m(bArr7, i10, (byte) i9);
            return;
        }
        byte[] bArr8 = this.f3204d;
        int i11 = this.f;
        this.f = i11 + 1;
        U0.m(bArr8, i11, (byte) (i9 | 128));
        int i12 = i9 >>> 7;
        if ((i12 & (-128)) == 0) {
            byte[] bArr9 = this.f3204d;
            int i13 = this.f;
            this.f = i13 + 1;
            U0.m(bArr9, i13, (byte) i12);
            return;
        }
        byte[] bArr10 = this.f3204d;
        int i14 = this.f;
        this.f = i14 + 1;
        U0.m(bArr10, i14, (byte) (i12 | 128));
        byte[] bArr11 = this.f3204d;
        int i15 = this.f;
        this.f = i15 + 1;
        U0.m(bArr11, i15, (byte) (i12 >>> 7));
    }

    @Override // c.b.b.AbstractC0476s
    public final void W(long j) {
        if (AbstractC0476s.f3210c && O() >= 10) {
            while ((j & (-128)) != 0) {
                byte[] bArr = this.f3204d;
                int i = this.f;
                this.f = i + 1;
                U0.m(bArr, i, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr2 = this.f3204d;
            int i2 = this.f;
            this.f = i2 + 1;
            U0.m(bArr2, i2, (byte) j);
            return;
        }
        while ((j & (-128)) != 0) {
            try {
                byte[] bArr3 = this.f3204d;
                int i3 = this.f;
                this.f = i3 + 1;
                bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                j >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }
        byte[] bArr4 = this.f3204d;
        int i4 = this.f;
        this.f = i4 + 1;
        bArr4[i4] = (byte) j;
    }

    public final void X(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.f3204d, this.f, i2);
            this.f += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), Integer.valueOf(i2)), e);
        }
    }

    public final void Y(int i, ByteString byteString) {
        V((i << 3) | 2);
        Z(byteString);
    }

    public final void Z(ByteString byteString) {
        V(byteString.size());
        ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
        X(literalByteString.bytes, literalByteString.o(), literalByteString.size());
    }

    public final void a0(String str) {
        int i = this.f;
        try {
            int I = AbstractC0476s.I(str.length() * 3);
            int I2 = AbstractC0476s.I(str.length());
            if (I2 == I) {
                int i2 = i + I2;
                this.f = i2;
                int b2 = Y0.f3161a.b(str, this.f3204d, i2, O());
                this.f = i;
                V((b2 - i) - I2);
                this.f = b2;
            } else {
                V(Y0.d(str));
                this.f = Y0.f3161a.b(str, this.f3204d, this.f, O());
            }
        } catch (Utf8$UnpairedSurrogateException e) {
            this.f = i;
            AbstractC0476s.f3209b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
            byte[] bytes = str.getBytes(P.f3141a);
            try {
                V(bytes.length);
                X(bytes, 0, bytes.length);
            } catch (CodedOutputStream$OutOfSpaceException e2) {
                throw e2;
            } catch (IndexOutOfBoundsException e3) {
                throw new CodedOutputStream$OutOfSpaceException(e3);
            }
        } catch (IndexOutOfBoundsException e4) {
            throw new CodedOutputStream$OutOfSpaceException(e4);
        }
    }

    public final void b0(int i, int i2) {
        V((i << 3) | i2);
    }

    public final void c0(int i, int i2) {
        V((i << 3) | 0);
        V(i2);
    }
}
