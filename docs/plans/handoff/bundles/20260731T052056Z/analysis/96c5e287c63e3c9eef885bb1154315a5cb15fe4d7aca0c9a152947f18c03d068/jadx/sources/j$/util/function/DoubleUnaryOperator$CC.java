package j$.util.function;

import j$.util.Objects;
import java.util.function.DoubleUnaryOperator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* renamed from: j$.util.function.DoubleUnaryOperator$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class DoubleUnaryOperator$CC {
    public static DoubleUnaryOperator $default$andThen(DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2) {
        Objects.requireNonNull(doubleUnaryOperator2);
        return new c(doubleUnaryOperator, doubleUnaryOperator2, 1);
    }

    public static DoubleUnaryOperator $default$compose(DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2) {
        Objects.requireNonNull(doubleUnaryOperator2);
        return new c(doubleUnaryOperator, doubleUnaryOperator2, 0);
    }
}
