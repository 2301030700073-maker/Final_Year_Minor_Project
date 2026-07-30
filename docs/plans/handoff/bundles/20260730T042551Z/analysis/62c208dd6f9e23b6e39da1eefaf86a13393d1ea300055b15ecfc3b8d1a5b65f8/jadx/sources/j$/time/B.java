package j$.time;

import j$.time.chrono.AbstractC2962b;
import j$.time.chrono.InterfaceC2963c;
import j$.time.chrono.InterfaceC2966f;
import j$.time.chrono.InterfaceC2971k;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public final class B implements j$.time.temporal.m, InterfaceC2971k, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;
    private final LocalDateTime a;
    private final ZoneOffset b;
    private final y c;

    private B(LocalDateTime localDateTime, y yVar, ZoneOffset zoneOffset) {
        this.a = localDateTime;
        this.b = zoneOffset;
        this.c = yVar;
    }

    private static B D(long j, int i, y yVar) {
        ZoneOffset d = yVar.D().d(Instant.I(j, i));
        return new B(LocalDateTime.M(j, i, d), yVar, d);
    }

    public static B E(Instant instant, y yVar) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(yVar, "zone");
        return D(instant.E(), instant.F(), yVar);
    }

    public static B F(LocalDateTime localDateTime, y yVar, ZoneOffset zoneOffset) {
        Object requireNonNull;
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(yVar, "zone");
        if (yVar instanceof ZoneOffset) {
            return new B(localDateTime, yVar, (ZoneOffset) yVar);
        }
        j$.time.zone.f D = yVar.D();
        List g = D.g(localDateTime);
        if (g.size() != 1) {
            if (g.size() == 0) {
                j$.time.zone.b f = D.f(localDateTime);
                localDateTime = localDateTime.O(f.k().k());
                zoneOffset = f.n();
            } else if (zoneOffset == null || !g.contains(zoneOffset)) {
                requireNonNull = Objects.requireNonNull((ZoneOffset) g.get(0), "offset");
            }
            return new B(localDateTime, yVar, zoneOffset);
        }
        requireNonNull = g.get(0);
        zoneOffset = (ZoneOffset) requireNonNull;
        return new B(localDateTime, yVar, zoneOffset);
    }

    static B H(ObjectInput objectInput) {
        LocalDateTime localDateTime = LocalDateTime.c;
        i iVar = i.d;
        LocalDateTime L = LocalDateTime.L(i.O(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), l.S(objectInput));
        ZoneOffset O = ZoneOffset.O(objectInput);
        y yVar = (y) t.a(objectInput);
        Objects.requireNonNull(L, "localDateTime");
        Objects.requireNonNull(O, "offset");
        Objects.requireNonNull(yVar, "zone");
        if (!(yVar instanceof ZoneOffset) || O.equals(yVar)) {
            return new B(L, yVar, O);
        }
        throw new IllegalArgumentException("ZoneId must match ZoneOffset");
    }

    private B I(ZoneOffset zoneOffset) {
        if (!zoneOffset.equals(this.b)) {
            y yVar = this.c;
            j$.time.zone.f D = yVar.D();
            LocalDateTime localDateTime = this.a;
            if (D.g(localDateTime).contains(zoneOffset)) {
                return new B(localDateTime, yVar, zoneOffset);
            }
        }
        return this;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 6, this);
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final /* synthetic */ long C() {
        return AbstractC2962b.q(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public final B d(long j, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (B) uVar.i(this, j);
        }
        boolean isDateBased = uVar.isDateBased();
        LocalDateTime d = this.a.d(j, uVar);
        y yVar = this.c;
        ZoneOffset zoneOffset = this.b;
        if (isDateBased) {
            return F(d, yVar, zoneOffset);
        }
        Objects.requireNonNull(d, "localDateTime");
        Objects.requireNonNull(zoneOffset, "offset");
        Objects.requireNonNull(yVar, "zone");
        if (yVar.D().g(d).contains(zoneOffset)) {
            return new B(d, yVar, zoneOffset);
        }
        d.getClass();
        return D(AbstractC2962b.p(d, zoneOffset), d.F(), yVar);
    }

    public final LocalDateTime J() {
        return this.a;
    }

    @Override // j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final B j(i iVar) {
        return F(LocalDateTime.L(iVar, this.a.b()), this.c, this.b);
    }

    final void L(DataOutput dataOutput) {
        this.a.U(dataOutput);
        this.b.P(dataOutput);
        this.c.H(dataOutput);
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final j$.time.chrono.n a() {
        return ((i) f()).a();
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final l b() {
        return this.a.b();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (B) rVar.r(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i = A.a[aVar.ordinal()];
        y yVar = this.c;
        LocalDateTime localDateTime = this.a;
        return i != 1 ? i != 2 ? F(localDateTime.c(j, rVar), yVar, this.b) : I(ZoneOffset.M(aVar.v(j))) : D(j, localDateTime.F(), yVar);
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return (rVar instanceof j$.time.temporal.a) || (rVar != null && rVar.i(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B)) {
            return false;
        }
        B b = (B) obj;
        return this.a.equals(b.a) && this.b.equals(b.b) && this.c.equals(b.c);
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final InterfaceC2963c f() {
        return this.a.Q();
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final ZoneOffset g() {
        return this.b;
    }

    public final int hashCode() {
        return (this.a.hashCode() ^ this.b.hashCode()) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return AbstractC2962b.g(this, rVar);
        }
        int i = A.a[((j$.time.temporal.a) rVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.i(rVar) : this.b.J();
        }
        throw new j$.time.temporal.v("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? (rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.OFFSET_SECONDS) ? rVar.k() : this.a.k(rVar) : rVar.j(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ int compareTo(InterfaceC2971k interfaceC2971k) {
        return AbstractC2962b.f(this, interfaceC2971k);
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final InterfaceC2966f o() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final InterfaceC2971k q(y yVar) {
        Objects.requireNonNull(yVar, "zone");
        return this.c.equals(yVar) ? this : F(this.a, yVar, this.b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        String localDateTime = this.a.toString();
        ZoneOffset zoneOffset = this.b;
        String str = localDateTime + zoneOffset.toString();
        y yVar = this.c;
        if (zoneOffset == yVar) {
            return str;
        }
        return str + "[" + yVar.toString() + "]";
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final y u() {
        return this.c;
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i = A.a[((j$.time.temporal.a) rVar).ordinal()];
        return i != 1 ? i != 2 ? this.a.v(rVar) : this.b.J() : AbstractC2962b.q(this);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.f() ? this.a.Q() : AbstractC2962b.n(this, tVar);
    }
}
