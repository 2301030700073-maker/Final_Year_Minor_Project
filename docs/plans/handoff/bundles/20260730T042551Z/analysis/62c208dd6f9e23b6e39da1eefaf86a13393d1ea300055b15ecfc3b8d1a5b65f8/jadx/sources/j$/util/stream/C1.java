package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* loaded from: classes2.dex */
final class C1 extends AbstractC3117z0 {
    public final /* synthetic */ int h;
    final /* synthetic */ Object i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1(EnumC3031h3 enumC3031h3, Object obj, int i) {
        super(enumC3031h3);
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.AbstractC3117z0
    public final U1 F0() {
        int i = this.h;
        Object obj = this.i;
        switch (i) {
            case 0:
                return new T1((LongBinaryOperator) obj);
            case 1:
                return new F1((DoubleBinaryOperator) obj);
            case 2:
                return new K1((BinaryOperator) obj);
            default:
                return new Q1((IntBinaryOperator) obj);
        }
    }
}
