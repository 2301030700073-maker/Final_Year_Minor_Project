package androidx.compose.foundation.text.contextmenu.modifier;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ToolbarHandlerState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ToolbarHandlerState[] $VALUES;
    public static final ToolbarHandlerState Attached;
    public static final ToolbarHandlerState Detached;
    public static final ToolbarHandlerState Uninitialized;

    static {
        ToolbarHandlerState toolbarHandlerState = new ToolbarHandlerState("Uninitialized", 0);
        Uninitialized = toolbarHandlerState;
        ToolbarHandlerState toolbarHandlerState2 = new ToolbarHandlerState("Detached", 1);
        Detached = toolbarHandlerState2;
        ToolbarHandlerState toolbarHandlerState3 = new ToolbarHandlerState("Attached", 2);
        Attached = toolbarHandlerState3;
        ToolbarHandlerState[] toolbarHandlerStateArr = {toolbarHandlerState, toolbarHandlerState2, toolbarHandlerState3};
        $VALUES = toolbarHandlerStateArr;
        $ENTRIES = new EnumEntriesList(toolbarHandlerStateArr);
    }

    public static ToolbarHandlerState valueOf(String str) {
        return (ToolbarHandlerState) Enum.valueOf(ToolbarHandlerState.class, str);
    }

    public static ToolbarHandlerState[] values() {
        return (ToolbarHandlerState[]) $VALUES.clone();
    }
}
