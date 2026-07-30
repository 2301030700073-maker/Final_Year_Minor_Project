package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.u0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3092u0 extends AbstractC3097v0 implements InterfaceC3065o2 {
    C3092u0(EnumC3102w0 enumC3102w0) {
        super(enumC3102w0);
    }

    @Override // j$.util.stream.AbstractC3097v0, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        if (!this.a) {
            throw null;
        }
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        m((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC3065o2
    public final /* synthetic */ void m(Double d) {
        AbstractC3117z0.A(this, d);
    }
}
