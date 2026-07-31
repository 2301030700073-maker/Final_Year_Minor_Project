package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class i8 extends b5 implements o8 {
    public final /* synthetic */ int l;
    public final /* synthetic */ Predicate m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i8(d5 d5Var, int i, Predicate predicate, int i2) {
        super(d5Var, i);
        this.l = i2;
        this.m = predicate;
    }

    @Override // j$.util.stream.a
    public final g2 J(a aVar, Spliterator spliterator, IntFunction intFunction) {
        switch (this.l) {
            case 0:
                return (g2) new r8(this, aVar, spliterator, intFunction).invoke();
            default:
                return (g2) new q8(this, aVar, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.a
    public final Spliterator K(a aVar, Spliterator spliterator) {
        int i = 13;
        switch (this.l) {
            case 0:
                return z6.ORDERED.i(aVar.f) ? J(aVar, spliterator, new w0(i)).spliterator() : new v8(aVar.S(spliterator), this.m, 1);
            default:
                return z6.ORDERED.i(aVar.f) ? J(aVar, spliterator, new w0(i)).spliterator() : new v8(aVar.S(spliterator), this.m, 0);
        }
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        switch (this.l) {
            case 0:
                return new k(this, l5Var);
            default:
                return new j8(this, l5Var, false);
        }
    }

    @Override // j$.util.stream.o8
    public p8 g(y1 y1Var, boolean z) {
        return new j8(this, y1Var, z);
    }
}
