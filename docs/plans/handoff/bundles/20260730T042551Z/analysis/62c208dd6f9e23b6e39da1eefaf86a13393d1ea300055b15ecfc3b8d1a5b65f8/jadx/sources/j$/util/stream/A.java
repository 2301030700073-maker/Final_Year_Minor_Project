package j$.util.stream;

/* loaded from: classes2.dex */
final class A extends D {
    public final /* synthetic */ int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ A(AbstractC3002c abstractC3002c, int i, int i2) {
        super(abstractC3002c, i);
        this.s = i2;
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        switch (this.s) {
            case 0:
                return interfaceC3079r2;
            case 1:
                return new Y(this, interfaceC3079r2, 3);
            default:
                return new C3033i0(this, interfaceC3079r2, 1);
        }
    }
}
