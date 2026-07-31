package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        l5 l5Var = this.a;
        a aVar = this.c;
        switch (i2) {
            case 0:
                l5Var.accept((l5) ((IntFunction) ((q) aVar).m).apply(i));
                break;
            default:
                ((IntConsumer) ((u0) aVar).m).accept(i);
                l5Var.accept(i);
                break;
        }
    }
}
