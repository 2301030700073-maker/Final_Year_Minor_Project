package androidx.glance.appwidget.proto;

import androidx.collection.internal.Lock;
import androidx.glance.appwidget.protobuf.Internal;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum LayoutProto$LayoutType implements Internal.EnumLite {
    UNKNOWN_TYPE(0),
    ROW(1),
    COLUMN(2),
    BOX(3),
    TEXT(4),
    LAZY_COLUMN(5),
    LIST_ITEM(6),
    CHECK_BOX(7),
    BUTTON(8),
    SPACER(9),
    SWITCH(10),
    ANDROID_REMOTE_VIEWS(11),
    REMOTE_VIEWS_ROOT(12),
    IMAGE(13),
    LINEAR_PROGRESS_INDICATOR(14),
    CIRCULAR_PROGRESS_INDICATOR(15),
    LAZY_VERTICAL_GRID(16),
    VERTICAL_GRID_ITEM(17),
    RADIO_GROUP(18),
    RADIO_BUTTON(19),
    RADIO_ROW(20),
    RADIO_COLUMN(21),
    SIZE_BOX(22),
    UNRECOGNIZED(-1);

    public static final int ANDROID_REMOTE_VIEWS_VALUE = 11;
    public static final int BOX_VALUE = 3;
    public static final int BUTTON_VALUE = 8;
    public static final int CHECK_BOX_VALUE = 7;
    public static final int CIRCULAR_PROGRESS_INDICATOR_VALUE = 15;
    public static final int COLUMN_VALUE = 2;
    public static final int IMAGE_VALUE = 13;
    public static final int LAZY_COLUMN_VALUE = 5;
    public static final int LAZY_VERTICAL_GRID_VALUE = 16;
    public static final int LINEAR_PROGRESS_INDICATOR_VALUE = 14;
    public static final int LIST_ITEM_VALUE = 6;
    public static final int RADIO_BUTTON_VALUE = 19;
    public static final int RADIO_COLUMN_VALUE = 21;
    public static final int RADIO_GROUP_VALUE = 18;
    public static final int RADIO_ROW_VALUE = 20;
    public static final int REMOTE_VIEWS_ROOT_VALUE = 12;
    public static final int ROW_VALUE = 1;
    public static final int SIZE_BOX_VALUE = 22;
    public static final int SPACER_VALUE = 9;
    public static final int SWITCH_VALUE = 10;
    public static final int TEXT_VALUE = 4;
    public static final int UNKNOWN_TYPE_VALUE = 0;
    public static final int VERTICAL_GRID_ITEM_VALUE = 17;
    private static final Internal.EnumLiteMap internalValueMap = new Lock(11);
    private final int value;

    LayoutProto$LayoutType(int i) {
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
