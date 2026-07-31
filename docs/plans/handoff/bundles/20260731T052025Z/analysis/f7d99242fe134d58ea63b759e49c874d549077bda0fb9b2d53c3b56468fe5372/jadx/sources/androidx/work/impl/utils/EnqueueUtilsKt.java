package androidx.work.impl.utils;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Logger$LogcatLogger;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class EnqueueUtilsKt {
    public static final int[] defaultCapabilities = {13, 15, 14};

    public static final void cancel(WorkManagerImpl workManagerImpl, String str) {
        WorkerWrapper cleanUpWorkerUnsafe;
        WorkDatabase workDatabase = workManagerImpl.mWorkDatabase;
        workDatabase.getClass();
        WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
        DependencyDao_Impl dependencyDao = workDatabase.dependencyDao();
        ArrayList mutableListOf = IntOffsetKt.mutableListOf(str);
        while (!mutableListOf.isEmpty()) {
            String str2 = (String) CollectionsKt.removeLast(mutableListOf);
            WorkInfo.State state = workSpecDao.getState(str2);
            if (state != WorkInfo.State.SUCCEEDED && state != WorkInfo.State.FAILED) {
                ((Number) DBUtil.performBlocking(workSpecDao.__db, false, true, new IconKt$$ExternalSyntheticLambda1(str2, 17))).intValue();
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
        ArrayList mutableListOf = IntOffsetKt.mutableListOf(workContinuationImpl);
        int i2 = 0;
        while (!mutableListOf.isEmpty()) {
            List list = ((WorkContinuationImpl) CollectionsKt.removeLast(mutableListOf)).mWork;
            list.getClass();
            if (list.isEmpty()) {
                i = 0;
            } else {
                Iterator it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (((WorkRequest) it.next()).workSpec.constraints.hasContentUriTriggers() && (i = i + 1) < 0) {
                        IntOffsetKt.throwCountOverflow();
                        throw null;
                    }
                }
            }
            i2 += i;
        }
        if (i2 == 0) {
            return;
        }
        int intValue = ((Number) DBUtil.performBlocking(workDatabase.workSpecDao().__db, true, false, new Data$$ExternalSyntheticLambda0(10))).intValue();
        int i3 = configuration.contentUriTriggerWorkersLimit;
        if (intValue + i2 <= i3) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(Config.CC.m91m("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: ", i3, ";\nalready enqueued count: ", intValue, ";\ncurrent enqueue operation count: "), i2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."));
    }
}
