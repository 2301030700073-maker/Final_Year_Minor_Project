package org.wikipedia.feed;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeTab {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HomeTab[] $VALUES;
    public static final HomeTab COMMUNITY;
    public static final HomeTab FOR_YOU;

    static {
        HomeTab homeTab = new HomeTab("COMMUNITY", 0);
        COMMUNITY = homeTab;
        HomeTab homeTab2 = new HomeTab("FOR_YOU", 1);
        FOR_YOU = homeTab2;
        HomeTab[] homeTabArr = {homeTab, homeTab2};
        $VALUES = homeTabArr;
        $ENTRIES = new EnumEntriesList(homeTabArr);
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static HomeTab valueOf(String str) {
        return (HomeTab) Enum.valueOf(HomeTab.class, str);
    }

    public static HomeTab[] values() {
        return (HomeTab[]) $VALUES.clone();
    }
}
