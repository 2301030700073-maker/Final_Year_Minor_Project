package androidx.glance.appwidget.proto;

import androidx.glance.appwidget.protobuf.Internal;
import androidx.work.impl.AutoMigration_14_15;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum LayoutProto$VerticalAlignment implements Internal.EnumLite {
    UNSPECIFIED_VERTICAL_ALIGNMENT(0),
    TOP(1),
    CENTER_VERTICALLY(2),
    BOTTOM(3),
    UNRECOGNIZED(-1);

    public static final int BOTTOM_VALUE = 3;
    public static final int CENTER_VERTICALLY_VALUE = 2;
    public static final int TOP_VALUE = 1;
    public static final int UNSPECIFIED_VERTICAL_ALIGNMENT_VALUE = 0;
    private static final Internal.EnumLiteMap internalValueMap = new AutoMigration_14_15(13);
    private final int value;

    LayoutProto$VerticalAlignment(int i) {
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
