package androidx.work.impl;

import android.text.TextUtils;
import androidx.room.TransactionExecutor;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.WorkRequest;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkContinuationImpl {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WorkContinuationImpl");
    public final ArrayList mAllIds = new ArrayList();
    public boolean mEnqueued;
    public final ExistingWorkPolicy mExistingWorkPolicy;
    public final ArrayList mIds;
    public final String mName;
    public SystemClock mOperation;
    public final List mWork;
    public final WorkManagerImpl mWorkManagerImpl;

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, String str, ExistingWorkPolicy existingWorkPolicy, List list, int i) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mName = str;
        this.mExistingWorkPolicy = existingWorkPolicy;
        this.mWork = list;
        this.mIds = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (existingWorkPolicy == ExistingWorkPolicy.REPLACE && ((WorkRequest) list.get(i2)).workSpec.nextScheduleTimeOverride != Long.MAX_VALUE) {
                UriKt$$ExternalSyntheticBUOutline0.m("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
                throw null;
            }
            String uuid = ((WorkRequest) list.get(i2)).id.toString();
            uuid.getClass();
            this.mIds.add(uuid);
            this.mAllIds.add(uuid);
        }
    }

    public static HashSet prerequisitesFor(WorkContinuationImpl workContinuationImpl) {
        HashSet hashSet = new HashSet();
        workContinuationImpl.getClass();
        return hashSet;
    }

    public final SystemClock enqueue() {
        if (this.mEnqueued) {
            Logger$LogcatLogger.get().warning(TAG, "Already enqueued work ids (" + TextUtils.join(", ", this.mIds) + ")");
        } else {
            WorkManagerImpl workManagerImpl = this.mWorkManagerImpl;
            this.mOperation = OperationKt.launchOperation(workManagerImpl.mConfiguration.tracer, "EnqueueRunnable_" + this.mExistingWorkPolicy.name(), (TransactionExecutor) workManagerImpl.mWorkTaskExecutor.executorServiceOrNull, new ImageLoader$Builder$$ExternalSyntheticLambda1(24, this));
        }
        return this.mOperation;
    }
}
