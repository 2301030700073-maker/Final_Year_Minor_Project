package androidx.compose.animation.core;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TwoWayConverterImpl {
    public final Function1 convertFromVector;
    public final Function1 convertToVector;

    public TwoWayConverterImpl(Function1 function1, Function1 function12) {
        this.convertToVector = function1;
        this.convertFromVector = function12;
    }
}
