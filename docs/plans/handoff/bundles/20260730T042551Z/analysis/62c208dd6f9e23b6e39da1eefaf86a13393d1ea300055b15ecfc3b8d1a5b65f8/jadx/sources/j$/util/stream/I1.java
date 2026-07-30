package j$.util.stream;

import java.util.function.DoubleBinaryOperator;

/* loaded from: classes2.dex */
final class I1 extends AbstractC3117z0 {
    final /* synthetic */ DoubleBinaryOperator h;
    final /* synthetic */ double i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    I1(EnumC3031h3 enumC3031h3, DoubleBinaryOperator doubleBinaryOperator, double d) {
        super(enumC3031h3);
        this.h = doubleBinaryOperator;
        this.i = d;
    }

    @Override // j$.util.stream.AbstractC3117z0
    public final U1 F0() {
        return new D1(this.i, this.h);
    }
}
