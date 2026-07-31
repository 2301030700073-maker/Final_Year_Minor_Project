package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class f0 implements l8 {
    public final int a;
    public final Object b;
    public final Predicate c;
    public final Supplier d;

    public f0(boolean z, e7 e7Var, Object obj, Predicate predicate, Supplier supplier) {
        this.a = (z ? 0 : d7.r) | d7.u;
        this.b = obj;
        this.c = predicate;
        this.d = supplier;
    }

    @Override // j$.util.stream.l8
    public final Object a(a aVar, Spliterator spliterator) {
        m8 m8Var = (m8) this.d.get();
        aVar.N(spliterator, m8Var);
        Object obj = m8Var.get();
        return obj != null ? obj : this.b;
    }

    @Override // j$.util.stream.l8
    public final Object b(a aVar, Spliterator spliterator) {
        return new l0(this, d7.ORDERED.u(aVar.f), aVar, spliterator).invoke();
    }

    @Override // j$.util.stream.l8
    public final int f() {
        return this.a;
    }
}
