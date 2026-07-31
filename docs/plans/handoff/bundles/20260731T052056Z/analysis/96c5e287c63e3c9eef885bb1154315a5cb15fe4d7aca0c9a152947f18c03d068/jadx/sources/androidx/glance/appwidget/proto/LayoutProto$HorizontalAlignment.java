package androidx.glance.appwidget.proto;

import androidx.glance.appwidget.protobuf.Internal;
import androidx.work.impl.AutoMigration_14_15;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum LayoutProto$HorizontalAlignment implements Internal.EnumLite {
    UNSPECIFIED_HORIZONTAL_ALIGNMENT(0),
    START(1),
    CENTER_HORIZONTALLY(2),
    END(3),
    UNRECOGNIZED(-1);

    public static final int CENTER_HORIZONTALLY_VALUE = 2;
    public static final int END_VALUE = 3;
    public static final int START_VALUE = 1;
    public static final int UNSPECIFIED_HORIZONTAL_ALIGNMENT_VALUE = 0;
    private static final Internal.EnumLiteMap internalValueMap = new AutoMigration_14_15(12);
    private final int value;

    LayoutProto$HorizontalAlignment(int i) {
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
