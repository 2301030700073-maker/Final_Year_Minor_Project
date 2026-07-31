package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class u1 extends b {
    public final j$.nio.file.b0 j;

    public u1(u1 u1Var, Spliterator spliterator) {
        super(u1Var, spliterator);
        this.j = u1Var.j;
    }

    @Override // j$.util.stream.d
    public final Object a() {
        a aVar = this.a;
        s1 s1Var = (s1) ((Supplier) this.j.c).get();
        aVar.N(this.b, s1Var);
        boolean z = s1Var.b;
        if (z == ((t1) this.j.b).b) {
            Boolean valueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, valueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new u1(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return Boolean.valueOf(!((t1) this.j.b).b);
    }

    public u1(j$.nio.file.b0 b0Var, a aVar, Spliterator spliterator) {
        super(aVar, spliterator);
        this.j = b0Var;
    }
}
