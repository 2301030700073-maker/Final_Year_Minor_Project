package androidx.compose.ui.state;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ToggleableState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ToggleableState[] $VALUES;
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
        ToggleableState[] toggleableStateArr = {toggleableState, toggleableState2, toggleableState3};
        $VALUES = toggleableStateArr;
        $ENTRIES = new EnumEntriesList(toggleableStateArr);
    }

    public static ToggleableState valueOf(String str) {
        return (ToggleableState) Enum.valueOf(ToggleableState.class, str);
    }

    public static ToggleableState[] values() {
        return (ToggleableState[]) $VALUES.clone();
    }
}
