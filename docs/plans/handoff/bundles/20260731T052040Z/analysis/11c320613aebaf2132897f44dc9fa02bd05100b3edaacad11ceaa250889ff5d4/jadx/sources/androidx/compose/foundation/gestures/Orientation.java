package androidx.compose.foundation.gestures;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Orientation {
    public static final /* synthetic */ Orientation[] $VALUES;
    public static final Orientation Horizontal;
    public static final Orientation Vertical;

    static {
        Orientation orientation = new Orientation("Vertical", 0);
        Vertical = orientation;
        Orientation orientation2 = new Orientation("Horizontal", 1);
        Horizontal = orientation2;
        $VALUES = new Orientation[]{orientation, orientation2};
    }

    public static Orientation valueOf(String str) {
        return (Orientation) Enum.valueOf(Orientation.class, str);
    }

    public static Orientation[] values() {
        return (Orientation[]) $VALUES.clone();
    }
}
