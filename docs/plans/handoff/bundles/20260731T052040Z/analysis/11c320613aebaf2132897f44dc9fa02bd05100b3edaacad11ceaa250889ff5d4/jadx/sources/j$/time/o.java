package j$.time;

import com.google.android.exoplayer2.C;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class o implements j$.time.temporal.l, j$.time.temporal.m, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 7264499704384272492L;
    public final i a;
    public final ZoneOffset b;

    static {
        i iVar = i.e;
        ZoneOffset zoneOffset = ZoneOffset.g;
        iVar.getClass();
        new o(iVar, zoneOffset);
        i iVar2 = i.f;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        iVar2.getClass();
        new o(iVar2, zoneOffset2);
    }

    public o(i iVar, ZoneOffset zoneOffset) {
        this.a = (i) Objects.requireNonNull(iVar, "time");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new q((byte) 9, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        if (mVar == j$.time.temporal.q.d || mVar == j$.time.temporal.q.e) {
            return this.b;
        }
        if (((mVar == j$.time.temporal.q.a) || (mVar == j$.time.temporal.q.b)) || mVar == j$.time.temporal.q.f) {
            return null;
        }
        return mVar == j$.time.temporal.q.g ? this.a : mVar == j$.time.temporal.q.c ? ChronoUnit.NANOS : mVar.g(this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: H */
    public final j$.time.temporal.l z(long j, ChronoUnit chronoUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = d(Long.MAX_VALUE, chronoUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.d(j2, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.OFFSET_SECONDS ? this.b.b : this.a.M(pVar) : pVar.F(this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final o d(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? a0(this.a.d(j, temporalUnit), this.b) : (o) temporalUnit.k(this, j);
    }

    public final o a0(i iVar, ZoneOffset zoneOffset) {
        return (this.a == iVar && this.b.equals(zoneOffset)) ? this : new o(iVar, zoneOffset);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (o) pVar.H(this, j);
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
        i iVar = this.a;
        if (pVar != aVar) {
            return a0(iVar.c(j, pVar), this.b);
        }
        j$.time.temporal.a aVar2 = (j$.time.temporal.a) pVar;
        return a0(iVar, ZoneOffset.i0(aVar2.b.a(j, aVar2)));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        o oVar = (o) obj;
        boolean equals = this.b.equals(oVar.b);
        i iVar = this.a;
        if (equals) {
            return iVar.compareTo(oVar.a);
        }
        int compare = Long.compare(iVar.l0() - (this.b.b * C.NANOS_PER_SECOND), oVar.a.l0() - (oVar.b.b * C.NANOS_PER_SECOND));
        return compare == 0 ? this.a.compareTo(oVar.a) : compare;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).Z() || pVar == j$.time.temporal.a.OFFSET_SECONDS : pVar != null && pVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.a.equals(oVar.a) && this.b.equals(oVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.b ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return (o) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.n(this);
        }
        if (pVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return ((j$.time.temporal.a) pVar).b;
        }
        i iVar = this.a;
        iVar.getClass();
        return j$.time.temporal.q.d(iVar, pVar);
    }

    public final String toString() {
        return this.a.toString() + this.b.c;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(this.a.l0(), j$.time.temporal.a.NANO_OF_DAY).c(this.b.b, j$.time.temporal.a.OFFSET_SECONDS);
    }
}
