package androidx.work.impl.workers;

import android.content.Context;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConstraintTrackingWorker extends CoroutineWorker {
    public final WorkerParameters workerParameters;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ConstraintUnsatisfiedException extends CancellationException {
        public final int stopReason;

        public ConstraintUnsatisfiedException(int i) {
            this.stopReason = i;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.workerParameters = workerParameters;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$runWorker(androidx.work.impl.workers.ConstraintTrackingWorker r4, androidx.work.ListenableWorker r5, okhttp3.Headers.Builder r6, androidx.work.impl.model.WorkSpec r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1 r0 = (androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1 r0 = new androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r4 = r0.result
            int r8 = r0.label
            r1 = 0
            r2 = 1
            if (r8 == 0) goto L2c
            if (r8 != r2) goto L26
            kotlin.ResultKt.throwOnFailure(r4)
            goto L3f
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r1
        L2c:
            kotlin.ResultKt.throwOnFailure(r4)
            androidx.compose.animation.core.MutatorMutex$mutate$2 r4 = new androidx.compose.animation.core.MutatorMutex$mutate$2
            r4.<init>(r5, r6, r7, r1)
            r0.label = r2
            java.lang.Object r4 = kotlinx.coroutines.JobKt.coroutineScope(r4, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L3f
            return r5
        L3f:
            r4.getClass()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.workers.ConstraintTrackingWorker.access$runWorker(androidx.work.impl.workers.ConstraintTrackingWorker, androidx.work.ListenableWorker, okhttp3.Headers$Builder, androidx.work.impl.model.WorkSpec, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$setupAndRunConstraintTrackingWork(androidx.work.impl.workers.ConstraintTrackingWorker r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.workers.ConstraintTrackingWorker.access$setupAndRunConstraintTrackingWork(androidx.work.impl.workers.ConstraintTrackingWorker, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.work.CoroutineWorker
    public final Object doWork(Continuation continuation) {
        ExecutorService executorService = this.mWorkerParams.mBackgroundExecutor;
        executorService.getClass();
        return JobKt.withContext(JobKt.from(executorService), new BlockRunner$cancel$1(this, null, 3), continuation);
    }
}
