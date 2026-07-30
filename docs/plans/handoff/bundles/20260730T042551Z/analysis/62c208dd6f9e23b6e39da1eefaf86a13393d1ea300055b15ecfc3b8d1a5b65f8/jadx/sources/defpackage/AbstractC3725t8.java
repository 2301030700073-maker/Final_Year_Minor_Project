package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.protobuf.Ccatch;
import com.google.protobuf.Cfinal;
import com.google.protobuf.Cstatic;
import com.google.protobuf.Ctry;
import defpackage.PJ;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: t8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3725t8 extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public static final Logger f15623do = Logger.getLogger(AbstractC3725t8.class.getName());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f15624do = C3677sJ.f15437if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ctry f15625do;

    /* renamed from: t8$do, reason: invalid class name */
    public static class Cdo extends AbstractC3725t8 {

        /* renamed from: do, reason: not valid java name */
        public final int f15626do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final byte[] f15627do;

        /* renamed from: if, reason: not valid java name */
        public int f15628if;

        public Cdo(byte[] bArr, int i) {
            int i2 = 0 + i;
            if ((0 | i | (bArr.length - i2)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i)));
            }
            this.f15627do = bArr;
            this.f15628if = 0;
            this.f15626do = i2;
        }

        @Override // defpackage.AbstractC3725t8
        public final void a(int i, boolean z) {
            q(i, 0);
            mo8220synchronized(z ? (byte) 1 : (byte) 0);
        }

        @Override // defpackage.AbstractC3725t8
        public final void b(byte[] bArr, int i) {
            s(i);
            w(bArr, 0, i);
        }

        @Override // defpackage.AbstractC3725t8
        public final void c(int i, AbstractC3429o6 abstractC3429o6) {
            q(i, 2);
            d(abstractC3429o6);
        }

        @Override // defpackage.AbstractC3725t8
        public final void d(AbstractC3429o6 abstractC3429o6) {
            s(abstractC3429o6.size());
            abstractC3429o6.mo7682const(this);
        }

        @Override // defpackage.AbstractC3725t8
        public final void e(int i, int i2) {
            q(i, 5);
            f(i2);
        }

        @Override // defpackage.AbstractC3725t8
        public final void f(int i) {
            try {
                byte[] bArr = this.f15627do;
                int i2 = this.f15628if;
                int i3 = i2 + 1;
                bArr[i2] = (byte) (i & 255);
                int i4 = i3 + 1;
                bArr[i3] = (byte) ((i >> 8) & 255);
                int i5 = i4 + 1;
                bArr[i4] = (byte) ((i >> 16) & 255);
                this.f15628if = i5 + 1;
                bArr[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new Cif(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15628if), Integer.valueOf(this.f15626do), 1), e);
            }
        }

        @Override // defpackage.AbstractC3725t8
        public final void g(int i, long j) {
            q(i, 1);
            h(j);
        }

        @Override // defpackage.AbstractC3725t8
        public final void h(long j) {
            try {
                byte[] bArr = this.f15627do;
                int i = this.f15628if;
                int i2 = i + 1;
                bArr[i] = (byte) (((int) j) & 255);
                int i3 = i2 + 1;
                bArr[i2] = (byte) (((int) (j >> 8)) & 255);
                int i4 = i3 + 1;
                bArr[i3] = (byte) (((int) (j >> 16)) & 255);
                int i5 = i4 + 1;
                bArr[i4] = (byte) (((int) (j >> 24)) & 255);
                int i6 = i5 + 1;
                bArr[i5] = (byte) (((int) (j >> 32)) & 255);
                int i7 = i6 + 1;
                bArr[i6] = (byte) (((int) (j >> 40)) & 255);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (((int) (j >> 48)) & 255);
                this.f15628if = i8 + 1;
                bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new Cif(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15628if), Integer.valueOf(this.f15626do), 1), e);
            }
        }

        @Override // defpackage.AbstractC3725t8
        public final void i(int i, int i2) {
            q(i, 0);
            j(i2);
        }

        @Override // defpackage.AbstractC3725t8
        public final void j(int i) {
            if (i >= 0) {
                s(i);
            } else {
                u(i);
            }
        }

        @Override // defpackage.AbstractC3725t8
        public final void k(int i, Cstatic cstatic, AB ab) {
            q(i, 2);
            s(((com.google.protobuf.Cdo) cstatic).mo6199super(ab));
            ab.mo51goto(cstatic, ((AbstractC3725t8) this).f15625do);
        }

        @Override // defpackage.AbstractC3725t8
        public final void l(Cstatic cstatic) {
            s(cstatic.mo6288do());
            cstatic.mo6287class(this);
        }

        @Override // defpackage.AbstractC3725t8
        public final void m(int i, Cstatic cstatic) {
            q(1, 3);
            r(2, i);
            q(3, 2);
            l(cstatic);
            q(1, 4);
        }

        @Override // defpackage.AbstractC3725t8
        public final void n(int i, AbstractC3429o6 abstractC3429o6) {
            q(1, 3);
            r(2, i);
            c(3, abstractC3429o6);
            q(1, 4);
        }

        @Override // defpackage.AbstractC3725t8
        public final void o(int i, String str) {
            q(i, 2);
            p(str);
        }

        @Override // defpackage.AbstractC3725t8
        public final void p(String str) {
            int i = this.f15628if;
            try {
                int m8217transient = AbstractC3725t8.m8217transient(str.length() * 3);
                int m8217transient2 = AbstractC3725t8.m8217transient(str.length());
                int i2 = this.f15626do;
                byte[] bArr = this.f15627do;
                if (m8217transient2 == m8217transient) {
                    int i3 = i + m8217transient2;
                    this.f15628if = i3;
                    int mo1766do = PJ.f2772do.mo1766do(str, bArr, i3, i2 - i3);
                    this.f15628if = i;
                    s((mo1766do - i) - m8217transient2);
                    this.f15628if = mo1766do;
                } else {
                    s(PJ.m1764if(str));
                    int i4 = this.f15628if;
                    this.f15628if = PJ.f2772do.mo1766do(str, bArr, i4, i2 - i4);
                }
            } catch (PJ.Cfor e) {
                this.f15628if = i;
                AbstractC3725t8.f15623do.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
                byte[] bytes = str.getBytes(Ccatch.f12045do);
                try {
                    s(bytes.length);
                    w(bytes, 0, bytes.length);
                } catch (IndexOutOfBoundsException e2) {
                    throw new Cif(e2);
                }
            } catch (IndexOutOfBoundsException e3) {
                throw new Cif(e3);
            }
        }

        @Override // defpackage.AbstractC3725t8
        public final void q(int i, int i2) {
            s((i << 3) | i2);
        }

        @Override // defpackage.AbstractC3725t8
        public final void r(int i, int i2) {
            q(i, 0);
            s(i2);
        }

        @Override // defpackage.AbstractC3725t8
        public final void s(int i) {
            while (true) {
                int i2 = i & (-128);
                byte[] bArr = this.f15627do;
                if (i2 == 0) {
                    int i3 = this.f15628if;
                    this.f15628if = i3 + 1;
                    bArr[i3] = (byte) i;
                    return;
                } else {
                    try {
                        int i4 = this.f15628if;
                        this.f15628if = i4 + 1;
                        bArr[i4] = (byte) ((i & ModuleDescriptor.MODULE_VERSION) | 128);
                        i >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new Cif(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15628if), Integer.valueOf(this.f15626do), 1), e);
                    }
                }
                throw new Cif(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15628if), Integer.valueOf(this.f15626do), 1), e);
            }
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: super */
        public final void mo7037super(byte[] bArr, int i, int i2) {
            w(bArr, i, i2);
        }

        @Override // defpackage.AbstractC3725t8
        /* renamed from: synchronized */
        public final void mo8220synchronized(byte b) {
            try {
                byte[] bArr = this.f15627do;
                int i = this.f15628if;
                this.f15628if = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new Cif(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15628if), Integer.valueOf(this.f15626do), 1), e);
            }
        }

        @Override // defpackage.AbstractC3725t8
        public final void t(int i, long j) {
            q(i, 0);
            u(j);
        }

        @Override // defpackage.AbstractC3725t8
        public final void u(long j) {
            boolean z = AbstractC3725t8.f15624do;
            int i = this.f15626do;
            byte[] bArr = this.f15627do;
            if (z && i - this.f15628if >= 10) {
                while ((j & (-128)) != 0) {
                    int i2 = this.f15628if;
                    this.f15628if = i2 + 1;
                    C3677sJ.m8109while(bArr, i2, (byte) ((((int) j) & ModuleDescriptor.MODULE_VERSION) | 128));
                    j >>>= 7;
                }
                int i3 = this.f15628if;
                this.f15628if = i3 + 1;
                C3677sJ.m8109while(bArr, i3, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    int i4 = this.f15628if;
                    this.f15628if = i4 + 1;
                    bArr[i4] = (byte) ((((int) j) & ModuleDescriptor.MODULE_VERSION) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new Cif(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15628if), Integer.valueOf(i), 1), e);
                }
            }
            int i5 = this.f15628if;
            this.f15628if = i5 + 1;
            bArr[i5] = (byte) j;
        }

        public final int v() {
            return this.f15626do - this.f15628if;
        }

        public final void w(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f15627do, this.f15628if, i2);
                this.f15628if += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new Cif(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15628if), Integer.valueOf(this.f15626do), Integer.valueOf(i2)), e);
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static int m8197abstract(int i, int i2) {
        return m8217transient((i2 >> 31) ^ (i2 << 1)) + m8205interface(i);
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m8198continue(int i, long j) {
        return m8204instanceof((j >> 63) ^ (j << 1)) + m8205interface(i);
    }

    /* renamed from: default, reason: not valid java name */
    public static int m8199default(int i) {
        if (i >= 0) {
            return m8217transient(i);
        }
        return 10;
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m8200extends(int i, long j) {
        return m8204instanceof(j) + m8205interface(i);
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m8201finally(Cfinal cfinal) {
        int size = cfinal.f12064do != null ? cfinal.f12064do.size() : cfinal.f12063do != null ? cfinal.f12063do.mo6288do() : 0;
        return m8217transient(size) + size;
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m8202implements(int i, long j) {
        return m8204instanceof(j) + m8205interface(i);
    }

    /* renamed from: import, reason: not valid java name */
    public static int m8203import(int i) {
        return m8205interface(i) + 8;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static int m8204instanceof(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m8205interface(int i) {
        return m8217transient((i << 3) | 0);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m8206native(int i, int i2) {
        return m8199default(i2) + m8205interface(i);
    }

    /* renamed from: package, reason: not valid java name */
    public static int m8207package(int i) {
        return m8205interface(i) + 4;
    }

    /* renamed from: private, reason: not valid java name */
    public static int m8208private(int i) {
        return m8205interface(i) + 8;
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m8209protected(int i, int i2) {
        return m8217transient(i2) + m8205interface(i);
    }

    /* renamed from: public, reason: not valid java name */
    public static int m8210public(int i) {
        return m8205interface(i) + 4;
    }

    /* renamed from: return, reason: not valid java name */
    public static int m8211return(int i) {
        return m8205interface(i) + 8;
    }

    /* renamed from: static, reason: not valid java name */
    public static int m8212static(int i) {
        return m8205interface(i) + 4;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m8213strictfp(int i, String str) {
        return m8218volatile(str) + m8205interface(i);
    }

    @Deprecated
    /* renamed from: switch, reason: not valid java name */
    public static int m8214switch(int i, Cstatic cstatic, AB ab) {
        return ((com.google.protobuf.Cdo) cstatic).mo6199super(ab) + (m8205interface(i) * 2);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m8215throw(int i) {
        return m8205interface(i) + 1;
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m8216throws(int i, int i2) {
        return m8199default(i2) + m8205interface(i);
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m8217transient(int i) {
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

    /* renamed from: volatile, reason: not valid java name */
    public static int m8218volatile(String str) {
        int length;
        try {
            length = PJ.m1764if(str);
        } catch (PJ.Cfor unused) {
            length = str.getBytes(Ccatch.f12045do).length;
        }
        return m8217transient(length) + length;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m8219while(int i, AbstractC3429o6 abstractC3429o6) {
        int m8205interface = m8205interface(i);
        int size = abstractC3429o6.size();
        return m8217transient(size) + size + m8205interface;
    }

    public abstract void a(int i, boolean z);

    public abstract void b(byte[] bArr, int i);

    public abstract void c(int i, AbstractC3429o6 abstractC3429o6);

    public abstract void d(AbstractC3429o6 abstractC3429o6);

    public abstract void e(int i, int i2);

    public abstract void f(int i);

    public abstract void g(int i, long j);

    public abstract void h(long j);

    public abstract void i(int i, int i2);

    public abstract void j(int i);

    public abstract void k(int i, Cstatic cstatic, AB ab);

    public abstract void l(Cstatic cstatic);

    public abstract void m(int i, Cstatic cstatic);

    public abstract void n(int i, AbstractC3429o6 abstractC3429o6);

    public abstract void o(int i, String str);

    public abstract void p(String str);

    public abstract void q(int i, int i2);

    public abstract void r(int i, int i2);

    public abstract void s(int i);

    /* renamed from: synchronized, reason: not valid java name */
    public abstract void mo8220synchronized(byte b);

    public abstract void t(int i, long j);

    public abstract void u(long j);

    /* renamed from: t8$if, reason: invalid class name */
    public static class Cif extends IOException {
        public Cif(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            super(C4122zt.m8824for("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), indexOutOfBoundsException);
        }

        public Cif(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }
    }
}
