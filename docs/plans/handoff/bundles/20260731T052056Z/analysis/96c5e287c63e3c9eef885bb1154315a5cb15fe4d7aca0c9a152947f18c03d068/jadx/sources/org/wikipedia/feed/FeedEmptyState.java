package org.wikipedia.feed;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FeedEmptyState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FeedEmptyState[] $VALUES;
    public static final FeedEmptyState ALL_MODULES_HIDDEN;
    public static final FeedEmptyState NO_DATA;

    static {
        FeedEmptyState feedEmptyState = new FeedEmptyState("ALL_MODULES_HIDDEN", 0);
        ALL_MODULES_HIDDEN = feedEmptyState;
        FeedEmptyState feedEmptyState2 = new FeedEmptyState("NO_DATA", 1);
        NO_DATA = feedEmptyState2;
        FeedEmptyState[] feedEmptyStateArr = {feedEmptyState, feedEmptyState2};
        $VALUES = feedEmptyStateArr;
        $ENTRIES = new EnumEntriesList(feedEmptyStateArr);
    }

    public static FeedEmptyState valueOf(String str) {
        return (FeedEmptyState) Enum.valueOf(FeedEmptyState.class, str);
    }

    public static FeedEmptyState[] values() {
        return (FeedEmptyState[]) $VALUES.clone();
    }
}
