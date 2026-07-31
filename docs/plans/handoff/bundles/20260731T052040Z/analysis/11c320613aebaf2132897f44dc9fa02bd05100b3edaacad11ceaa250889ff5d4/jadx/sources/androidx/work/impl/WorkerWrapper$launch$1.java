package androidx.work.impl;

import androidx.work.Logger$LogcatLogger;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.WorkerWrapper;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkerWrapper$launch$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ WorkerWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkerWrapper$launch$1(WorkerWrapper workerWrapper, Continuation continuation) {
        super(2, continuation);
        this.this$0 = workerWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WorkerWrapper$launch$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WorkerWrapper$launch$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failed;
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                WorkerWrapper workerWrapper = this.this$0;
                JobImpl jobImpl = workerWrapper.workerJob;
                WorkerWrapper$launch$1$resolution$1 workerWrapper$launch$1$resolution$1 = new WorkerWrapper$launch$1$resolution$1(workerWrapper, null);
                this.label = 1;
                obj = JobKt.withContext(jobImpl, workerWrapper$launch$1$resolution$1, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            failed = (WorkerWrapper.Resolution) obj;
        } catch (WorkerStoppedException e) {
            failed = new WorkerWrapper.Resolution.ResetWorkerStatus(e.getReason());
        } catch (CancellationException unused) {
            failed = new WorkerWrapper.Resolution.Failed();
        } catch (Throwable th) {
            Logger$LogcatLogger.get().error(WorkerWrapperKt.TAG, "Unexpected error in WorkerWrapper", th);
            failed = new WorkerWrapper.Resolution.Failed();
        }
        WorkerWrapper workerWrapper2 = this.this$0;
        Object runInTransaction = workerWrapper2.workDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(failed, workerWrapper2, 0), 14));
        runInTransaction.getClass();
        return runInTransaction;
    }
}
