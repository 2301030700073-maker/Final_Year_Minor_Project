package defpackage;

import androidx.datastore.preferences.protobuf.Celse;
import androidx.datastore.preferences.protobuf.Cfinally;
import androidx.datastore.preferences.protobuf.Cnative;
import androidx.datastore.preferences.protobuf.Cthrow;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import defpackage.C3201kE;
import defpackage.OJ;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: s8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3666s8 extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public static final Logger f15399do = Logger.getLogger(AbstractC3666s8.class.getName());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f15400do = C3736tJ.f15691if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Celse f15401do;

    /* renamed from: s8$do, reason: invalid class name */
    public static abstract class Cdo extends AbstractC3666s8 {

        /* renamed from: do, reason: not valid java name */
        public final int f15402do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final byte[] f15403do;

        /* renamed from: if, reason: not valid java name */
        public int f15404if;

        public Cdo(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            byte[] bArr = new byte[Math.max(i, 20)];
            this.f15403do = bArr;
            this.f15402do = bArr.length;
        }

        public final void A(long j) {
            boolean z = AbstractC3666s8.f15400do;
            byte[] bArr = this.f15403do;
            if (z) {
                while ((j & (-128)) != 0) {
                    int i = this.f15404if;
                    this.f15404if = i + 1;
                    C3736tJ.m8259throw(bArr, i, (byte) ((((int) j) & ModuleDescriptor.MODULE_VERSION) | 128));
                    j >>>= 7;
                }
                int i2 = this.f15404if;
                this.f15404if = i2 + 1;
                C3736tJ.m8259throw(bArr, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                int i3 = this.f15404if;
                this.f15404if = i3 + 1;
                bArr[i3] = (byte) ((((int) j) & ModuleDescriptor.MODULE_VERSION) | 128);
                j >>>= 7;
            }
            int i4 = this.f15404if;
            this.f15404if = i4 + 1;
            bArr[i4] = (byte) j;
        }

        public final void w(int i) {
            int i2 = this.f15404if;
            int i3 = i2 + 1;
            byte[] bArr = this.f15403do;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f15404if = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        }

        public final void x(long j) {
            int i = this.f15404if;
            int i2 = i + 1;
            byte[] bArr = this.f15403do;
            bArr[i] = (byte) (j & 255);
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((j >> 8) & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((j >> 16) & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (255 & (j >> 24));
            int i6 = i5 + 1;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f15404if = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        }

        public final void y(int i, int i2) {
            z((i << 3) | i2);
        }

        public final void z(int i) {
            boolean z = AbstractC3666s8.f15400do;
            byte[] bArr = this.f15403do;
            if (z) {
                while ((i & (-128)) != 0) {
                    int i2 = this.f15404if;
                    this.f15404if = i2 + 1;
                    C3736tJ.m8259throw(bArr, i2, (byte) ((i & ModuleDescriptor.MODULE_VERSION) | 128));
                    i >>>= 7;
                }
                int i3 = this.f15404if;
                this.f15404if = i3 + 1;
                C3736tJ.m8259throw(bArr, i3, (byte) i);
                return;
            }
            while ((i & (-128)) != 0) {
                int i4 = this.f15404if;
                this.f15404if = i4 + 1;
                bArr[i4] = (byte) ((i & ModuleDescriptor.MODULE_VERSION) | 128);
                i >>>= 7;
            }
            int i5 = this.f15404if;
            this.f15404if = i5 + 1;
            bArr[i5] = (byte) i;
        }
    }

    /* renamed from: s8$if, reason: invalid class name */
    public static class Cif extends AbstractC3666s8 {

        /* renamed from: do, reason: not valid java name */
        public final int f15405do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final byte[] f15406do;

        /* renamed from: if, reason: not valid java name */
        public int f15407if;

        public Cif(byte[] bArr, int i) {
            int i2 = 0 + i;
            if ((0 | i | (bArr.length - i2)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i)));
            }
            this.f15406do = bArr;
            this.f15407if = 0;
            this.f15405do = i2;
        }

        @Override // defpackage.AbstractC3666s8
        public final void a(byte b) {
            try {
                byte[] bArr = this.f15406do;
                int i = this.f15407if;
                this.f15407if = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new Cfor(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15407if), Integer.valueOf(this.f15405do), 1), e);
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void b(int i, boolean z) {
            r(i, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // defpackage.AbstractC3666s8
        public final void c(byte[] bArr, int i) {
            t(i);
            w(bArr, 0, i);
        }

        @Override // defpackage.AbstractC3666s8
        public final void d(int i, AbstractC3370n6 abstractC3370n6) {
            r(i, 2);
            e(abstractC3370n6);
        }

        @Override // defpackage.AbstractC3666s8
        public final void e(AbstractC3370n6 abstractC3370n6) {
            t(abstractC3370n6.size());
            abstractC3370n6.mo7553const(this);
        }

        @Override // defpackage.AbstractC3666s8
        public final void f(int i, int i2) {
            r(i, 5);
            g(i2);
        }

        @Override // defpackage.AbstractC3666s8
        public final void g(int i) {
            try {
                byte[] bArr = this.f15406do;
                int i2 = this.f15407if;
                int i3 = i2 + 1;
                bArr[i2] = (byte) (i & 255);
                int i4 = i3 + 1;
                bArr[i3] = (byte) ((i >> 8) & 255);
                int i5 = i4 + 1;
                bArr[i4] = (byte) ((i >> 16) & 255);
                this.f15407if = i5 + 1;
                bArr[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new Cfor(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15407if), Integer.valueOf(this.f15405do), 1), e);
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void h(int i, long j) {
            r(i, 1);
            i(j);
        }

        @Override // defpackage.AbstractC3666s8
        public final void i(long j) {
            try {
                byte[] bArr = this.f15406do;
                int i = this.f15407if;
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
                this.f15407if = i8 + 1;
                bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new Cfor(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15407if), Integer.valueOf(this.f15405do), 1), e);
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void j(int i, int i2) {
            r(i, 0);
            k(i2);
        }

        @Override // defpackage.AbstractC3666s8
        public final void k(int i) {
            if (i >= 0) {
                t(i);
            } else {
                v(i);
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void l(int i, Cfinally cfinally, BB bb) {
            r(i, 2);
            t(((androidx.datastore.preferences.protobuf.Cdo) cfinally).m3844goto(bb));
            bb.mo154this(cfinally, ((AbstractC3666s8) this).f15401do);
        }

        @Override // defpackage.AbstractC3666s8
        public final void m(Cfinally cfinally) {
            t(cfinally.mo3871do());
            cfinally.mo3870case(this);
        }

        @Override // defpackage.AbstractC3666s8
        public final void n(int i, Cfinally cfinally) {
            r(1, 3);
            s(2, i);
            r(3, 2);
            m(cfinally);
            r(1, 4);
        }

        @Override // defpackage.AbstractC3666s8
        public final void o(int i, AbstractC3370n6 abstractC3370n6) {
            r(1, 3);
            s(2, i);
            d(3, abstractC3370n6);
            r(1, 4);
        }

        @Override // defpackage.AbstractC3666s8
        public final void p(int i, String str) {
            r(i, 2);
            q(str);
        }

        @Override // defpackage.AbstractC3666s8
        public final void q(String str) {
            int i = this.f15407if;
            try {
                int m8076transient = AbstractC3666s8.m8076transient(str.length() * 3);
                int m8076transient2 = AbstractC3666s8.m8076transient(str.length());
                int i2 = this.f15405do;
                byte[] bArr = this.f15406do;
                if (m8076transient2 == m8076transient) {
                    int i3 = i + m8076transient2;
                    this.f15407if = i3;
                    int mo1668if = OJ.f2633do.mo1668if(str, bArr, i3, i2 - i3);
                    this.f15407if = i;
                    t((mo1668if - i) - m8076transient2);
                    this.f15407if = mo1668if;
                } else {
                    t(OJ.m1661if(str));
                    int i4 = this.f15407if;
                    this.f15407if = OJ.f2633do.mo1668if(str, bArr, i4, i2 - i4);
                }
            } catch (OJ.Cnew e) {
                this.f15407if = i;
                m8079synchronized(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new Cfor(e2);
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void r(int i, int i2) {
            t((i << 3) | i2);
        }

        @Override // defpackage.AbstractC3666s8
        public final void s(int i, int i2) {
            r(i, 0);
            t(i2);
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: super */
        public final void mo7037super(byte[] bArr, int i, int i2) {
            w(bArr, i, i2);
        }

        @Override // defpackage.AbstractC3666s8
        public final void t(int i) {
            boolean z = AbstractC3666s8.f15400do;
            int i2 = this.f15405do;
            byte[] bArr = this.f15406do;
            if (z && !K0.m1100do()) {
                int i3 = this.f15407if;
                if (i2 - i3 >= 5) {
                    if ((i & (-128)) == 0) {
                        this.f15407if = i3 + 1;
                        C3736tJ.m8259throw(bArr, i3, (byte) i);
                        return;
                    }
                    this.f15407if = i3 + 1;
                    C3736tJ.m8259throw(bArr, i3, (byte) (i | 128));
                    int i4 = i >>> 7;
                    if ((i4 & (-128)) == 0) {
                        int i5 = this.f15407if;
                        this.f15407if = i5 + 1;
                        C3736tJ.m8259throw(bArr, i5, (byte) i4);
                        return;
                    }
                    int i6 = this.f15407if;
                    this.f15407if = i6 + 1;
                    C3736tJ.m8259throw(bArr, i6, (byte) (i4 | 128));
                    int i7 = i4 >>> 7;
                    if ((i7 & (-128)) == 0) {
                        int i8 = this.f15407if;
                        this.f15407if = i8 + 1;
                        C3736tJ.m8259throw(bArr, i8, (byte) i7);
                        return;
                    }
                    int i9 = this.f15407if;
                    this.f15407if = i9 + 1;
                    C3736tJ.m8259throw(bArr, i9, (byte) (i7 | 128));
                    int i10 = i7 >>> 7;
                    if ((i10 & (-128)) == 0) {
                        int i11 = this.f15407if;
                        this.f15407if = i11 + 1;
                        C3736tJ.m8259throw(bArr, i11, (byte) i10);
                        return;
                    } else {
                        int i12 = this.f15407if;
                        this.f15407if = i12 + 1;
                        C3736tJ.m8259throw(bArr, i12, (byte) (i10 | 128));
                        int i13 = this.f15407if;
                        this.f15407if = i13 + 1;
                        C3736tJ.m8259throw(bArr, i13, (byte) (i10 >>> 7));
                        return;
                    }
                }
            }
            while ((i & (-128)) != 0) {
                try {
                    int i14 = this.f15407if;
                    this.f15407if = i14 + 1;
                    bArr[i14] = (byte) ((i & ModuleDescriptor.MODULE_VERSION) | 128);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new Cfor(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15407if), Integer.valueOf(i2), 1), e);
                }
            }
            int i15 = this.f15407if;
            this.f15407if = i15 + 1;
            bArr[i15] = (byte) i;
        }

        @Override // defpackage.AbstractC3666s8
        public final void u(int i, long j) {
            r(i, 0);
            v(j);
        }

        @Override // defpackage.AbstractC3666s8
        public final void v(long j) {
            boolean z = AbstractC3666s8.f15400do;
            int i = this.f15405do;
            byte[] bArr = this.f15406do;
            if (z && i - this.f15407if >= 10) {
                while ((j & (-128)) != 0) {
                    int i2 = this.f15407if;
                    this.f15407if = i2 + 1;
                    C3736tJ.m8259throw(bArr, i2, (byte) ((((int) j) & ModuleDescriptor.MODULE_VERSION) | 128));
                    j >>>= 7;
                }
                int i3 = this.f15407if;
                this.f15407if = i3 + 1;
                C3736tJ.m8259throw(bArr, i3, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    int i4 = this.f15407if;
                    this.f15407if = i4 + 1;
                    bArr[i4] = (byte) ((((int) j) & ModuleDescriptor.MODULE_VERSION) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new Cfor(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15407if), Integer.valueOf(i), 1), e);
                }
            }
            int i5 = this.f15407if;
            this.f15407if = i5 + 1;
            bArr[i5] = (byte) j;
        }

        public final void w(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f15406do, this.f15407if, i2);
                this.f15407if += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new Cfor(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f15407if), Integer.valueOf(this.f15405do), Integer.valueOf(i2)), e);
            }
        }
    }

    /* renamed from: s8$new, reason: invalid class name */
    public static final class Cnew extends Cdo {

        /* renamed from: do, reason: not valid java name */
        public final OutputStream f15408do;

        public Cnew(C3201kE.Cif cif, int i) {
            super(i);
            this.f15408do = cif;
        }

        public final void B() {
            this.f15408do.write(((Cdo) this).f15403do, 0, this.f15404if);
            this.f15404if = 0;
        }

        public final void C(int i) {
            if (((Cdo) this).f15402do - this.f15404if < i) {
                B();
            }
        }

        public final void D(byte[] bArr, int i, int i2) {
            int i3 = this.f15404if;
            int i4 = ((Cdo) this).f15402do;
            int i5 = i4 - i3;
            byte[] bArr2 = ((Cdo) this).f15403do;
            if (i5 >= i2) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f15404if += i2;
                return;
            }
            System.arraycopy(bArr, i, bArr2, i3, i5);
            int i6 = i + i5;
            int i7 = i2 - i5;
            this.f15404if = i4;
            B();
            if (i7 > i4) {
                this.f15408do.write(bArr, i6, i7);
            } else {
                System.arraycopy(bArr, i6, bArr2, 0, i7);
                this.f15404if = i7;
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void a(byte b) {
            if (this.f15404if == ((Cdo) this).f15402do) {
                B();
            }
            int i = this.f15404if;
            this.f15404if = i + 1;
            ((Cdo) this).f15403do[i] = b;
        }

        @Override // defpackage.AbstractC3666s8
        public final void b(int i, boolean z) {
            C(11);
            y(i, 0);
            byte b = z ? (byte) 1 : (byte) 0;
            int i2 = this.f15404if;
            this.f15404if = i2 + 1;
            ((Cdo) this).f15403do[i2] = b;
        }

        @Override // defpackage.AbstractC3666s8
        public final void c(byte[] bArr, int i) {
            t(i);
            D(bArr, 0, i);
        }

        @Override // defpackage.AbstractC3666s8
        public final void d(int i, AbstractC3370n6 abstractC3370n6) {
            r(i, 2);
            e(abstractC3370n6);
        }

        @Override // defpackage.AbstractC3666s8
        public final void e(AbstractC3370n6 abstractC3370n6) {
            t(abstractC3370n6.size());
            abstractC3370n6.mo7553const(this);
        }

        @Override // defpackage.AbstractC3666s8
        public final void f(int i, int i2) {
            C(14);
            y(i, 5);
            w(i2);
        }

        @Override // defpackage.AbstractC3666s8
        public final void g(int i) {
            C(4);
            w(i);
        }

        @Override // defpackage.AbstractC3666s8
        public final void h(int i, long j) {
            C(18);
            y(i, 1);
            x(j);
        }

        @Override // defpackage.AbstractC3666s8
        public final void i(long j) {
            C(8);
            x(j);
        }

        @Override // defpackage.AbstractC3666s8
        public final void j(int i, int i2) {
            C(20);
            y(i, 0);
            if (i2 >= 0) {
                z(i2);
            } else {
                A(i2);
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void k(int i) {
            if (i >= 0) {
                t(i);
            } else {
                v(i);
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void l(int i, Cfinally cfinally, BB bb) {
            r(i, 2);
            t(((androidx.datastore.preferences.protobuf.Cdo) cfinally).m3844goto(bb));
            bb.mo154this(cfinally, ((AbstractC3666s8) this).f15401do);
        }

        @Override // defpackage.AbstractC3666s8
        public final void m(Cfinally cfinally) {
            t(cfinally.mo3871do());
            cfinally.mo3870case(this);
        }

        @Override // defpackage.AbstractC3666s8
        public final void n(int i, Cfinally cfinally) {
            r(1, 3);
            s(2, i);
            r(3, 2);
            m(cfinally);
            r(1, 4);
        }

        @Override // defpackage.AbstractC3666s8
        public final void o(int i, AbstractC3370n6 abstractC3370n6) {
            r(1, 3);
            s(2, i);
            d(3, abstractC3370n6);
            r(1, 4);
        }

        @Override // defpackage.AbstractC3666s8
        public final void p(int i, String str) {
            r(i, 2);
            q(str);
        }

        @Override // defpackage.AbstractC3666s8
        public final void q(String str) {
            try {
                int length = str.length() * 3;
                int m8076transient = AbstractC3666s8.m8076transient(length);
                int i = m8076transient + length;
                int i2 = ((Cdo) this).f15402do;
                if (i > i2) {
                    byte[] bArr = new byte[length];
                    int mo1668if = OJ.f2633do.mo1668if(str, bArr, 0, length);
                    t(mo1668if);
                    D(bArr, 0, mo1668if);
                    return;
                }
                if (i > i2 - this.f15404if) {
                    B();
                }
                int m8076transient2 = AbstractC3666s8.m8076transient(str.length());
                int i3 = this.f15404if;
                byte[] bArr2 = ((Cdo) this).f15403do;
                try {
                    try {
                        if (m8076transient2 == m8076transient) {
                            int i4 = i3 + m8076transient2;
                            this.f15404if = i4;
                            int mo1668if2 = OJ.f2633do.mo1668if(str, bArr2, i4, i2 - i4);
                            this.f15404if = i3;
                            z((mo1668if2 - i3) - m8076transient2);
                            this.f15404if = mo1668if2;
                        } else {
                            int m1661if = OJ.m1661if(str);
                            z(m1661if);
                            this.f15404if = OJ.f2633do.mo1668if(str, bArr2, this.f15404if, m1661if);
                        }
                    } catch (OJ.Cnew e) {
                        this.f15404if = i3;
                        throw e;
                    }
                } catch (ArrayIndexOutOfBoundsException e2) {
                    throw new Cfor(e2);
                }
            } catch (OJ.Cnew e3) {
                m8079synchronized(str, e3);
            }
        }

        @Override // defpackage.AbstractC3666s8
        public final void r(int i, int i2) {
            t((i << 3) | i2);
        }

        @Override // defpackage.AbstractC3666s8
        public final void s(int i, int i2) {
            C(20);
            y(i, 0);
            z(i2);
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: super */
        public final void mo7037super(byte[] bArr, int i, int i2) {
            D(bArr, i, i2);
        }

        @Override // defpackage.AbstractC3666s8
        public final void t(int i) {
            C(5);
            z(i);
        }

        @Override // defpackage.AbstractC3666s8
        public final void u(int i, long j) {
            C(20);
            y(i, 0);
            A(j);
        }

        @Override // defpackage.AbstractC3666s8
        public final void v(long j) {
            C(10);
            A(j);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static int m8056abstract(int i, int i2) {
        return m8076transient((i2 >> 31) ^ (i2 << 1)) + m8064interface(i);
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m8057continue(int i, long j) {
        return m8063instanceof((j >> 63) ^ (j << 1)) + m8064interface(i);
    }

    /* renamed from: default, reason: not valid java name */
    public static int m8058default(int i) {
        if (i >= 0) {
            return m8076transient(i);
        }
        return 10;
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m8059extends(int i, long j) {
        return m8063instanceof(j) + m8064interface(i);
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m8060finally(Cnative cnative) {
        int size = cnative.f6610do != null ? cnative.f6610do.size() : cnative.f6609do != null ? cnative.f6609do.mo3871do() : 0;
        return m8076transient(size) + size;
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m8061implements(int i, long j) {
        return m8063instanceof(j) + m8064interface(i);
    }

    /* renamed from: import, reason: not valid java name */
    public static int m8062import(int i) {
        return m8064interface(i) + 8;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static int m8063instanceof(long j) {
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
    public static int m8064interface(int i) {
        return m8076transient((i << 3) | 0);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m8065native(int i, int i2) {
        return m8058default(i2) + m8064interface(i);
    }

    /* renamed from: package, reason: not valid java name */
    public static int m8066package(int i) {
        return m8064interface(i) + 4;
    }

    /* renamed from: private, reason: not valid java name */
    public static int m8067private(int i) {
        return m8064interface(i) + 8;
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m8068protected(int i, int i2) {
        return m8076transient(i2) + m8064interface(i);
    }

    /* renamed from: public, reason: not valid java name */
    public static int m8069public(int i) {
        return m8064interface(i) + 4;
    }

    /* renamed from: return, reason: not valid java name */
    public static int m8070return(int i) {
        return m8064interface(i) + 8;
    }

    /* renamed from: static, reason: not valid java name */
    public static int m8071static(int i) {
        return m8064interface(i) + 4;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m8072strictfp(int i, String str) {
        return m8077volatile(str) + m8064interface(i);
    }

    @Deprecated
    /* renamed from: switch, reason: not valid java name */
    public static int m8073switch(int i, Cfinally cfinally, BB bb) {
        return ((androidx.datastore.preferences.protobuf.Cdo) cfinally).m3844goto(bb) + (m8064interface(i) * 2);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m8074throw(int i) {
        return m8064interface(i) + 1;
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m8075throws(int i, int i2) {
        return m8058default(i2) + m8064interface(i);
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m8076transient(int i) {
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
    public static int m8077volatile(String str) {
        int length;
        try {
            length = OJ.m1661if(str);
        } catch (OJ.Cnew unused) {
            length = str.getBytes(Cthrow.f6655do).length;
        }
        return m8076transient(length) + length;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m8078while(int i, AbstractC3370n6 abstractC3370n6) {
        int m8064interface = m8064interface(i);
        int size = abstractC3370n6.size();
        return m8076transient(size) + size + m8064interface;
    }

    public abstract void a(byte b);

    public abstract void b(int i, boolean z);

    public abstract void c(byte[] bArr, int i);

    public abstract void d(int i, AbstractC3370n6 abstractC3370n6);

    public abstract void e(AbstractC3370n6 abstractC3370n6);

    public abstract void f(int i, int i2);

    public abstract void g(int i);

    public abstract void h(int i, long j);

    public abstract void i(long j);

    public abstract void j(int i, int i2);

    public abstract void k(int i);

    public abstract void l(int i, Cfinally cfinally, BB bb);

    public abstract void m(Cfinally cfinally);

    public abstract void n(int i, Cfinally cfinally);

    public abstract void o(int i, AbstractC3370n6 abstractC3370n6);

    public abstract void p(int i, String str);

    public abstract void q(String str);

    public abstract void r(int i, int i2);

    public abstract void s(int i, int i2);

    /* renamed from: synchronized, reason: not valid java name */
    public final void m8079synchronized(String str, OJ.Cnew cnew) {
        f15399do.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) cnew);
        byte[] bytes = str.getBytes(Cthrow.f6655do);
        try {
            t(bytes.length);
            mo7037super(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new Cfor(e);
        } catch (Cfor e2) {
            throw e2;
        }
    }

    public abstract void t(int i);

    public abstract void u(int i, long j);

    public abstract void v(long j);

    /* renamed from: s8$for, reason: invalid class name */
    public static class Cfor extends IOException {
        public Cfor(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            super(C4122zt.m8824for("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), indexOutOfBoundsException);
        }

        public Cfor(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }
    }
}
