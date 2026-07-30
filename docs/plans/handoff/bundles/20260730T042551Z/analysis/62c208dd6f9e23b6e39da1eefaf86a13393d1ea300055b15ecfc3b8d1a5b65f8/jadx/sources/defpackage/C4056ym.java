package defpackage;

import com.google.android.gms.common.api.Api;
import defpackage.C2945im;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: ym, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4056ym implements Closeable {

    /* renamed from: do, reason: not valid java name */
    public static final Logger f16824do = Logger.getLogger(C3231km.class.getName());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final U5 f16825do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Z5 f16826do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2945im.Cif f16827do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f16828do;

    /* renamed from: for, reason: not valid java name */
    public int f16829for;

    /* renamed from: if, reason: not valid java name */
    public boolean f16830if;

    public C4056ym(Z5 z5, boolean z) {
        this.f16826do = z5;
        this.f16828do = z;
        U5 u5 = new U5();
        this.f16825do = u5;
        this.f16827do = new C2945im.Cif(u5);
        this.f16829for = 16384;
    }

    /* renamed from: break, reason: not valid java name */
    public final synchronized void m8765break(M4 m4) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        m8770for(0, Integer.bitCount(m4.f2094do) * 6, (byte) 4, (byte) 0);
        int i = 0;
        while (i < 10) {
            boolean z = true;
            if (((1 << i) & m4.f2094do) == 0) {
                z = false;
            }
            if (z) {
                this.f16826do.mo2299transient(i == 4 ? 3 : i == 7 ? 4 : i);
                this.f16826do.e(((int[]) m4.f2095do)[i]);
            }
            i++;
        }
        this.f16826do.flush();
    }

    /* renamed from: case, reason: not valid java name */
    public final void m8766case(int i, ArrayList arrayList, boolean z) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        this.f16827do.m6930new(arrayList);
        U5 u5 = this.f16825do;
        long j = u5.f3826do;
        int min = (int) Math.min(this.f16829for, j);
        long j2 = min;
        byte b = j == j2 ? (byte) 4 : (byte) 0;
        if (z) {
            b = (byte) (b | 1);
        }
        m8770for(i, min, (byte) 1, b);
        this.f16826do.mo1111super(u5, j2);
        if (j > j2) {
            m8774public(i, j - j2);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final synchronized void m8767class(int i, ArrayList arrayList, boolean z) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        m8766case(i, arrayList, z);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f16830if = true;
        this.f16826do.close();
    }

    /* renamed from: const, reason: not valid java name */
    public final synchronized void m8768const(int i, long j) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        if (j == 0 || j > 2147483647L) {
            Object[] objArr = {Long.valueOf(j)};
            C3488p6 c3488p6 = C3231km.f14037do;
            throw new IllegalArgumentException(SJ.m2132class("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", objArr));
        }
        m8770for(i, 4, (byte) 8, (byte) 0);
        this.f16826do.e((int) j);
        this.f16826do.flush();
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m8769do(M4 m4) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        int i = this.f16829for;
        int i2 = m4.f2094do;
        if ((i2 & 32) != 0) {
            i = ((int[]) m4.f2095do)[5];
        }
        this.f16829for = i;
        if (((i2 & 2) != 0 ? ((int[]) m4.f2095do)[1] : -1) != -1) {
            C2945im.Cif cif = this.f16827do;
            int i3 = (i2 & 2) != 0 ? ((int[]) m4.f2095do)[1] : -1;
            cif.getClass();
            int min = Math.min(i3, 16384);
            int i4 = cif.f13558if;
            if (i4 != min) {
                if (min < i4) {
                    cif.f13553do = Math.min(cif.f13553do, min);
                }
                cif.f13555do = true;
                cif.f13558if = min;
                int i5 = cif.f13560try;
                if (min < i5) {
                    if (min == 0) {
                        Arrays.fill(cif.f13556do, (Object) null);
                        cif.f13557for = cif.f13556do.length - 1;
                        cif.f13559new = 0;
                        cif.f13560try = 0;
                    } else {
                        cif.m6927do(i5 - min);
                    }
                }
            }
        }
        m8770for(0, 0, (byte) 4, (byte) 1);
        this.f16826do.flush();
    }

    public final synchronized void flush() {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        this.f16826do.flush();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8770for(int i, int i2, byte b, byte b2) {
        Level level = Level.FINE;
        Logger logger = f16824do;
        if (logger.isLoggable(level)) {
            logger.fine(C3231km.m7276do(false, i, i2, b, b2));
        }
        int i3 = this.f16829for;
        if (i2 > i3) {
            Object[] objArr = {Integer.valueOf(i3), Integer.valueOf(i2)};
            C3488p6 c3488p6 = C3231km.f14037do;
            throw new IllegalArgumentException(SJ.m2132class("FRAME_SIZE_ERROR length > %d: %d", objArr));
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            Object[] objArr2 = {Integer.valueOf(i)};
            C3488p6 c3488p62 = C3231km.f14037do;
            throw new IllegalArgumentException(SJ.m2132class("reserved bit set: %s", objArr2));
        }
        Z5 z5 = this.f16826do;
        z5.c((i2 >>> 16) & 255);
        z5.c((i2 >>> 8) & 255);
        z5.c(i2 & 255);
        z5.c(b & 255);
        z5.c(b2 & 255);
        z5.e(i & Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    /* renamed from: goto, reason: not valid java name */
    public final synchronized void m8771goto(int i, int i2, boolean z) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        m8770for(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
        this.f16826do.e(i);
        this.f16826do.e(i2);
        this.f16826do.flush();
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m8772if(boolean z, int i, U5 u5, int i2) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        m8770for(i, i2, (byte) 0, z ? (byte) 1 : (byte) 0);
        if (i2 > 0) {
            this.f16826do.mo1111super(u5, i2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized void m8773new(int i, int i2, byte[] bArr) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        if (V1.m2498do(i2) == -1) {
            C3488p6 c3488p6 = C3231km.f14037do;
            throw new IllegalArgumentException(SJ.m2132class("errorCode.httpCode == -1", new Object[0]));
        }
        m8770for(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.f16826do.e(i);
        this.f16826do.e(V1.m2498do(i2));
        if (bArr.length > 0) {
            this.f16826do.mo2298protected(bArr);
        }
        this.f16826do.flush();
    }

    /* renamed from: public, reason: not valid java name */
    public final void m8774public(int i, long j) {
        while (j > 0) {
            int min = (int) Math.min(this.f16829for, j);
            long j2 = min;
            j -= j2;
            m8770for(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.f16826do.mo1111super(this.f16825do, j2);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final synchronized void m8775this(int i, int i2) {
        if (this.f16830if) {
            throw new IOException("closed");
        }
        if (V1.m2498do(i2) == -1) {
            throw new IllegalArgumentException();
        }
        m8770for(i, 4, (byte) 3, (byte) 0);
        this.f16826do.e(V1.m2498do(i2));
        this.f16826do.flush();
    }
}
