package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import androidx.preference.PreferenceManager;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.ChronoUnit;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.DailyStatsEvent;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.readinglist.LongPressMenu$show$1$1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingChallengeWidgetRepository {
    public static final LocalDate REMOVE_DATE = LocalDate.of(2026, 7, 28);
    public final Context context;

    public ReadingChallengeWidgetRepository(Context context) {
        context.getClass();
        this.context = context;
    }

    public static ReadingChallengeState getCurrentState$default(ReadingChallengeWidgetRepository readingChallengeWidgetRepository) {
        LocalDate now = LocalDate.now();
        now.getClass();
        if (!now.isAfter(StreakProgressBarKt.getEND_DATE())) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getReadingChallengeStreak() < 25) {
                String readingChallengeLastReadDate = Prefs.getReadingChallengeLastReadDate();
                if (readingChallengeLastReadDate.length() > 0) {
                    if (ChronoUnit.DAYS.between(LocalDate.parse(readingChallengeLastReadDate), now) > 1) {
                        PrefsIoUtil.setInt(R.string.preference_key_reading_challenge_streak, 0);
                    }
                }
            }
        }
        Prefs prefs2 = Prefs.INSTANCE;
        boolean readingChallengeEnrolled = Prefs.getReadingChallengeEnrolled();
        int readingChallengeStreak = Prefs.getReadingChallengeStreak();
        String readingChallengeLastReadDate2 = Prefs.getReadingChallengeLastReadDate();
        boolean areEqual = readingChallengeLastReadDate2.length() > 0 ? Intrinsics.areEqual(LocalDate.parse(readingChallengeLastReadDate2), now) : false;
        boolean hasActiveStreak = hasActiveStreak(now);
        DailyStatsEvent.Companion companion = DailyStatsEvent.Companion;
        Context context = readingChallengeWidgetRepository.context;
        companion.getClass();
        boolean isAfter = Instant.ofEpochMilli(DailyStatsEvent.Companion.getInstallTime(context)).atZone(ZoneId.systemDefault()).toLocalDate().isAfter(StreakProgressBarKt.getEND_DATE());
        ReadingChallengeState.Loading loading = ReadingChallengeState.Loading.INSTANCE$2;
        ReadingChallengeState.Loading loading2 = ReadingChallengeState.Loading.INSTANCE$6;
        if (now.isAfter(REMOVE_DATE) || isAfter) {
            return loading2;
        }
        if (now.isBefore(StreakProgressBarKt.getSTART_DATE())) {
            return ReadingChallengeState.Loading.INSTANCE$5;
        }
        if (readingChallengeEnrolled) {
            if (readingChallengeStreak >= 25) {
                return ReadingChallengeState.Loading.INSTANCE$1;
            }
            if (!now.isAfter(StreakProgressBarKt.getEND_DATE()) || hasActiveStreak) {
                return readingChallengeStreak == 0 ? ReadingChallengeState.EnrolledNotStarted.INSTANCE : areEqual ? new ReadingChallengeState.StreakOngoingReadToday(readingChallengeStreak) : new ReadingChallengeState.StreakOngoingNeedsReading(readingChallengeStreak);
            }
            if (readingChallengeStreak > 0) {
                return new ReadingChallengeState.ChallengeConcludedIncomplete(readingChallengeStreak);
            }
        } else if (!now.isAfter(StreakProgressBarKt.getEND_DATE())) {
            return ReadingChallengeState.Loading.INSTANCE$4;
        }
        return loading;
    }

    public static boolean hasActiveStreak(LocalDate localDate) {
        Prefs prefs = Prefs.INSTANCE;
        String readingChallengeLastReadDate = Prefs.getReadingChallengeLastReadDate();
        return readingChallengeLastReadDate.length() > 0 && ChronoUnit.DAYS.between(LocalDate.parse(readingChallengeLastReadDate), localDate) <= 1;
    }

    public final Flow observeState() {
        Context context = this.context;
        return StateFlowKt.distinctUntilChanged(StateFlowKt.callbackFlow(new LongPressMenu$show$1$1(context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0), ArraysKt___ArraysKt.toSet(new String[]{context.getString(R.string.preference_key_reading_challenge_streak), context.getString(R.string.preference_key_reading_challenge_enrolled), context.getString(R.string.preference_key_reading_challenge_last_read_date)}), this, (Continuation) null, 12)));
    }

    public final Object updateWidgetsAndSendAnalytics(ContinuationImpl continuationImpl) {
        ReadingChallengeState currentState$default = getCurrentState$default(this);
        if (currentState$default.equals(ReadingChallengeState.Loading.INSTANCE$1)) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("challenge_completed", true);
        } else if (currentState$default instanceof ReadingChallengeState.ChallengeConcludedIncomplete) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("challenge_incomplete", true);
        } else if (currentState$default.equals(ReadingChallengeState.Loading.INSTANCE$2)) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("challenge_no_streak", true);
        } else if (currentState$default instanceof ReadingChallengeState.StreakOngoingNeedsReading) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("streak_ongoing", true);
        } else if (currentState$default instanceof ReadingChallengeState.StreakOngoingReadToday) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("streak_ongoing_read", true);
        } else if (currentState$default.equals(ReadingChallengeState.Loading.INSTANCE$4)) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("not_enrolled", false);
        } else if (currentState$default.equals(ReadingChallengeState.Loading.INSTANCE$5)) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("not_yet_live", false);
        } else if (currentState$default.equals(ReadingChallengeState.EnrolledNotStarted.INSTANCE)) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("enrolled_not_started", false);
        } else if (currentState$default.equals(ReadingChallengeState.Loading.INSTANCE$3)) {
            ReadingChallengeAnalyticsHelper.logHeartbeat("challenge_removed", true);
        } else if (currentState$default.equals(ReadingChallengeState.Loading.INSTANCE$6)) {
            TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
            testKitchenClient.getClass();
            SVGAndroidRenderer.submitInteraction$default(new SVGAndroidRenderer("apps-widget", testKitchenClient), "heartbeat", "widget_random_article", null, null, null, null, 252);
        }
        Object updateAll = Room.updateAll(new ReadingChallengeWidget(), this.context, continuationImpl);
        return updateAll == CoroutineSingletons.COROUTINE_SUSPENDED ? updateAll : Unit.INSTANCE;
    }
}
