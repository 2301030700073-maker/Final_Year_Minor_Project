package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleUnaryOperator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class o extends h5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(a aVar, o5 o5Var, int i) {
        super(o5Var);
        this.b = i;
        this.c = aVar;
    }

    @Override // j$.util.stream.l5, j$.util.stream.o5
    public final void accept(double d) {
        int i = this.b;
        o5 o5Var = this.a;
        a aVar = this.c;
        switch (i) {
            case 0:
                o5Var.accept((o5) ((DoubleFunction) ((q) aVar).m).apply(d));
                break;
            case 1:
                o5Var.accept(((DoubleUnaryOperator) ((s) aVar).m).applyAsDouble(d));
                break;
            default:
                ((DoubleConsumer) ((s) aVar).m).accept(d);
                o5Var.accept(d);
                break;
        }
    }
}
