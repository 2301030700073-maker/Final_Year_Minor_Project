package org.wikipedia.settings.homefeed;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FeedConfigurationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FeedConfigurationType[] $VALUES;
    public static final FeedConfigurationType INTERESTS;
    public static final FeedConfigurationType LANGUAGES;
    public static final FeedConfigurationType LOCATION;
    public static final FeedConfigurationType READING_HISTORY;

    static {
        FeedConfigurationType feedConfigurationType = new FeedConfigurationType("INTERESTS", 0);
        INTERESTS = feedConfigurationType;
        FeedConfigurationType feedConfigurationType2 = new FeedConfigurationType("LOCATION", 1);
        LOCATION = feedConfigurationType2;
        FeedConfigurationType feedConfigurationType3 = new FeedConfigurationType("READING_HISTORY", 2);
        READING_HISTORY = feedConfigurationType3;
        FeedConfigurationType feedConfigurationType4 = new FeedConfigurationType("LANGUAGES", 3);
        LANGUAGES = feedConfigurationType4;
        FeedConfigurationType[] feedConfigurationTypeArr = {feedConfigurationType, feedConfigurationType2, feedConfigurationType3, feedConfigurationType4};
        $VALUES = feedConfigurationTypeArr;
        $ENTRIES = new EnumEntriesList(feedConfigurationTypeArr);
    }

    public static FeedConfigurationType valueOf(String str) {
        return (FeedConfigurationType) Enum.valueOf(FeedConfigurationType.class, str);
    }

    public static FeedConfigurationType[] values() {
        return (FeedConfigurationType[]) $VALUES.clone();
    }
}
