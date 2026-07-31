package androidx.compose.ui.layout;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MeasuringIntrinsics$IntrinsicMinMax {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MeasuringIntrinsics$IntrinsicMinMax[] $VALUES;
    public static final MeasuringIntrinsics$IntrinsicMinMax Max;
    public static final MeasuringIntrinsics$IntrinsicMinMax Min;

    static {
        MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax = new MeasuringIntrinsics$IntrinsicMinMax("Min", 0);
        Min = measuringIntrinsics$IntrinsicMinMax;
        MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax2 = new MeasuringIntrinsics$IntrinsicMinMax("Max", 1);
        Max = measuringIntrinsics$IntrinsicMinMax2;
        MeasuringIntrinsics$IntrinsicMinMax[] measuringIntrinsics$IntrinsicMinMaxArr = {measuringIntrinsics$IntrinsicMinMax, measuringIntrinsics$IntrinsicMinMax2};
        $VALUES = measuringIntrinsics$IntrinsicMinMaxArr;
        $ENTRIES = new EnumEntriesList(measuringIntrinsics$IntrinsicMinMaxArr);
    }

    public static MeasuringIntrinsics$IntrinsicMinMax valueOf(String str) {
        return (MeasuringIntrinsics$IntrinsicMinMax) Enum.valueOf(MeasuringIntrinsics$IntrinsicMinMax.class, str);
    }

    public static MeasuringIntrinsics$IntrinsicMinMax[] values() {
        return (MeasuringIntrinsics$IntrinsicMinMax[]) $VALUES.clone();
    }
}
