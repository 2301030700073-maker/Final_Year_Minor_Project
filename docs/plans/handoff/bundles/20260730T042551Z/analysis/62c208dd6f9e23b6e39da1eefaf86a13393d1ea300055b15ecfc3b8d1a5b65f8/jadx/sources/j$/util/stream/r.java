package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class r extends AbstractC3030h2 {
    r(AbstractC3002c abstractC3002c, int i) {
        super(abstractC3002c, i);
    }

    static M0 b1(AbstractC3002c abstractC3002c, Spliterator spliterator) {
        O0 o0 = new O0(11);
        O0 o02 = new O0(12);
        O0 o03 = new O0(13);
        Objects.requireNonNull(o0);
        Objects.requireNonNull(o02);
        Objects.requireNonNull(o03);
        return new M0((Collection) new E1(EnumC3031h3.REFERENCE, o03, o02, o0, 3).k(abstractC3002c, spliterator));
    }

    @Override // j$.util.stream.AbstractC3002c
    final I0 S0(Spliterator spliterator, AbstractC3002c abstractC3002c, IntFunction intFunction) {
        if (EnumC3026g3.DISTINCT.n(abstractC3002c.r0())) {
            return abstractC3002c.J0(spliterator, false, intFunction);
        }
        if (EnumC3026g3.ORDERED.n(abstractC3002c.r0())) {
            return b1(abstractC3002c, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        C3062o c3062o = new C3062o(0, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(c3062o);
        new T(c3062o, false).a(abstractC3002c, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new M0(keySet);
    }

    @Override // j$.util.stream.AbstractC3002c
    final Spliterator T0(AbstractC3002c abstractC3002c, Spliterator spliterator) {
        return EnumC3026g3.DISTINCT.n(abstractC3002c.r0()) ? abstractC3002c.Z0(spliterator) : EnumC3026g3.ORDERED.n(abstractC3002c.r0()) ? b1(abstractC3002c, spliterator).spliterator() : new C3071p3(abstractC3002c.Z0(spliterator));
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        Objects.requireNonNull(interfaceC3079r2);
        return EnumC3026g3.DISTINCT.n(i) ? interfaceC3079r2 : EnumC3026g3.SORTED.n(i) ? new C3067p(this, interfaceC3079r2) : new C3072q(interfaceC3079r2);
    }
}
