package androidx.work.impl;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.room.util.DBUtil;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.background.systemjob.JobSchedulerExtKt;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkManagerImpl$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WorkManagerImpl f$0;

    public /* synthetic */ WorkManagerImpl$$ExternalSyntheticLambda0(WorkManagerImpl workManagerImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = workManagerImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        WorkManagerImpl workManagerImpl = this.f$0;
        switch (i) {
            case 0:
                WorkDatabase workDatabase = workManagerImpl.mWorkDatabase;
                Context context = workManagerImpl.mContext;
                String str = SystemJobScheduler.TAG;
                if (Build.VERSION.SDK_INT >= 34) {
                    JobSchedulerExtKt.getWmJobScheduler(context).cancelAll();
                }
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                ArrayList pendingJobs = SystemJobScheduler.getPendingJobs(context, jobScheduler);
                if (pendingJobs != null && !pendingJobs.isEmpty()) {
                    Iterator it = pendingJobs.iterator();
                    while (it.hasNext()) {
                        SystemJobScheduler.cancelJobById(jobScheduler, ((JobInfo) it.next()).getId());
                    }
                }
                ((Number) DBUtil.performBlocking(workDatabase.workSpecDao().__db, false, true, new Data$$ExternalSyntheticLambda0(17))).intValue();
                Schedulers.schedule(workManagerImpl.mConfiguration, workDatabase, workManagerImpl.mSchedulers);
                break;
            default:
                WorkDatabase workDatabase2 = workManagerImpl.mWorkDatabase;
                workDatabase2.getClass();
                workDatabase2.runInTransaction(new Worker$$ExternalSyntheticLambda0(new Processor$$ExternalSyntheticLambda2(workDatabase2, workManagerImpl, 9), 15));
                Schedulers.schedule(workManagerImpl.mConfiguration, workDatabase2, workManagerImpl.mSchedulers);
                break;
        }
        return unit;
    }
}
