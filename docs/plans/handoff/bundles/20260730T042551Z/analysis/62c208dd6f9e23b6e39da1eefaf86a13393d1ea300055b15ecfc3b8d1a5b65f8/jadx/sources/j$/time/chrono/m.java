package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* loaded from: classes2.dex */
final class m implements InterfaceC2971k, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    private final transient C2968h a;
    private final transient ZoneOffset b;
    private final transient j$.time.y c;

    private m(j$.time.y yVar, ZoneOffset zoneOffset, C2968h c2968h) {
        this.a = (C2968h) Objects.requireNonNull(c2968h, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
        this.c = (j$.time.y) Objects.requireNonNull(yVar, "zone");
    }

    static m D(n nVar, j$.time.temporal.m mVar) {
        m mVar2 = (m) mVar;
        AbstractC2961a abstractC2961a = (AbstractC2961a) nVar;
        if (abstractC2961a.equals(mVar2.a())) {
            return mVar2;
        }
        throw new ClassCastException("Chronology mismatch, required: " + abstractC2961a.h() + ", actual: " + mVar2.a().h());
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
    
        if (r2.contains(r7) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static j$.time.chrono.InterfaceC2971k F(j$.time.y r6, j$.time.ZoneOffset r7, j$.time.chrono.C2968h r8) {
        /*
            java.lang.String r0 = "localDateTime"
            j$.util.Objects.requireNonNull(r8, r0)
            java.lang.String r0 = "zone"
            j$.util.Objects.requireNonNull(r6, r0)
            boolean r0 = r6 instanceof j$.time.ZoneOffset
            if (r0 == 0) goto L17
            j$.time.chrono.m r7 = new j$.time.chrono.m
            r0 = r6
            j$.time.ZoneOffset r0 = (j$.time.ZoneOffset) r0
            r7.<init>(r6, r0, r8)
            return r7
        L17:
            j$.time.zone.f r0 = r6.D()
            j$.time.LocalDateTime r1 = j$.time.LocalDateTime.E(r8)
            java.util.List r2 = r0.g(r1)
            int r3 = r2.size()
            r4 = 1
            r5 = 0
            if (r3 != r4) goto L32
        L2b:
            java.lang.Object r7 = r2.get(r5)
            j$.time.ZoneOffset r7 = (j$.time.ZoneOffset) r7
            goto L55
        L32:
            int r3 = r2.size()
            if (r3 != 0) goto L4d
            j$.time.zone.b r7 = r0.f(r1)
            j$.time.Duration r0 = r7.k()
            long r0 = r0.k()
            j$.time.chrono.h r8 = r8.H(r0)
            j$.time.ZoneOffset r7 = r7.n()
            goto L55
        L4d:
            if (r7 == 0) goto L2b
            boolean r0 = r2.contains(r7)
            if (r0 == 0) goto L2b
        L55:
            java.lang.String r0 = "offset"
            j$.util.Objects.requireNonNull(r7, r0)
            j$.time.chrono.m r0 = new j$.time.chrono.m
            r0.<init>(r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.m.F(j$.time.y, j$.time.ZoneOffset, j$.time.chrono.h):j$.time.chrono.k");
    }

    static m G(n nVar, Instant instant, j$.time.y yVar) {
        ZoneOffset d = yVar.D().d(instant);
        Objects.requireNonNull(d, "offset");
        return new m(yVar, d, (C2968h) nVar.t(LocalDateTime.M(instant.E(), instant.F(), d)));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 3, this);
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final /* synthetic */ long C() {
        return AbstractC2962b.q(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public final InterfaceC2971k r(long j, j$.time.temporal.u uVar) {
        return D(a(), j$.time.temporal.q.b(this, j, (j$.time.temporal.b) uVar));
    }

    @Override // j$.time.temporal.m
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final InterfaceC2971k d(long j, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return D(a(), uVar.i(this, j));
        }
        return D(a(), this.a.d(j, uVar).n(this));
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final n a() {
        return f().a();
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final j$.time.l b() {
        return ((C2968h) o()).b();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return D(a(), rVar.r(this, j));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i = AbstractC2972l.a[aVar.ordinal()];
        if (i == 1) {
            return d(j - AbstractC2962b.q(this), j$.time.temporal.b.SECONDS);
        }
        j$.time.y yVar = this.c;
        C2968h c2968h = this.a;
        if (i != 2) {
            return F(yVar, this.b, c2968h.c(j, rVar));
        }
        return G(a(), Instant.I(c2968h.J(ZoneOffset.M(aVar.v(j))), c2968h.b().I()), yVar);
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return (rVar instanceof j$.time.temporal.a) || (rVar != null && rVar.i(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2971k) && AbstractC2962b.f(this, (InterfaceC2971k) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final InterfaceC2963c f() {
        return ((C2968h) o()).f();
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final ZoneOffset g() {
        return this.b;
    }

    public final int hashCode() {
        return (this.a.hashCode() ^ this.b.hashCode()) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int i(j$.time.temporal.r rVar) {
        return AbstractC2962b.g(this, rVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(j$.time.i iVar) {
        return D(a(), iVar.n(this));
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? (rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.OFFSET_SECONDS) ? rVar.k() : ((C2968h) o()).k(rVar) : rVar.j(this);
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
    public final InterfaceC2971k q(j$.time.y yVar) {
        return F(yVar, this.b, this.a);
    }

    public final String toString() {
        String c2968h = this.a.toString();
        ZoneOffset zoneOffset = this.b;
        String str = c2968h + zoneOffset.toString();
        j$.time.y yVar = this.c;
        if (zoneOffset == yVar) {
            return str;
        }
        return str + "[" + yVar.toString() + "]";
    }

    @Override // j$.time.chrono.InterfaceC2971k
    public final j$.time.y u() {
        return this.c;
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i = AbstractC2970j.a[((j$.time.temporal.a) rVar).ordinal()];
        return i != 1 ? i != 2 ? ((C2968h) o()).v(rVar) : g().J() : C();
    }

    final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.a);
        objectOutput.writeObject(this.b);
        objectOutput.writeObject(this.c);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object y(j$.time.temporal.t tVar) {
        return AbstractC2962b.n(this, tVar);
    }
}
