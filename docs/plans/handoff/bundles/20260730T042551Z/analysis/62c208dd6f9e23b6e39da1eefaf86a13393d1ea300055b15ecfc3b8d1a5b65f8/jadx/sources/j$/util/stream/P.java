package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class P extends U implements InterfaceC3065o2 {
    final DoubleConsumer b;

    P(DoubleConsumer doubleConsumer, boolean z) {
        super(z);
        this.b = doubleConsumer;
    }

    @Override // j$.util.stream.U, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        this.b.accept(d);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        m((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.P3
    public final /* bridge */ /* synthetic */ Object k(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        a(abstractC3117z0, spliterator);
        return null;
    }

    @Override // j$.util.stream.InterfaceC3065o2
    public final /* synthetic */ void m(Double d) {
        AbstractC3117z0.A(this, d);
    }

    @Override // j$.util.stream.P3
    public final Object y(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        abstractC3117z0.H0(spliterator, this);
        return null;
    }
}
