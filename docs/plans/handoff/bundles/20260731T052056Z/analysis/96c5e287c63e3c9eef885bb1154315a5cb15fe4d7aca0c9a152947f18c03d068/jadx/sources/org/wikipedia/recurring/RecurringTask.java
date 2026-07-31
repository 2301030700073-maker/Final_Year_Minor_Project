package org.wikipedia.recurring;

import java.util.Date;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RecurringTask {
    public static long millisSinceLastRun(Date date) {
        return Math.min(Long.MAX_VALUE, Math.max(0L, System.currentTimeMillis() - date.getTime()));
    }

    public abstract String getName();

    public abstract Object run(Continuation continuation);

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runIfNecessary(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof org.wikipedia.recurring.RecurringTask$runIfNecessary$1
            if (r0 == 0) goto L13
            r0 = r10
            org.wikipedia.recurring.RecurringTask$runIfNecessary$1 r0 = (org.wikipedia.recurring.RecurringTask$runIfNecessary$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.recurring.RecurringTask$runIfNecessary$1 r0 = new org.wikipedia.recurring.RecurringTask$runIfNecessary$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2131887651(0x7f120623, float:1.9409915E38)
            r5 = 1
            if (r2 == 0) goto L32
            if (r2 != r5) goto L2b
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9c
        L2b:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            r9 = 0
            return r9
        L32:
            kotlin.ResultKt.throwOnFailure(r10)
            java.util.Date r10 = new java.util.Date
            org.wikipedia.settings.Prefs r2 = org.wikipedia.settings.Prefs.INSTANCE
            java.lang.String r2 = r9.getName()
            r2.getClass()
            java.lang.Object[] r6 = new java.lang.Object[r5]
            r6[r3] = r2
            org.wikipedia.WikipediaApp r2 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r2 = org.jsoup.Jsoup.getInstance()
            android.content.res.Resources r2 = r2.getResources()
            java.lang.String r2 = coil3.size.ViewSizeResolver$CC.m(r6, r5, r2, r4)
            org.wikipedia.WikipediaApp r6 = org.jsoup.Jsoup.getInstance()
            java.lang.String r7 = androidx.preference.PreferenceManager.getDefaultSharedPreferencesName(r6)
            android.content.SharedPreferences r6 = r6.getSharedPreferences(r7, r3)
            r7 = 0
            long r6 = r6.getLong(r2, r7)
            r10.<init>(r6)
            java.lang.String r2 = r9.getName()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r2)
            java.lang.String r2 = ". Last execution was "
            r6.append(r2)
            r6.append(r10)
            java.lang.String r2 = "."
            r6.append(r2)
            java.lang.String r2 = r6.toString()
            boolean r10 = r9.shouldRun(r10)
            if (r10 == 0) goto Lce
            java.lang.String r10 = "Executing recurring task, "
            java.lang.String r10 = r10.concat(r2)
            org.wikipedia.util.log.L.d(r10)
            r0.label = r5
            java.lang.Object r10 = r9.run(r0)
            if (r10 != r1) goto L9c
            return r1
        L9c:
            org.wikipedia.settings.Prefs r10 = org.wikipedia.settings.Prefs.INSTANCE
            java.lang.String r9 = r9.getName()
            long r0 = java.lang.System.currentTimeMillis()
            r9.getClass()
            java.lang.Object[] r10 = new java.lang.Object[r5]
            r10[r3] = r9
            org.wikipedia.WikipediaApp r9 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r9 = org.jsoup.Jsoup.getInstance()
            android.content.res.Resources r9 = r9.getResources()
            java.lang.String r9 = coil3.size.ViewSizeResolver$CC.m(r10, r5, r9, r4)
            android.content.SharedPreferences r10 = org.wikipedia.settings.PrefsIoUtil.getPreferences()
            android.content.SharedPreferences$Editor r10 = r10.edit()
            r10.getClass()
            android.content.SharedPreferences$Editor r9 = r10.putLong(r9, r0)
            r9.apply()
            goto Ld7
        Lce:
            java.lang.String r9 = "Skipping recurring task, "
            java.lang.String r9 = r9.concat(r2)
            org.wikipedia.util.log.L.d(r9)
        Ld7:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.recurring.RecurringTask.runIfNecessary(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public abstract boolean shouldRun(Date date);
}
