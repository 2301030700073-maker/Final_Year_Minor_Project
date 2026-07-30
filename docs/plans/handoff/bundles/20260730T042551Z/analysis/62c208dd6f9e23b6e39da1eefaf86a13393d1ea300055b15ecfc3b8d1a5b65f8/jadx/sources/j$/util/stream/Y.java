package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class Y extends AbstractC3050l2 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC3002c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Y(AbstractC3002c abstractC3002c, InterfaceC3079r2 interfaceC3079r2, int i) {
        super(interfaceC3079r2);
        this.b = i;
        this.c = abstractC3002c;
    }

    @Override // j$.util.stream.InterfaceC3070p2, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        int i2 = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        AbstractC3002c abstractC3002c = this.c;
        switch (i2) {
            case 0:
                interfaceC3079r2.accept((InterfaceC3079r2) ((IntFunction) ((C3096v) abstractC3002c).t).apply(i));
                return;
            case 1:
                ((IntConsumer) ((C3106x) abstractC3002c).t).accept(i);
                interfaceC3079r2.accept(i);
                return;
            case 2:
                interfaceC3079r2.accept(i);
                return;
            case 3:
                interfaceC3079r2.accept(i);
                return;
            case 4:
                j$.time.e.b(((C3106x) abstractC3002c).t);
                throw null;
            case 5:
                j$.time.e.b(((C3111y) abstractC3002c).t);
                throw null;
            case 6:
                j$.time.e.b(((C3101w) abstractC3002c).t);
                throw null;
            default:
                j$.time.e.b(((C3106x) abstractC3002c).t);
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        switch (i) {
            case 7:
                interfaceC3079r2.c(-1L);
                break;
            default:
                interfaceC3079r2.c(j);
                break;
        }
    }
}
