package org.wikipedia.activitytab.timeline;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivitySource {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ActivitySource[] $VALUES;
    public static final ActivitySource BOOKMARKED;
    public static final ActivitySource EDIT;
    public static final ActivitySource LINK;
    public static final ActivitySource SEARCH;

    static {
        ActivitySource activitySource = new ActivitySource("EDIT", 0);
        EDIT = activitySource;
        ActivitySource activitySource2 = new ActivitySource("SEARCH", 1);
        SEARCH = activitySource2;
        ActivitySource activitySource3 = new ActivitySource("LINK", 2);
        LINK = activitySource3;
        ActivitySource activitySource4 = new ActivitySource("BOOKMARKED", 3);
        BOOKMARKED = activitySource4;
        ActivitySource[] activitySourceArr = {activitySource, activitySource2, activitySource3, activitySource4};
        $VALUES = activitySourceArr;
        $ENTRIES = new EnumEntriesList(activitySourceArr);
    }

    public static ActivitySource valueOf(String str) {
        return (ActivitySource) Enum.valueOf(ActivitySource.class, str);
    }

    public static ActivitySource[] values() {
        return (ActivitySource[]) $VALUES.clone();
    }
}
