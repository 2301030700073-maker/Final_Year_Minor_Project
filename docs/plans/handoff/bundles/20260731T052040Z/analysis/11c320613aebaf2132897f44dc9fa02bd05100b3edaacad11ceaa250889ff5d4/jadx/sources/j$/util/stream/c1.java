package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class c1 extends j5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c1(a aVar, o5 o5Var, int i) {
        super(o5Var);
        this.b = i;
        this.c = aVar;
    }

    @Override // j$.util.stream.n5, j$.util.stream.o5
    public final void accept(long j) {
        int i = this.b;
        o5 o5Var = this.a;
        a aVar = this.c;
        switch (i) {
            case 0:
                o5Var.accept((o5) ((LongFunction) ((q) aVar).m).apply(j));
                break;
            default:
                ((LongConsumer) ((g1) aVar).m).accept(j);
                o5Var.accept(j);
                break;
        }
    }
}
