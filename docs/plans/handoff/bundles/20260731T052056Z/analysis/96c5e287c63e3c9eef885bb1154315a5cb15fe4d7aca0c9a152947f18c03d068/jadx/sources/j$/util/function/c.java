package j$.util.function;

import java.util.function.DoubleUnaryOperator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements DoubleUnaryOperator {
    public final /* synthetic */ int a;
    public final /* synthetic */ DoubleUnaryOperator b;
    public final /* synthetic */ DoubleUnaryOperator c;

    public /* synthetic */ c(DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2, int i) {
        this.a = i;
        this.b = doubleUnaryOperator;
        this.c = doubleUnaryOperator2;
    }

    public final /* synthetic */ DoubleUnaryOperator andThen(DoubleUnaryOperator doubleUnaryOperator) {
        switch (this.a) {
        }
        return DoubleUnaryOperator$CC.$default$andThen(this, doubleUnaryOperator);
    }

    @Override // java.util.function.DoubleUnaryOperator
    public final double applyAsDouble(double d) {
        switch (this.a) {
            case 0:
                return this.b.applyAsDouble(this.c.applyAsDouble(d));
            default:
                return this.c.applyAsDouble(this.b.applyAsDouble(d));
        }
    }

    public final /* synthetic */ DoubleUnaryOperator compose(DoubleUnaryOperator doubleUnaryOperator) {
        switch (this.a) {
        }
        return DoubleUnaryOperator$CC.$default$compose(this, doubleUnaryOperator);
    }
}
