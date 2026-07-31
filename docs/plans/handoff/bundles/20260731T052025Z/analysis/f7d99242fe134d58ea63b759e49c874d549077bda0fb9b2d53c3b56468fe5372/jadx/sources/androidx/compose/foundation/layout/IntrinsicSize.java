package androidx.compose.foundation.layout;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IntrinsicSize {
    public static final /* synthetic */ IntrinsicSize[] $VALUES;
    public static final IntrinsicSize Max;
    public static final IntrinsicSize Min;

    static {
        IntrinsicSize intrinsicSize = new IntrinsicSize("Min", 0);
        Min = intrinsicSize;
        IntrinsicSize intrinsicSize2 = new IntrinsicSize("Max", 1);
        Max = intrinsicSize2;
        $VALUES = new IntrinsicSize[]{intrinsicSize, intrinsicSize2};
    }

    public static IntrinsicSize valueOf(String str) {
        return (IntrinsicSize) Enum.valueOf(IntrinsicSize.class, str);
    }

    public static IntrinsicSize[] values() {
        return (IntrinsicSize[]) $VALUES.clone();
    }
}
