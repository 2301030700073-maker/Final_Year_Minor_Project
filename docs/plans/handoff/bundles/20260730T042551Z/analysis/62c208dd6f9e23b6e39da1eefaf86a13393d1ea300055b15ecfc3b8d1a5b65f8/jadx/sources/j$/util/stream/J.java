package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class J extends N implements InterfaceC3065o2 {
    static final I c;
    static final I d;

    static {
        EnumC3031h3 enumC3031h3 = EnumC3031h3.DOUBLE_VALUE;
        c = new I(true, enumC3031h3, j$.util.A.a(), new O0(19), new C2997b(9));
        d = new I(false, enumC3031h3, j$.util.A.a(), new O0(19), new C2997b(9));
    }

    J() {
    }

    @Override // j$.util.stream.N, j$.util.stream.InterfaceC3079r2
    public final void accept(double d2) {
        m(Double.valueOf(d2));
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return j$.util.A.d(((Double) this.b).doubleValue());
        }
        return null;
    }
}
