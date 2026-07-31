package androidx.compose.ui.node;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NodeMeasuringIntrinsics$IntrinsicMinMax {
    public static final /* synthetic */ NodeMeasuringIntrinsics$IntrinsicMinMax[] $VALUES;
    public static final NodeMeasuringIntrinsics$IntrinsicMinMax Max;
    public static final NodeMeasuringIntrinsics$IntrinsicMinMax Min;

    static {
        NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax = new NodeMeasuringIntrinsics$IntrinsicMinMax("Min", 0);
        Min = nodeMeasuringIntrinsics$IntrinsicMinMax;
        NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax2 = new NodeMeasuringIntrinsics$IntrinsicMinMax("Max", 1);
        Max = nodeMeasuringIntrinsics$IntrinsicMinMax2;
        $VALUES = new NodeMeasuringIntrinsics$IntrinsicMinMax[]{nodeMeasuringIntrinsics$IntrinsicMinMax, nodeMeasuringIntrinsics$IntrinsicMinMax2};
    }

    public static NodeMeasuringIntrinsics$IntrinsicMinMax valueOf(String str) {
        return (NodeMeasuringIntrinsics$IntrinsicMinMax) Enum.valueOf(NodeMeasuringIntrinsics$IntrinsicMinMax.class, str);
    }

    public static NodeMeasuringIntrinsics$IntrinsicMinMax[] values() {
        return (NodeMeasuringIntrinsics$IntrinsicMinMax[]) $VALUES.clone();
    }
}
