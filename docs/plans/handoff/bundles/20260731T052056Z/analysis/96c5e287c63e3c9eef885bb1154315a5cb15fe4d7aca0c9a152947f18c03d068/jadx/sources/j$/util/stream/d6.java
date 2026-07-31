package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class d6 extends y implements o8 {
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
                if (z6.SORTED.i(aVar.f)) {
                    return aVar.B(spliterator, false, intFunction);
                }
                double[] dArr = (double[]) ((a2) aVar.B(spliterator, true, intFunction)).b();
                Arrays.sort(dArr);
                return new s2(dArr);
            case 1:
                return (g2) new r8(this, aVar, spliterator, intFunction).invoke();
            default:
                return (g2) new q8(this, aVar, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.a
    public Spliterator K(a aVar, Spliterator spliterator) {
        switch (this.l) {
            case 1:
                return z6.ORDERED.i(aVar.f) ? J(aVar, spliterator, new l8(1)).spliterator() : new s8((j$.util.r0) aVar.S(spliterator), 1);
            case 2:
                return z6.ORDERED.i(aVar.f) ? J(aVar, spliterator, new l8(2)).spliterator() : new s8((j$.util.r0) aVar.S(spliterator), 0);
            default:
                return super.K(aVar, spliterator);
        }
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        switch (this.l) {
            case 0:
                Objects.requireNonNull(l5Var);
                if (z6.SORTED.i(i)) {
                    return l5Var;
                }
                return z6.SIZED.i(i) ? new i6(l5Var) : new a6(l5Var);
            case 1:
                return new s(this, l5Var, 3);
            default:
                return new n8(this, l5Var, false);
        }
    }

    @Override // j$.util.stream.o8
    public p8 g(y1 y1Var, boolean z) {
        return new n8(this, y1Var, z);
    }
}
