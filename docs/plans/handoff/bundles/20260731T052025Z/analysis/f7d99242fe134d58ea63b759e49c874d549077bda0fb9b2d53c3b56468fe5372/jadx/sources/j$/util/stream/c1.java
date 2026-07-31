package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class c1 extends g5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c1(a aVar, l5 l5Var, int i) {
        super(l5Var);
        this.b = i;
        this.c = aVar;
    }

    @Override // j$.util.stream.k5, j$.util.stream.l5
    public final void accept(long j) {
        int i = this.b;
        l5 l5Var = this.a;
        a aVar = this.c;
        switch (i) {
            case 0:
                l5Var.accept((l5) ((LongFunction) ((q) aVar).m).apply(j));
                break;
            default:
                ((LongConsumer) ((f1) aVar).m).accept(j);
                l5Var.accept(j);
                break;
        }
    }
}
