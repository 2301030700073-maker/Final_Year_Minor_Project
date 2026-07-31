package androidx.work.impl;

import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkerWrapper$runWorker$result$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ForegroundUpdater $foregroundUpdater;
    final /* synthetic */ ListenableWorker $worker;
    int label;
    final /* synthetic */ WorkerWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkerWrapper$runWorker$result$1(WorkerWrapper workerWrapper, ListenableWorker listenableWorker, ForegroundUpdater foregroundUpdater, Continuation continuation) {
        super(2, continuation);
        this.this$0 = workerWrapper;
        this.$worker = listenableWorker;
        this.$foregroundUpdater = foregroundUpdater;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WorkerWrapper$runWorker$result$1(this.this$0, this.$worker, this.$foregroundUpdater, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WorkerWrapper$runWorker$result$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
    
        if (r2 == r3) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            int r0 = r10.label
            r1 = 2
            r2 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            if (r0 != r1) goto L10
            kotlin.ResultKt.throwOnFailure(r11)
            return r11
        L10:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r10)
            r10 = 0
            return r10
        L17:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L56
        L1b:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.work.impl.WorkerWrapper r11 = r10.this$0
            android.content.Context r8 = r11.appContext
            androidx.work.impl.model.WorkSpec r6 = r11.workSpec
            androidx.work.ListenableWorker r5 = r10.$worker
            androidx.work.ForegroundUpdater r7 = r10.$foregroundUpdater
            okhttp3.Dispatcher r11 = r11.workTaskExecutor
            r10.label = r2
            java.lang.String r0 = androidx.work.impl.utils.WorkForegroundKt.TAG
            boolean r0 = r6.expedited
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            if (r0 == 0) goto L53
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 31
            if (r0 < r4) goto L3b
            goto L53
        L3b:
            java.lang.Object r11 = r11.runningSyncCalls
            androidx.core.os.ExecutorCompat$HandlerExecutor r11 = (androidx.core.os.ExecutorCompat$HandlerExecutor) r11
            r11.getClass()
            kotlinx.coroutines.CoroutineDispatcher r11 = kotlinx.coroutines.JobKt.from(r11)
            androidx.work.impl.utils.WorkForegroundKt$workForeground$2 r4 = new androidx.work.impl.utils.WorkForegroundKt$workForeground$2
            r9 = 0
            r4.<init>(r5, r6, r7, r8, r9)
            java.lang.Object r11 = kotlinx.coroutines.JobKt.withContext(r11, r4, r10)
            if (r11 != r3) goto L53
            r2 = r11
        L53:
            if (r2 != r3) goto L56
            goto L83
        L56:
            java.lang.String r11 = androidx.work.impl.WorkerWrapperKt.TAG
            androidx.work.impl.WorkerWrapper r0 = r10.this$0
            androidx.work.Logger$LogcatLogger r2 = androidx.work.Logger$LogcatLogger.get()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "Starting work for "
            r4.<init>(r5)
            androidx.work.impl.model.WorkSpec r0 = r0.workSpec
            java.lang.String r0 = r0.workerClassName
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r2.debug(r11, r0)
            androidx.work.ListenableWorker r11 = r10.$worker
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r11 = r11.startWork()
            androidx.work.ListenableWorker r0 = r10.$worker
            r10.label = r1
            java.lang.Object r10 = androidx.work.impl.WorkerWrapperKt.awaitWithin(r11, r0, r10)
            if (r10 != r3) goto L84
        L83:
            return r3
        L84:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkerWrapper$runWorker$result$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
