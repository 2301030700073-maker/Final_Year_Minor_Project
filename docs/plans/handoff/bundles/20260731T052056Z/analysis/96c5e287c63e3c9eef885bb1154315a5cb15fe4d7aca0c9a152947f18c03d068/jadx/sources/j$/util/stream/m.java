package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class m extends b5 {
    public static k2 T(a aVar, Spliterator spliterator) {
        j$.time.f fVar = new j$.time.f(25);
        j$.time.f fVar2 = new j$.time.f(26);
        j$.time.f fVar3 = new j$.time.f(27);
        Objects.requireNonNull(fVar);
        Objects.requireNonNull(fVar2);
        Objects.requireNonNull(fVar3);
        return new k2((Collection) new a4(a7.REFERENCE, fVar3, fVar2, fVar, 3).b(aVar, spliterator));
    }

    @Override // j$.util.stream.a
    public final g2 J(a aVar, Spliterator spliterator, IntFunction intFunction) {
        if (z6.DISTINCT.i(aVar.f)) {
            return aVar.B(spliterator, false, intFunction);
        }
        if (z6.ORDERED.i(aVar.f)) {
            return T(aVar, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        j$.util.concurrent.t tVar = new j$.util.concurrent.t(4, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(tVar);
        new p0(tVar, false).g(aVar, spliterator);
        Set keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new k2(keySet);
    }

    @Override // j$.util.stream.a
    public final Spliterator K(a aVar, Spliterator spliterator) {
        return z6.DISTINCT.i(aVar.f) ? aVar.S(spliterator) : z6.ORDERED.i(aVar.f) ? T(aVar, spliterator).spliterator() : new i7(aVar.S(spliterator), new ConcurrentHashMap());
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        Objects.requireNonNull(l5Var);
        return z6.DISTINCT.i(i) ? l5Var : z6.SORTED.i(i) ? new k(l5Var) : new l(l5Var);
    }
}
