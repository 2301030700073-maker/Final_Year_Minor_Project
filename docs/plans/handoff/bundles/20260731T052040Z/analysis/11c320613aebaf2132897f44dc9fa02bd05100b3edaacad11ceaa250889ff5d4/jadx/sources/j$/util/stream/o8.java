package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class o8 extends e5 implements y8 {
    public final /* synthetic */ int l;
    public final /* synthetic */ Predicate m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o8(g5 g5Var, int i, Predicate predicate, int i2) {
        super(g5Var, i);
        this.l = i2;
        this.m = predicate;
    }

    @Override // j$.util.stream.a
    public final g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        switch (this.l) {
            case 0:
                return (g2) new b9(this, aVar, spliterator, intFunction).invoke();
            default:
                return (g2) new a9(this, aVar, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.a
    public final Spliterator H(a aVar, Spliterator spliterator) {
        int i = 4;
        switch (this.l) {
            case 0:
                return d7.ORDERED.u(aVar.f) ? G(aVar, spliterator, new d1(i)).spliterator() : new h9(aVar.P(spliterator), this.m, 1);
            default:
                return d7.ORDERED.u(aVar.f) ? G(aVar, spliterator, new d1(i)).spliterator() : new h9(aVar.P(spliterator), this.m, 0);
        }
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        switch (this.l) {
            case 0:
                return new l(this, o5Var);
            default:
                return new p8(this, o5Var, false);
        }
    }

    @Override // j$.util.stream.y8
    public z8 f(y1 y1Var, boolean z) {
        return new p8(this, y1Var, z);
    }
}
