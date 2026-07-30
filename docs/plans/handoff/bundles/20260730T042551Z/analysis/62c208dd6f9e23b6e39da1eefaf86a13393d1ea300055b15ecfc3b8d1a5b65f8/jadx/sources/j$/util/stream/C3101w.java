package j$.util.stream;

/* renamed from: j$.util.stream.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3101w extends D {
    public final /* synthetic */ int s;
    final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3101w(AbstractC3002c abstractC3002c, int i, Object obj, int i2) {
        super(abstractC3002c, i);
        this.s = i2;
        this.t = obj;
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        switch (this.s) {
            case 0:
                return new C3091u(this, interfaceC3079r2, 1);
            case 1:
                return new C3116z(this, interfaceC3079r2);
            case 2:
                return new C3091u(this, interfaceC3079r2, 4);
            case 3:
                return new C3091u(this, interfaceC3079r2, 5);
            case 4:
                return new Y(this, interfaceC3079r2, 6);
            case 5:
                return new C3033i0(this, interfaceC3079r2, 4);
            case 6:
                return new C3005c2(this, interfaceC3079r2, 5);
            default:
                return new C3067p(this, interfaceC3079r2);
        }
    }
}
