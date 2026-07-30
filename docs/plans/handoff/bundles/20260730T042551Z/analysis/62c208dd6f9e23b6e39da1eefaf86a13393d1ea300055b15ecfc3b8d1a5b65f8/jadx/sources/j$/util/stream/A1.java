package j$.util.stream;

import java.util.function.LongBinaryOperator;

/* loaded from: classes2.dex */
final class A1 extends AbstractC3117z0 {
    final /* synthetic */ LongBinaryOperator h;
    final /* synthetic */ long i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    A1(EnumC3031h3 enumC3031h3, LongBinaryOperator longBinaryOperator, long j) {
        super(enumC3031h3);
        this.h = longBinaryOperator;
        this.i = j;
    }

    @Override // j$.util.stream.AbstractC3117z0
    public final U1 F0() {
        return new S1(this.i, this.h);
    }
}
