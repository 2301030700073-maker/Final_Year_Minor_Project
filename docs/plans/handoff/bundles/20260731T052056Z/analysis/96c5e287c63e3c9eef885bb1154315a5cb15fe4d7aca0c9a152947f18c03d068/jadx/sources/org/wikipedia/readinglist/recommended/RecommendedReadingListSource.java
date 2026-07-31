package org.wikipedia.readinglist.recommended;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListSource {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RecommendedReadingListSource[] $VALUES;
    public static final RecommendedReadingListSource HISTORY;
    public static final RecommendedReadingListSource INTERESTS;
    public static final RecommendedReadingListSource READING_LIST;
    private final String eventString;

    static {
        RecommendedReadingListSource recommendedReadingListSource = new RecommendedReadingListSource(0, "INTERESTS", "interests");
        INTERESTS = recommendedReadingListSource;
        RecommendedReadingListSource recommendedReadingListSource2 = new RecommendedReadingListSource(1, "READING_LIST", "saved");
        READING_LIST = recommendedReadingListSource2;
        RecommendedReadingListSource recommendedReadingListSource3 = new RecommendedReadingListSource(2, "HISTORY", "history");
        HISTORY = recommendedReadingListSource3;
        RecommendedReadingListSource[] recommendedReadingListSourceArr = {recommendedReadingListSource, recommendedReadingListSource2, recommendedReadingListSource3};
        $VALUES = recommendedReadingListSourceArr;
        $ENTRIES = new EnumEntriesList(recommendedReadingListSourceArr);
    }

    public RecommendedReadingListSource(int i, String str, String str2) {
        this.eventString = str2;
    }

    public static RecommendedReadingListSource valueOf(String str) {
        return (RecommendedReadingListSource) Enum.valueOf(RecommendedReadingListSource.class, str);
    }

    public static RecommendedReadingListSource[] values() {
        return (RecommendedReadingListSource[]) $VALUES.clone();
    }

    public final String getEventString() {
        return this.eventString;
    }
}
