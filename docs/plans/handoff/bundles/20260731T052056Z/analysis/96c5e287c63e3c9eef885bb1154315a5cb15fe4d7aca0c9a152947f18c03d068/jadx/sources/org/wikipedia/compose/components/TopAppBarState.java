package org.wikipedia.compose.components;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TopAppBarState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TopAppBarState[] $VALUES;
    public static final TopAppBarState NORMAL;
    public static final TopAppBarState SEARCH;

    static {
        TopAppBarState topAppBarState = new TopAppBarState("SEARCH", 0);
        SEARCH = topAppBarState;
        TopAppBarState topAppBarState2 = new TopAppBarState("NORMAL", 1);
        NORMAL = topAppBarState2;
        TopAppBarState[] topAppBarStateArr = {topAppBarState, topAppBarState2};
        $VALUES = topAppBarStateArr;
        $ENTRIES = new EnumEntriesList(topAppBarStateArr);
    }

    public static TopAppBarState valueOf(String str) {
        return (TopAppBarState) Enum.valueOf(TopAppBarState.class, str);
    }

    public static TopAppBarState[] values() {
        return (TopAppBarState[]) $VALUES.clone();
    }
}
