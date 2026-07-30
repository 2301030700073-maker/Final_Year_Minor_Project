package j$.util.stream;

/* renamed from: j$.util.stream.e0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3013e0 extends AbstractC3018f0 {
    AbstractC3013e0(AbstractC3002c abstractC3002c, int i) {
        super(abstractC3002c, i);
    }

    @Override // j$.util.stream.AbstractC3002c
    final boolean U0() {
        return false;
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
