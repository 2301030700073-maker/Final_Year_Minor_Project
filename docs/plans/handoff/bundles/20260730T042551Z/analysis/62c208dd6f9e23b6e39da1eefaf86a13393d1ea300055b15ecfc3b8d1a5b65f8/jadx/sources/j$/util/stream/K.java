package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class K extends N implements InterfaceC3070p2 {
    static final I c;
    static final I d;

    static {
        EnumC3031h3 enumC3031h3 = EnumC3031h3.INT_VALUE;
        c = new I(true, enumC3031h3, j$.util.B.a(), new O0(20), new C2997b(10));
        d = new I(false, enumC3031h3, j$.util.B.a(), new O0(20), new C2997b(10));
    }

    K() {
    }

    @Override // j$.util.stream.N, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        m(Integer.valueOf(i));
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return j$.util.B.d(((Integer) this.b).intValue());
        }
        return null;
    }
}
