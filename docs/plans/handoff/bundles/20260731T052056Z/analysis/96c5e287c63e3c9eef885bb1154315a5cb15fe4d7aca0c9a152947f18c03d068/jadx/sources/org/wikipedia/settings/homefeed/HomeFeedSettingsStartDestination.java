package org.wikipedia.settings.homefeed;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeFeedSettingsStartDestination {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HomeFeedSettingsStartDestination[] $VALUES;
    public static final HomeFeedSettingsStartDestination COMMUNITY_MODULES;
    public static final HomeFeedSettingsStartDestination DEFAULT_FEED_VIEW;
    public static final HomeFeedSettingsStartDestination FOR_YOU_MODULES;
    public static final HomeFeedSettingsStartDestination ROOT;

    static {
        HomeFeedSettingsStartDestination homeFeedSettingsStartDestination = new HomeFeedSettingsStartDestination("ROOT", 0);
        ROOT = homeFeedSettingsStartDestination;
        HomeFeedSettingsStartDestination homeFeedSettingsStartDestination2 = new HomeFeedSettingsStartDestination("COMMUNITY_MODULES", 1);
        COMMUNITY_MODULES = homeFeedSettingsStartDestination2;
        HomeFeedSettingsStartDestination homeFeedSettingsStartDestination3 = new HomeFeedSettingsStartDestination("FOR_YOU_MODULES", 2);
        FOR_YOU_MODULES = homeFeedSettingsStartDestination3;
        HomeFeedSettingsStartDestination homeFeedSettingsStartDestination4 = new HomeFeedSettingsStartDestination("DEFAULT_FEED_VIEW", 3);
        DEFAULT_FEED_VIEW = homeFeedSettingsStartDestination4;
        HomeFeedSettingsStartDestination[] homeFeedSettingsStartDestinationArr = {homeFeedSettingsStartDestination, homeFeedSettingsStartDestination2, homeFeedSettingsStartDestination3, homeFeedSettingsStartDestination4};
        $VALUES = homeFeedSettingsStartDestinationArr;
        $ENTRIES = new EnumEntriesList(homeFeedSettingsStartDestinationArr);
    }

    public static HomeFeedSettingsStartDestination valueOf(String str) {
        return (HomeFeedSettingsStartDestination) Enum.valueOf(HomeFeedSettingsStartDestination.class, str);
    }

    public static HomeFeedSettingsStartDestination[] values() {
        return (HomeFeedSettingsStartDestination[]) $VALUES.clone();
    }
}
