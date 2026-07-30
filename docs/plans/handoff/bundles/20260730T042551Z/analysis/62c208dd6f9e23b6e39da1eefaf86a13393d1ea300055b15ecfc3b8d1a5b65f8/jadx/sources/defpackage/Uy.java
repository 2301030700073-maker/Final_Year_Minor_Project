package defpackage;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class Uy implements InterfaceC0671a6 {

    /* renamed from: do, reason: not valid java name */
    public final KE f4011do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final U5 f4012do = new U5();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4013do;

    public Uy(KE ke) {
        if (ke == null) {
            throw new NullPointerException("source == null");
        }
        this.f4011do = ke;
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: abstract */
    public final String mo2323abstract(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Cpublic.m7828try("limit < 0: ", j));
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long m2487do = m2487do((byte) 10, 0L, j2);
        U5 u5 = this.f4012do;
        if (m2487do != -1) {
            return u5.m2328const(m2487do);
        }
        if (j2 < Long.MAX_VALUE && mo2345while(j2) && u5.m2331for(j2 - 1) == 13 && mo2345while(1 + j2) && u5.m2331for(j2) == 10) {
            return u5.m2328const(j2);
        }
        U5 u52 = new U5();
        u5.m2333if(u52, 0L, Math.min(32L, u5.f3826do));
        StringBuilder sb = new StringBuilder("\\n not found: limit=");
        sb.append(Math.min(u5.f3826do, j));
        sb.append(" content=");
        try {
            sb.append(new C3488p6(u52.m2332goto(u52.f3826do)).mo2894const());
            sb.append((char) 8230);
            throw new EOFException(sb.toString());
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: catch */
    public final void mo2326catch(long j) {
        if (!mo2345while(j)) {
            throw new EOFException();
        }
    }

    @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4013do) {
            return;
        }
        this.f4013do = true;
        this.f4011do.close();
        this.f4012do.m2330do();
    }

    /* renamed from: do, reason: not valid java name */
    public final long m2487do(byte b, long j, long j2) {
        if (this.f4013do) {
            throw new IllegalStateException("closed");
        }
        long j3 = 0;
        if (j2 < 0) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", 0L, Long.valueOf(j2)));
        }
        while (j3 < j2) {
            long m2335new = this.f4012do.m2335new(b, j3, j2);
            if (m2335new == -1) {
                U5 u5 = this.f4012do;
                long j4 = u5.f3826do;
                if (j4 >= j2 || this.f4011do.mo631throw(u5, 8192L) == -1) {
                    break;
                }
                j3 = Math.max(j3, j4);
            } else {
                return m2335new;
            }
        }
        return -1L;
    }

    @Override // defpackage.InterfaceC0671a6
    public final C3488p6 g(long j) {
        mo2326catch(j);
        return this.f4012do.g(j);
    }

    @Override // defpackage.InterfaceC0671a6
    public final boolean h() {
        if (this.f4013do) {
            throw new IllegalStateException("closed");
        }
        U5 u5 = this.f4012do;
        return u5.h() && this.f4011do.mo631throw(u5, 8192L) == -1;
    }

    @Override // defpackage.InterfaceC0671a6
    public final boolean i(C3488p6 c3488p6) {
        byte[] bArr = c3488p6.f14882do;
        int length = bArr.length;
        if (this.f4013do) {
            throw new IllegalStateException("closed");
        }
        if (length < 0 || bArr.length - 0 < length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            long j = i + 0;
            if (!mo2345while(1 + j)) {
                return false;
            }
            if (this.f4012do.m2331for(j) != c3488p6.f14882do[0 + i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2488if(byte[] bArr) {
        U5 u5 = this.f4012do;
        int i = 0;
        try {
            mo2326catch(bArr.length);
            u5.getClass();
            while (i < bArr.length) {
                int read = u5.read(bArr, i, bArr.length - i);
                if (read == -1) {
                    throw new EOFException();
                }
                i += read;
            }
        } catch (EOFException e) {
            while (true) {
                long j = u5.f3826do;
                if (j <= 0) {
                    throw e;
                }
                int read2 = u5.read(bArr, i, (int) j);
                if (read2 == -1) {
                    throw new AssertionError();
                }
                i += read2;
            }
        }
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: implements */
    public final void mo2334implements(long j) {
        if (this.f4013do) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            U5 u5 = this.f4012do;
            if (u5.f3826do == 0 && this.f4011do.mo631throw(u5, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, u5.f3826do);
            u5.mo2334implements(min);
            j -= min;
        }
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f4013do;
    }

    @Override // defpackage.InterfaceC0671a6
    public final String m() {
        return mo2323abstract(Long.MAX_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r1 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
    
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r3)));
     */
    @Override // defpackage.InterfaceC0671a6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long n() {
        /*
            r7 = this;
            r0 = 1
            r7.mo2326catch(r0)
            r0 = 0
            r1 = 0
        L7:
            int r2 = r1 + 1
            long r3 = (long) r2
            boolean r3 = r7.mo2345while(r3)
            U5 r4 = r7.f4012do
            if (r3 == 0) goto L4a
            long r5 = (long) r1
            byte r3 = r4.m2331for(r5)
            r5 = 48
            if (r3 < r5) goto L1f
            r5 = 57
            if (r3 <= r5) goto L30
        L1f:
            r5 = 97
            if (r3 < r5) goto L27
            r5 = 102(0x66, float:1.43E-43)
            if (r3 <= r5) goto L30
        L27:
            r5 = 65
            if (r3 < r5) goto L32
            r5 = 70
            if (r3 <= r5) goto L30
            goto L32
        L30:
            r1 = r2
            goto L7
        L32:
            if (r1 == 0) goto L35
            goto L4a
        L35:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Byte r3 = java.lang.Byte.valueOf(r3)
            r2[r0] = r3
            java.lang.String r0 = "Expected leading [0-9a-fA-F] character but was %#x"
            java.lang.String r0 = java.lang.String.format(r0, r2)
            r1.<init>(r0)
            throw r1
        L4a:
            long r0 = r4.n()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Uy.n():long");
    }

    @Override // defpackage.InterfaceC0671a6
    public final String q(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        U5 u5 = this.f4012do;
        u5.getClass();
        KE ke = this.f4011do;
        if (ke == null) {
            throw new IllegalArgumentException("source == null");
        }
        while (ke.mo631throw(u5, 8192L) != -1) {
        }
        return u5.q(charset);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        U5 u5 = this.f4012do;
        if (u5.f3826do == 0 && this.f4011do.mo631throw(u5, 8192L) == -1) {
            return -1;
        }
        return u5.read(byteBuffer);
    }

    @Override // defpackage.InterfaceC0671a6
    public final byte readByte() {
        mo2326catch(1L);
        return this.f4012do.readByte();
    }

    @Override // defpackage.InterfaceC0671a6
    public final int readInt() {
        mo2326catch(4L);
        return this.f4012do.readInt();
    }

    @Override // defpackage.InterfaceC0671a6
    public final short readShort() {
        mo2326catch(2L);
        return this.f4012do.readShort();
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: static */
    public final long mo2339static(C3488p6 c3488p6) {
        if (this.f4013do) {
            throw new IllegalStateException("closed");
        }
        long j = 0;
        while (true) {
            U5 u5 = this.f4012do;
            long m2325case = u5.m2325case(j, c3488p6);
            if (m2325case != -1) {
                return m2325case;
            }
            long j2 = u5.f3826do;
            if (this.f4011do.mo631throw(u5, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: synchronized */
    public final U5 mo2341synchronized() {
        return this.f4012do;
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
        if (this.f4013do) {
            throw new IllegalStateException("closed");
        }
        U5 u52 = this.f4012do;
        if (u52.f3826do == 0 && this.f4011do.mo631throw(u52, 8192L) == -1) {
            return -1L;
        }
        return u52.mo631throw(u5, Math.min(j, u52.f3826do));
    }

    public final String toString() {
        return "buffer(" + this.f4011do + ")";
    }

    @Override // defpackage.KE
    /* renamed from: try */
    public final C3675sH mo632try() {
        return this.f4011do.mo632try();
    }

    @Override // defpackage.InterfaceC0671a6
    /* renamed from: while */
    public final boolean mo2345while(long j) {
        U5 u5;
        if (j < 0) {
            throw new IllegalArgumentException(Cpublic.m7828try("byteCount < 0: ", j));
        }
        if (this.f4013do) {
            throw new IllegalStateException("closed");
        }
        do {
            u5 = this.f4012do;
            if (u5.f3826do >= j) {
                return true;
            }
        } while (this.f4011do.mo631throw(u5, 8192L) != -1);
        return false;
    }
}
