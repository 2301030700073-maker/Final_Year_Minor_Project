package j$.util.stream;

/* loaded from: classes2.dex */
abstract class D extends E {
    D(AbstractC3002c abstractC3002c, int i) {
        super(abstractC3002c, i);
    }

    @Override // j$.util.stream.AbstractC3002c
    final boolean U0() {
        return false;
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ H parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ H sequential() {
        sequential();
        return this;
    }
}
