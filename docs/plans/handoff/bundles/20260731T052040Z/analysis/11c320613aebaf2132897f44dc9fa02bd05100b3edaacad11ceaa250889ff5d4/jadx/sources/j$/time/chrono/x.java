package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class x extends d {
    public static final LocalDate d = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    public final transient LocalDate a;
    public final transient y b;
    public final transient int c;

    public x(LocalDate localDate) {
        if (localDate.f0(d)) {
            j$.nio.file.m.k("JapaneseDate before Meiji 6 is not supported");
            throw null;
        }
        y h = y.h(localDate);
        this.b = h;
        this.c = (localDate.a - h.b.a) + 1;
        this.a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new e0((byte) 4, this);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    /* renamed from: G */
    public final b n(j$.time.temporal.m mVar) {
        return (x) super.n(mVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.l
    /* renamed from: H */
    public final j$.time.temporal.l z(long j, ChronoUnit chronoUnit) {
        return (x) super.z(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.F(this);
        }
        switch (w.a[((j$.time.temporal.a) pVar).ordinal()]) {
            case 2:
                int i = this.c;
                LocalDate localDate = this.a;
                return i == 1 ? (localDate.e0() - this.b.b.e0()) + 1 : localDate.e0();
            case 3:
                return this.c;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new j$.time.temporal.r(j$.time.b.a("Unsupported field: ", pVar));
            case 8:
                return this.b.a;
            default:
                return this.a.M(pVar);
        }
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final long N() {
        return this.a.N();
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final e O(j$.time.i iVar) {
        return new g(this, iVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final m P() {
        return this.b;
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b T(j$.time.temporal.o oVar) {
        return (x) super.T(oVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // j$.time.chrono.d, j$.time.chrono.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int W() {
        /*
            r4 = this;
            j$.time.chrono.y r0 = r4.b
            j$.time.chrono.y r0 = r0.i()
            r1 = 1
            if (r0 == 0) goto L19
            j$.time.LocalDate r0 = r0.b
            int r2 = r0.a
            j$.time.LocalDate r3 = r4.a
            int r3 = r3.a
            if (r2 != r3) goto L19
            int r0 = r0.e0()
            int r0 = r0 - r1
            goto L1f
        L19:
            j$.time.LocalDate r0 = r4.a
            int r0 = r0.W()
        L1f:
            int r2 = r4.c
            if (r2 != r1) goto L2d
            j$.time.chrono.y r4 = r4.b
            j$.time.LocalDate r4 = r4.b
            int r4 = r4.e0()
            int r4 = r4 - r1
            int r0 = r0 - r4
        L2d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.x.W():int");
    }

    @Override // j$.time.chrono.b
    public final l a() {
        return v.c;
    }

    @Override // j$.time.chrono.d
    public final b a0(long j) {
        return g0(this.a.m0(j));
    }

    @Override // j$.time.chrono.d
    public final b b0(long j) {
        return g0(this.a.n0(j));
    }

    @Override // j$.time.chrono.d
    public final b c0(long j) {
        return g0(this.a.p0(j));
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b, j$.time.temporal.l
    public final b d(long j, TemporalUnit temporalUnit) {
        return (x) super.d(j, temporalUnit);
    }

    public final x d0(long j, ChronoUnit chronoUnit) {
        return (x) super.d(j, (TemporalUnit) chronoUnit);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b, j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || pVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || pVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || pVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).isDateBased() : pVar != null && pVar.k(this);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.l
    /* renamed from: e0, reason: merged with bridge method [inline-methods] */
    public final x c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (x) super.c(j, pVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        if (M(aVar) == j) {
            return this;
        }
        int[] iArr = w.a;
        int i = iArr[aVar.ordinal()];
        if (i == 3 || i == 8 || i == 9) {
            v vVar = v.c;
            int a = vVar.y(aVar).a(j, aVar);
            int i2 = iArr[aVar.ordinal()];
            if (i2 == 3) {
                return g0(this.a.t0(vVar.D(this.b, a)));
            }
            if (i2 == 8) {
                return g0(this.a.t0(vVar.D(y.j(a), this.c)));
            }
            if (i2 == 9) {
                return g0(this.a.t0(a));
            }
        }
        return g0(this.a.c(j, pVar));
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            return this.a.equals(((x) obj).a);
        }
        return false;
    }

    public final x f0(j$.desugar.sun.nio.fs.m mVar) {
        return (x) super.n(mVar);
    }

    public final x g0(LocalDate localDate) {
        return localDate.equals(this.a) ? this : new x(localDate);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final int hashCode() {
        v.c.getClass();
        return this.a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return (x) super.n(localDate);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.n(this);
        }
        if (!e(pVar)) {
            throw new j$.time.temporal.r(j$.time.b.a("Unsupported field: ", pVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        int i = w.a[aVar.ordinal()];
        if (i == 1) {
            return j$.time.temporal.s.f(1L, this.a.g0());
        }
        if (i == 2) {
            return j$.time.temporal.s.f(1L, W());
        }
        if (i != 3) {
            return v.c.y(aVar);
        }
        y yVar = this.b;
        int i2 = yVar.b.a;
        return yVar.i() != null ? j$.time.temporal.s.f(1L, (r5.b.a - i2) + 1) : j$.time.temporal.s.f(1L, 999999999 - i2);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b z(long j, TemporalUnit temporalUnit) {
        return (x) super.z(j, temporalUnit);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.l
    public final j$.time.temporal.l d(long j, TemporalUnit temporalUnit) {
        return (x) super.d(j, temporalUnit);
    }

    public x(y yVar, int i, LocalDate localDate) {
        if (!localDate.f0(d)) {
            this.b = yVar;
            this.c = i;
            this.a = localDate;
            return;
        }
        j$.nio.file.m.k("JapaneseDate before Meiji 6 is not supported");
        throw null;
    }
}
