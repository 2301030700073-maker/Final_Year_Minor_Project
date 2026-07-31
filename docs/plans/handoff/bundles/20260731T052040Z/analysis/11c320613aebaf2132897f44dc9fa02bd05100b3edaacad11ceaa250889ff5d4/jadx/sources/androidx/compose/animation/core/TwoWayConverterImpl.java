package androidx.compose.animation.core;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TwoWayConverterImpl {
    public final Function1 convertFromVector;
    public final Function1 convertToVector;

    public TwoWayConverterImpl(Function1 function1, Function1 function12) {
        this.convertToVector = function1;
        this.convertFromVector = function12;
    }
}
