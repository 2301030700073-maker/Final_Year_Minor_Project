package androidx.compose.ui.state;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ToggleableState {
    public static final /* synthetic */ ToggleableState[] $VALUES;
    public static final ToggleableState Indeterminate;
    public static final ToggleableState Off;
    public static final ToggleableState On;

    static {
        ToggleableState toggleableState = new ToggleableState("On", 0);
        On = toggleableState;
        ToggleableState toggleableState2 = new ToggleableState("Off", 1);
        Off = toggleableState2;
        ToggleableState toggleableState3 = new ToggleableState("Indeterminate", 2);
        Indeterminate = toggleableState3;
        $VALUES = new ToggleableState[]{toggleableState, toggleableState2, toggleableState3};
    }

    public static ToggleableState valueOf(String str) {
        return (ToggleableState) Enum.valueOf(ToggleableState.class, str);
    }

    public static ToggleableState[] values() {
        return (ToggleableState[]) $VALUES.clone();
    }
}
