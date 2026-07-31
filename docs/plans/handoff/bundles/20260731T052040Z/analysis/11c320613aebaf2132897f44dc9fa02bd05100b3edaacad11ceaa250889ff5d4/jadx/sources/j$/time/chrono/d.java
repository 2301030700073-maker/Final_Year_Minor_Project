package j$.time.chrono;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class d implements b, j$.time.temporal.l, j$.time.temporal.m, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    public static b Z(l lVar, j$.time.temporal.l lVar2) {
        b bVar = (b) lVar2;
        if (lVar.equals(bVar.a())) {
            return bVar;
        }
        j$.nio.file.m.m("Chronology mismatch, expected: ", lVar.i(), bVar.a().i());
        return null;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object F(j$.desugar.sun.nio.fs.m mVar) {
        return j$.com.android.tools.r8.a.j(this, mVar);
    }

    @Override // j$.time.temporal.l
    /* renamed from: G */
    public b n(j$.time.temporal.m mVar) {
        return Z(a(), mVar.u(this));
    }

    @Override // j$.time.chrono.b
    public long N() {
        return M(j$.time.temporal.a.EPOCH_DAY);
    }

    @Override // j$.time.chrono.b
    public e O(j$.time.i iVar) {
        return new g(this, iVar);
    }

    @Override // j$.time.chrono.b
    public m P() {
        return a().B(j$.time.temporal.q.a(this, j$.time.temporal.a.ERA));
    }

    @Override // j$.time.chrono.b
    public b T(j$.time.temporal.o oVar) {
        return Z(a(), oVar.k(this));
    }

    @Override // j$.time.chrono.b
    public int W() {
        return x() ? 366 : 365;
    }

    @Override // java.lang.Comparable
    /* renamed from: X */
    public final /* synthetic */ int compareTo(b bVar) {
        return j$.com.android.tools.r8.a.b(this, bVar);
    }

    public abstract b a0(long j);

    public abstract b b0(long j);

    @Override // j$.time.temporal.l
    public b c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.r(j$.time.b.a("Unsupported field: ", pVar));
        }
        return Z(a(), pVar.H(this, j));
    }

    public abstract b c0(long j);

    @Override // j$.time.temporal.l
    public b d(long j, TemporalUnit temporalUnit) {
        boolean z = temporalUnit instanceof ChronoUnit;
        if (!z) {
            if (!z) {
                return Z(a(), temporalUnit.k(this, j));
            }
            j$.nio.file.m.b(temporalUnit, "Unsupported unit: ");
            return null;
        }
        switch (c.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return a0(j);
            case 2:
                return a0(j$.com.android.tools.r8.a.T(j, 7L));
            case 3:
                return b0(j);
            case 4:
                return c0(j);
            case 5:
                return c0(j$.com.android.tools.r8.a.T(j, 10L));
            case 6:
                return c0(j$.com.android.tools.r8.a.T(j, 100L));
            case 7:
                return c0(j$.com.android.tools.r8.a.T(j, 1000L));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.S(M(aVar), j), (j$.time.temporal.p) aVar);
            default:
                j$.nio.file.m.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    @Override // j$.time.chrono.b, j$.time.temporal.TemporalAccessor
    public /* synthetic */ boolean e(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.h(this, pVar);
    }

    @Override // j$.time.chrono.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && j$.com.android.tools.r8.a.b(this, (b) obj) == 0;
    }

    @Override // j$.time.chrono.b
    public int hashCode() {
        long N = N();
        return a().hashCode() ^ ((int) (N ^ (N >>> 32)));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public /* synthetic */ j$.time.temporal.s o(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.chrono.b
    public final String toString() {
        long M = M(j$.time.temporal.a.YEAR_OF_ERA);
        long M2 = M(j$.time.temporal.a.MONTH_OF_YEAR);
        long M3 = M(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(a().toString());
        sb.append(" ");
        sb.append(P());
        sb.append(" ");
        sb.append(M);
        sb.append(M2 < 10 ? "-0" : "-");
        sb.append(M2);
        sb.append(M3 < 10 ? "-0" : "-");
        sb.append(M3);
        return sb.toString();
    }

    @Override // j$.time.temporal.m
    public final /* synthetic */ j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return j$.com.android.tools.r8.a.a(this, lVar);
    }

    @Override // j$.time.chrono.b
    public boolean x() {
        return a().Y(M(j$.time.temporal.a.YEAR));
    }

    @Override // j$.time.temporal.l
    public b z(long j, TemporalUnit temporalUnit) {
        return Z(a(), j$.time.temporal.q.b(this, j, temporalUnit));
    }
}
