package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.c2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3005c2 extends AbstractC3060n2 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC3002c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3005c2(AbstractC3002c abstractC3002c, InterfaceC3079r2 interfaceC3079r2, int i) {
        super(interfaceC3079r2);
        this.b = i;
        this.c = abstractC3002c;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        AbstractC3002c abstractC3002c = this.c;
        switch (i) {
            case 0:
                ((Consumer) ((C3096v) abstractC3002c).t).accept(obj);
                interfaceC3079r2.accept((InterfaceC3079r2) obj);
                break;
            case 1:
                if (((Predicate) ((C3096v) abstractC3002c).t).test(obj)) {
                    interfaceC3079r2.accept((InterfaceC3079r2) obj);
                    break;
                }
                break;
            case 2:
                interfaceC3079r2.accept((InterfaceC3079r2) ((C3015e2) abstractC3002c).t.apply(obj));
                break;
            case 3:
                interfaceC3079r2.accept(((C2997b) ((ToIntFunction) ((C3106x) abstractC3002c).t)).applyAsInt(obj));
                break;
            case 4:
                interfaceC3079r2.accept(((C2997b) ((ToLongFunction) ((C3111y) abstractC3002c).t)).applyAsLong(obj));
                break;
            default:
                interfaceC3079r2.accept(((C2997b) ((ToDoubleFunction) ((C3101w) abstractC3002c).t)).applyAsDouble(obj));
                break;
        }
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        switch (this.b) {
            case 1:
                this.a.c(-1L);
                break;
            default:
                super.c(j);
                break;
        }
    }
}
