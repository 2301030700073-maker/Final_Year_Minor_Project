package androidx.work.impl;

import android.text.TextUtils;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OperationKt;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkContinuationImpl {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WorkContinuationImpl");
    public final ArrayList mAllIds = new ArrayList();
    public boolean mEnqueued;
    public final ExistingWorkPolicy mExistingWorkPolicy;
    public final ArrayList mIds;
    public final String mName;
    public Data.Builder mOperation;
    public final List mWork;
    public final WorkManagerImpl mWorkManagerImpl;

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, String str, ExistingWorkPolicy existingWorkPolicy, List list) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mName = str;
        this.mExistingWorkPolicy = existingWorkPolicy;
        this.mWork = list;
        this.mIds = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            if (existingWorkPolicy == ExistingWorkPolicy.REPLACE && ((OneTimeWorkRequest) list.get(i)).workSpec.nextScheduleTimeOverride != Long.MAX_VALUE) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
                throw null;
            }
            String uuid = ((OneTimeWorkRequest) list.get(i)).id.toString();
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

    public final Data.Builder enqueue() {
        if (this.mEnqueued) {
            Logger$LogcatLogger.get().warning(TAG, "Already enqueued work ids (" + TextUtils.join(", ", this.mIds) + ")");
        } else {
            WorkManagerImpl workManagerImpl = this.mWorkManagerImpl;
            this.mOperation = OperationKt.launchOperation(workManagerImpl.mConfiguration.tracer, "EnqueueRunnable_" + this.mExistingWorkPolicy.name(), workManagerImpl.mWorkTaskExecutor.mBackgroundExecutor, new Worker$$ExternalSyntheticLambda0(11, this));
        }
        return this.mOperation;
    }
}
