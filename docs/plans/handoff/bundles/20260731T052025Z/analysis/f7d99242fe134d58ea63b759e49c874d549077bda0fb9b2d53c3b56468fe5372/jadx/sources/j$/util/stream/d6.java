package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class d6 extends y implements r8 {
    public final /* synthetic */ int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d6(a aVar, int i, int i2) {
        super(aVar, i);
        this.l = i2;
    }

    @Override // j$.util.stream.a
    public final g2 J(a aVar, Spliterator spliterator, IntFunction intFunction) {
        switch (this.l) {
            case 0:
                if (z6.SORTED.u(aVar.f)) {
                    return aVar.o(spliterator, false, intFunction);
                }
                double[] dArr = (double[]) ((a2) aVar.o(spliterator, true, intFunction)).b();
                Arrays.sort(dArr);
                return new s2(dArr);
            case 1:
                return (g2) new u8(this, aVar, spliterator, intFunction).invoke();
            default:
                return (g2) new t8(this, aVar, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.a
    public Spliterator K(a aVar, Spliterator spliterator) {
        switch (this.l) {
            case 1:
                return z6.ORDERED.u(aVar.f) ? J(aVar, spliterator, new m8(2)).spliterator() : new v8((j$.util.s0) aVar.S(spliterator), 1);
            case 2:
                return z6.ORDERED.u(aVar.f) ? J(aVar, spliterator, new m8(3)).spliterator() : new v8((j$.util.s0) aVar.S(spliterator), 0);
            default:
                return super.K(aVar, spliterator);
        }
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        switch (this.l) {
            case 0:
                Objects.requireNonNull(l5Var);
                if (z6.SORTED.u(i)) {
                    return l5Var;
                }
                return z6.SIZED.u(i) ? new i6(l5Var) : new a6(l5Var);
            case 1:
                return new p8(this, l5Var);
            default:
                return new q8(this, l5Var, false);
        }
    }

    @Override // j$.util.stream.r8
    public s8 f(y1 y1Var, boolean z) {
        return new q8(this, y1Var, z);
    }
}
