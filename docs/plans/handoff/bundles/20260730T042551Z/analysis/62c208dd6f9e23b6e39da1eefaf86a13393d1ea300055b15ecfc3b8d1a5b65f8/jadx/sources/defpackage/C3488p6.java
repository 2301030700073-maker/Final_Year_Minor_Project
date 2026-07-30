package defpackage;

import java.io.EOFException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;

/* renamed from: p6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3488p6 implements Serializable, Comparable<C3488p6> {

    /* renamed from: break, reason: not valid java name */
    public transient String f14881break;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f14882do;

    /* renamed from: for, reason: not valid java name */
    public transient int f14883for;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final char[] f14880do = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: do, reason: not valid java name */
    public static final C3488p6 f14879do = m7785super(new byte[0]);

    public C3488p6(byte[] bArr) {
        this.f14882do = bArr;
    }

    /* renamed from: case, reason: not valid java name */
    public static C3488p6 m7783case(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (m7784goto(str.charAt(i2 + 1)) + (m7784goto(str.charAt(i2)) << 4));
        }
        return m7785super(bArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m7784goto(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c);
            }
        }
        return (c - c2) + 10;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            throw new IllegalArgumentException(V1.m2494case("byteCount < 0: ", readInt));
        }
        byte[] bArr = new byte[readInt];
        int i = 0;
        while (i < readInt) {
            int read = objectInputStream.read(bArr, i, readInt - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
        C3488p6 c3488p6 = new C3488p6(bArr);
        try {
            Field declaredField = C3488p6.class.getDeclaredField("do");
            declaredField.setAccessible(true);
            declaredField.set(this, c3488p6.f14882do);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static C3488p6 m7785super(byte... bArr) {
        if (bArr != null) {
            return new C3488p6((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    /* renamed from: this, reason: not valid java name */
    public static C3488p6 m7786this(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        C3488p6 c3488p6 = new C3488p6(str.getBytes(TJ.f3645do));
        c3488p6.f14881break = str;
        return c3488p6;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.f14882do.length);
        objectOutputStream.write(this.f14882do);
    }

    /* renamed from: break */
    public byte mo2893break(int i) {
        return this.f14882do[i];
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compareTo(defpackage.C3488p6 r10) {
        /*
            r9 = this;
            p6 r10 = (defpackage.C3488p6) r10
            int r0 = r9.mo2897import()
            int r1 = r10.mo2897import()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L10:
            r5 = 1
            r6 = -1
            if (r4 >= r2) goto L2b
            byte r7 = r9.mo2893break(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.mo2893break(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L25
            int r4 = r4 + 1
            goto L10
        L25:
            if (r7 >= r8) goto L29
        L27:
            r3 = -1
            goto L31
        L29:
            r3 = 1
            goto L31
        L2b:
            if (r0 != r1) goto L2e
            goto L31
        L2e:
            if (r0 >= r1) goto L29
            goto L27
        L31:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3488p6.compareTo(java.lang.Object):int");
    }

    /* renamed from: const */
    public String mo2894const() {
        byte[] bArr = this.f14882do;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f14880do;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    /* renamed from: do */
    public String mo2896do() {
        byte[] bArr = this.f14882do;
        byte[] bArr2 = C3850vF.f16043do;
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int i3 = i + 1;
            bArr3[i] = bArr2[(bArr[i2] & 255) >> 2];
            int i4 = i3 + 1;
            int i5 = i2 + 1;
            bArr3[i3] = bArr2[((bArr[i2] & 3) << 4) | ((bArr[i5] & 255) >> 4)];
            int i6 = i4 + 1;
            int i7 = (bArr[i5] & 15) << 2;
            int i8 = i2 + 2;
            bArr3[i4] = bArr2[i7 | ((bArr[i8] & 255) >> 6)];
            i = i6 + 1;
            bArr3[i6] = bArr2[bArr[i8] & 63];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            int i9 = i + 1;
            bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
            int i10 = i9 + 1;
            bArr3[i9] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i10] = 61;
            bArr3[i10 + 1] = 61;
        } else if (length2 == 2) {
            int i11 = i + 1;
            bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
            int i12 = i11 + 1;
            int i13 = (bArr[length] & 3) << 4;
            int i14 = length + 1;
            bArr3[i11] = bArr2[((bArr[i14] & 255) >> 4) | i13];
            bArr3[i12] = bArr2[(bArr[i14] & 15) << 2];
            bArr3[i12 + 1] = 61;
        }
        try {
            return new String(bArr3, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C3488p6) {
            C3488p6 c3488p6 = (C3488p6) obj;
            int mo2897import = c3488p6.mo2897import();
            byte[] bArr = this.f14882do;
            if (mo2897import == bArr.length && c3488p6.mo2903throw(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.f14883for;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f14882do);
        this.f14883for = hashCode;
        return hashCode;
    }

    /* renamed from: import */
    public int mo2897import() {
        return this.f14882do.length;
    }

    /* renamed from: native */
    public C3488p6 mo2898native() {
        byte[] bArr = this.f14882do;
        if (64 > bArr.length) {
            throw new IllegalArgumentException(V1.m2506this(new StringBuilder("endIndex > length("), this.f14882do.length, ")"));
        }
        if (64 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, 64);
        return new C3488p6(bArr2);
    }

    /* renamed from: public */
    public C3488p6 mo2899public() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f14882do;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b >= 65 && b <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b + 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b2 = bArr2[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        bArr2[i2] = (byte) (b2 + 32);
                    }
                }
                return new C3488p6(bArr2);
            }
            i++;
        }
    }

    /* renamed from: return */
    public String mo2900return() {
        String str = this.f14881break;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f14882do, TJ.f3645do);
        this.f14881break = str2;
        return str2;
    }

    /* renamed from: static */
    public void mo2901static(U5 u5) {
        byte[] bArr = this.f14882do;
        u5.write(bArr, 0, bArr.length);
    }

    /* renamed from: throw */
    public boolean mo2903throw(int i, byte[] bArr, int i2, int i3) {
        boolean z;
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.f14882do;
        if (i > bArr2.length - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        Charset charset = TJ.f3645do;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z = true;
                break;
            }
            if (bArr2[i4 + i] != bArr[i4 + i2]) {
                z = false;
                break;
            }
            i4++;
        }
        return z;
    }

    public String toString() {
        if (this.f14882do.length == 0) {
            return "[size=0]";
        }
        String mo2900return = mo2900return();
        int length = mo2900return.length();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length) {
                i = mo2900return.length();
                break;
            }
            if (i2 == 64) {
                break;
            }
            int codePointAt = mo2900return.codePointAt(i);
            if ((!Character.isISOControl(codePointAt) || codePointAt == 10 || codePointAt == 13) && codePointAt != 65533) {
                i2++;
                i += Character.charCount(codePointAt);
            }
        }
        i = -1;
        if (i != -1) {
            String replace = mo2900return.substring(0, i).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (i >= mo2900return.length()) {
                return Cif.m6908case("[text=", replace, "]");
            }
            return "[size=" + this.f14882do.length + " text=" + replace + "…]";
        }
        if (this.f14882do.length <= 64) {
            return "[hex=" + mo2894const() + "]";
        }
        return "[size=" + this.f14882do.length + " hex=" + mo2898native().mo2894const() + "…]";
    }

    /* renamed from: while */
    public boolean mo2905while(C3488p6 c3488p6, int i) {
        return c3488p6.mo2903throw(0, this.f14882do, 0, i);
    }
}
