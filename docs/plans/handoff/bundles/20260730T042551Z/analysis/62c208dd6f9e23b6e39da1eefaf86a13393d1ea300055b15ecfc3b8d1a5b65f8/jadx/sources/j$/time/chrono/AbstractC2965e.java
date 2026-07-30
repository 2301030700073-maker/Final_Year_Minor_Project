package j$.time.chrono;

import j$.time.AbstractC2959a;
import java.io.Serializable;

/* renamed from: j$.time.chrono.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC2965e implements InterfaceC2963c, j$.time.temporal.m, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    AbstractC2965e() {
    }

    static InterfaceC2963c D(n nVar, j$.time.temporal.m mVar) {
        InterfaceC2963c interfaceC2963c = (InterfaceC2963c) mVar;
        AbstractC2961a abstractC2961a = (AbstractC2961a) nVar;
        if (abstractC2961a.equals(interfaceC2963c.a())) {
            return interfaceC2963c;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + abstractC2961a.h() + ", actual: " + interfaceC2963c.a().h());
    }

    @Override // java.lang.Comparable
    /* renamed from: B */
    public final /* synthetic */ int compareTo(InterfaceC2963c interfaceC2963c) {
        return AbstractC2962b.d(this, interfaceC2963c);
    }

    public o E() {
        return a().p(i(j$.time.temporal.a.ERA));
    }

    @Override // j$.time.temporal.m
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public InterfaceC2963c r(long j, j$.time.temporal.b bVar) {
        return D(a(), j$.time.temporal.q.b(this, j, bVar));
    }

    abstract InterfaceC2963c G(long j);

    abstract InterfaceC2963c H(long j);

    abstract InterfaceC2963c I(long j);

    @Override // j$.time.temporal.m
    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public InterfaceC2963c j(j$.time.i iVar) {
        return D(a(), AbstractC2962b.a(iVar, this));
    }

    @Override // j$.time.temporal.m
    public InterfaceC2963c c(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(j$.time.e.a("Unsupported field: ", rVar));
        }
        return D(a(), rVar.r(this, j));
    }

    @Override // j$.time.temporal.m
    public InterfaceC2963c d(long j, j$.time.temporal.u uVar) {
        boolean z = uVar instanceof j$.time.temporal.b;
        if (!z) {
            if (!z) {
                return D(a(), uVar.i(this, j));
            }
            throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
        switch (AbstractC2964d.a[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return G(j);
            case 2:
                return G(AbstractC2959a.i(j, 7));
            case 3:
                return H(j);
            case 4:
                return I(j);
            case 5:
                return I(AbstractC2959a.i(j, 10));
            case 6:
                return I(AbstractC2959a.i(j, 100));
            case 7:
                return I(AbstractC2959a.i(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(AbstractC2959a.d(v(aVar), j), (j$.time.temporal.r) aVar);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    @Override // j$.time.chrono.InterfaceC2963c, j$.time.temporal.n
    public /* synthetic */ boolean e(j$.time.temporal.r rVar) {
        return AbstractC2962b.j(this, rVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2963c) && AbstractC2962b.d(this, (InterfaceC2963c) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public int hashCode() {
        long w = w();
        return ((AbstractC2961a) a()).hashCode() ^ ((int) (w ^ (w >>> 32)));
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int i(j$.time.temporal.r rVar) {
        return j$.time.temporal.q.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public /* synthetic */ j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return AbstractC2962b.a(this, mVar);
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public String toString() {
        long v = v(j$.time.temporal.a.YEAR_OF_ERA);
        long v2 = v(j$.time.temporal.a.MONTH_OF_YEAR);
        long v3 = v(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(((AbstractC2961a) a()).h());
        sb.append(" ");
        sb.append(E());
        sb.append(" ");
        sb.append(v);
        sb.append(v2 < 10 ? "-0" : "-");
        sb.append(v2);
        sb.append(v3 >= 10 ? "-" : "-0");
        sb.append(v3);
        return sb.toString();
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public long w() {
        return v(j$.time.temporal.a.EPOCH_DAY);
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public InterfaceC2966f x(j$.time.l lVar) {
        return C2968h.F(this, lVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object y(j$.time.temporal.t tVar) {
        return AbstractC2962b.l(this, tVar);
    }
}
