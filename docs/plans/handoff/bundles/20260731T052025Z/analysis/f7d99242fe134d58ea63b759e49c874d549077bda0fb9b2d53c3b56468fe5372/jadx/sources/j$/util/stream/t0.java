package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntUnaryOperator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class t0 extends f5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t0(a aVar, l5 l5Var, int i) {
        super(l5Var);
        this.b = i;
        this.c = aVar;
    }

    @Override // j$.util.stream.j5, j$.util.stream.l5
    public final void accept(int i) {
        int i2 = this.b;
        a aVar = this.c;
        l5 l5Var = this.a;
        switch (i2) {
            case 0:
                l5Var.accept((l5) ((IntFunction) ((q) aVar).m).apply(i));
                break;
            case 1:
                ((IntConsumer) ((u0) aVar).m).accept(i);
                l5Var.accept(i);
                break;
            default:
                l5Var.accept(((IntUnaryOperator) ((u0) aVar).m).applyAsInt(i));
                break;
        }
    }
}
