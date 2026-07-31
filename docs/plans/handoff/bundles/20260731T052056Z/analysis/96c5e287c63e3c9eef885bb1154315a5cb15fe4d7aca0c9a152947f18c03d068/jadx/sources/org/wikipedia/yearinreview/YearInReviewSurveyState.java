package org.wikipedia.yearinreview;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class YearInReviewSurveyState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ YearInReviewSurveyState[] $VALUES;
    public static final YearInReviewSurveyState NOT_TRIGGERED;
    public static final YearInReviewSurveyState SHOULD_SHOW;
    public static final YearInReviewSurveyState SHOWN;

    static {
        YearInReviewSurveyState yearInReviewSurveyState = new YearInReviewSurveyState("NOT_TRIGGERED", 0);
        NOT_TRIGGERED = yearInReviewSurveyState;
        YearInReviewSurveyState yearInReviewSurveyState2 = new YearInReviewSurveyState("SHOULD_SHOW", 1);
        SHOULD_SHOW = yearInReviewSurveyState2;
        YearInReviewSurveyState yearInReviewSurveyState3 = new YearInReviewSurveyState("SHOWN", 2);
        SHOWN = yearInReviewSurveyState3;
        YearInReviewSurveyState[] yearInReviewSurveyStateArr = {yearInReviewSurveyState, yearInReviewSurveyState2, yearInReviewSurveyState3};
        $VALUES = yearInReviewSurveyStateArr;
        $ENTRIES = new EnumEntriesList(yearInReviewSurveyStateArr);
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static YearInReviewSurveyState valueOf(String str) {
        return (YearInReviewSurveyState) Enum.valueOf(YearInReviewSurveyState.class, str);
    }

    public static YearInReviewSurveyState[] values() {
        return (YearInReviewSurveyState[]) $VALUES.clone();
    }
}
