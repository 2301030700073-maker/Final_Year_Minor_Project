package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class n extends e5 {
    public static k2 Q(a aVar, Spliterator spliterator) {
        j jVar = new j(16);
        j jVar2 = new j(17);
        j jVar3 = new j(18);
        Objects.requireNonNull(jVar);
        Objects.requireNonNull(jVar2);
        Objects.requireNonNull(jVar3);
        return new k2((Collection) new b4(e7.REFERENCE, jVar3, jVar2, jVar, 3).b(aVar, spliterator));
    }

    @Override // j$.util.stream.a
    public final g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        if (d7.DISTINCT.u(aVar.f)) {
            return aVar.m(spliterator, false, intFunction);
        }
        if (d7.ORDERED.u(aVar.f)) {
            return Q(aVar, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        j$.nio.file.b0 b0Var = new j$.nio.file.b0(5, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(b0Var);
        new q0(b0Var, false).g(aVar, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new k2(keySet);
    }

    @Override // j$.util.stream.a
    public final Spliterator H(a aVar, Spliterator spliterator) {
        return d7.DISTINCT.u(aVar.f) ? aVar.P(spliterator) : d7.ORDERED.u(aVar.f) ? Q(aVar, spliterator).spliterator() : new m7(aVar.P(spliterator), new ConcurrentHashMap());
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        Objects.requireNonNull(o5Var);
        return d7.DISTINCT.u(i) ? o5Var : d7.SORTED.u(i) ? new l(o5Var) : new m(o5Var);
    }
}
