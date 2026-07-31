package androidx.work.impl;

import android.content.Context;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.Logger$LogcatLogger;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.model.LottieCompositionCache;
import java.io.IOException;
import java.util.concurrent.Callable;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkerWrapper$launch$1$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ WorkerWrapper$launch$1$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                WorkerWrapper.Resolution resolution = (WorkerWrapper.Resolution) obj2;
                WorkerWrapper workerWrapper = (WorkerWrapper) obj;
                String str = workerWrapper.workDescription;
                String str2 = workerWrapper.workSpecId;
                WorkSpecDao_Impl workSpecDao_Impl = workerWrapper.workSpecDao;
                WorkSpec workSpec = workerWrapper.workSpec;
                boolean z = true;
                boolean z2 = false;
                if (resolution instanceof WorkerWrapper.Resolution.Finished) {
                    ListenableWorker.Result result = ((WorkerWrapper.Resolution.Finished) resolution).result;
                    WorkInfo.State state = workSpecDao_Impl.getState(str2);
                    WorkProgressDao_Impl workProgressDao = workerWrapper.workDatabase.workProgressDao();
                    workProgressDao.getClass();
                    ExceptionsKt.performBlocking(workProgressDao.__db, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(12, str2));
                    if (state != null) {
                        if (state == WorkInfo.State.RUNNING) {
                            if (result instanceof ListenableWorker.Result.Success) {
                                Logger$LogcatLogger.get().info(WorkerWrapperKt.TAG, "Worker result SUCCESS for ".concat(str));
                                if (workSpec.isPeriodic()) {
                                    workerWrapper.resetPeriodic();
                                } else {
                                    workSpecDao_Impl.setState(WorkInfo.State.SUCCEEDED, str2);
                                    Data data = ((ListenableWorker.Result.Success) result).mOutputData;
                                    data.getClass();
                                    ExceptionsKt.performBlocking(workSpecDao_Impl.__db, false, true, new GamesHubScreenKt$$ExternalSyntheticLambda8(4, data, str2));
                                    long currentTimeMillis = System.currentTimeMillis();
                                    DependencyDao_Impl dependencyDao_Impl = workerWrapper.dependencyDao;
                                    for (String str3 : dependencyDao_Impl.getDependentWorkIds(str2)) {
                                        if (workSpecDao_Impl.getState(str3) == WorkInfo.State.BLOCKED && ((Boolean) ExceptionsKt.performBlocking(dependencyDao_Impl.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(8, str3))).booleanValue()) {
                                            Logger$LogcatLogger.get().info(WorkerWrapperKt.TAG, "Setting status to enqueued for ".concat(str3));
                                            workSpecDao_Impl.setState(WorkInfo.State.ENQUEUED, str3);
                                            workSpecDao_Impl.setLastEnqueueTime(str3, currentTimeMillis);
                                        }
                                    }
                                }
                            } else if (result instanceof ListenableWorker.Result.Retry) {
                                Logger$LogcatLogger.get().info(WorkerWrapperKt.TAG, "Worker result RETRY for ".concat(str));
                                workerWrapper.reschedule(-256);
                                z2 = z;
                            } else {
                                Logger$LogcatLogger.get().info(WorkerWrapperKt.TAG, "Worker result FAILURE for ".concat(str));
                                if (workSpec.isPeriodic()) {
                                    workerWrapper.resetPeriodic();
                                } else {
                                    workerWrapper.setFailed(result);
                                }
                            }
                        } else if (!state.isFinished()) {
                            workerWrapper.reschedule(-512);
                            z2 = z;
                        }
                    }
                    z = false;
                    z2 = z;
                } else if (resolution instanceof WorkerWrapper.Resolution.Failed) {
                    ListenableWorker.Result result2 = ((WorkerWrapper.Resolution.Failed) resolution).result;
                    Logger$LogcatLogger.get().info(WorkerWrapperKt.TAG, "Worker result FAILURE for ".concat(str));
                    if (workSpec.isPeriodic()) {
                        workerWrapper.resetPeriodic();
                    } else {
                        workerWrapper.setFailed(result2);
                    }
                } else {
                    if (!(resolution instanceof WorkerWrapper.Resolution.ResetWorkerStatus)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    int i2 = ((WorkerWrapper.Resolution.ResetWorkerStatus) resolution).reason;
                    if (Intrinsics.areEqual(workSpec.backOffOnSystemInterruptions, Boolean.TRUE)) {
                        String str4 = WorkerWrapperKt.TAG;
                        Logger$LogcatLogger.get().debug(str4, "Worker " + workSpec.workerClassName + " was interrupted. Backing off.");
                        workerWrapper.reschedule(i2);
                    } else {
                        WorkInfo.State state2 = workSpecDao_Impl.getState(str2);
                        if (state2 == null || state2.isFinished()) {
                            String str5 = WorkerWrapperKt.TAG;
                            Logger$LogcatLogger.get().debug(str5, "Status for " + str2 + " is " + state2 + " ; not doing any work");
                            z = false;
                        } else {
                            String str6 = WorkerWrapperKt.TAG;
                            Logger$LogcatLogger.get().debug(str6, "Status for " + str2 + " is " + state2 + "; not doing any work and rescheduling for later execution");
                            workSpecDao_Impl.setState(WorkInfo.State.ENQUEUED, str2);
                            workSpecDao_Impl.setStopReason(i2, str2);
                            workSpecDao_Impl.markWorkSpecScheduled(str2, -1L);
                        }
                    }
                    z2 = z;
                }
                return Boolean.valueOf(z2);
            default:
                Context context = (Context) obj2;
                String str7 = (String) obj;
                LottieComposition lottieComposition = str7 != null ? LottieCompositionCache.INSTANCE.get(str7) : null;
                if (lottieComposition != null) {
                    return new LottieResult(lottieComposition);
                }
                try {
                    return LottieCompositionFactory.fromInputStreamSync(context, context.getAssets().open("lottie/explore_feed_building.lottie"), str7);
                } catch (IOException e) {
                    return new LottieResult(e);
                }
        }
    }
}
