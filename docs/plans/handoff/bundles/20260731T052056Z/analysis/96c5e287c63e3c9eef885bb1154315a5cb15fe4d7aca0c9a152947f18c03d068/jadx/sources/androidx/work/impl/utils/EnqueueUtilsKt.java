package androidx.work.impl.utils;

import android.os.Build;
import androidx.room.Room;
import androidx.work.Configuration;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class EnqueueUtilsKt {
    public static final int[] defaultCapabilities = {13, 15, 14};

    public static final void cancel(WorkManagerImpl workManagerImpl, String str) {
        WorkerWrapper cleanUpWorkerUnsafe;
        WorkDatabase workDatabase = workManagerImpl.mWorkDatabase;
        workDatabase.getClass();
        WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
        DependencyDao_Impl dependencyDao = workDatabase.dependencyDao();
        ArrayList mutableListOf = Room.mutableListOf(str);
        while (!mutableListOf.isEmpty()) {
            String str2 = (String) CollectionsKt.removeLast(mutableListOf);
            WorkInfo.State state = workSpecDao.getState(str2);
            if (state != WorkInfo.State.SUCCEEDED && state != WorkInfo.State.FAILED) {
                ((Number) ExceptionsKt.performBlocking(workSpecDao.__db, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(16, str2))).intValue();
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
        ArrayList mutableListOf = Room.mutableListOf(workContinuationImpl);
        int i2 = 0;
        while (!mutableListOf.isEmpty()) {
            List list = ((WorkContinuationImpl) CollectionsKt.removeLast(mutableListOf)).mWork;
            if (list.isEmpty()) {
                i = 0;
            } else {
                Iterator it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (((OneTimeWorkRequest) it.next()).workSpec.constraints.hasContentUriTriggers() && (i = i + 1) < 0) {
                        Room.throwCountOverflow();
                        throw null;
                    }
                }
            }
            i2 += i;
        }
        if (i2 == 0) {
            return;
        }
        int intValue = ((Number) ExceptionsKt.performBlocking(workDatabase.workSpecDao().__db, true, false, new Data$$ExternalSyntheticLambda0(12))).intValue();
        if (intValue + i2 <= 8) {
            return;
        }
        throw new IllegalArgumentException("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: 8;\nalready enqueued count: " + intValue + ";\ncurrent enqueue operation count: " + i2 + ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed.");
    }
}
