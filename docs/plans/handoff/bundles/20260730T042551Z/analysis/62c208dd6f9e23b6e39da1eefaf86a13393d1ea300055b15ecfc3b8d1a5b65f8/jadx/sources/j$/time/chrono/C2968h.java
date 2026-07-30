package j$.time.chrono;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.AbstractC2959a;
import j$.time.ZoneOffset;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* renamed from: j$.time.chrono.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2968h implements InterfaceC2966f, j$.time.temporal.m, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;
    private final transient InterfaceC2963c a;
    private final transient j$.time.l b;

    private C2968h(InterfaceC2963c interfaceC2963c, j$.time.l lVar) {
        Objects.requireNonNull(interfaceC2963c, "date");
        Objects.requireNonNull(lVar, "time");
        this.a = interfaceC2963c;
        this.b = lVar;
    }

    static C2968h D(n nVar, j$.time.temporal.m mVar) {
        C2968h c2968h = (C2968h) mVar;
        AbstractC2961a abstractC2961a = (AbstractC2961a) nVar;
        if (abstractC2961a.equals(c2968h.a())) {
            return c2968h;
        }
        throw new ClassCastException("Chronology mismatch, required: " + abstractC2961a.h() + ", actual: " + c2968h.a().h());
    }

    static C2968h F(InterfaceC2963c interfaceC2963c, j$.time.l lVar) {
        return new C2968h(interfaceC2963c, lVar);
    }

    private C2968h I(InterfaceC2963c interfaceC2963c, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        j$.time.l lVar = this.b;
        if (j5 == 0) {
            return L(interfaceC2963c, lVar);
        }
        long j6 = j2 / 1440;
        long j7 = j / 24;
        long j8 = (j2 % 1440) * 60000000000L;
        long j9 = ((j % 24) * 3600000000000L) + j8 + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long T = lVar.T();
        long j10 = j9 + T;
        long h = AbstractC2959a.h(j10, 86400000000000L) + j7 + j6 + (j3 / 86400) + (j4 / 86400000000000L);
        long g = AbstractC2959a.g(j10, 86400000000000L);
        if (g != T) {
            lVar = j$.time.l.L(g);
        }
        return L(interfaceC2963c.d(h, (j$.time.temporal.u) j$.time.temporal.b.DAYS), lVar);
    }

    private C2968h L(j$.time.temporal.m mVar, j$.time.l lVar) {
        InterfaceC2963c interfaceC2963c = this.a;
        return (interfaceC2963c == mVar && this.b == lVar) ? this : new C2968h(AbstractC2965e.D(interfaceC2963c.a(), mVar), lVar);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 2, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public final InterfaceC2966f r(long j, j$.time.temporal.u uVar) {
        return D(a(), j$.time.temporal.q.b(this, j, (j$.time.temporal.b) uVar));
    }

    @Override // j$.time.temporal.m
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public final C2968h d(long j, j$.time.temporal.u uVar) {
        boolean z = uVar instanceof j$.time.temporal.b;
        InterfaceC2963c interfaceC2963c = this.a;
        if (!z) {
            return D(interfaceC2963c.a(), uVar.i(this, j));
        }
        int i = AbstractC2967g.a[((j$.time.temporal.b) uVar).ordinal()];
        j$.time.l lVar = this.b;
        switch (i) {
            case 1:
                return I(this.a, 0L, 0L, 0L, j);
            case 2:
                C2968h L = L(interfaceC2963c.d(j / 86400000000L, (j$.time.temporal.u) j$.time.temporal.b.DAYS), lVar);
                return L.I(L.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                C2968h L2 = L(interfaceC2963c.d(j / 86400000, (j$.time.temporal.u) j$.time.temporal.b.DAYS), lVar);
                return L2.I(L2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return H(j);
            case 5:
                return I(this.a, 0L, j, 0L, 0L);
            case 6:
                return I(this.a, j, 0L, 0L, 0L);
            case 7:
                C2968h L3 = L(interfaceC2963c.d(j / 256, (j$.time.temporal.u) j$.time.temporal.b.DAYS), lVar);
                return L3.I(L3.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return L(interfaceC2963c.d(j, uVar), lVar);
        }
    }

    final C2968h H(long j) {
        return I(this.a, 0L, 0L, j, 0L);
    }

    public final /* synthetic */ long J(ZoneOffset zoneOffset) {
        return AbstractC2962b.p(this, zoneOffset);
    }

    @Override // j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final C2968h c(long j, j$.time.temporal.r rVar) {
        boolean z = rVar instanceof j$.time.temporal.a;
        InterfaceC2963c interfaceC2963c = this.a;
        if (!z) {
            return D(interfaceC2963c.a(), rVar.r(this, j));
        }
        boolean isTimeBased = ((j$.time.temporal.a) rVar).isTimeBased();
        j$.time.l lVar = this.b;
        return isTimeBased ? L(interfaceC2963c, lVar.c(j, rVar)) : L(interfaceC2963c.c(j, rVar), lVar);
    }

    @Override // j$.time.chrono.InterfaceC2966f
    public final n a() {
        return f().a();
    }

    @Override // j$.time.chrono.InterfaceC2966f
    public final j$.time.l b() {
        return this.b;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar != null && rVar.i(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        return aVar.isDateBased() || aVar.isTimeBased();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2966f) && AbstractC2962b.e(this, (InterfaceC2966f) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2966f
    public final InterfaceC2963c f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) rVar).isTimeBased() ? this.b.i(rVar) : this.a.i(rVar) : k(rVar).a(v(rVar), rVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(j$.time.i iVar) {
        return L(iVar, this.b);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.j(this);
        }
        if (!((j$.time.temporal.a) rVar).isTimeBased()) {
            return this.a.k(rVar);
        }
        j$.time.l lVar = this.b;
        lVar.getClass();
        return j$.time.temporal.q.d(lVar, rVar);
    }

    @Override // j$.time.chrono.InterfaceC2966f
    public final InterfaceC2971k l(ZoneOffset zoneOffset) {
        return m.F(zoneOffset, null, this);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return AbstractC2962b.b(this, mVar);
    }

    public final String toString() {
        return this.a.toString() + RequestConfiguration.MAX_AD_CONTENT_RATING_T + this.b.toString();
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) rVar).isTimeBased() ? this.b.v(rVar) : this.a.v(rVar) : rVar.n(this);
    }

    final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.a);
        objectOutput.writeObject(this.b);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object y(j$.time.temporal.t tVar) {
        return AbstractC2962b.m(this, tVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: z */
    public final /* synthetic */ int compareTo(InterfaceC2966f interfaceC2966f) {
        return AbstractC2962b.e(this, interfaceC2966f);
    }
}
