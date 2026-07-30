package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;

/* renamed from: j$.util.stream.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3091u extends AbstractC3045k2 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC3002c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3091u(AbstractC3002c abstractC3002c, InterfaceC3079r2 interfaceC3079r2, int i) {
        super(interfaceC3079r2);
        this.b = i;
        this.c = abstractC3002c;
    }

    @Override // j$.util.stream.InterfaceC3065o2, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        AbstractC3002c abstractC3002c = this.c;
        switch (i) {
            case 0:
                interfaceC3079r2.accept((InterfaceC3079r2) ((DoubleFunction) ((C3096v) abstractC3002c).t).apply(d));
                return;
            case 1:
                j$.time.e.b(((C3101w) abstractC3002c).t);
                throw null;
            case 2:
                j$.time.e.b(((C3106x) abstractC3002c).t);
                throw null;
            case 3:
                j$.time.e.b(((C3111y) abstractC3002c).t);
                throw null;
            case 4:
                j$.time.e.b(((C3101w) abstractC3002c).t);
                throw null;
            default:
                ((DoubleConsumer) ((C3101w) abstractC3002c).t).accept(d);
                interfaceC3079r2.accept(d);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        switch (i) {
            case 4:
                interfaceC3079r2.c(-1L);
                break;
            default:
                interfaceC3079r2.c(j);
                break;
        }
    }
}
