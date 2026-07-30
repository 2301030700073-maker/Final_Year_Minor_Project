package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class S extends U implements InterfaceC3075q2 {
    final LongConsumer b;

    S(LongConsumer longConsumer, boolean z) {
        super(z);
        this.b = longConsumer;
    }

    @Override // j$.util.stream.U, j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.b.accept(j);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
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

    @Override // j$.util.stream.InterfaceC3075q2
    public final /* synthetic */ void l(Long l) {
        AbstractC3117z0.E(this, l);
    }

    @Override // j$.util.stream.P3
    public final Object y(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        abstractC3117z0.H0(spliterator, this);
        return null;
    }
}
