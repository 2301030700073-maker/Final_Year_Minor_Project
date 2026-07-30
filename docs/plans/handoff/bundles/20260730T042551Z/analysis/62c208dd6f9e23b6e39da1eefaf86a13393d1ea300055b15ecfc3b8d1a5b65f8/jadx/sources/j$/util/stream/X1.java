package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class X1 extends AbstractC2995a2 implements InterfaceC3070p2 {
    X1() {
    }

    @Override // j$.util.stream.AbstractC2995a2, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        this.b++;
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

    @Override // j$.util.stream.V1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.U1
    public final void h(U1 u1) {
        this.b += ((AbstractC2995a2) u1).b;
    }
}
