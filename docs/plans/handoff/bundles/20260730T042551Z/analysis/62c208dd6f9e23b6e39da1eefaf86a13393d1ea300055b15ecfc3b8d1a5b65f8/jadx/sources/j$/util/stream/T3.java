package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
final class T3 extends AbstractC3030h2 {
    final /* synthetic */ Predicate s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    T3(AbstractC3002c abstractC3002c, int i, Predicate predicate) {
        super(abstractC3002c, i);
        this.s = predicate;
    }

    @Override // j$.util.stream.AbstractC3002c
    final I0 S0(Spliterator spliterator, AbstractC3002c abstractC3002c, IntFunction intFunction) {
        return (I0) new Y3(this, abstractC3002c, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC3002c
    final Spliterator T0(AbstractC3002c abstractC3002c, Spliterator spliterator) {
        return EnumC3026g3.ORDERED.n(abstractC3002c.r0()) ? S0(spliterator, abstractC3002c, new C2997b(24)).spliterator() : new Z3(abstractC3002c.Z0(spliterator), this.s, 1);
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        return new C3020f2(this, interfaceC3079r2);
    }
}
