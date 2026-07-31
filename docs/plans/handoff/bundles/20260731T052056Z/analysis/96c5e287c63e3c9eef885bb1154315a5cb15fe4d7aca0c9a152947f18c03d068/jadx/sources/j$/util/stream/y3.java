package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class y3 extends v3 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;

    public /* synthetic */ y3(a7 a7Var, Object obj, int i) {
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.v3
    public final q4 X() {
        switch (this.h) {
            case 0:
                return new p4((LongBinaryOperator) this.i);
            case 1:
                return new b4((DoubleBinaryOperator) this.i);
            case 2:
                return new g4((BinaryOperator) this.i);
            default:
                return new m4((IntBinaryOperator) this.i);
        }
    }
}
