package androidx.work.impl.background.systemjob;

import android.app.job.JobScheduler;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: JobSchedulerExt.kt */
/* loaded from: classes.dex */
final class JobScheduler34 {
    public static final JobScheduler34 INSTANCE = new JobScheduler34();

    private JobScheduler34() {
    }

    public final JobScheduler forNamespace(JobScheduler jobScheduler) {
        JobScheduler forNamespace;
        Intrinsics.checkNotNullParameter(jobScheduler, "jobScheduler");
        forNamespace = jobScheduler.forNamespace("androidx.work.systemjobscheduler");
        Intrinsics.checkNotNullExpressionValue(forNamespace, "jobScheduler.forNamespace(WORKMANAGER_NAMESPACE)");
        return forNamespace;
    }
}
