package j$.time;

import j$.time.chrono.AbstractC2962b;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class OffsetDateTime implements j$.time.temporal.m, j$.time.temporal.o, Comparable<OffsetDateTime>, Serializable {
    private static final long serialVersionUID = 2287754244819255394L;
    private final LocalDateTime a;
    private final ZoneOffset b;

    static {
        LocalDateTime localDateTime = LocalDateTime.c;
        ZoneOffset zoneOffset = ZoneOffset.f;
        localDateTime.getClass();
        D(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.d;
        ZoneOffset zoneOffset2 = ZoneOffset.e;
        localDateTime2.getClass();
        D(localDateTime2, zoneOffset2);
    }

    private OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    public static OffsetDateTime D(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return new OffsetDateTime(localDateTime, zoneOffset);
    }

    public static OffsetDateTime E(Instant instant, y yVar) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(yVar, "zone");
        ZoneOffset d = yVar.D().d(instant);
        return new OffsetDateTime(LocalDateTime.M(instant.E(), instant.F(), d), d);
    }

    static OffsetDateTime G(ObjectInput objectInput) {
        LocalDateTime localDateTime = LocalDateTime.c;
        i iVar = i.d;
        return new OffsetDateTime(LocalDateTime.L(i.O(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), l.S(objectInput)), ZoneOffset.O(objectInput));
    }

    private OffsetDateTime H(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.a == localDateTime && this.b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 10, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime d(long j, j$.time.temporal.u uVar) {
        return uVar instanceof j$.time.temporal.b ? H(this.a.d(j, uVar), this.b) : (OffsetDateTime) uVar.i(this, j);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (OffsetDateTime) rVar.r(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i = q.a[aVar.ordinal()];
        ZoneOffset zoneOffset = this.b;
        LocalDateTime localDateTime = this.a;
        return i != 1 ? i != 2 ? H(localDateTime.c(j, rVar), zoneOffset) : H(localDateTime, ZoneOffset.M(aVar.v(j))) : E(Instant.I(j, localDateTime.F()), zoneOffset);
    }

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int I;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        ZoneOffset zoneOffset = offsetDateTime2.b;
        ZoneOffset zoneOffset2 = this.b;
        if (zoneOffset2.equals(zoneOffset)) {
            I = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            LocalDateTime localDateTime = this.a;
            localDateTime.getClass();
            long p = AbstractC2962b.p(localDateTime, zoneOffset2);
            LocalDateTime localDateTime2 = offsetDateTime2.a;
            localDateTime2.getClass();
            int compare = Long.compare(p, AbstractC2962b.p(localDateTime2, offsetDateTime2.b));
            I = compare == 0 ? localDateTime.b().I() - localDateTime2.b().I() : compare;
        }
        return I == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : I;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return (rVar instanceof j$.time.temporal.a) || (rVar != null && rVar.i(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OffsetDateTime)) {
            return false;
        }
        OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
        return this.a.equals(offsetDateTime.a) && this.b.equals(offsetDateTime.b);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.q.a(this, rVar);
        }
        int i = q.a[((j$.time.temporal.a) rVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.i(rVar) : this.b.J();
        }
        throw new j$.time.temporal.v("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(i iVar) {
        return H(this.a.j(iVar), this.b);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? (rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.OFFSET_SECONDS) ? rVar.k() : this.a.k(rVar) : rVar.j(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        LocalDateTime localDateTime = this.a;
        return mVar.c(localDateTime.Q().w(), aVar).c(localDateTime.b().T(), j$.time.temporal.a.NANO_OF_DAY).c(this.b.J(), j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public LocalDateTime toLocalDateTime() {
        return this.a;
    }

    public final String toString() {
        return this.a.toString() + this.b.toString();
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i = q.a[((j$.time.temporal.a) rVar).ordinal()];
        ZoneOffset zoneOffset = this.b;
        LocalDateTime localDateTime = this.a;
        if (i != 1) {
            return i != 2 ? localDateTime.v(rVar) : zoneOffset.J();
        }
        localDateTime.getClass();
        return AbstractC2962b.p(localDateTime, zoneOffset);
    }

    final void writeExternal(ObjectOutput objectOutput) {
        this.a.U(objectOutput);
        this.b.P(objectOutput);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.q.h() || tVar == j$.time.temporal.q.j()) {
            return this.b;
        }
        if (tVar == j$.time.temporal.q.k()) {
            return null;
        }
        j$.time.temporal.t f = j$.time.temporal.q.f();
        LocalDateTime localDateTime = this.a;
        return tVar == f ? localDateTime.Q() : tVar == j$.time.temporal.q.g() ? localDateTime.b() : tVar == j$.time.temporal.q.e() ? j$.time.chrono.u.d : tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.NANOS : tVar.a(this);
    }
}
