package androidx.glance.session;

import java.util.LinkedHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionManagerImpl$scope$1 {
    public final LinkedHashMap sessions = new LinkedHashMap();
    public final /* synthetic */ SessionManagerImpl this$0;

    public SessionManagerImpl$scope$1(SessionManagerImpl sessionManagerImpl) {
        this.this$0 = sessionManagerImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object isSessionRunning(android.content.Context r8, java.lang.String r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof androidx.glance.session.SessionManagerImpl$scope$1$isSessionRunning$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.glance.session.SessionManagerImpl$scope$1$isSessionRunning$1 r0 = (androidx.glance.session.SessionManagerImpl$scope$1$isSessionRunning$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.session.SessionManagerImpl$scope$1$isSessionRunning$1 r0 = new androidx.glance.session.SessionManagerImpl$scope$1$isSessionRunning$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L33
            if (r2 != r4) goto L2c
            java.lang.String r9 = r0.L$1
            androidx.glance.session.SessionManagerImpl$scope$1 r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L75
        L2c:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            r7 = 0
            return r7
        L33:
            kotlin.ResultKt.throwOnFailure(r10)
            r8.getClass()
            androidx.work.impl.WorkManagerImpl r8 = androidx.work.impl.WorkManagerImpl.getInstance$1(r8)
            androidx.work.impl.WorkDatabase r10 = r8.mWorkDatabase
            androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor r8 = r8.mWorkTaskExecutor
            r10.getClass()
            r8.getClass()
            r9.getClass()
            kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0 r2 = new kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0
            r5 = 24
            r2.<init>(r5, r9)
            androidx.room.TransactionExecutor r8 = r8.mBackgroundExecutor
            r8.getClass()
            androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6 r5 = new androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6
            r6 = 29
            r5.<init>(r6, r2, r10)
            androidx.work.ListenableFutureKt$$ExternalSyntheticLambda0 r10 = new androidx.work.ListenableFutureKt$$ExternalSyntheticLambda0
            java.lang.String r2 = "loadStatusFuture"
            r10.<init>(r8, r2, r5, r3)
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r8 = androidx.room.Room.getFuture(r10)
            r0.L$0 = r7
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r10 = kotlin.text.UStringsKt.await(r8, r0)
            if (r10 != r1) goto L75
            return r1
        L75:
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            boolean r8 = r10 instanceof java.util.Collection
            if (r8 == 0) goto L86
            r8 = r10
            java.util.Collection r8 = (java.util.Collection) r8
            boolean r8 = r8.isEmpty()
            if (r8 == 0) goto L86
        L84:
            r8 = r3
            goto Lae
        L86:
            java.util.Iterator r8 = r10.iterator()
        L8a:
            boolean r10 = r8.hasNext()
            if (r10 == 0) goto L84
            java.lang.Object r10 = r8.next()
            androidx.work.WorkInfo r10 = (androidx.work.WorkInfo) r10
            r0 = 2
            androidx.work.WorkInfo$State[] r0 = new androidx.work.WorkInfo.State[r0]
            androidx.work.WorkInfo$State r1 = androidx.work.WorkInfo.State.RUNNING
            r0[r3] = r1
            androidx.work.WorkInfo$State r1 = androidx.work.WorkInfo.State.ENQUEUED
            r0[r4] = r1
            java.util.List r0 = androidx.room.Room.listOf(r0)
            androidx.work.WorkInfo$State r10 = r10.state
            boolean r10 = r0.contains(r10)
            if (r10 == 0) goto L8a
            r8 = r4
        Lae:
            java.util.LinkedHashMap r7 = r7.sessions
            java.lang.Object r7 = r7.get(r9)
            androidx.glance.appwidget.AppWidgetSession r7 = (androidx.glance.appwidget.AppWidgetSession) r7
            if (r7 == 0) goto Lbf
            java.util.concurrent.atomic.AtomicBoolean r7 = r7._isOpen
            boolean r7 = r7.get()
            goto Lc0
        Lbf:
            r7 = r3
        Lc0:
            if (r7 == 0) goto Lc5
            if (r8 == 0) goto Lc5
            r3 = r4
        Lc5:
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionManagerImpl$scope$1.isSessionRunning(android.content.Context, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object startSession(android.content.Context r20, androidx.glance.appwidget.AppWidgetSession r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionManagerImpl$scope$1.startSession(android.content.Context, androidx.glance.appwidget.AppWidgetSession, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
