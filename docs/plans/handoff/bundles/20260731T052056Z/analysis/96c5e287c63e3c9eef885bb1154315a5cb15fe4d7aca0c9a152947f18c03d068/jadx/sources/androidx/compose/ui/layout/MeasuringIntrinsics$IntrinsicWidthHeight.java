package androidx.compose.ui.layout;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MeasuringIntrinsics$IntrinsicWidthHeight {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MeasuringIntrinsics$IntrinsicWidthHeight[] $VALUES;
    public static final MeasuringIntrinsics$IntrinsicWidthHeight Height;
    public static final MeasuringIntrinsics$IntrinsicWidthHeight Width;

    static {
        MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight = new MeasuringIntrinsics$IntrinsicWidthHeight("Width", 0);
        Width = measuringIntrinsics$IntrinsicWidthHeight;
        MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight2 = new MeasuringIntrinsics$IntrinsicWidthHeight("Height", 1);
        Height = measuringIntrinsics$IntrinsicWidthHeight2;
        MeasuringIntrinsics$IntrinsicWidthHeight[] measuringIntrinsics$IntrinsicWidthHeightArr = {measuringIntrinsics$IntrinsicWidthHeight, measuringIntrinsics$IntrinsicWidthHeight2};
        $VALUES = measuringIntrinsics$IntrinsicWidthHeightArr;
        $ENTRIES = new EnumEntriesList(measuringIntrinsics$IntrinsicWidthHeightArr);
    }

    public static MeasuringIntrinsics$IntrinsicWidthHeight valueOf(String str) {
        return (MeasuringIntrinsics$IntrinsicWidthHeight) Enum.valueOf(MeasuringIntrinsics$IntrinsicWidthHeight.class, str);
    }

    public static MeasuringIntrinsics$IntrinsicWidthHeight[] values() {
        return (MeasuringIntrinsics$IntrinsicWidthHeight[]) $VALUES.clone();
    }
}
