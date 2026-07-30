package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.logging.Logger;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* renamed from: Pl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0433Pl implements KE {

    /* renamed from: do, reason: not valid java name */
    public final C0216Fn f2822do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Uy f2823do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Inflater f2825do;

    /* renamed from: for, reason: not valid java name */
    public int f2826for = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CRC32 f2824do = new CRC32();

    public C0433Pl(KE ke) {
        if (ke == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f2825do = inflater;
        Logger logger = C0114Av.f168do;
        Uy uy = new Uy(ke);
        this.f2823do = uy;
        this.f2822do = new C0216Fn(uy, inflater);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1799do(int i, int i2, String str) {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2822do.close();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1800if(U5 u5, long j, long j2) {
        VB vb = u5.f3827do;
        while (true) {
            int i = vb.f4053if;
            int i2 = vb.f4049do;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            vb = vb.f4050do;
        }
        while (j2 > 0) {
            int min = (int) Math.min(vb.f4053if - r7, j2);
            this.f2824do.update(vb.f4052do, (int) (vb.f4049do + j), min);
            j2 -= min;
            vb = vb.f4050do;
            j = 0;
        }
    }

    @Override // defpackage.KE
    /* renamed from: throw */
    public final long mo631throw(U5 u5, long j) {
        Uy uy;
        U5 u52;
        long j2;
        if (j < 0) {
            throw new IllegalArgumentException(Cpublic.m7828try("byteCount < 0: ", j));
        }
        if (j == 0) {
            return 0L;
        }
        int i = this.f2826for;
        CRC32 crc32 = this.f2824do;
        Uy uy2 = this.f2823do;
        if (i == 0) {
            uy2.mo2326catch(10L);
            U5 u53 = uy2.f4012do;
            byte m2331for = u53.m2331for(3L);
            boolean z = ((m2331for >> 1) & 1) == 1;
            if (z) {
                u52 = u53;
                m1800if(uy2.f4012do, 0L, 10L);
            } else {
                u52 = u53;
            }
            m1799do(8075, uy2.readShort(), "ID1ID2");
            uy2.mo2334implements(8L);
            if (((m2331for >> 2) & 1) == 1) {
                uy2.mo2326catch(2L);
                if (z) {
                    m1800if(uy2.f4012do, 0L, 2L);
                }
                short readShort = u52.readShort();
                Charset charset = TJ.f3645do;
                int i2 = readShort & 65535;
                long j3 = (short) (((i2 & 255) << 8) | ((i2 & 65280) >>> 8));
                uy2.mo2326catch(j3);
                if (z) {
                    m1800if(uy2.f4012do, 0L, j3);
                    j2 = j3;
                } else {
                    j2 = j3;
                }
                uy2.mo2334implements(j2);
            }
            if (((m2331for >> 3) & 1) == 1) {
                uy = uy2;
                long m2487do = uy2.m2487do((byte) 0, 0L, Long.MAX_VALUE);
                if (m2487do == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m1800if(uy.f4012do, 0L, m2487do + 1);
                }
                uy.mo2334implements(m2487do + 1);
            } else {
                uy = uy2;
            }
            if (((m2331for >> 4) & 1) == 1) {
                long m2487do2 = uy.m2487do((byte) 0, 0L, Long.MAX_VALUE);
                if (m2487do2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m1800if(uy.f4012do, 0L, m2487do2 + 1);
                }
                uy.mo2334implements(m2487do2 + 1);
            }
            if (z) {
                uy.mo2326catch(2L);
                short readShort2 = u52.readShort();
                Charset charset2 = TJ.f3645do;
                int i3 = readShort2 & 65535;
                m1799do((short) (((i3 & 255) << 8) | ((65280 & i3) >>> 8)), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            this.f2826for = 1;
        } else {
            uy = uy2;
        }
        if (this.f2826for == 1) {
            long j4 = u5.f3826do;
            long mo631throw = this.f2822do.mo631throw(u5, j);
            if (mo631throw != -1) {
                m1800if(u5, j4, mo631throw);
                return mo631throw;
            }
            this.f2826for = 2;
        }
        if (this.f2826for == 2) {
            uy.mo2326catch(4L);
            int readInt = uy.f4012do.readInt();
            Charset charset3 = TJ.f3645do;
            m1799do(((readInt & 255) << 24) | ((readInt & (-16777216)) >>> 24) | ((readInt & 16711680) >>> 8) | ((65280 & readInt) << 8), (int) crc32.getValue(), "CRC");
            uy.mo2326catch(4L);
            int readInt2 = uy.f4012do.readInt();
            m1799do(((readInt2 & 255) << 24) | ((readInt2 & (-16777216)) >>> 24) | ((readInt2 & 16711680) >>> 8) | ((65280 & readInt2) << 8), (int) this.f2825do.getBytesWritten(), "ISIZE");
            this.f2826for = 3;
            if (!uy.h()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // defpackage.KE
    /* renamed from: try */
    public final C3675sH mo632try() {
        return this.f2823do.mo632try();
    }
}
