package j$.time.chrono;

import j$.time.DateTimeException;
import j$.time.LocalDate;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class q extends d {
    private static final long serialVersionUID = -5207853542612002020L;
    public final transient o a;
    public final transient int b;
    public final transient int c;
    public final transient int d;

    public q(o oVar, long j) {
        int i = (int) j;
        oVar.Z();
        if (i < oVar.e || i >= oVar.f) {
            j$.nio.file.m.k("Hijrah date out of range");
            throw null;
        }
        int binarySearch = Arrays.binarySearch(oVar.d, i);
        binarySearch = binarySearch < 0 ? (-binarySearch) - 2 : binarySearch;
        int[] iArr = {oVar.b0(binarySearch), ((oVar.g + binarySearch) % 12) + 1, (i - oVar.d[binarySearch]) + 1};
        this.a = oVar;
        this.b = iArr[0];
        this.c = iArr[1];
        this.d = iArr[2];
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new e0((byte) 6, this);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    /* renamed from: G */
    public final b n(j$.time.temporal.m mVar) {
        return (q) super.n(mVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.l
    /* renamed from: H */
    public final j$.time.temporal.l z(long j, ChronoUnit chronoUnit) {
        return (q) super.z(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        int i;
        int i2;
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.F(this);
        }
        switch (p.a[((j$.time.temporal.a) pVar).ordinal()]) {
            case 1:
                i = this.d;
                return i;
            case 2:
                i = d0();
                return i;
            case 3:
                i2 = (this.d - 1) / 7;
                i = i2 + 1;
                return i;
            case 4:
                i2 = (int) j$.com.android.tools.r8.a.R(N() + 3, 7L);
                i = i2 + 1;
                return i;
            case 5:
                i2 = (this.d - 1) % 7;
                i = i2 + 1;
                return i;
            case 6:
                i2 = (d0() - 1) % 7;
                i = i2 + 1;
                return i;
            case 7:
                return N();
            case 8:
                i2 = (d0() - 1) / 7;
                i = i2 + 1;
                return i;
            case 9:
                i = this.c;
                return i;
            case 10:
                return ((this.b * 12) + this.c) - 1;
            case 11:
                i = this.b;
                return i;
            case 12:
                i = this.b;
                return i;
            case 13:
                return this.b <= 1 ? 0 : 1;
            default:
                throw new j$.time.temporal.r(j$.time.b.a("Unsupported field: ", pVar));
        }
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final long N() {
        return this.a.c0(this.b, this.c, this.d);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final e O(j$.time.i iVar) {
        return new g(this, iVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final m P() {
        return r.AH;
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b T(j$.time.temporal.o oVar) {
        return (q) super.T(oVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final int W() {
        return this.a.f0(this.b, 12);
    }

    @Override // j$.time.chrono.b
    public final l a() {
        return this.a;
    }

    @Override // j$.time.chrono.d
    public final b c0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return g0(i, this.c, this.d);
        }
        throw new ArithmeticException();
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b, j$.time.temporal.l
    public final b d(long j, TemporalUnit temporalUnit) {
        return (q) super.d(j, temporalUnit);
    }

    public final int d0() {
        return this.a.f0(this.b, this.c - 1) + this.d;
    }

    @Override // j$.time.chrono.d
    /* renamed from: e0, reason: merged with bridge method [inline-methods] */
    public final q a0(long j) {
        return new q(this.a, N() + j);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            if (this.b == qVar.b && this.c == qVar.c && this.d == qVar.d && this.a.equals(qVar.a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.d
    /* renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final q b0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.b * 12) + (this.c - 1) + j;
        o oVar = this.a;
        long E = j$.com.android.tools.r8.a.E(j2, 12L);
        if (E >= oVar.b0(0) && E <= oVar.b0(oVar.d.length - 1) - 1) {
            return g0((int) E, ((int) j$.com.android.tools.r8.a.R(j2, 12L)) + 1, this.d);
        }
        throw new DateTimeException("Invalid Hijrah year: " + E);
    }

    public final q g0(int i, int i2, int i3) {
        int d0 = this.a.d0(i, i2);
        if (i3 > d0) {
            i3 = d0;
        }
        return new q(this.a, i, i2, i3);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.l
    /* renamed from: h0, reason: merged with bridge method [inline-methods] */
    public final q c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (q) super.c(j, pVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        this.a.y(aVar).b(j, aVar);
        int i = (int) j;
        switch (p.a[aVar.ordinal()]) {
            case 1:
                return g0(this.b, this.c, i);
            case 2:
                return a0(Math.min(i, W()) - d0());
            case 3:
                return a0((j - M(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return a0(j - (((int) j$.com.android.tools.r8.a.R(N() + 3, 7L)) + 1));
            case 5:
                return a0(j - M(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return a0(j - M(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new q(this.a, j);
            case 8:
                return a0((j - M(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return g0(this.b, i, this.d);
            case 10:
                return b0(j - (((this.b * 12) + this.c) - 1));
            case 11:
                if (this.b < 1) {
                    i = 1 - i;
                }
                return g0(i, this.c, this.d);
            case 12:
                return g0(i, this.c, this.d);
            case 13:
                return g0(1 - this.b, this.c, this.d);
            default:
                throw new j$.time.temporal.r(j$.time.b.a("Unsupported field: ", pVar));
        }
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final int hashCode() {
        int i = this.b;
        int i2 = this.c;
        int i3 = this.d;
        this.a.getClass();
        return ((i & (-2048)) ^ 2100100019) ^ (((i << 11) + (i2 << 6)) + i3);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return (q) super.n(localDate);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.n(this);
        }
        if (!j$.com.android.tools.r8.a.h(this, pVar)) {
            throw new j$.time.temporal.r(j$.time.b.a("Unsupported field: ", pVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        int i = p.a[aVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.a.y(aVar) : j$.time.temporal.s.f(1L, 5L) : j$.time.temporal.s.f(1L, W()) : j$.time.temporal.s.f(1L, this.a.d0(this.b, this.c));
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final boolean x() {
        return this.a.Y(this.b);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b z(long j, TemporalUnit temporalUnit) {
        return (q) super.z(j, temporalUnit);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.l
    public final j$.time.temporal.l d(long j, TemporalUnit temporalUnit) {
        return (q) super.d(j, temporalUnit);
    }

    public q(o oVar, int i, int i2, int i3) {
        oVar.c0(i, i2, i3);
        this.a = oVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }
}
