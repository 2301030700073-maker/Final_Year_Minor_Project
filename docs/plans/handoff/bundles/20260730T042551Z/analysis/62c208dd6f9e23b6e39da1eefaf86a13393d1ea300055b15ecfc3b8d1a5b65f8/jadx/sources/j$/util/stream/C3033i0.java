package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;

/* renamed from: j$.util.stream.i0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3033i0 extends AbstractC3055m2 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC3002c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3033i0(AbstractC3002c abstractC3002c, InterfaceC3079r2 interfaceC3079r2, int i) {
        super(interfaceC3079r2);
        this.b = i;
        this.c = abstractC3002c;
    }

    @Override // j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        AbstractC3002c abstractC3002c = this.c;
        switch (i) {
            case 0:
                interfaceC3079r2.accept((InterfaceC3079r2) ((LongFunction) ((C3096v) abstractC3002c).t).apply(j));
                return;
            case 1:
                interfaceC3079r2.accept(j);
                return;
            case 2:
                j$.time.e.b(((C3111y) abstractC3002c).t);
                throw null;
            case 3:
                j$.time.e.b(((C3106x) abstractC3002c).t);
                throw null;
            case 4:
                j$.time.e.b(((C3101w) abstractC3002c).t);
                throw null;
            case 5:
                j$.time.e.b(((C3111y) abstractC3002c).t);
                throw null;
            default:
                ((LongConsumer) ((C3111y) abstractC3002c).t).accept(j);
                interfaceC3079r2.accept(j);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        switch (i) {
            case 5:
                interfaceC3079r2.c(-1L);
                break;
            default:
                interfaceC3079r2.c(j);
                break;
        }
    }
}
