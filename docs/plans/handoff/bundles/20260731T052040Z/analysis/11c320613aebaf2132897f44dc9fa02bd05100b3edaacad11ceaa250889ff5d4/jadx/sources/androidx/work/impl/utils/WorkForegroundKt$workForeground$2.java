package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.impl.model.WorkSpec;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkForegroundKt$workForeground$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Context $context;
    final /* synthetic */ ForegroundUpdater $foregroundUpdater;
    final /* synthetic */ WorkSpec $spec;
    final /* synthetic */ ListenableWorker $worker;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkForegroundKt$workForeground$2(ListenableWorker listenableWorker, WorkSpec workSpec, ForegroundUpdater foregroundUpdater, Context context, Continuation continuation) {
        super(2, continuation);
        this.$worker = listenableWorker;
        this.$spec = workSpec;
        this.$foregroundUpdater = foregroundUpdater;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WorkForegroundKt$workForeground$2(this.$worker, this.$spec, this.$foregroundUpdater, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WorkForegroundKt$workForeground$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002c, code lost:
    
        if (r12 == r4) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.label
            r1 = 0
            r2 = 2
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L1b
            if (r0 == r3) goto L17
            if (r0 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r12)
            return r12
        L11:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r11)
            return r1
        L17:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L2f
        L1b:
            kotlin.ResultKt.throwOnFailure(r12)
            androidx.work.ListenableWorker r12 = r11.$worker
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r12 = r12.getForegroundInfoAsync()
            androidx.work.ListenableWorker r0 = r11.$worker
            r11.label = r3
            java.lang.Object r12 = androidx.work.impl.WorkerWrapperKt.awaitWithin(r12, r0, r11)
            if (r12 != r4) goto L2f
            goto L7c
        L2f:
            r8 = r12
            androidx.work.ForegroundInfo r8 = (androidx.work.ForegroundInfo) r8
            if (r8 == 0) goto L7e
            java.lang.String r12 = androidx.work.impl.utils.WorkForegroundKt.TAG
            androidx.work.impl.model.WorkSpec r0 = r11.$spec
            androidx.work.Logger$LogcatLogger r1 = androidx.work.Logger$LogcatLogger.get()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r5 = "Updating notification for "
            r3.<init>(r5)
            java.lang.String r0 = r0.workerClassName
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r1.debug(r12, r0)
            androidx.work.ForegroundUpdater r12 = r11.$foregroundUpdater
            android.content.Context r9 = r11.$context
            androidx.work.ListenableWorker r0 = r11.$worker
            androidx.work.WorkerParameters r0 = r0.mWorkerParams
            java.util.UUID r7 = r0.mId
            r6 = r12
            androidx.work.impl.utils.WorkForegroundUpdater r6 = (androidx.work.impl.utils.WorkForegroundUpdater) r6
            okhttp3.Dispatcher r12 = r6.mTaskExecutor
            java.lang.Object r12 = r12.executorServiceOrNull
            androidx.room.TransactionExecutor r12 = (androidx.room.TransactionExecutor) r12
            androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0 r5 = new androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0
            r10 = 2
            r5.<init>(r6, r7, r8, r9, r10)
            r12.getClass()
            kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0 r0 = new kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0
            r0.<init>(r12, r5, r2)
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r12 = androidx.sqlite.SQLite.getFuture(r0)
            r11.label = r2
            java.lang.Object r11 = kotlin.text.CharsKt.await(r12, r11)
            if (r11 != r4) goto L7d
        L7c:
            return r4
        L7d:
            return r11
        L7e:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r0 = "Worker was marked important ("
            r12.<init>(r0)
            androidx.work.impl.model.WorkSpec r11 = r11.$spec
            java.lang.String r11 = r11.workerClassName
            java.lang.String r0 = ") but did not provide ForegroundInfo"
            java.lang.String r11 = androidx.compose.ui.Modifier.CC.m(r12, r11, r0)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r11)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.WorkForegroundKt$workForeground$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
