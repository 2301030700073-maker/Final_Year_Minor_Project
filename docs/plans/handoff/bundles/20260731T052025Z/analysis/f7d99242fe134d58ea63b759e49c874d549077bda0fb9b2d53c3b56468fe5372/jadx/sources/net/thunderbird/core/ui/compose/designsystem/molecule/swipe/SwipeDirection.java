package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SwipeDirection {
    public static final /* synthetic */ SwipeDirection[] $VALUES;
    public static final SwipeDirection EndToStart;
    public static final SwipeDirection Settled;
    public static final SwipeDirection StartToEnd;

    static {
        SwipeDirection swipeDirection = new SwipeDirection("StartToEnd", 0);
        StartToEnd = swipeDirection;
        SwipeDirection swipeDirection2 = new SwipeDirection("EndToStart", 1);
        EndToStart = swipeDirection2;
        SwipeDirection swipeDirection3 = new SwipeDirection("Settled", 2);
        Settled = swipeDirection3;
        $VALUES = new SwipeDirection[]{swipeDirection, swipeDirection2, swipeDirection3};
    }

    public static SwipeDirection valueOf(String str) {
        return (SwipeDirection) Enum.valueOf(SwipeDirection.class, str);
    }

    public static SwipeDirection[] values() {
        return (SwipeDirection[]) $VALUES.clone();
    }
}
