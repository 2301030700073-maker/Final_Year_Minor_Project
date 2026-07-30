package j$.util.stream;

import java.util.function.Function;

/* renamed from: j$.util.stream.e2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3015e2 extends AbstractC3035i2 {
    public final /* synthetic */ int s;
    final /* synthetic */ Function t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3015e2(AbstractC3002c abstractC3002c, int i, Function function, int i2) {
        super(abstractC3002c, i);
        this.s = i2;
        this.t = function;
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        switch (this.s) {
            case 0:
                return new C3005c2(this, interfaceC3079r2, 2);
            default:
                return new C3020f2(this, interfaceC3079r2);
        }
    }
}
