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
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkerWrapper$launch$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ WorkerWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WorkerWrapper$launch$1(WorkerWrapper workerWrapper, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = workerWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        WorkerWrapper workerWrapper = this.this$0;
        switch (i) {
            case 0:
                return new WorkerWrapper$launch$1(workerWrapper, continuation, 0);
            default:
                return new WorkerWrapper$launch$1(workerWrapper, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((WorkerWrapper$launch$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failed;
        int i = this.$r8$classId;
        WorkerWrapper workerWrapper = this.this$0;
        Continuation continuation = null;
        int i2 = 1;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                try {
                    if (i3 == 0) {
                        ResultKt.throwOnFailure(obj);
                        JobImpl jobImpl = workerWrapper.workerJob;
                        WorkerWrapper$launch$1 workerWrapper$launch$1 = new WorkerWrapper$launch$1(workerWrapper, continuation, i2);
                        this.label = 1;
                        obj = AwaitKt.withContext(jobImpl, workerWrapper$launch$1, this);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i3 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    failed = (WorkerWrapper.Resolution) obj;
                } catch (WorkerStoppedException e) {
                    failed = new WorkerWrapper.Resolution.ResetWorkerStatus(e.reason);
                } catch (CancellationException unused) {
                    failed = new WorkerWrapper.Resolution.Failed();
                } catch (Throwable th) {
                    Logger$LogcatLogger.get().error(WorkerWrapperKt.TAG, "Unexpected error in WorkerWrapper", th);
                    failed = new WorkerWrapper.Resolution.Failed();
                }
                Object runInTransaction = workerWrapper.workDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(5, new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(0, failed, workerWrapper)));
                runInTransaction.getClass();
                return runInTransaction;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    Object runWorker = workerWrapper.runWorker(this);
                    return runWorker == coroutineSingletons2 ? coroutineSingletons2 : runWorker;
                }
                if (i4 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
