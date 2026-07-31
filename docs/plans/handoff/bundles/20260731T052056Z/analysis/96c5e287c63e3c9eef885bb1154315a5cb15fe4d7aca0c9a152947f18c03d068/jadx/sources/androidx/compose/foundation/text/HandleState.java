package androidx.compose.foundation.text;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HandleState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HandleState[] $VALUES;
    public static final HandleState Cursor;
    public static final HandleState None;
    public static final HandleState Selection;

    static {
        HandleState handleState = new HandleState("None", 0);
        None = handleState;
        HandleState handleState2 = new HandleState("Selection", 1);
        Selection = handleState2;
        HandleState handleState3 = new HandleState("Cursor", 2);
        Cursor = handleState3;
        HandleState[] handleStateArr = {handleState, handleState2, handleState3};
        $VALUES = handleStateArr;
        $ENTRIES = new EnumEntriesList(handleStateArr);
    }

    public static HandleState valueOf(String str) {
        return (HandleState) Enum.valueOf(HandleState.class, str);
    }

    public static HandleState[] values() {
        return (HandleState[]) $VALUES.clone();
    }
}
