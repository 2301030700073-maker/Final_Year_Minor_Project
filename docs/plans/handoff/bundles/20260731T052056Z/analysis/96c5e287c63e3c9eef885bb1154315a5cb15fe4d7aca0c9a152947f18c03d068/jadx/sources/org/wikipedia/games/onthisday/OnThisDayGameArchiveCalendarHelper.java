package org.wikipedia.games.onthisday;

import android.widget.Toast;
import androidx.fragment.app.Fragment;
import j$.time.LocalDate;
import j$.time.ZoneOffset;
import j$.util.DesugarTimeZone;
import java.util.Calendar;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import leakcanary.internal.FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.games.onthisday.DateDecorator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayGameArchiveCalendarHelper {
    public final Fragment fragment;
    public final FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1 fragmentLifecycleCallbacks;
    public String languageCode;
    public final Function1 onDateSelected;
    public Map scoreData;

    public OnThisDayGameArchiveCalendarHelper(Fragment fragment, String str, Function1 function1) {
        str.getClass();
        this.fragment = fragment;
        this.languageCode = str;
        this.onDateSelected = function1;
        this.scoreData = EmptyMap.INSTANCE;
        this.fragmentLifecycleCallbacks = new FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1(1, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d A[LOOP:0: B:14:0x0067->B:16:0x006d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable getDataForArchiveCalendar(int r5, java.lang.String r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1
            if (r0 == 0) goto L13
            r0 = r7
            org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1 r0 = (org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1 r0 = new org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper$getDataForArchiveCalendar$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            kotlin.ResultKt.throwOnFailure(r4)
            goto L4d
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r4)
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r4 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r4 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.games.db.DailyGameHistoryDao_Impl r4 = r4.dailyGameHistoryDao()
            r0.label = r2
            androidx.room.RoomDatabase r4 = r4.__db
            androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3 r1 = new androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3
            r3 = 5
            r1.<init>(r5, r6, r3)
            r5 = 0
            java.lang.Object r4 = kotlin.ExceptionsKt.performSuspending(r4, r2, r5, r1, r0)
            if (r4 != r7) goto L4d
            return r7
        L4d:
            java.util.List r4 = (java.util.List) r4
            r5 = 10
            int r5 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r4, r5)
            int r5 = kotlin.collections.MapsKt__MapsKt.mapCapacity(r5)
            r6 = 16
            if (r5 >= r6) goto L5e
            r5 = r6
        L5e:
            java.util.LinkedHashMap r6 = new java.util.LinkedHashMap
            r6.<init>(r5)
            java.util.Iterator r4 = r4.iterator()
        L67:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L92
            java.lang.Object r5 = r4.next()
            org.wikipedia.games.db.DailyGameHistory r5 = (org.wikipedia.games.db.DailyGameHistory) r5
            org.wikipedia.games.onthisday.DateDecorator$CREATOR r7 = org.wikipedia.games.onthisday.DateDecorator.CREATOR
            int r0 = r5.year
            int r1 = r5.month
            int r2 = r5.day
            r7.getClass()
            long r0 = org.wikipedia.games.onthisday.DateDecorator.CREATOR.getDateKey(r0, r1, r2)
            java.lang.Long r7 = new java.lang.Long
            r7.<init>(r0)
            int r5 = r5.score
            java.lang.Integer r0 = new java.lang.Integer
            r0.<init>(r5)
            r6.put(r7, r0)
            goto L67
        L92:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper.getDataForArchiveCalendar(int, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    public final void handleDateSelection(long j) {
        Calendar calendar = Calendar.getInstance(DesugarTimeZone.getTimeZone(ZoneOffset.UTC));
        calendar.setTimeInMillis(j);
        int i = calendar.get(1);
        int i2 = calendar.get(2) + 1;
        int i3 = calendar.get(5);
        DateDecorator.CREATOR.getClass();
        if (this.scoreData.get(Long.valueOf(DateDecorator.CREATOR.getDateKey(i, i2, i3))) != null) {
            return;
        }
        WikiGamesEvent.submit$default(1016, null, null, "date_select", "game_play", "archive_calendar", null, null);
        LocalDate of = LocalDate.of(i, i2, i3);
        of.getClass();
        this.onDateSelected.invoke(of);
    }

    public final void maybeShowToastForDate(long j, Map map) {
        Calendar calendar = Calendar.getInstance(DesugarTimeZone.getTimeZone(ZoneOffset.UTC));
        calendar.setTimeInMillis(j);
        int i = calendar.get(1);
        int i2 = calendar.get(2);
        int i3 = calendar.get(5);
        DateDecorator.CREATOR.getClass();
        long dateKey = DateDecorator.CREATOR.getDateKey(i, i2 + 1, i3);
        if (map.get(Long.valueOf(dateKey)) != null) {
            Fragment fragment = this.fragment;
            Toast.makeText(fragment.requireContext(), fragment.getString(R.string.on_this_day_game_score_toast_message, map.get(Long.valueOf(dateKey)), 5), 0).show();
        }
    }
}
