package defpackage;

import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class U5 implements InterfaceC0671a6, Z5, Cloneable, ByteChannel {

    /* renamed from: do, reason: not valid java name */
    public static final byte[] f3825do = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f3826do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VB f3827do;

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: abstract, reason: not valid java name */
    public final String mo2323abstract(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Cpublic.m7828try("limit < 0: ", j));
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long m2335new = m2335new((byte) 10, 0L, j2);
        if (m2335new != -1) {
            return m2328const(m2335new);
        }
        if (j2 < this.f3826do && m2331for(j2 - 1) == 13 && m2331for(j2) == 10) {
            return m2328const(j2);
        }
        U5 u5 = new U5();
        m2333if(u5, 0L, Math.min(32L, this.f3826do));
        StringBuilder sb = new StringBuilder("\\n not found: limit=");
        sb.append(Math.min(this.f3826do, j));
        sb.append(" content=");
        try {
            sb.append(new C3488p6(u5.m2332goto(u5.f3826do)).mo2894const());
            sb.append((char) 8230);
            throw new EOFException(sb.toString());
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final String m2324break() {
        try {
            return m2342this(this.f3826do, TJ.f3645do);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.Z5
    public final /* bridge */ /* synthetic */ Z5 c(int i) {
        m2338return(i);
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public final long m2325case(long j, C3488p6 c3488p6) {
        int i;
        int i2;
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        VB vb = this.f3827do;
        if (vb == null) {
            return -1L;
        }
        long j3 = this.f3826do;
        if (j3 - j < j) {
            while (j3 > j) {
                vb = vb.f4054if;
                j3 -= vb.f4053if - vb.f4049do;
            }
        } else {
            while (true) {
                long j4 = (vb.f4053if - vb.f4049do) + j2;
                if (j4 >= j) {
                    break;
                }
                vb = vb.f4050do;
                j2 = j4;
            }
            j3 = j2;
        }
        byte[] bArr = c3488p6.f14882do;
        if (bArr.length == 2) {
            byte b = bArr[0];
            byte b2 = bArr[1];
            while (j3 < this.f3826do) {
                byte[] bArr2 = vb.f4052do;
                i = (int) ((vb.f4049do + j) - j3);
                int i3 = vb.f4053if;
                while (i < i3) {
                    byte b3 = bArr2[i];
                    if (b3 == b || b3 == b2) {
                        i2 = vb.f4049do;
                        return (i - i2) + j3;
                    }
                    i++;
                }
                j3 += vb.f4053if - vb.f4049do;
                vb = vb.f4050do;
                j = j3;
            }
            return -1L;
        }
        while (j3 < this.f3826do) {
            byte[] bArr3 = vb.f4052do;
            i = (int) ((vb.f4049do + j) - j3);
            int i4 = vb.f4053if;
            while (i < i4) {
                byte b4 = bArr3[i];
                for (byte b5 : bArr) {
                    if (b4 == b5) {
                        i2 = vb.f4049do;
                        return (i - i2) + j3;
                    }
                }
                i++;
            }
            j3 += vb.f4053if - vb.f4049do;
            vb = vb.f4050do;
            j = j3;
        }
        return -1L;
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: catch, reason: not valid java name */
    public final void mo2326catch(long j) {
        if (this.f3826do < j) {
            throw new EOFException();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final String m2327class(long j) {
        return m2342this(j, TJ.f3645do);
    }

    public final Object clone() {
        U5 u5 = new U5();
        if (this.f3826do != 0) {
            VB m2548for = this.f3827do.m2548for();
            u5.f3827do = m2548for;
            m2548for.f4054if = m2548for;
            m2548for.f4050do = m2548for;
            VB vb = this.f3827do;
            while (true) {
                vb = vb.f4050do;
                if (vb == this.f3827do) {
                    break;
                }
                u5.f3827do.f4054if.m2549if(vb.m2548for());
            }
            u5.f3826do = this.f3826do;
        }
        return u5;
    }

    @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    /* renamed from: const, reason: not valid java name */
    public final String m2328const(long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (m2331for(j2) == 13) {
                String m2327class = m2327class(j2);
                mo2334implements(2L);
                return m2327class;
            }
        }
        String m2327class2 = m2327class(j);
        mo2334implements(1L);
        return m2327class2;
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m2329continue(int i) {
        VB m2337public = m2337public(2);
        int i2 = m2337public.f4053if;
        int i3 = i2 + 1;
        byte[] bArr = m2337public.f4052do;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m2337public.f4053if = i3 + 1;
        this.f3826do += 2;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2330do() {
        try {
            mo2334implements(this.f3826do);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.Z5
    public final /* bridge */ /* synthetic */ Z5 e(int i) {
        m2336package(i);
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof U5)) {
            return false;
        }
        U5 u5 = (U5) obj;
        long j = this.f3826do;
        if (j != u5.f3826do) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        VB vb = this.f3827do;
        VB vb2 = u5.f3827do;
        int i = vb.f4049do;
        int i2 = vb2.f4049do;
        while (j2 < this.f3826do) {
            long min = Math.min(vb.f4053if - i, vb2.f4053if - i2);
            int i3 = 0;
            while (i3 < min) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (vb.f4052do[i] != vb2.f4052do[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == vb.f4053if) {
                vb = vb.f4050do;
                i = vb.f4049do;
            }
            if (i2 == vb2.f4053if) {
                vb2 = vb2.f4050do;
                i2 = vb2.f4049do;
            }
            j2 += min;
        }
        return true;
    }

    @Override // defpackage.Z5, defpackage.InterfaceC3908wE, java.io.Flushable
    public final void flush() {
    }

    /* renamed from: for, reason: not valid java name */
    public final byte m2331for(long j) {
        int i;
        TJ.m2240do(this.f3826do, j, 1L);
        long j2 = this.f3826do;
        if (j2 - j <= j) {
            long j3 = j - j2;
            VB vb = this.f3827do;
            do {
                vb = vb.f4054if;
                int i2 = vb.f4053if;
                i = vb.f4049do;
                j3 += i2 - i;
            } while (j3 < 0);
            return vb.f4052do[i + ((int) j3)];
        }
        VB vb2 = this.f3827do;
        while (true) {
            int i3 = vb2.f4053if;
            int i4 = vb2.f4049do;
            long j4 = i3 - i4;
            if (j < j4) {
                return vb2.f4052do[i4 + ((int) j)];
            }
            j -= j4;
            vb2 = vb2.f4050do;
        }
    }

    @Override // defpackage.InterfaceC0671a6
    public final C3488p6 g(long j) {
        return new C3488p6(m2332goto(j));
    }

    /* renamed from: goto, reason: not valid java name */
    public final byte[] m2332goto(long j) {
        TJ.m2240do(this.f3826do, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException(Cpublic.m7828try("byteCount > Integer.MAX_VALUE: ", j));
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = read(bArr, i2, i - i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 += read;
        }
        return bArr;
    }

    @Override // defpackage.InterfaceC0671a6
    public final boolean h() {
        return this.f3826do == 0;
    }

    public final int hashCode() {
        VB vb = this.f3827do;
        if (vb == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = vb.f4053if;
            for (int i3 = vb.f4049do; i3 < i2; i3++) {
                i = (i * 31) + vb.f4052do[i3];
            }
            vb = vb.f4050do;
        } while (vb != this.f3827do);
        return i;
    }

    @Override // defpackage.InterfaceC0671a6
    public final boolean i(C3488p6 c3488p6) {
        byte[] bArr = c3488p6.f14882do;
        int length = bArr.length;
        if (length < 0 || this.f3826do - 0 < length || bArr.length - 0 < length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (m2331for(i + 0) != c3488p6.f14882do[0 + i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2333if(U5 u5, long j, long j2) {
        if (u5 == null) {
            throw new IllegalArgumentException("out == null");
        }
        TJ.m2240do(this.f3826do, j, j2);
        if (j2 == 0) {
            return;
        }
        u5.f3826do += j2;
        VB vb = this.f3827do;
        while (true) {
            long j3 = vb.f4053if - vb.f4049do;
            if (j < j3) {
                break;
            }
            j -= j3;
            vb = vb.f4050do;
        }
        while (j2 > 0) {
            VB m2548for = vb.m2548for();
            int i = (int) (m2548for.f4049do + j);
            m2548for.f4049do = i;
            m2548for.f4053if = Math.min(i + ((int) j2), m2548for.f4053if);
            VB vb2 = u5.f3827do;
            if (vb2 == null) {
                m2548for.f4054if = m2548for;
                m2548for.f4050do = m2548for;
                u5.f3827do = m2548for;
            } else {
                vb2.f4054if.m2549if(m2548for);
            }
            j2 -= m2548for.f4053if - m2548for.f4049do;
            vb = vb.f4050do;
            j = 0;
        }
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: implements, reason: not valid java name */
    public final void mo2334implements(long j) {
        while (j > 0) {
            if (this.f3827do == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, r0.f4053if - r0.f4049do);
            long j2 = min;
            this.f3826do -= j2;
            j -= j2;
            VB vb = this.f3827do;
            int i = vb.f4049do + min;
            vb.f4049do = i;
            if (i == vb.f4053if) {
                this.f3827do = vb.m2547do();
                XB.m2797do(vb);
            }
        }
    }

    @Override // defpackage.Z5
    /* renamed from: import */
    public final /* bridge */ /* synthetic */ Z5 mo2297import(long j) {
        m2343throws(j);
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // defpackage.InterfaceC0671a6
    public final String m() {
        return mo2323abstract(Long.MAX_VALUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0094 A[EDGE_INSN: B:41:0x0094->B:38:0x0094 BREAK  A[LOOP:0: B:4:0x000b->B:40:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008c  */
    @Override // defpackage.InterfaceC0671a6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long n() {
        /*
            r15 = this;
            long r0 = r15.f3826do
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L9b
            r0 = 0
            r4 = r2
            r1 = 0
        Lb:
            VB r6 = r15.f3827do
            byte[] r7 = r6.f4052do
            int r8 = r6.f4049do
            int r9 = r6.f4053if
        L13:
            if (r8 >= r9) goto L80
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L39
        L22:
            r11 = 97
            if (r10 < r11) goto L2d
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2d
            int r11 = r10 + (-97)
            goto L37
        L2d:
            r11 = 65
            if (r10 < r11) goto L64
            r11 = 70
            if (r10 > r11) goto L64
            int r11 = r10 + (-65)
        L37:
            int r11 = r11 + 10
        L39:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L49
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L49:
            U5 r0 = new U5
            r0.<init>()
            r0.m2343throws(r4)
            r0.m2338return(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r0 = r0.m2324break()
            java.lang.String r2 = "Number too large: "
            java.lang.String r0 = r2.concat(r0)
            r1.<init>(r0)
            throw r1
        L64:
            if (r0 == 0) goto L68
            r1 = 1
            goto L80
        L68:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.<init>(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L80:
            if (r8 != r9) goto L8c
            VB r7 = r6.m2547do()
            r15.f3827do = r7
            defpackage.XB.m2797do(r6)
            goto L8e
        L8c:
            r6.f4049do = r8
        L8e:
            if (r1 != 0) goto L94
            VB r6 = r15.f3827do
            if (r6 != 0) goto Lb
        L94:
            long r1 = r15.f3826do
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.f3826do = r1
            return r4
        L9b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.U5.n():long");
    }

    /* renamed from: new, reason: not valid java name */
    public final long m2335new(byte b, long j, long j2) {
        VB vb;
        long j3 = 0;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f3826do), Long.valueOf(j), Long.valueOf(j2)));
        }
        long j4 = this.f3826do;
        long j5 = j2 > j4 ? j4 : j2;
        if (j == j5 || (vb = this.f3827do) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                vb = vb.f4054if;
                j4 -= vb.f4053if - vb.f4049do;
            }
        } else {
            while (true) {
                long j6 = (vb.f4053if - vb.f4049do) + j3;
                if (j6 >= j) {
                    break;
                }
                vb = vb.f4050do;
                j3 = j6;
            }
            j4 = j3;
        }
        long j7 = j;
        while (j4 < j5) {
            byte[] bArr = vb.f4052do;
            int min = (int) Math.min(vb.f4053if, (vb.f4049do + j5) - j4);
            for (int i = (int) ((vb.f4049do + j7) - j4); i < min; i++) {
                if (bArr[i] == b) {
                    return (i - vb.f4049do) + j4;
                }
            }
            j4 += vb.f4053if - vb.f4049do;
            vb = vb.f4050do;
            j7 = j4;
        }
        return -1L;
    }

    @Override // defpackage.Z5
    public final Z5 p(String str) {
        m2340strictfp(0, str.length(), str);
        return this;
    }

    /* renamed from: package, reason: not valid java name */
    public final void m2336package(int i) {
        VB m2337public = m2337public(4);
        int i2 = m2337public.f4053if;
        int i3 = i2 + 1;
        byte[] bArr = m2337public.f4052do;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m2337public.f4053if = i5 + 1;
        this.f3826do += 4;
    }

    @Override // defpackage.Z5
    /* renamed from: protected */
    public final Z5 mo2298protected(byte[] bArr) {
        write(bArr, 0, bArr.length);
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public final VB m2337public(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        VB vb = this.f3827do;
        if (vb == null) {
            VB m2798if = XB.m2798if();
            this.f3827do = m2798if;
            m2798if.f4054if = m2798if;
            m2798if.f4050do = m2798if;
            return m2798if;
        }
        VB vb2 = vb.f4054if;
        if (vb2.f4053if + i <= 8192 && vb2.f4055if) {
            return vb2;
        }
        VB m2798if2 = XB.m2798if();
        vb2.m2549if(m2798if2);
        return m2798if2;
    }

    @Override // defpackage.InterfaceC0671a6
    public final String q(Charset charset) {
        try {
            return m2342this(this.f3826do, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final int read(byte[] bArr, int i, int i2) {
        TJ.m2240do(bArr.length, i, i2);
        VB vb = this.f3827do;
        if (vb == null) {
            return -1;
        }
        int min = Math.min(i2, vb.f4053if - vb.f4049do);
        System.arraycopy(vb.f4052do, vb.f4049do, bArr, i, min);
        int i3 = vb.f4049do + min;
        vb.f4049do = i3;
        this.f3826do -= min;
        if (i3 == vb.f4053if) {
            this.f3827do = vb.m2547do();
            XB.m2797do(vb);
        }
        return min;
    }

    @Override // defpackage.InterfaceC0671a6
    public final byte readByte() {
        long j = this.f3826do;
        if (j == 0) {
            throw new IllegalStateException("size == 0");
        }
        VB vb = this.f3827do;
        int i = vb.f4049do;
        int i2 = vb.f4053if;
        int i3 = i + 1;
        byte b = vb.f4052do[i];
        this.f3826do = j - 1;
        if (i3 == i2) {
            this.f3827do = vb.m2547do();
            XB.m2797do(vb);
        } else {
            vb.f4049do = i3;
        }
        return b;
    }

    @Override // defpackage.InterfaceC0671a6
    public final int readInt() {
        long j = this.f3826do;
        if (j < 4) {
            throw new IllegalStateException("size < 4: " + this.f3826do);
        }
        VB vb = this.f3827do;
        int i = vb.f4049do;
        int i2 = vb.f4053if;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        int i3 = i + 1;
        byte[] bArr = vb.f4052do;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        this.f3826do = j - 4;
        if (i8 == i2) {
            this.f3827do = vb.m2547do();
            XB.m2797do(vb);
        } else {
            vb.f4049do = i8;
        }
        return i9;
    }

    @Override // defpackage.InterfaceC0671a6
    public final short readShort() {
        long j = this.f3826do;
        if (j < 2) {
            throw new IllegalStateException("size < 2: " + this.f3826do);
        }
        VB vb = this.f3827do;
        int i = vb.f4049do;
        int i2 = vb.f4053if;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        int i3 = i + 1;
        byte[] bArr = vb.f4052do;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.f3826do = j - 2;
        if (i4 == i2) {
            this.f3827do = vb.m2547do();
            XB.m2797do(vb);
        } else {
            vb.f4049do = i4;
        }
        return (short) i5;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m2338return(int i) {
        VB m2337public = m2337public(1);
        int i2 = m2337public.f4053if;
        m2337public.f4053if = i2 + 1;
        m2337public.f4052do[i2] = (byte) i;
        this.f3826do++;
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: static, reason: not valid java name */
    public final long mo2339static(C3488p6 c3488p6) {
        return m2325case(0L, c3488p6);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m2340strictfp(int i, int i2, String str) {
        char charAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException(V1.m2494case("beginIndex < 0: ", i));
        }
        if (i2 < i) {
            throw new IllegalArgumentException(Cif.m6918new("endIndex < beginIndex: ", i2, " < ", i));
        }
        if (i2 > str.length()) {
            StringBuilder m7821else = Cpublic.m7821else("endIndex > string.length: ", i2, " > ");
            m7821else.append(str.length());
            throw new IllegalArgumentException(m7821else.toString());
        }
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 128) {
                VB m2337public = m2337public(1);
                int i3 = m2337public.f4053if - i;
                int min = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                byte[] bArr = m2337public.f4052do;
                bArr[i + i3] = (byte) charAt2;
                while (true) {
                    i = i4;
                    if (i >= min || (charAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) charAt;
                }
                int i5 = m2337public.f4053if;
                int i6 = (i3 + i) - i5;
                m2337public.f4053if = i5 + i6;
                this.f3826do += i6;
            } else {
                if (charAt2 < 2048) {
                    m2338return((charAt2 >> 6) | 192);
                    m2338return((charAt2 & '?') | 128);
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    m2338return((charAt2 >> '\f') | 224);
                    m2338return(((charAt2 >> 6) & 63) | 128);
                    m2338return((charAt2 & '?') | 128);
                } else {
                    int i7 = i + 1;
                    char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                    if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                        m2338return(63);
                        i = i7;
                    } else {
                        int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
                        m2338return((i8 >> 18) | 240);
                        m2338return(((i8 >> 12) & 63) | 128);
                        m2338return(((i8 >> 6) & 63) | 128);
                        m2338return((i8 & 63) | 128);
                        i += 2;
                    }
                }
                i++;
            }
        }
    }

    @Override // defpackage.InterfaceC3908wE
    /* renamed from: super */
    public final void mo1111super(U5 u5, long j) {
        VB m2798if;
        if (u5 == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (u5 == this) {
            throw new IllegalArgumentException("source == this");
        }
        TJ.m2240do(u5.f3826do, 0L, j);
        while (j > 0) {
            VB vb = u5.f3827do;
            int i = vb.f4053if - vb.f4049do;
            if (j < i) {
                VB vb2 = this.f3827do;
                VB vb3 = vb2 != null ? vb2.f4054if : null;
                if (vb3 != null && vb3.f4055if) {
                    if ((vb3.f4053if + j) - (vb3.f4051do ? 0 : vb3.f4049do) <= 8192) {
                        vb.m2550new(vb3, (int) j);
                        u5.f3826do -= j;
                        this.f3826do += j;
                        return;
                    }
                }
                int i2 = (int) j;
                if (i2 <= 0 || i2 > i) {
                    throw new IllegalArgumentException();
                }
                if (i2 >= 1024) {
                    m2798if = vb.m2548for();
                } else {
                    m2798if = XB.m2798if();
                    System.arraycopy(vb.f4052do, vb.f4049do, m2798if.f4052do, 0, i2);
                }
                m2798if.f4053if = m2798if.f4049do + i2;
                vb.f4049do += i2;
                vb.f4054if.m2549if(m2798if);
                u5.f3827do = m2798if;
            }
            VB vb4 = u5.f3827do;
            long j2 = vb4.f4053if - vb4.f4049do;
            u5.f3827do = vb4.m2547do();
            VB vb5 = this.f3827do;
            if (vb5 == null) {
                this.f3827do = vb4;
                vb4.f4054if = vb4;
                vb4.f4050do = vb4;
            } else {
                vb5.f4054if.m2549if(vb4);
                VB vb6 = vb4.f4054if;
                if (vb6 == vb4) {
                    throw new IllegalStateException();
                }
                if (vb6.f4055if) {
                    int i3 = vb4.f4053if - vb4.f4049do;
                    if (i3 <= (8192 - vb6.f4053if) + (vb6.f4051do ? 0 : vb6.f4049do)) {
                        vb4.m2550new(vb6, i3);
                        vb4.m2547do();
                        XB.m2797do(vb4);
                    }
                }
            }
            u5.f3826do -= j2;
            this.f3826do += j2;
            j -= j2;
        }
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: synchronized, reason: not valid java name */
    public final U5 mo2341synchronized() {
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public final String m2342this(long j, Charset charset) {
        TJ.m2240do(this.f3826do, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException(Cpublic.m7828try("byteCount > Integer.MAX_VALUE: ", j));
        }
        if (j == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        VB vb = this.f3827do;
        int i = vb.f4049do;
        if (i + j > vb.f4053if) {
            return new String(m2332goto(j), charset);
        }
        String str = new String(vb.f4052do, i, (int) j, charset);
        int i2 = (int) (vb.f4049do + j);
        vb.f4049do = i2;
        this.f3826do -= j;
        if (i2 == vb.f4053if) {
            this.f3827do = vb.m2547do();
            XB.m2797do(vb);
        }
        return str;
    }

    @Override // defpackage.KE
    /* renamed from: throw */
    public final long mo631throw(U5 u5, long j) {
        if (u5 == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException(Cpublic.m7828try("byteCount < 0: ", j));
        }
        long j2 = this.f3826do;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        u5.mo1111super(this, j);
        return j;
    }

    /* renamed from: throws, reason: not valid java name */
    public final U5 m2343throws(long j) {
        if (j == 0) {
            m2338return(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        VB m2337public = m2337public(numberOfTrailingZeros);
        int i = m2337public.f4053if;
        int i2 = i + numberOfTrailingZeros;
        while (true) {
            i2--;
            if (i2 < i) {
                m2337public.f4053if += numberOfTrailingZeros;
                this.f3826do += numberOfTrailingZeros;
                return this;
            }
            m2337public.f4052do[i2] = f3825do[(int) (15 & j)];
            j >>>= 4;
        }
    }

    public final String toString() {
        long j = this.f3826do;
        if (j <= 2147483647L) {
            int i = (int) j;
            return (i == 0 ? C3488p6.f14879do : new YB(this, i)).toString();
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f3826do);
    }

    @Override // defpackage.Z5
    /* renamed from: transient */
    public final /* bridge */ /* synthetic */ Z5 mo2299transient(int i) {
        m2329continue(i);
        return this;
    }

    @Override // defpackage.KE
    /* renamed from: try */
    public final C3675sH mo632try() {
        return C3675sH.f15427do;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m2344volatile(int i) {
        if (i < 128) {
            m2338return(i);
            return;
        }
        if (i < 2048) {
            m2338return((i >> 6) | 192);
            m2338return((i & 63) | 128);
            return;
        }
        if (i < 65536) {
            if (i >= 55296 && i <= 57343) {
                m2338return(63);
                return;
            }
            m2338return((i >> 12) | 224);
            m2338return(((i >> 6) & 63) | 128);
            m2338return((i & 63) | 128);
            return;
        }
        if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        m2338return((i >> 18) | 240);
        m2338return(((i >> 12) & 63) | 128);
        m2338return(((i >> 6) & 63) | 128);
        m2338return((i & 63) | 128);
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: while, reason: not valid java name */
    public final boolean mo2345while(long j) {
        return this.f3826do >= j;
    }

    public final void write(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        TJ.m2240do(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            VB m2337public = m2337public(1);
            int min = Math.min(i3 - i, 8192 - m2337public.f4053if);
            System.arraycopy(bArr, i, m2337public.f4052do, m2337public.f4053if, min);
            i += min;
            m2337public.f4053if += min;
        }
        this.f3826do += j;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                VB m2337public = m2337public(1);
                int min = Math.min(i, 8192 - m2337public.f4053if);
                byteBuffer.get(m2337public.f4052do, m2337public.f4053if, min);
                i -= min;
                m2337public.f4053if += min;
            }
            this.f3826do += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        VB vb = this.f3827do;
        if (vb == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), vb.f4053if - vb.f4049do);
        byteBuffer.put(vb.f4052do, vb.f4049do, min);
        int i = vb.f4049do + min;
        vb.f4049do = i;
        this.f3826do -= min;
        if (i == vb.f4053if) {
            this.f3827do = vb.m2547do();
            XB.m2797do(vb);
        }
        return min;
    }
}
