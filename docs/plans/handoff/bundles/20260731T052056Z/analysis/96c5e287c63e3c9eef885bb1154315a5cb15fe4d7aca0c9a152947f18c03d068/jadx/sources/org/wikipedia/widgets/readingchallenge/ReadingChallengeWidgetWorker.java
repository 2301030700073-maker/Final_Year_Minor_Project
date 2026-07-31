package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "workerParameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "org/wikipedia/widgets/readingchallenge/StreakProgressBarKt", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingChallengeWidgetWorker extends CoroutineWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingChallengeWidgetWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetWorker$doWork$1
            if (r0 == 0) goto L13
            r0 = r5
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetWorker$doWork$1 r0 = (org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetWorker$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetWorker$doWork$1 r0 = new org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetWorker$doWork$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r5 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r5
            r0.<init>(r4, r5)
        L1a:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            android.content.Context r4 = r4.mAppContext
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r5)
            goto L43
        L2b:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L32:
            kotlin.ResultKt.throwOnFailure(r5)
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository r5 = new org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository
            r5.<init>(r4)
            r0.label = r3
            java.lang.Object r5 = r5.updateWidgetsAndSendAnalytics(r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            org.wikipedia.widgets.readingchallenge.StreakProgressBarKt.scheduleNextWidgetUpdate(r4)
            androidx.work.ListenableWorker$Result$Success r4 = androidx.work.ListenableWorker.Result.success()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
