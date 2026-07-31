package org.wikipedia.feed.personalization.homepreference;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomePreferenceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HomePreferenceType[] $VALUES;
    public static final HomePreferenceType COMMUNITY;
    public static final HomePreferenceType PERSONALIZED;
    private final int titleRes;

    static {
        HomePreferenceType homePreferenceType = new HomePreferenceType("COMMUNITY", 0, R.string.explore_feed_preference_community_content_title);
        COMMUNITY = homePreferenceType;
        HomePreferenceType homePreferenceType2 = new HomePreferenceType("PERSONALIZED", 1, R.string.explore_feed_preference_personalized_content_title);
        PERSONALIZED = homePreferenceType2;
        HomePreferenceType[] homePreferenceTypeArr = {homePreferenceType, homePreferenceType2};
        $VALUES = homePreferenceTypeArr;
        $ENTRIES = new EnumEntriesList(homePreferenceTypeArr);
    }

    public HomePreferenceType(String str, int i, int i2) {
        this.titleRes = i2;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static HomePreferenceType valueOf(String str) {
        return (HomePreferenceType) Enum.valueOf(HomePreferenceType.class, str);
    }

    public static HomePreferenceType[] values() {
        return (HomePreferenceType[]) $VALUES.clone();
    }

    public final int getTitleRes() {
        return this.titleRes;
    }
}
