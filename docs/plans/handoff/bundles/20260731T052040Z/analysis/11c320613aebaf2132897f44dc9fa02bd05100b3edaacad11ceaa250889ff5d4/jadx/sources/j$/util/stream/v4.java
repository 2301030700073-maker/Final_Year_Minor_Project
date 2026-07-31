package j$.util.stream;

import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class v4 extends x4 implements n5 {
    @Override // j$.util.stream.x4, j$.util.stream.o5
    public final void accept(long j) {
        this.b++;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.a0.a(this, longConsumer);
    }

    @Override // j$.util.stream.s4, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.r4
    public final void i(r4 r4Var) {
        this.b += ((x4) r4Var).b;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void o(Long l) {
        w3.i(this, l);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void s(Object obj) {
        o((Long) obj);
    }
}
