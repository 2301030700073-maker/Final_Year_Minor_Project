package org.wikipedia.recurring;

import java.util.Date;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DailyEventTask extends RecurringTask {
    public final WikipediaApp app;
    public final String name;

    public DailyEventTask(WikipediaApp wikipediaApp) {
        this.app = wikipediaApp;
        String string = wikipediaApp.getString(R.string.preference_key_daily_event_time_task_name);
        string.getClass();
        this.name = string;
    }

    @Override // org.wikipedia.recurring.RecurringTask
    public final String getName() {
        return this.name;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // org.wikipedia.recurring.RecurringTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object run(kotlin.coroutines.Continuation r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof org.wikipedia.recurring.DailyEventTask$run$1
            if (r0 == 0) goto L13
            r0 = r12
            org.wikipedia.recurring.DailyEventTask$run$1 r0 = (org.wikipedia.recurring.DailyEventTask$run$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            org.wikipedia.recurring.DailyEventTask$run$1 r0 = new org.wikipedia.recurring.DailyEventTask$run$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r12 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r12
            r0.<init>(r11, r12)
        L1a:
            java.lang.Object r12 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r12)
            goto L62
        L29:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            r11 = 0
            return r11
        L30:
            kotlin.ResultKt.throwOnFailure(r12)
            org.wikipedia.analytics.eventplatform.DailyStatsEvent$Companion r12 = org.wikipedia.analytics.eventplatform.DailyStatsEvent.Companion
            r12.getClass()
            org.wikipedia.analytics.eventplatform.EventPlatformClient r12 = org.wikipedia.analytics.eventplatform.EventPlatformClient.INSTANCE
            org.wikipedia.analytics.eventplatform.DailyStatsEvent r2 = new org.wikipedia.analytics.eventplatform.DailyStatsEvent
            long r4 = java.lang.System.currentTimeMillis()
            org.wikipedia.WikipediaApp r11 = r11.app
            long r6 = org.wikipedia.analytics.eventplatform.DailyStatsEvent.Companion.getInstallTime(r11)
            long r4 = r4 - r6
            r6 = 86400000(0x5265c00, double:4.2687272E-316)
            long r4 = r4 / r6
            org.wikipedia.language.AppLanguageState r11 = r11.getLanguageState()
            java.util.List r11 = r11.getAppLanguageCodes()
            r2.<init>(r4, r11)
            org.wikipedia.analytics.eventplatform.EventPlatformClient.submit(r2)
            r0.label = r3
            java.lang.Object r11 = r12.refreshStreamConfigs(r0)
            if (r11 != r1) goto L62
            return r1
        L62:
            r9 = 0
            r10 = 508(0x1fc, float:7.12E-43)
            java.lang.String r2 = "launch"
            java.lang.String r3 = "rrl_launch"
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            org.wikipedia.analytics.eventplatform.WikiGamesEvent.submit$default(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.recurring.DailyEventTask.run(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // org.wikipedia.recurring.RecurringTask
    public final boolean shouldRun(Date date) {
        return RecurringTask.millisSinceLastRun(date) > 86400000;
    }
}
