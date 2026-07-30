package j$.util.stream;

import java.util.function.IntBinaryOperator;

/* loaded from: classes2.dex */
final class P1 extends AbstractC3117z0 {
    final /* synthetic */ IntBinaryOperator h;
    final /* synthetic */ int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    P1(EnumC3031h3 enumC3031h3, IntBinaryOperator intBinaryOperator, int i) {
        super(enumC3031h3);
        this.h = intBinaryOperator;
        this.i = i;
    }

    @Override // j$.util.stream.AbstractC3117z0
    public final U1 F0() {
        return new O1(this.i, this.h);
    }
}
