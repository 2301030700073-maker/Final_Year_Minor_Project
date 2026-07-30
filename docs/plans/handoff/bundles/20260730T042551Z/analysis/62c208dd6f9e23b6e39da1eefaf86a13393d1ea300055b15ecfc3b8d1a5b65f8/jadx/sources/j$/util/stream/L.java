package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class L extends N implements InterfaceC3075q2 {
    static final I c;
    static final I d;

    static {
        EnumC3031h3 enumC3031h3 = EnumC3031h3.LONG_VALUE;
        c = new I(true, enumC3031h3, j$.util.C.a(), new O0(21), new C2997b(11));
        d = new I(false, enumC3031h3, j$.util.C.a(), new O0(21), new C2997b(11));
    }

    L() {
    }

    @Override // j$.util.stream.N, j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        m(Long.valueOf(j));
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return j$.util.C.d(((Long) this.b).longValue());
        }
        return null;
    }
}
