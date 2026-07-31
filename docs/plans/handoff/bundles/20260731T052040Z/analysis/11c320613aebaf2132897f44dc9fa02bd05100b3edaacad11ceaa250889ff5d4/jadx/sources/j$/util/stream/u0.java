package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntUnaryOperator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class u0 extends i5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u0(a aVar, o5 o5Var, int i) {
        super(o5Var);
        this.b = i;
        this.c = aVar;
    }

    @Override // j$.util.stream.m5, j$.util.stream.o5
    public final void accept(int i) {
        int i2 = this.b;
        o5 o5Var = this.a;
        a aVar = this.c;
        switch (i2) {
            case 0:
                o5Var.accept((o5) ((IntFunction) ((q) aVar).m).apply(i));
                break;
            case 1:
                ((IntConsumer) ((v0) aVar).m).accept(i);
                o5Var.accept(i);
                break;
            case 2:
                o5Var.accept(((IntUnaryOperator) ((v0) aVar).m).applyAsInt(i));
                break;
            default:
                if (((IntPredicate) ((v0) aVar).m).test(i)) {
                    o5Var.accept(i);
                    break;
                }
                break;
        }
    }

    @Override // j$.util.stream.i5, j$.util.stream.o5
    public void c(long j) {
        switch (this.b) {
            case 3:
                this.a.c(-1L);
                break;
            default:
                super.c(j);
                break;
        }
    }
}
