package j$.util.stream;

/* renamed from: j$.util.stream.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3096v extends AbstractC3035i2 {
    public final /* synthetic */ int s;
    final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3096v(AbstractC3002c abstractC3002c, int i, Object obj, int i2) {
        super(abstractC3002c, i);
        this.s = i2;
        this.t = obj;
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        switch (this.s) {
            case 0:
                return new C3091u(this, interfaceC3079r2, 0);
            case 1:
                return new Y(this, interfaceC3079r2, 0);
            case 2:
                return new C3033i0(this, interfaceC3079r2, 0);
            case 3:
                return new C3005c2(this, interfaceC3079r2, 0);
            default:
                return new C3005c2(this, interfaceC3079r2, 1);
        }
    }
}
