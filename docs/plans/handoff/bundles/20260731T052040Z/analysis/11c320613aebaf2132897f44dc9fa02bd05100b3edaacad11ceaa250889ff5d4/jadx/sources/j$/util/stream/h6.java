package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class h6 extends z implements y8 {
    public final /* synthetic */ int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h6(a aVar, int i, int i2) {
        super(aVar, i);
        this.l = i2;
    }

    @Override // j$.util.stream.a
    public final g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        switch (this.l) {
            case 0:
                if (d7.SORTED.u(aVar.f)) {
                    return aVar.m(spliterator, false, intFunction);
                }
                double[] dArr = (double[]) ((a2) aVar.m(spliterator, true, intFunction)).b();
                Arrays.sort(dArr);
                return new s2(dArr);
            case 1:
                return (g2) new b9(this, aVar, spliterator, intFunction).invoke();
            default:
                return (g2) new a9(this, aVar, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.a
    public Spliterator H(a aVar, Spliterator spliterator) {
        switch (this.l) {
            case 1:
                return d7.ORDERED.u(aVar.f) ? G(aVar, spliterator, new d1(22)).spliterator() : new c9((j$.util.t0) aVar.P(spliterator), 1);
            case 2:
                return d7.ORDERED.u(aVar.f) ? G(aVar, spliterator, new d1(23)).spliterator() : new c9((j$.util.t0) aVar.P(spliterator), 0);
            default:
                return super.H(aVar, spliterator);
        }
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        switch (this.l) {
            case 0:
                Objects.requireNonNull(o5Var);
                if (d7.SORTED.u(i)) {
                    return o5Var;
                }
                return d7.SIZED.u(i) ? new m6(o5Var) : new e6(o5Var);
            case 1:
                return new w8(this, o5Var);
            default:
                return new x8(this, o5Var, false);
        }
    }

    @Override // j$.util.stream.y8
    public z8 f(y1 y1Var, boolean z) {
        return new x8(this, y1Var, z);
    }
}
