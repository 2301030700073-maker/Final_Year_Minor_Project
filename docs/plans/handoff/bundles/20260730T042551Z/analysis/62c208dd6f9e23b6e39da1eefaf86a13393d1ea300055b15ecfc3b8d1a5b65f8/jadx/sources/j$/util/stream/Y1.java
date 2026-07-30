package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class Y1 extends AbstractC2995a2 implements InterfaceC3075q2 {
    Y1() {
    }

    @Override // j$.util.stream.AbstractC2995a2, j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.b++;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    @Override // j$.util.stream.V1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.U1
    public final void h(U1 u1) {
        this.b += ((AbstractC2995a2) u1).b;
    }

    @Override // j$.util.stream.InterfaceC3075q2
    public final /* synthetic */ void l(Long l) {
        AbstractC3117z0.E(this, l);
    }
}
