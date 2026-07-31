package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class e0 implements f8 {
    public final int a;
    public final Object b;
    public final Predicate c;
    public final Supplier d;

    public e0(boolean z, a7 a7Var, Object obj, Predicate predicate, Supplier supplier) {
        this.a = (z ? 0 : z6.r) | z6.u;
        this.b = obj;
        this.c = predicate;
        this.d = supplier;
    }

    @Override // j$.util.stream.f8
    public final Object a(a aVar, Spliterator spliterator) {
        g8 g8Var = (g8) this.d.get();
        aVar.Q(spliterator, g8Var);
        Object obj = g8Var.get();
        return obj != null ? obj : this.b;
    }

    @Override // j$.util.stream.f8
    public final Object b(a aVar, Spliterator spliterator) {
        return new k0(this, z6.ORDERED.i(aVar.f), aVar, spliterator).invoke();
    }

    @Override // j$.util.stream.f8
    public final int f() {
        return this.a;
    }
}
