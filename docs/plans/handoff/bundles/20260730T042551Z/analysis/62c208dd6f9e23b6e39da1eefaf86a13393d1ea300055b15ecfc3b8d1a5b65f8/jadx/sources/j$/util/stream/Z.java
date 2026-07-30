package j$.util.stream;

/* loaded from: classes2.dex */
final class Z extends AbstractC3053m0 {
    public final /* synthetic */ int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Z(AbstractC3002c abstractC3002c, int i, int i2) {
        super(abstractC3002c, i);
        this.s = i2;
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        switch (this.s) {
            case 0:
                return new Y(this, interfaceC3079r2, 2);
            default:
                return interfaceC3079r2;
        }
    }
}
