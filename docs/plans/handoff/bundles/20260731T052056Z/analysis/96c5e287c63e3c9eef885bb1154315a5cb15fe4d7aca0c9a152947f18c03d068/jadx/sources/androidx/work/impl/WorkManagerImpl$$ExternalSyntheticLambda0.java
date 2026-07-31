package androidx.work.impl;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.background.systemjob.JobSchedulerExtKt;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        int i2 = 6;
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
                ((Number) ExceptionsKt.performBlocking(workDatabase.workSpecDao().__db, false, true, new Data$$ExternalSyntheticLambda0(15))).intValue();
                Schedulers.schedule(workManagerImpl.mConfiguration, workDatabase, workManagerImpl.mSchedulers);
                break;
            case 1:
                WorkDatabase workDatabase2 = workManagerImpl.mWorkDatabase;
                workDatabase2.getClass();
                workDatabase2.runInTransaction(new Worker$$ExternalSyntheticLambda0(i2, new Processor$$ExternalSyntheticLambda1(workDatabase2, "ReadingChallengeWidgetWorker", workManagerImpl, 5)));
                Schedulers.schedule(workManagerImpl.mConfiguration, workDatabase2, workManagerImpl.mSchedulers);
                break;
            default:
                WorkDatabase workDatabase3 = workManagerImpl.mWorkDatabase;
                workDatabase3.getClass();
                workDatabase3.runInTransaction(new Worker$$ExternalSyntheticLambda0(i2, new Processor$$ExternalSyntheticLambda2(10, workDatabase3, workManagerImpl)));
                Schedulers.schedule(workManagerImpl.mConfiguration, workDatabase3, workManagerImpl.mSchedulers);
                break;
        }
        return unit;
    }
}
