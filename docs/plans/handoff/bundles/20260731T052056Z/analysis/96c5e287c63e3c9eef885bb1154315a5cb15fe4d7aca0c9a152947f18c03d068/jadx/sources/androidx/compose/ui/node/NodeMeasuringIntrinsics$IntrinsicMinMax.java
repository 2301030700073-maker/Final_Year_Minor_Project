package androidx.compose.ui.node;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NodeMeasuringIntrinsics$IntrinsicMinMax {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NodeMeasuringIntrinsics$IntrinsicMinMax[] $VALUES;
    public static final NodeMeasuringIntrinsics$IntrinsicMinMax Max;
    public static final NodeMeasuringIntrinsics$IntrinsicMinMax Min;

    static {
        NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax = new NodeMeasuringIntrinsics$IntrinsicMinMax("Min", 0);
        Min = nodeMeasuringIntrinsics$IntrinsicMinMax;
        NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax2 = new NodeMeasuringIntrinsics$IntrinsicMinMax("Max", 1);
        Max = nodeMeasuringIntrinsics$IntrinsicMinMax2;
        NodeMeasuringIntrinsics$IntrinsicMinMax[] nodeMeasuringIntrinsics$IntrinsicMinMaxArr = {nodeMeasuringIntrinsics$IntrinsicMinMax, nodeMeasuringIntrinsics$IntrinsicMinMax2};
        $VALUES = nodeMeasuringIntrinsics$IntrinsicMinMaxArr;
        $ENTRIES = new EnumEntriesList(nodeMeasuringIntrinsics$IntrinsicMinMaxArr);
    }

    public static NodeMeasuringIntrinsics$IntrinsicMinMax valueOf(String str) {
        return (NodeMeasuringIntrinsics$IntrinsicMinMax) Enum.valueOf(NodeMeasuringIntrinsics$IntrinsicMinMax.class, str);
    }

    public static NodeMeasuringIntrinsics$IntrinsicMinMax[] values() {
        return (NodeMeasuringIntrinsics$IntrinsicMinMax[]) $VALUES.clone();
    }
}
