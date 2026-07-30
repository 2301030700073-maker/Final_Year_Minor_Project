package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.t0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3087t0 extends AbstractC3097v0 implements InterfaceC3075q2 {
    C3087t0(EnumC3102w0 enumC3102w0) {
        super(enumC3102w0);
    }

    @Override // j$.util.stream.AbstractC3097v0, j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        if (!this.a) {
            throw null;
        }
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC3075q2
    public final /* synthetic */ void l(Long l) {
        AbstractC3117z0.E(this, l);
    }
}
