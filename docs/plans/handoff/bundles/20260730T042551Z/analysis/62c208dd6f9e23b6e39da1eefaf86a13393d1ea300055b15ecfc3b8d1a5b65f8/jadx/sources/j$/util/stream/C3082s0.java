package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.s0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3082s0 extends AbstractC3097v0 implements InterfaceC3070p2 {
    C3082s0(EnumC3102w0 enumC3102w0) {
        super(enumC3102w0);
    }

    @Override // j$.util.stream.AbstractC3097v0, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        if (!this.a) {
            throw null;
        }
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC3070p2
    public final /* synthetic */ void d(Integer num) {
        AbstractC3117z0.C(this, num);
    }
}
