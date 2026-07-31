package androidx.work.impl.utils;

import android.os.Build;
import androidx.compose.ui.Modifier;
import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Logger$LogcatLogger;
import androidx.work.WorkInfo$State;
import androidx.work.WorkRequest;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class EnqueueUtilsKt {
    public static final int[] defaultCapabilities = {13, 15, 14};

    public static final void cancel(WorkManagerImpl workManagerImpl, String str) {
        WorkerWrapper cleanUpWorkerUnsafe;
        WorkDatabase workDatabase = workManagerImpl.mWorkDatabase;
        workDatabase.getClass();
        WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
        DependencyDao_Impl dependencyDao = workDatabase.dependencyDao();
        ArrayList mutableListOf = Jsoup.mutableListOf(str);
        while (!mutableListOf.isEmpty()) {
            String str2 = (String) CollectionsKt__MutableCollectionsKt.removeLast(mutableListOf);
            WorkInfo$State state = workSpecDao.getState(str2);
            if (state != WorkInfo$State.SUCCEEDED && state != WorkInfo$State.FAILED) {
                ((Number) DBUtil.performBlocking(workSpecDao.__db, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str2, 13))).intValue();
            }
            mutableListOf.addAll(dependencyDao.getDependentWorkIds(str2));
        }
        Processor processor = workManagerImpl.mProcessor;
        processor.getClass();
        synchronized (processor.mLock) {
            Logger$LogcatLogger.get().debug(Processor.TAG, "Processor cancelling " + str);
            processor.mCancelledIds.add(str);
            cleanUpWorkerUnsafe = processor.cleanUpWorkerUnsafe(str);
        }
        Processor.interrupt(str, cleanUpWorkerUnsafe, 1);
        Iterator it = workManagerImpl.mSchedulers.iterator();
        while (it.hasNext()) {
            ((Scheduler) it.next()).cancel(str);
        }
    }

    public static final void checkContentUriTriggerWorkerLimits(WorkDatabase workDatabase, Configuration configuration, WorkContinuationImpl workContinuationImpl) {
        int i;
        workDatabase.getClass();
        configuration.getClass();
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        ArrayList mutableListOf = Jsoup.mutableListOf(workContinuationImpl);
        int i2 = 0;
        while (!mutableListOf.isEmpty()) {
            List list = ((WorkContinuationImpl) CollectionsKt__MutableCollectionsKt.removeLast(mutableListOf)).mWork;
            list.getClass();
            if (list.isEmpty()) {
                i = 0;
            } else {
                Iterator it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (((WorkRequest) it.next()).workSpec.constraints.hasContentUriTriggers() && (i = i + 1) < 0) {
                        throw new ArithmeticException("Count overflow has happened.");
                    }
                }
            }
            i2 += i;
        }
        if (i2 == 0) {
            return;
        }
        int intValue = ((Number) DBUtil.performBlocking(workDatabase.workSpecDao().__db, true, false, new Data$$ExternalSyntheticLambda0(14))).intValue();
        int i3 = configuration.contentUriTriggerWorkersLimit;
        if (intValue + i2 <= i3) {
            return;
        }
        StringBuilder sb = new StringBuilder("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: ");
        sb.append(i3);
        sb.append(";\nalready enqueued count: ");
        sb.append(intValue);
        sb.append(";\ncurrent enqueue operation count: ");
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(sb, i2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."));
    }

    public static final WorkSpec wrapWorkSpecIfNeeded(List list, WorkSpec workSpec) {
        WorkSpec workSpec2;
        list.getClass();
        workSpec.getClass();
        boolean hasKeyWithValueOfType = workSpec.input.hasKeyWithValueOfType("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME");
        boolean hasKeyWithValueOfType2 = workSpec.input.hasKeyWithValueOfType("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME");
        boolean hasKeyWithValueOfType3 = workSpec.input.hasKeyWithValueOfType("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME");
        if (!hasKeyWithValueOfType && hasKeyWithValueOfType2 && hasKeyWithValueOfType3) {
            String str = workSpec.workerClassName;
            Data.Builder builder = new Data.Builder(0);
            Data data = workSpec.input;
            data.getClass();
            builder.putAll(data.values);
            builder.values.put("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME", str);
            workSpec2 = WorkSpec.copy$default(workSpec, null, null, "androidx.work.multiprocess.RemoteListenableDelegatingWorker", builder.m475build(), 0, 0L, 0, 0, 0L, 0, 33554411);
        } else {
            workSpec2 = workSpec;
        }
        if (Build.VERSION.SDK_INT <= 25) {
            Constraints constraints = workSpec2.constraints;
            String str2 = workSpec2.workerClassName;
            if (!Intrinsics.areEqual(str2, ConstraintTrackingWorker.class.getName()) && (constraints.requiresBatteryNotLow || constraints.requiresStorageNotLow)) {
                Data.Builder builder2 = new Data.Builder(0);
                Data data2 = workSpec2.input;
                data2.getClass();
                builder2.putAll(data2.values);
                builder2.values.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str2);
                return WorkSpec.copy$default(workSpec2, null, null, ConstraintTrackingWorker.class.getName(), builder2.m475build(), 0, 0L, 0, 0, 0L, 0, 33554411);
            }
        }
        return workSpec2;
    }
}
