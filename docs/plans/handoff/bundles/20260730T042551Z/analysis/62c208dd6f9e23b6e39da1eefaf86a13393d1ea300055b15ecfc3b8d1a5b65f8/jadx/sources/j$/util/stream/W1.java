package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class W1 extends AbstractC2995a2 implements InterfaceC3065o2 {
    W1() {
    }

    @Override // j$.util.stream.AbstractC2995a2, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        this.b++;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        m((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.V1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.U1
    public final void h(U1 u1) {
        this.b += ((AbstractC2995a2) u1).b;
    }

    @Override // j$.util.stream.InterfaceC3065o2
    public final /* synthetic */ void m(Double d) {
        AbstractC3117z0.A(this, d);
    }
}
