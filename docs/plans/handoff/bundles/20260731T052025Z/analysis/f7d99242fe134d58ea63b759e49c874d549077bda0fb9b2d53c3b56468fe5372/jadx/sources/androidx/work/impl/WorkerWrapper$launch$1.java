package androidx.work.impl;

import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.room.util.DBUtil;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.Logger$LogcatLogger;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        final WorkerWrapper.Resolution failed;
        int i = this.$r8$classId;
        final WorkerWrapper workerWrapper = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Continuation continuation = null;
        int i2 = 1;
        switch (i) {
            case 0:
                int i3 = this.label;
                try {
                    if (i3 == 0) {
                        ResultKt.throwOnFailure(obj);
                        JobImpl jobImpl = workerWrapper.workerJob;
                        WorkerWrapper$launch$1 workerWrapper$launch$1 = new WorkerWrapper$launch$1(workerWrapper, continuation, i2);
                        this.label = 1;
                        obj = JobKt.withContext(jobImpl, workerWrapper$launch$1, this);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i3 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
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
                Object runInTransaction = workerWrapper.workDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        WorkerWrapper workerWrapper2 = workerWrapper;
                        String str = workerWrapper2.workDescription;
                        String str2 = workerWrapper2.workSpecId;
                        WorkSpecDao_Impl workSpecDao_Impl = workerWrapper2.workSpecDao;
                        WorkSpec workSpec = workerWrapper2.workSpec;
                        WorkerWrapper.Resolution resolution = WorkerWrapper.Resolution.this;
                        boolean z = resolution instanceof WorkerWrapper.Resolution.Finished;
                        WorkInfo.State state = WorkInfo.State.ENQUEUED;
                        boolean z2 = true;
                        boolean z3 = false;
                        if (!z) {
                            if (resolution instanceof WorkerWrapper.Resolution.Failed) {
                                ListenableWorker.Result result = ((WorkerWrapper.Resolution.Failed) resolution).result;
                                String str3 = WorkerWrapperKt.TAG;
                                Logger$LogcatLogger.get().info(str3, "Worker result FAILURE for " + str);
                                if (workSpec.isPeriodic()) {
                                    workerWrapper2.resetPeriodic();
                                } else {
                                    workerWrapper2.setFailed(result);
                                }
                                return Boolean.valueOf(z3);
                            }
                            if (!(resolution instanceof WorkerWrapper.Resolution.ResetWorkerStatus)) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            int i4 = ((WorkerWrapper.Resolution.ResetWorkerStatus) resolution).reason;
                            if (Intrinsics.areEqual(workSpec.backOffOnSystemInterruptions, Boolean.TRUE)) {
                                String str4 = WorkerWrapperKt.TAG;
                                Logger$LogcatLogger.get().debug(str4, "Worker " + workSpec.workerClassName + " was interrupted. Backing off.");
                                workerWrapper2.reschedule(i4);
                            } else {
                                WorkInfo.State state2 = workSpecDao_Impl.getState(str2);
                                if (state2 == null || state2.isFinished()) {
                                    String str5 = WorkerWrapperKt.TAG;
                                    Logger$LogcatLogger.get().debug(str5, "Status for " + str2 + " is " + state2 + " ; not doing any work");
                                    z2 = false;
                                } else {
                                    String str6 = WorkerWrapperKt.TAG;
                                    Logger$LogcatLogger.get().debug(str6, "Status for " + str2 + " is " + state2 + "; not doing any work and rescheduling for later execution");
                                    workSpecDao_Impl.setState(state, str2);
                                    workSpecDao_Impl.setStopReason(str2, i4);
                                    workSpecDao_Impl.markWorkSpecScheduled(-1L, str2);
                                }
                            }
                            z3 = z2;
                            return Boolean.valueOf(z3);
                        }
                        ListenableWorker.Result result2 = ((WorkerWrapper.Resolution.Finished) resolution).result;
                        WorkInfo.State state3 = workSpecDao_Impl.getState(str2);
                        WorkProgressDao_Impl workProgressDao = workerWrapper2.workDatabase.workProgressDao();
                        workProgressDao.getClass();
                        DBUtil.performBlocking(workProgressDao.__db, false, true, new IconKt$$ExternalSyntheticLambda1(str2, 13));
                        if (state3 != null) {
                            if (state3 == WorkInfo.State.RUNNING) {
                                if (result2 instanceof ListenableWorker.Result.Success) {
                                    String str7 = WorkerWrapperKt.TAG;
                                    Logger$LogcatLogger.get().info(str7, "Worker result SUCCESS for " + str);
                                    if (workSpec.isPeriodic()) {
                                        workerWrapper2.resetPeriodic();
                                    } else {
                                        workSpecDao_Impl.setState(WorkInfo.State.SUCCEEDED, str2);
                                        Data data = ((ListenableWorker.Result.Success) result2).mOutputData;
                                        data.getClass();
                                        DBUtil.performBlocking(workSpecDao_Impl.__db, false, true, new DI$$ExternalSyntheticLambda0(8, data, str2));
                                        workerWrapper2.clock.getClass();
                                        long currentTimeMillis = System.currentTimeMillis();
                                        DependencyDao_Impl dependencyDao_Impl = workerWrapper2.dependencyDao;
                                        for (String str8 : dependencyDao_Impl.getDependentWorkIds(str2)) {
                                            if (workSpecDao_Impl.getState(str8) == WorkInfo.State.BLOCKED && ((Boolean) DBUtil.performBlocking(dependencyDao_Impl.__db, true, false, new IconKt$$ExternalSyntheticLambda1(str8, 9))).booleanValue()) {
                                                Logger$LogcatLogger.get().info(WorkerWrapperKt.TAG, "Setting status to enqueued for ".concat(str8));
                                                workSpecDao_Impl.setState(state, str8);
                                                workSpecDao_Impl.setLastEnqueueTime(currentTimeMillis, str8);
                                            }
                                        }
                                    }
                                } else {
                                    if (result2 instanceof ListenableWorker.Result.Retry) {
                                        String str9 = WorkerWrapperKt.TAG;
                                        Logger$LogcatLogger.get().info(str9, "Worker result RETRY for " + str);
                                        workerWrapper2.reschedule(-256);
                                        z3 = z2;
                                        return Boolean.valueOf(z3);
                                    }
                                    String str10 = WorkerWrapperKt.TAG;
                                    Logger$LogcatLogger.get().info(str10, "Worker result FAILURE for " + str);
                                    if (workSpec.isPeriodic()) {
                                        workerWrapper2.resetPeriodic();
                                    } else {
                                        workerWrapper2.setFailed(result2);
                                    }
                                }
                            } else if (!state3.isFinished()) {
                                workerWrapper2.reschedule(-512);
                                z3 = z2;
                                return Boolean.valueOf(z3);
                            }
                        }
                        z2 = false;
                        z3 = z2;
                        return Boolean.valueOf(z3);
                    }
                });
                runInTransaction.getClass();
                return runInTransaction;
            default:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    Object access$runWorker = WorkerWrapper.access$runWorker(workerWrapper, this);
                    return access$runWorker == coroutineSingletons ? coroutineSingletons : access$runWorker;
                }
                if (i4 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
