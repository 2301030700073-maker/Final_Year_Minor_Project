package androidx.glance.appwidget;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutSize {
    private static final /* synthetic */ LayoutSize[] $VALUES;
    public static final LayoutSize Expand;
    public static final LayoutSize Fixed;
    public static final LayoutSize MatchParent;
    public static final LayoutSize Wrap;

    static {
        LayoutSize layoutSize = new LayoutSize("Wrap", 0);
        Wrap = layoutSize;
        LayoutSize layoutSize2 = new LayoutSize("Fixed", 1);
        Fixed = layoutSize2;
        LayoutSize layoutSize3 = new LayoutSize("Expand", 2);
        Expand = layoutSize3;
        LayoutSize layoutSize4 = new LayoutSize("MatchParent", 3);
        MatchParent = layoutSize4;
        $VALUES = new LayoutSize[]{layoutSize, layoutSize2, layoutSize3, layoutSize4};
    }

    public static LayoutSize valueOf(String str) {
        return (LayoutSize) Enum.valueOf(LayoutSize.class, str);
    }

    public static LayoutSize[] values() {
        return (LayoutSize[]) $VALUES.clone();
    }
}
