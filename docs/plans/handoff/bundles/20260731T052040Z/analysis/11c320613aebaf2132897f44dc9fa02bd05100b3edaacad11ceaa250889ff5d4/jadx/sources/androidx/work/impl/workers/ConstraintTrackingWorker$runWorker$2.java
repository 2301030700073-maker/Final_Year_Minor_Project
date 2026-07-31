package androidx.work.impl.workers;

import androidx.work.ListenableWorker;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ConstraintTrackingWorker$runWorker$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ ListenableWorker $delegate;
    final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
    final /* synthetic */ WorkSpec $workSpec;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker$runWorker$2(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation continuation) {
        super(2, continuation);
        this.$delegate = listenableWorker;
        this.$workConstraintsTracker = workConstraintsTracker;
        this.$workSpec = workSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ConstraintTrackingWorker$runWorker$2 constraintTrackingWorker$runWorker$2 = new ConstraintTrackingWorker$runWorker$2(this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
        constraintTrackingWorker$runWorker$2.L$0 = obj;
        return constraintTrackingWorker$runWorker$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConstraintTrackingWorker$runWorker$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c8 A[Catch: all -> 0x008b, TRY_LEAVE, TryCatch #1 {all -> 0x008b, blocks: (B:44:0x006a, B:45:0x008a, B:15:0x008e, B:18:0x00b6, B:21:0x00be, B:22:0x00c7, B:24:0x00c8, B:7:0x001b, B:8:0x005f, B:30:0x004c), top: B:2:0x0008, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b5  */
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
            r2 = -256(0xffffffffffffff00, float:NaN)
            r3 = 1
            java.lang.String r4 = "Delegated worker "
            if (r0 == 0) goto L2b
            if (r0 != r3) goto L25
            java.lang.Object r0 = r11.L$2
            r5 = r0
            kotlinx.coroutines.Job r5 = (kotlinx.coroutines.Job) r5
            java.lang.Object r0 = r11.L$1
            r6 = r0
            com.google.common.util.concurrent.ListenableFuture r6 = (com.google.common.util.concurrent.ListenableFuture) r6
            java.lang.Object r0 = r11.L$0
            r7 = r0
            java.util.concurrent.atomic.AtomicInteger r7 = (java.util.concurrent.atomic.AtomicInteger) r7
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L1f java.util.concurrent.CancellationException -> L22
            goto L5f
        L1f:
            r0 = move-exception
            r12 = r0
            goto L6a
        L22:
            r0 = move-exception
            r12 = r0
            goto L8e
        L25:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r11)
            return r1
        L2b:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.L$0
            kotlinx.coroutines.CoroutineScope r12 = (kotlinx.coroutines.CoroutineScope) r12
            java.util.concurrent.atomic.AtomicInteger r8 = new java.util.concurrent.atomic.AtomicInteger
            r8.<init>(r2)
            androidx.work.ListenableWorker r0 = r11.$delegate
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r9 = r0.startWork()
            androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1 r5 = new androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1
            androidx.work.impl.constraints.WorkConstraintsTracker r6 = r11.$workConstraintsTracker
            androidx.work.impl.model.WorkSpec r7 = r11.$workSpec
            r10 = 0
            r5.<init>(r6, r7, r8, r9, r10)
            r0 = 3
            kotlinx.coroutines.StandaloneCoroutine r5 = kotlinx.coroutines.JobKt.launch$default(r12, r1, r1, r5, r0)
            r11.L$0 = r8     // Catch: java.lang.Throwable -> L1f java.util.concurrent.CancellationException -> L65
            r11.L$1 = r9     // Catch: java.lang.Throwable -> L1f java.util.concurrent.CancellationException -> L65
            r11.L$2 = r5     // Catch: java.lang.Throwable -> L1f java.util.concurrent.CancellationException -> L65
            r11.label = r3     // Catch: java.lang.Throwable -> L1f java.util.concurrent.CancellationException -> L65
            java.lang.Object r12 = kotlin.text.CharsKt.await(r9, r11)     // Catch: java.lang.Throwable -> L1f java.util.concurrent.CancellationException -> L65
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r12 != r0) goto L5d
            return r0
        L5d:
            r7 = r8
            r6 = r9
        L5f:
            androidx.work.ListenableWorker$Result r12 = (androidx.work.ListenableWorker.Result) r12     // Catch: java.lang.Throwable -> L1f java.util.concurrent.CancellationException -> L22
            r5.cancel(r1)
            return r12
        L65:
            r0 = move-exception
            r12 = r0
            r7 = r8
            r6 = r9
            goto L8e
        L6a:
            java.lang.String r0 = androidx.work.impl.workers.ConstraintTrackingWorkerKt.TAG     // Catch: java.lang.Throwable -> L8b
            androidx.work.ListenableWorker r11 = r11.$delegate     // Catch: java.lang.Throwable -> L8b
            androidx.work.Logger$LogcatLogger r2 = androidx.work.Logger$LogcatLogger.get()     // Catch: java.lang.Throwable -> L8b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8b
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L8b
            java.lang.Class r11 = r11.getClass()     // Catch: java.lang.Throwable -> L8b
            r3.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = " threw exception in startWork."
            r3.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = r3.toString()     // Catch: java.lang.Throwable -> L8b
            r2.debug(r0, r11, r12)     // Catch: java.lang.Throwable -> L8b
            throw r12     // Catch: java.lang.Throwable -> L8b
        L8b:
            r0 = move-exception
            r11 = r0
            goto Lc9
        L8e:
            java.lang.String r0 = androidx.work.impl.workers.ConstraintTrackingWorkerKt.TAG     // Catch: java.lang.Throwable -> L8b
            androidx.work.ListenableWorker r11 = r11.$delegate     // Catch: java.lang.Throwable -> L8b
            androidx.work.Logger$LogcatLogger r8 = androidx.work.Logger$LogcatLogger.get()     // Catch: java.lang.Throwable -> L8b
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8b
            r9.<init>(r4)     // Catch: java.lang.Throwable -> L8b
            java.lang.Class r11 = r11.getClass()     // Catch: java.lang.Throwable -> L8b
            r9.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = " was cancelled"
            r9.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = r9.toString()     // Catch: java.lang.Throwable -> L8b
            r8.debug(r0, r11, r12)     // Catch: java.lang.Throwable -> L8b
            int r11 = r7.get()     // Catch: java.lang.Throwable -> L8b
            if (r11 == r2) goto Lb5
            goto Lb6
        Lb5:
            r3 = 0
        Lb6:
            boolean r11 = r6.isCancelled()     // Catch: java.lang.Throwable -> L8b
            if (r11 == 0) goto Lc8
            if (r3 == 0) goto Lc8
            androidx.work.impl.workers.ConstraintTrackingWorker$ConstraintUnsatisfiedException r11 = new androidx.work.impl.workers.ConstraintTrackingWorker$ConstraintUnsatisfiedException     // Catch: java.lang.Throwable -> L8b
            int r12 = r7.get()     // Catch: java.lang.Throwable -> L8b
            r11.<init>(r12)     // Catch: java.lang.Throwable -> L8b
            throw r11     // Catch: java.lang.Throwable -> L8b
        Lc8:
            throw r12     // Catch: java.lang.Throwable -> L8b
        Lc9:
            r5.cancel(r1)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
