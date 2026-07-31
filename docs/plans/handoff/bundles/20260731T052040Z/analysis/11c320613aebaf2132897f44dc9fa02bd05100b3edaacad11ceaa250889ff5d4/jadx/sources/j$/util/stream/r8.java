package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class r8 extends z0 {
    public final /* synthetic */ IntPredicate l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r8(b1 b1Var, int i, IntPredicate intPredicate) {
        super(b1Var, i);
        this.l = intPredicate;
    }

    @Override // j$.util.stream.a
    public final g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        return (g2) new b9(this, aVar, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.a
    public final Spliterator H(a aVar, Spliterator spliterator) {
        return d7.ORDERED.u(aVar.f) ? G(aVar, spliterator, new d1(18)).spliterator() : new e9((Spliterator.OfInt) aVar.P(spliterator), this.l);
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        return new q8(this, o5Var);
    }
}
