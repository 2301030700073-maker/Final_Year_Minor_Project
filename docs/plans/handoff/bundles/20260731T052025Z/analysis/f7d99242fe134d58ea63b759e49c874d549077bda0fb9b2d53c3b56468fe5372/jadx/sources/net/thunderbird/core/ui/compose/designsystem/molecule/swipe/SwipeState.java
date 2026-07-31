package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SwipeState {
    public static final /* synthetic */ SwipeState[] $VALUES;
    public static final SwipeState Dismissed;
    public static final SwipeState Resetting;
    public static final SwipeState Revealed;
    public static final SwipeState Settled;
    public static final SwipeState Swiping;

    static {
        SwipeState swipeState = new SwipeState("Dismissed", 0);
        Dismissed = swipeState;
        SwipeState swipeState2 = new SwipeState("Swiping", 1);
        Swiping = swipeState2;
        SwipeState swipeState3 = new SwipeState("Settled", 2);
        Settled = swipeState3;
        SwipeState swipeState4 = new SwipeState("Revealed", 3);
        Revealed = swipeState4;
        SwipeState swipeState5 = new SwipeState("Resetting", 4);
        Resetting = swipeState5;
        $VALUES = new SwipeState[]{swipeState, swipeState2, swipeState3, swipeState4, swipeState5};
    }

    public static SwipeState valueOf(String str) {
        return (SwipeState) Enum.valueOf(SwipeState.class, str);
    }

    public static SwipeState[] values() {
        return (SwipeState[]) $VALUES.clone();
    }
}
