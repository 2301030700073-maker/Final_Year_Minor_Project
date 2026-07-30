package j$.time.chrono;

import j$.time.ZoneOffset;
import j$.util.Objects;

/* renamed from: j$.time.chrono.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2962b {
    public static j$.time.temporal.m a(InterfaceC2963c interfaceC2963c, j$.time.temporal.m mVar) {
        return mVar.c(interfaceC2963c.w(), j$.time.temporal.a.EPOCH_DAY);
    }

    public static j$.time.temporal.m b(InterfaceC2966f interfaceC2966f, j$.time.temporal.m mVar) {
        return mVar.c(interfaceC2966f.f().w(), j$.time.temporal.a.EPOCH_DAY).c(interfaceC2966f.b().T(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public static j$.time.temporal.m c(o oVar, j$.time.temporal.m mVar) {
        return mVar.c(oVar.getValue(), j$.time.temporal.a.ERA);
    }

    public static int d(InterfaceC2963c interfaceC2963c, InterfaceC2963c interfaceC2963c2) {
        int compare = Long.compare(interfaceC2963c.w(), interfaceC2963c2.w());
        if (compare != 0) {
            return compare;
        }
        return ((AbstractC2961a) interfaceC2963c.a()).compareTo(interfaceC2963c2.a());
    }

    public static int e(InterfaceC2966f interfaceC2966f, InterfaceC2966f interfaceC2966f2) {
        int compareTo = interfaceC2966f.f().compareTo(interfaceC2966f2.f());
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = interfaceC2966f.b().compareTo(interfaceC2966f2.b());
        if (compareTo2 != 0) {
            return compareTo2;
        }
        return ((AbstractC2961a) interfaceC2966f.a()).compareTo(interfaceC2966f2.a());
    }

    public static int f(InterfaceC2971k interfaceC2971k, InterfaceC2971k interfaceC2971k2) {
        int compare = Long.compare(interfaceC2971k.C(), interfaceC2971k2.C());
        if (compare != 0) {
            return compare;
        }
        int I = interfaceC2971k.b().I() - interfaceC2971k2.b().I();
        if (I != 0) {
            return I;
        }
        int compareTo = interfaceC2971k.o().compareTo(interfaceC2971k2.o());
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = interfaceC2971k.u().h().compareTo(interfaceC2971k2.u().h());
        if (compareTo2 != 0) {
            return compareTo2;
        }
        return ((AbstractC2961a) interfaceC2971k.a()).compareTo(interfaceC2971k2.a());
    }

    public static int g(InterfaceC2971k interfaceC2971k, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.q.a(interfaceC2971k, rVar);
        }
        int i = AbstractC2970j.a[((j$.time.temporal.a) rVar).ordinal()];
        if (i != 1) {
            return i != 2 ? interfaceC2971k.o().i(rVar) : interfaceC2971k.g().J();
        }
        throw new j$.time.temporal.v("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public static int h(o oVar, j$.time.temporal.a aVar) {
        return aVar == j$.time.temporal.a.ERA ? oVar.getValue() : j$.time.temporal.q.a(oVar, aVar);
    }

    public static long i(o oVar, j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.ERA) {
            return oVar.getValue();
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(j$.time.e.a("Unsupported field: ", rVar));
        }
        return rVar.n(oVar);
    }

    public static boolean j(InterfaceC2963c interfaceC2963c, j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar.isDateBased() : rVar != null && rVar.i(interfaceC2963c);
    }

    public static boolean k(o oVar, j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.ERA : rVar != null && rVar.i(oVar);
    }

    public static Object l(InterfaceC2963c interfaceC2963c, j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.q.k() || tVar == j$.time.temporal.q.j() || tVar == j$.time.temporal.q.h() || tVar == j$.time.temporal.q.g()) {
            return null;
        }
        return tVar == j$.time.temporal.q.e() ? interfaceC2963c.a() : tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.DAYS : tVar.a(interfaceC2963c);
    }

    public static Object m(InterfaceC2966f interfaceC2966f, j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.q.k() || tVar == j$.time.temporal.q.j() || tVar == j$.time.temporal.q.h()) {
            return null;
        }
        return tVar == j$.time.temporal.q.g() ? interfaceC2966f.b() : tVar == j$.time.temporal.q.e() ? interfaceC2966f.a() : tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.NANOS : tVar.a(interfaceC2966f);
    }

    public static Object n(InterfaceC2971k interfaceC2971k, j$.time.temporal.t tVar) {
        return (tVar == j$.time.temporal.q.j() || tVar == j$.time.temporal.q.k()) ? interfaceC2971k.u() : tVar == j$.time.temporal.q.h() ? interfaceC2971k.g() : tVar == j$.time.temporal.q.g() ? interfaceC2971k.b() : tVar == j$.time.temporal.q.e() ? interfaceC2971k.a() : tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.NANOS : tVar.a(interfaceC2971k);
    }

    public static Object o(o oVar, j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.ERAS : j$.time.temporal.q.c(oVar, tVar);
    }

    public static long p(InterfaceC2966f interfaceC2966f, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((interfaceC2966f.f().w() * 86400) + interfaceC2966f.b().U()) - zoneOffset.J();
    }

    public static long q(InterfaceC2971k interfaceC2971k) {
        return ((interfaceC2971k.f().w() * 86400) + interfaceC2971k.b().U()) - interfaceC2971k.g().J();
    }

    public static n r(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        Object obj = (n) nVar.y(j$.time.temporal.q.e());
        u uVar = u.d;
        if (obj == null) {
            obj = Objects.requireNonNull(uVar, "defaultObj");
        }
        return (n) obj;
    }
}
