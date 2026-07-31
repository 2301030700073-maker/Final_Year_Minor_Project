package org.wikipedia.widgets.readingchallenge;

import androidx.compose.ui.graphics.Color;
import androidx.room.Room;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.temporal.ChronoUnit;
import java.util.List;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WidgetCombinations {
    public static final List streakOngoing;
    public static final List streakNeedsReading = Room.listOf((Object[]) new WidgetCombination[]{needsReadingCombination(R.string.reading_challenge_widget_reminder_dont_let_today_drift, R.drawable.wp25_babyglobe_dreaming), needsReadingCombination(R.string.reading_challenge_widget_reminder_before_day_snoozes, R.drawable.wp25_babyglobe_dreaming), needsReadingCombination(R.string.reading_challenge_widget_reminder_small_bit_counts, R.drawable.wp25_babyglobe_dreaming), needsReadingCombination(R.string.reading_challenge_widget_reminder_one_article_away, R.drawable.wp25_babyglobe_dreaming), needsReadingCombination(R.string.reading_challenge_widget_reminder_jump_in_anytime, R.drawable.wp25_babyglobe_reading), needsReadingCombination(R.string.reading_challenge_widget_reminder_quiet_reading_moment, R.drawable.wp25_babyglobe_reading), needsReadingCombination(R.string.reading_challenge_widget_reminder_keep_curiosity_going, R.drawable.wp25_babyglobe_reading), needsReadingCombination(R.string.reading_challenge_widget_reminder_one_article_away, R.drawable.wp25_babyglobe_reading)});
    public static final List enrolledNotStarted = Room.listOf((Object[]) new WidgetCombination[]{needsEnrolledNotStartedCombination(R.string.reading_challenge_widget_enrolled_not_started_title, R.string.reading_challenge_widget_enrolled_not_started_subtitle, R.drawable.wp25_babyglobe_reading), needsEnrolledNotStartedCombination(R.string.reading_challenge_widget_start_reading_challenge_title, R.string.reading_challenge_widget_start_reading_challenge_subtitle, R.drawable.wp25_babyglobe_reading), needsEnrolledNotStartedCombination(R.string.reading_challenge_widget_start_spin_up_new_streak_title, R.string.reading_challenge_widget_start_spin_up_new_streak_subtitle, R.drawable.wp25_babyglobe_synth_1), needsEnrolledNotStartedCombination(R.string.reading_challenge_widget_start_fresh_start_title, R.string.reading_challenge_widget_start_fresh_start_subtitle, R.drawable.wp25_babyglobe_synth_2)});

    static {
        WidgetCombination widgetCombination = new WidgetCombination(R.drawable.wp25_babyglobe_phone, WidgetColors.phoneReadingBackground, WidgetColors.phoneReadingContent, new Color(WidgetColors.phoneReadingProgressColor), null, null, 48);
        long j = WidgetColors.musicReadingBackground;
        long j2 = WidgetColors.musicContent;
        long j3 = WidgetColors.musicReadingProgressColor;
        streakOngoing = Room.listOf((Object[]) new WidgetCombination[]{widgetCombination, new WidgetCombination(R.drawable.wp25_babyglobe_dancing_1, j, j2, new Color(j3), null, null, 48), new WidgetCombination(R.drawable.wp25_babyglobe_dancing_2, j, j2, new Color(j3), null, null, 48), new WidgetCombination(R.drawable.wp25_babyglobe_outerspace, WidgetColors.spaceReadingBackground, WidgetColors.spaceContent, new Color(WidgetColors.spaceReadingProgressColor), null, null, 48)});
    }

    public static WidgetCombination forToday$default(List list, LocalDate localDate) {
        LocalDateTime now = LocalDateTime.now();
        now.getClass();
        list.getClass();
        long between = ChronoUnit.DAYS.between(localDate, now.toLocalDate());
        if (between < 0) {
            between = 0;
        }
        return (WidgetCombination) list.get((int) (between % list.size()));
    }

    public static WidgetCombination needsEnrolledNotStartedCombination(int i, int i2, int i3) {
        return new WidgetCombination(i3, WidgetColors.challengeNotOptInBackground, WidgetColors.primary, null, Integer.valueOf(i), Integer.valueOf(i2), 8);
    }

    public static WidgetCombination needsReadingCombination(int i, int i2) {
        return new WidgetCombination(i2, WidgetColors.streakOngoingNeedsReadingBackground, WidgetColors.streakOngoingNeedsReadingContent, null, Integer.valueOf(i), null, 40);
    }
}
