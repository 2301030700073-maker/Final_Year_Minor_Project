package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class m extends b5 {
    public static k2 T(a aVar, Spliterator spliterator) {
        j$.desugar.sun.nio.fs.m mVar = new j$.desugar.sun.nio.fs.m(26);
        j$.desugar.sun.nio.fs.m mVar2 = new j$.desugar.sun.nio.fs.m(27);
        j$.desugar.sun.nio.fs.m mVar3 = new j$.desugar.sun.nio.fs.m(28);
        Objects.requireNonNull(mVar);
        Objects.requireNonNull(mVar2);
        Objects.requireNonNull(mVar3);
        return new k2((Collection) new a4(a7.REFERENCE, mVar3, mVar2, mVar, 3).b(aVar, spliterator));
    }

    @Override // j$.util.stream.a
    public final g2 J(a aVar, Spliterator spliterator, IntFunction intFunction) {
        if (z6.DISTINCT.u(aVar.f)) {
            return aVar.o(spliterator, false, intFunction);
        }
        if (z6.ORDERED.u(aVar.f)) {
            return T(aVar, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        j$.nio.file.x xVar = new j$.nio.file.x(6, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(xVar);
        new p0(xVar, false).g(aVar, spliterator);
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
        return z6.DISTINCT.u(aVar.f) ? aVar.S(spliterator) : z6.ORDERED.u(aVar.f) ? T(aVar, spliterator).spliterator() : new i7(aVar.S(spliterator), new ConcurrentHashMap());
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        Objects.requireNonNull(l5Var);
        return z6.DISTINCT.u(i) ? l5Var : z6.SORTED.u(i) ? new k(l5Var) : new l(l5Var);
    }
}
