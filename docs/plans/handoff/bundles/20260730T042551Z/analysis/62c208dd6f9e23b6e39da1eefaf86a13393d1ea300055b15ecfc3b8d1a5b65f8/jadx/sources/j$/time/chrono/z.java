package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class z extends AbstractC2965e {
    static final j$.time.i d = j$.time.i.O(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    private final transient j$.time.i a;
    private transient A b;
    private transient int c;

    z(j$.time.i iVar) {
        if (iVar.L(d)) {
            throw new j$.time.d("JapaneseDate before Meiji 6 is not supported");
        }
        this.b = A.h(iVar);
        this.c = (iVar.K() - this.b.p().K()) + 1;
        this.a = iVar;
    }

    private z L(j$.time.i iVar) {
        return iVar.equals(this.a) ? this : new z(iVar);
    }

    private z M(A a, int i) {
        x.d.getClass();
        if (!(a instanceof A)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int K = (a.p().K() + i) - 1;
        if (i != 1 && (K < -999999999 || K > 999999999 || K < a.p().K() || a != A.h(j$.time.i.O(K, 1, 1)))) {
            throw new j$.time.d("Invalid yearOfEra value");
        }
        return L(this.a.Z(K));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 4, this);
    }

    @Override // j$.time.chrono.AbstractC2965e
    public final o E() {
        return this.b;
    }

    @Override // j$.time.chrono.AbstractC2965e
    /* renamed from: F */
    public final InterfaceC2963c r(long j, j$.time.temporal.b bVar) {
        return (z) super.r(j, bVar);
    }

    @Override // j$.time.chrono.AbstractC2965e
    final InterfaceC2963c G(long j) {
        return L(this.a.S(j));
    }

    @Override // j$.time.chrono.AbstractC2965e
    final InterfaceC2963c H(long j) {
        return L(this.a.T(j));
    }

    @Override // j$.time.chrono.AbstractC2965e
    final InterfaceC2963c I(long j) {
        return L(this.a.U(j));
    }

    @Override // j$.time.chrono.AbstractC2965e
    /* renamed from: J */
    public final InterfaceC2963c j(j$.time.i iVar) {
        return (z) super.j(iVar);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final z c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (z) super.c(j, rVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        if (v(aVar) == j) {
            return this;
        }
        int[] iArr = y.a;
        int i = iArr[aVar.ordinal()];
        j$.time.i iVar = this.a;
        if (i == 3 || i == 8 || i == 9) {
            int a = x.d.n(aVar).a(j, aVar);
            int i2 = iArr[aVar.ordinal()];
            if (i2 == 3) {
                return M(this.b, a);
            }
            if (i2 == 8) {
                return M(A.t(a), this.c);
            }
            if (i2 == 9) {
                return L(iVar.Z(a));
            }
        }
        return L(iVar.c(j, rVar));
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public final n a() {
        return x.d;
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c, j$.time.temporal.m
    public final InterfaceC2963c d(long j, j$.time.temporal.u uVar) {
        return (z) super.d(j, uVar);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.u uVar) {
        return (z) super.d(j, uVar);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c, j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || rVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || rVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || rVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return rVar instanceof j$.time.temporal.a ? rVar.isDateBased() : rVar != null && rVar.i(this);
    }

    @Override // j$.time.chrono.AbstractC2965e
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z) {
            return this.a.equals(((z) obj).a);
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final int hashCode() {
        x.d.getClass();
        return this.a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m j(j$.time.i iVar) {
        return (z) super.j(iVar);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        int N;
        long j;
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.j(this);
        }
        if (!e(rVar)) {
            throw new j$.time.temporal.v(j$.time.e.a("Unsupported field: ", rVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i = y.a[aVar.ordinal()];
        j$.time.i iVar = this.a;
        if (i == 1) {
            N = iVar.N();
        } else {
            if (i != 2) {
                if (i != 3) {
                    return x.d.n(aVar);
                }
                int K = this.b.p().K();
                A s = this.b.s();
                j = s != null ? (s.p().K() - K) + 1 : 999999999 - K;
                return j$.time.temporal.w.j(1L, j);
            }
            A s2 = this.b.s();
            N = (s2 == null || s2.p().K() != iVar.K()) ? iVar.M() ? 366 : 365 : s2.p().I() - 1;
            if (this.c == 1) {
                N -= this.b.p().I() - 1;
            }
        }
        j = N;
        return j$.time.temporal.w.j(1L, j);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return (z) super.r(j, bVar);
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        int I;
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i = y.a[((j$.time.temporal.a) rVar).ordinal()];
        j$.time.i iVar = this.a;
        switch (i) {
            case 2:
                if (this.c != 1) {
                    I = iVar.I();
                    break;
                } else {
                    I = (iVar.I() - this.b.p().I()) + 1;
                    break;
                }
            case 3:
                I = this.c;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new j$.time.temporal.v(j$.time.e.a("Unsupported field: ", rVar));
            case 8:
                I = this.b.getValue();
                break;
            default:
                return iVar.v(rVar);
        }
        return I;
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final long w() {
        return this.a.w();
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final InterfaceC2966f x(j$.time.l lVar) {
        return C2968h.F(this, lVar);
    }
}
