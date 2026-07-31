package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleUnaryOperator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class n extends e5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(a aVar, l5 l5Var, int i) {
        super(l5Var);
        this.b = i;
        this.c = aVar;
    }

    @Override // j$.util.stream.i5, j$.util.stream.l5
    public final void accept(double d) {
        int i = this.b;
        l5 l5Var = this.a;
        a aVar = this.c;
        switch (i) {
            case 0:
                l5Var.accept((l5) ((DoubleFunction) ((q) aVar).m).apply(d));
                break;
            case 1:
                l5Var.accept(((DoubleUnaryOperator) ((r) aVar).m).applyAsDouble(d));
                break;
            default:
                ((DoubleConsumer) ((r) aVar).m).accept(d);
                l5Var.accept(d);
                break;
        }
    }
}
