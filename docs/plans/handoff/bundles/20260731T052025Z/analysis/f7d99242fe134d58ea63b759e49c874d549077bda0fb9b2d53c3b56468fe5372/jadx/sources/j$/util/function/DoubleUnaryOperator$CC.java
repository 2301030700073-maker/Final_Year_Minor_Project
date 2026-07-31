package j$.util.function;

import j$.util.Objects;
import java.util.function.DoubleUnaryOperator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
