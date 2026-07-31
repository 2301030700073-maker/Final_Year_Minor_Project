package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class z3 extends w3 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;

    public /* synthetic */ z3(e7 e7Var, Object obj, int i) {
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.w3
    public final r4 Q() {
        switch (this.h) {
            case 0:
                return new q4((LongBinaryOperator) this.i);
            case 1:
                return new c4((DoubleBinaryOperator) this.i);
            case 2:
                return new h4((BinaryOperator) this.i);
            default:
                return new n4((IntBinaryOperator) this.i);
        }
    }
}
