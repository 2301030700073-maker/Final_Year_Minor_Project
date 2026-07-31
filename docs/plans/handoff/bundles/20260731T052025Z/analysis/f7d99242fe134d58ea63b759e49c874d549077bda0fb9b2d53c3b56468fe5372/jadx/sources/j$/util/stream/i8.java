package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class i8 extends b5 implements r8 {
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
                return (g2) new u8(this, aVar, spliterator, intFunction).invoke();
            default:
                return (g2) new t8(this, aVar, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.a
    public final Spliterator K(a aVar, Spliterator spliterator) {
        int i = 14;
        switch (this.l) {
            case 0:
                return z6.ORDERED.u(aVar.f) ? J(aVar, spliterator, new w0(i)).spliterator() : new y8(aVar.S(spliterator), this.m, 1);
            default:
                return z6.ORDERED.u(aVar.f) ? J(aVar, spliterator, new w0(i)).spliterator() : new y8(aVar.S(spliterator), this.m, 0);
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

    @Override // j$.util.stream.r8
    public s8 f(y1 y1Var, boolean z) {
        return new j8(this, y1Var, z);
    }
}
