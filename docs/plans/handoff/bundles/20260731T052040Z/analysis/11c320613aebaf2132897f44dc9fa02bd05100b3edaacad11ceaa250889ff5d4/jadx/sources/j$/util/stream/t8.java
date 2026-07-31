package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class t8 extends z0 implements y8 {
    public final /* synthetic */ IntPredicate l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t8(b1 b1Var, int i, IntPredicate intPredicate) {
        super(b1Var, i);
        this.l = intPredicate;
    }

    @Override // j$.util.stream.a
    public final g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        return (g2) new a9(this, aVar, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.a
    public final Spliterator H(a aVar, Spliterator spliterator) {
        return d7.ORDERED.u(aVar.f) ? G(aVar, spliterator, new d1(19)).spliterator() : new d9((Spliterator.OfInt) aVar.P(spliterator), this.l);
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        return new s8(this, o5Var, false);
    }

    @Override // j$.util.stream.y8
    public final z8 f(y1 y1Var, boolean z) {
        return new s8(this, y1Var, z);
    }
}
