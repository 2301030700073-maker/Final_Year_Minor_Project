package androidx.compose.foundation.layout;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayoutOrientation {
    public static final /* synthetic */ LayoutOrientation[] $VALUES;
    public static final LayoutOrientation Horizontal;

    static {
        LayoutOrientation layoutOrientation = new LayoutOrientation("Horizontal", 0);
        Horizontal = layoutOrientation;
        $VALUES = new LayoutOrientation[]{layoutOrientation, new LayoutOrientation("Vertical", 1)};
    }

    public static LayoutOrientation valueOf(String str) {
        return (LayoutOrientation) Enum.valueOf(LayoutOrientation.class, str);
    }

    public static LayoutOrientation[] values() {
        return (LayoutOrientation[]) $VALUES.clone();
    }
}
