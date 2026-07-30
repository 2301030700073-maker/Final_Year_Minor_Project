package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class I implements P3 {
    final int a;
    final Object b;
    final Predicate c;
    final Supplier d;

    I(boolean z, EnumC3031h3 enumC3031h3, Object obj, O0 o0, C2997b c2997b) {
        this.a = (z ? 0 : EnumC3026g3.r) | EnumC3026g3.u;
        this.b = obj;
        this.c = o0;
        this.d = c2997b;
    }

    @Override // j$.util.stream.P3
    public final Object k(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        return new O(this, EnumC3026g3.ORDERED.n(abstractC3117z0.r0()), abstractC3117z0, spliterator).invoke();
    }

    @Override // j$.util.stream.P3
    public final int o() {
        return this.a;
    }

    @Override // j$.util.stream.P3
    public final Object y(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        Q3 q3 = (Q3) this.d.get();
        abstractC3117z0.H0(spliterator, q3);
        Object obj = q3.get();
        return obj != null ? obj : this.b;
    }
}
