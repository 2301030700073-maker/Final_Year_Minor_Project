package androidx.glance.appwidget.proto;

import androidx.collection.internal.Lock;
import androidx.glance.appwidget.protobuf.Internal;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum LayoutProto$ContentScale implements Internal.EnumLite {
    UNSPECIFIED_CONTENT_SCALE(0),
    FIT(1),
    CROP(2),
    FILL_BOUNDS(3),
    UNRECOGNIZED(-1);

    public static final int CROP_VALUE = 2;
    public static final int FILL_BOUNDS_VALUE = 3;
    public static final int FIT_VALUE = 1;
    public static final int UNSPECIFIED_CONTENT_SCALE_VALUE = 0;
    private static final Internal.EnumLiteMap internalValueMap = new Lock(10);
    private final int value;

    LayoutProto$ContentScale(int i) {
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
