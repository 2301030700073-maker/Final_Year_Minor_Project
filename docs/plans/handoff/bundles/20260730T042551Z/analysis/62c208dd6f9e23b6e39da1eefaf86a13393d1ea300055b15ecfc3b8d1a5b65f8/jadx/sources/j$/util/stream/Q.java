package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class Q extends U implements InterfaceC3070p2 {
    final IntConsumer b;

    Q(IntConsumer intConsumer, boolean z) {
        super(z);
        this.b = intConsumer;
    }

    @Override // j$.util.stream.U, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        this.b.accept(i);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC3070p2
    public final /* synthetic */ void d(Integer num) {
        AbstractC3117z0.C(this, num);
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

    @Override // j$.util.stream.P3
    public final Object y(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        abstractC3117z0.H0(spliterator, this);
        return null;
    }
}
