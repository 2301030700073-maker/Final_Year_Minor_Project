package androidx.compose.ui.layout;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MeasuringIntrinsics$IntrinsicMinMax {
    public static final /* synthetic */ MeasuringIntrinsics$IntrinsicMinMax[] $VALUES;
    public static final MeasuringIntrinsics$IntrinsicMinMax Max;
    public static final MeasuringIntrinsics$IntrinsicMinMax Min;

    static {
        MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax = new MeasuringIntrinsics$IntrinsicMinMax("Min", 0);
        Min = measuringIntrinsics$IntrinsicMinMax;
        MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax2 = new MeasuringIntrinsics$IntrinsicMinMax("Max", 1);
        Max = measuringIntrinsics$IntrinsicMinMax2;
        $VALUES = new MeasuringIntrinsics$IntrinsicMinMax[]{measuringIntrinsics$IntrinsicMinMax, measuringIntrinsics$IntrinsicMinMax2};
    }

    public static MeasuringIntrinsics$IntrinsicMinMax valueOf(String str) {
        return (MeasuringIntrinsics$IntrinsicMinMax) Enum.valueOf(MeasuringIntrinsics$IntrinsicMinMax.class, str);
    }

    public static MeasuringIntrinsics$IntrinsicMinMax[] values() {
        return (MeasuringIntrinsics$IntrinsicMinMax[]) $VALUES.clone();
    }
}
