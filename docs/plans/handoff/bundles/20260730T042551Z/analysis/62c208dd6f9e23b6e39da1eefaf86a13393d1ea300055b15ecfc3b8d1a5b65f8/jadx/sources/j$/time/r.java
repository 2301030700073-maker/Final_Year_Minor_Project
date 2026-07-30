package j$.time;

import j$.time.chrono.AbstractC2962b;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class r implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = 7264499704384272492L;
    private final l a;
    private final ZoneOffset b;

    static {
        l lVar = l.e;
        ZoneOffset zoneOffset = ZoneOffset.f;
        lVar.getClass();
        D(lVar, zoneOffset);
        l lVar2 = l.f;
        ZoneOffset zoneOffset2 = ZoneOffset.e;
        lVar2.getClass();
        D(lVar2, zoneOffset2);
    }

    private r(l lVar, ZoneOffset zoneOffset) {
        this.a = (l) Objects.requireNonNull(lVar, "time");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    public static r D(l lVar, ZoneOffset zoneOffset) {
        return new r(lVar, zoneOffset);
    }

    static r F(ObjectInput objectInput) {
        return new r(l.S(objectInput), ZoneOffset.O(objectInput));
    }

    private r G(l lVar, ZoneOffset zoneOffset) {
        return (this.a == lVar && this.b.equals(zoneOffset)) ? this : new r(lVar, zoneOffset);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 9, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public final r d(long j, j$.time.temporal.u uVar) {
        return uVar instanceof j$.time.temporal.b ? G(this.a.d(j, uVar), this.b) : (r) uVar.i(this, j);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (r) rVar.r(this, j);
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
        l lVar = this.a;
        return rVar == aVar ? G(lVar, ZoneOffset.M(((j$.time.temporal.a) rVar).v(j))) : G(lVar.c(j, rVar), this.b);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int compare;
        r rVar = (r) obj;
        ZoneOffset zoneOffset = rVar.b;
        ZoneOffset zoneOffset2 = this.b;
        boolean equals = zoneOffset2.equals(zoneOffset);
        l lVar = this.a;
        l lVar2 = rVar.a;
        return (equals || (compare = Long.compare(lVar.T() - (((long) zoneOffset2.J()) * 1000000000), lVar2.T() - (((long) rVar.b.J()) * 1000000000))) == 0) ? lVar.compareTo(lVar2) : compare;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar.isTimeBased() || rVar == j$.time.temporal.a.OFFSET_SECONDS : rVar != null && rVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.a.equals(rVar.a) && this.b.equals(rVar.b);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return j$.time.temporal.q.a(this, rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(i iVar) {
        if (iVar instanceof l) {
            return G((l) iVar, this.b);
        }
        if (iVar instanceof ZoneOffset) {
            return G(this.a, (ZoneOffset) iVar);
        }
        boolean z = iVar instanceof r;
        j$.time.temporal.n nVar = iVar;
        if (!z) {
            nVar = AbstractC2962b.a(iVar, this);
        }
        return (r) nVar;
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.j(this);
        }
        if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return rVar.k();
        }
        l lVar = this.a;
        lVar.getClass();
        return j$.time.temporal.q.d(lVar, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return mVar.c(this.a.T(), j$.time.temporal.a.NANO_OF_DAY).c(this.b.J(), j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        return this.a.toString() + this.b.toString();
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.OFFSET_SECONDS ? this.b.J() : this.a.v(rVar) : rVar.n(this);
    }

    final void writeExternal(ObjectOutput objectOutput) {
        this.a.X(objectOutput);
        this.b.P(objectOutput);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.q.h() || tVar == j$.time.temporal.q.j()) {
            return this.b;
        }
        if (((tVar == j$.time.temporal.q.k()) || (tVar == j$.time.temporal.q.e())) || tVar == j$.time.temporal.q.f()) {
            return null;
        }
        return tVar == j$.time.temporal.q.g() ? this.a : tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.NANOS : tVar.a(this);
    }
}
