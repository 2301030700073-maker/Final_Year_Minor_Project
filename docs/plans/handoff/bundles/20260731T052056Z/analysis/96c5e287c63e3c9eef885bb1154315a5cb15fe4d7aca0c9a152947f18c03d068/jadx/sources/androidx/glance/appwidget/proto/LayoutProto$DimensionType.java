package androidx.glance.appwidget.proto;

import androidx.glance.appwidget.protobuf.Internal;
import androidx.transition.Transition;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum LayoutProto$DimensionType implements Internal.EnumLite {
    UNKNOWN_DIMENSION_TYPE(0),
    EXACT(1),
    WRAP(2),
    FILL(3),
    EXPAND(4),
    UNRECOGNIZED(-1);

    public static final int EXACT_VALUE = 1;
    public static final int EXPAND_VALUE = 4;
    public static final int FILL_VALUE = 3;
    public static final int UNKNOWN_DIMENSION_TYPE_VALUE = 0;
    public static final int WRAP_VALUE = 2;
    private static final Internal.EnumLiteMap internalValueMap = new Transition.AnonymousClass1(11, false);
    private final int value;

    LayoutProto$DimensionType(int i) {
        this.value = i;
    }

    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Can't get the number of an unknown enum value.");
        return 0;
    }
}
