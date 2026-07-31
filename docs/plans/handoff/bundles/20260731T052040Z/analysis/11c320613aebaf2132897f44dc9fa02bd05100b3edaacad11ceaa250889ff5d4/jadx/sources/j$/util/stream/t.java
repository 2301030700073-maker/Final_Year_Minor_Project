package j$.util.stream;

import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class t extends h5 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t(a aVar, o5 o5Var, int i) {
        super(o5Var);
        this.b = i;
    }

    @Override // j$.util.stream.l5, j$.util.stream.o5
    public final void accept(double d) {
        switch (this.b) {
            case 0:
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d);
                throw null;
            case 1:
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d);
                throw null;
            default:
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d);
                throw null;
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public void c(long j) {
        switch (this.b) {
            case 2:
                this.a.c(-1L);
                break;
            default:
                super.c(j);
                break;
        }
    }
}
