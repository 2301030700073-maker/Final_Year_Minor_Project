package androidx.glance.appwidget.proto;

import androidx.glance.appwidget.protobuf.Internal;
import androidx.transition.Transition;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum LayoutProto$NodeIdentity implements Internal.EnumLite {
    DEFAULT_IDENTITY(0),
    BACKGROUND_NODE(1),
    UNRECOGNIZED(-1);

    public static final int BACKGROUND_NODE_VALUE = 1;
    public static final int DEFAULT_IDENTITY_VALUE = 0;
    private static final Internal.EnumLiteMap internalValueMap = new Transition.AnonymousClass1(12, false);
    private final int value;

    LayoutProto$NodeIdentity(int i) {
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
