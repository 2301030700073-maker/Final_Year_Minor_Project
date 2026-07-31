package org.wikipedia.readinglist.recommended;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListUpdateFrequency {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RecommendedReadingListUpdateFrequency[] $VALUES;
    public static final RecommendedReadingListUpdateFrequency DAILY;
    public static final RecommendedReadingListUpdateFrequency MONTHLY;
    public static final RecommendedReadingListUpdateFrequency WEEKLY;
    private final int dialogStringRes;
    private final int displayStringRes;
    private final int snackbarStringRes;

    static {
        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = new RecommendedReadingListUpdateFrequency(0, R.string.recommended_reading_list_settings_updates_frequency_daily, R.string.recommended_reading_list_settings_updates_frequency_dialog_daily, R.string.recommended_reading_list_page_snackbar_day, "DAILY");
        DAILY = recommendedReadingListUpdateFrequency;
        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency2 = new RecommendedReadingListUpdateFrequency(1, R.string.recommended_reading_list_settings_updates_frequency_weekly, R.string.recommended_reading_list_settings_updates_frequency_dialog_weekly, R.string.recommended_reading_list_page_snackbar_week, "WEEKLY");
        WEEKLY = recommendedReadingListUpdateFrequency2;
        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency3 = new RecommendedReadingListUpdateFrequency(2, R.string.recommended_reading_list_settings_updates_frequency_monthly, R.string.recommended_reading_list_settings_updates_frequency_dialog_monthly, R.string.recommended_reading_list_page_snackbar_month, "MONTHLY");
        MONTHLY = recommendedReadingListUpdateFrequency3;
        RecommendedReadingListUpdateFrequency[] recommendedReadingListUpdateFrequencyArr = {recommendedReadingListUpdateFrequency, recommendedReadingListUpdateFrequency2, recommendedReadingListUpdateFrequency3};
        $VALUES = recommendedReadingListUpdateFrequencyArr;
        $ENTRIES = new EnumEntriesList(recommendedReadingListUpdateFrequencyArr);
    }

    public RecommendedReadingListUpdateFrequency(int i, int i2, int i3, int i4, String str) {
        this.displayStringRes = i2;
        this.dialogStringRes = i3;
        this.snackbarStringRes = i4;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static RecommendedReadingListUpdateFrequency valueOf(String str) {
        return (RecommendedReadingListUpdateFrequency) Enum.valueOf(RecommendedReadingListUpdateFrequency.class, str);
    }

    public static RecommendedReadingListUpdateFrequency[] values() {
        return (RecommendedReadingListUpdateFrequency[]) $VALUES.clone();
    }

    public final int getDialogStringRes() {
        return this.dialogStringRes;
    }

    public final int getDisplayStringRes() {
        return this.displayStringRes;
    }

    public final int getSnackbarStringRes() {
        return this.snackbarStringRes;
    }
}
