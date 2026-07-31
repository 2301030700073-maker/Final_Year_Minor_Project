package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.compose.animation.core.Animation;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.work.Configuration;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import androidx.work.impl.utils.IdGenerator;
import coil3.decode.StaticImageDecoderKt$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SystemJobScheduler implements Scheduler {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("SystemJobScheduler");
    public final Configuration mConfiguration;
    public final Context mContext;
    public final JobScheduler mJobScheduler;
    public final SystemJobInfoConverter mSystemJobInfoConverter;
    public final WorkDatabase mWorkDatabase;

    public SystemJobScheduler(Context context, WorkDatabase workDatabase, Configuration configuration) {
        JobScheduler wmJobScheduler = JobSchedulerExtKt.getWmJobScheduler(context);
        SystemJobInfoConverter systemJobInfoConverter = new SystemJobInfoConverter(context, configuration.clock);
        this.mContext = context;
        this.mJobScheduler = wmJobScheduler;
        this.mSystemJobInfoConverter = systemJobInfoConverter;
        this.mWorkDatabase = workDatabase;
        this.mConfiguration = configuration;
    }

    public static void cancelJobById(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            Logger$LogcatLogger.get().error(TAG, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    public static ArrayList getPendingJobIds(Context context, JobScheduler jobScheduler, String str) {
        ArrayList pendingJobs = getPendingJobs(context, jobScheduler);
        if (pendingJobs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        Iterator it = pendingJobs.iterator();
        while (it.hasNext()) {
            JobInfo jobInfo = (JobInfo) it.next();
            WorkGenerationalId workGenerationalIdFromJobInfo = getWorkGenerationalIdFromJobInfo(jobInfo);
            if (workGenerationalIdFromJobInfo != null && str.equals(workGenerationalIdFromJobInfo.workSpecId)) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    public static ArrayList getPendingJobs(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        String str = JobSchedulerExtKt.TAG;
        jobScheduler.getClass();
        try {
            list = jobScheduler.getAllPendingJobs();
            list.getClass();
        } catch (Throwable th) {
            Logger$LogcatLogger.get().error(JobSchedulerExtKt.TAG, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static WorkGenerationalId getWorkGenerationalIdFromJobInfo(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return new WorkGenerationalId(extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0), extras.getString("EXTRA_WORK_SPEC_ID"));
            }
            return null;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final void cancel(String str) {
        Context context = this.mContext;
        JobScheduler jobScheduler = this.mJobScheduler;
        ArrayList pendingJobIds = getPendingJobIds(context, jobScheduler, str);
        if (pendingJobIds == null || pendingJobIds.isEmpty()) {
            return;
        }
        Iterator it = pendingJobIds.iterator();
        while (it.hasNext()) {
            cancelJobById(jobScheduler, ((Integer) it.next()).intValue());
        }
        SystemIdInfoDao_Impl systemIdInfoDao = this.mWorkDatabase.systemIdInfoDao();
        systemIdInfoDao.getClass();
        str.getClass();
        ExceptionsKt.performBlocking(systemIdInfoDao.__db, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(10, str));
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean hasLimitedSchedulingSlots() {
        return true;
    }

    @Override // androidx.work.impl.Scheduler
    public final void schedule(WorkSpec... workSpecArr) {
        int intValue;
        boolean z;
        ArrayList pendingJobIds;
        int intValue2;
        WorkDatabase workDatabase = this.mWorkDatabase;
        IdGenerator idGenerator = new IdGenerator(workDatabase);
        int length = workSpecArr.length;
        boolean z2 = false;
        int i = 0;
        while (i < length) {
            WorkSpec workSpec = workSpecArr[i];
            workDatabase.beginTransaction();
            try {
                WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
                String str = workSpec.id;
                WorkSpec workSpec2 = workSpecDao.getWorkSpec(str);
                String str2 = TAG;
                if (workSpec2 == null) {
                    Logger$LogcatLogger.get().warning(str2, "Skipping scheduling " + str + " because it's no longer in the DB");
                    workDatabase.setTransactionSuccessful();
                } else if (workSpec2.state != WorkInfo.State.ENQUEUED) {
                    Logger$LogcatLogger.get().warning(str2, "Skipping scheduling " + str + " because it is no longer enqueued");
                    workDatabase.setTransactionSuccessful();
                } else {
                    WorkGenerationalId generationalId = ResultKt.generationalId(workSpec);
                    int i2 = generationalId.generation;
                    String str3 = generationalId.workSpecId;
                    SystemIdInfoDao_Impl systemIdInfoDao = workDatabase.systemIdInfoDao();
                    systemIdInfoDao.getClass();
                    str3.getClass();
                    SystemIdInfo systemIdInfo = (SystemIdInfo) ExceptionsKt.performBlocking(systemIdInfoDao.__db, true, z2, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str3, i2, 1));
                    WorkDatabase workDatabase2 = idGenerator.workDatabase;
                    if (systemIdInfo != null) {
                        intValue = systemIdInfo.systemId;
                    } else {
                        Object runInTransaction = workDatabase2.runInTransaction(new Worker$$ExternalSyntheticLambda0(5, new StaticImageDecoderKt$$ExternalSyntheticLambda0(1, idGenerator)));
                        runInTransaction.getClass();
                        intValue = ((Number) runInTransaction).intValue();
                    }
                    if (systemIdInfo == null) {
                        SystemIdInfo systemIdInfo2 = new SystemIdInfo(str3, i2, intValue);
                        SystemIdInfoDao_Impl systemIdInfoDao2 = workDatabase.systemIdInfoDao();
                        systemIdInfoDao2.getClass();
                        ExceptionsKt.performBlocking(systemIdInfoDao2.__db, false, true, new NavController$$ExternalSyntheticLambda3(28, systemIdInfoDao2, systemIdInfo2));
                    }
                    scheduleInternal(workSpec, intValue);
                    if (Build.VERSION.SDK_INT != 23 || (pendingJobIds = getPendingJobIds(this.mContext, this.mJobScheduler, str)) == null) {
                        z = false;
                    } else {
                        int indexOf = pendingJobIds.indexOf(Integer.valueOf(intValue));
                        if (indexOf >= 0) {
                            pendingJobIds.remove(indexOf);
                        }
                        if (pendingJobIds.isEmpty()) {
                            z = false;
                            Object runInTransaction2 = workDatabase2.runInTransaction(new Worker$$ExternalSyntheticLambda0(5, new StaticImageDecoderKt$$ExternalSyntheticLambda0(1, idGenerator)));
                            runInTransaction2.getClass();
                            intValue2 = ((Number) runInTransaction2).intValue();
                        } else {
                            z = false;
                            intValue2 = ((Integer) pendingJobIds.get(0)).intValue();
                        }
                        scheduleInternal(workSpec, intValue2);
                    }
                    workDatabase.setTransactionSuccessful();
                    i++;
                    z2 = z;
                }
                workDatabase.internalEndTransaction();
                z = z2;
                i++;
                z2 = z;
            } finally {
                workDatabase.internalEndTransaction();
            }
        }
    }

    public final void scheduleInternal(WorkSpec workSpec, int i) {
        List<JobInfo> list;
        String str;
        JobInfo convert = this.mSystemJobInfoConverter.convert(workSpec, i);
        Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
        StringBuilder sb = new StringBuilder("Scheduling work ID ");
        String str2 = workSpec.id;
        sb.append(str2);
        sb.append("Job ID ");
        sb.append(i);
        String sb2 = sb.toString();
        String str3 = TAG;
        logger$LogcatLogger.debug(str3, sb2);
        try {
            if (this.mJobScheduler.schedule(convert) == 0) {
                Logger$LogcatLogger.get().warning(str3, "Unable to schedule work ID " + str2);
                if (workSpec.expedited && workSpec.outOfQuotaPolicy == OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    workSpec.expedited = false;
                    Logger$LogcatLogger.get().debug(str3, "Scheduling a non-expedited job (work ID " + str2 + ")");
                    scheduleInternal(workSpec, i);
                }
            }
        } catch (IllegalStateException e) {
            String str4 = JobSchedulerExtKt.TAG;
            int i2 = Build.VERSION.SDK_INT;
            int i3 = i2 >= 31 ? 150 : 100;
            int size = ((List) ExceptionsKt.performBlocking(this.mWorkDatabase.workSpecDao().__db, true, false, new Data$$ExternalSyntheticLambda0(8))).size();
            Context context = this.mContext;
            String str5 = "<faulty JobScheduler failed to getPendingJobs>";
            if (i2 >= 34) {
                JobScheduler wmJobScheduler = JobSchedulerExtKt.getWmJobScheduler(context);
                String str6 = null;
                try {
                    list = wmJobScheduler.getAllPendingJobs();
                    list.getClass();
                } catch (Throwable th) {
                    Logger$LogcatLogger.get().error(JobSchedulerExtKt.TAG, "getAllPendingJobs() is not reliable on this device.", th);
                    list = null;
                }
                if (list != null) {
                    ArrayList pendingJobs = getPendingJobs(context, wmJobScheduler);
                    int size2 = pendingJobs != null ? list.size() - pendingJobs.size() : 0;
                    if (size2 == 0) {
                        str = null;
                    } else {
                        str = size2 + " of which are not owned by WorkManager";
                    }
                    Object systemService = context.getSystemService("jobscheduler");
                    systemService.getClass();
                    ArrayList pendingJobs2 = getPendingJobs(context, (JobScheduler) systemService);
                    int size3 = pendingJobs2 != null ? pendingJobs2.size() : 0;
                    if (size3 != 0) {
                        str6 = size3 + " from WorkManager in the default namespace";
                    }
                    str5 = CollectionsKt.joinToString$default(ArraysKt___ArraysKt.filterNotNull(new String[]{list.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str, str6}), ",\n", null, null, null, 62);
                }
            } else {
                ArrayList pendingJobs3 = getPendingJobs(context, JobSchedulerExtKt.getWmJobScheduler(context));
                if (pendingJobs3 != null) {
                    str5 = pendingJobs3.size() + " jobs from WorkManager";
                }
            }
            StringBuilder sb3 = new StringBuilder("JobScheduler ");
            sb3.append(i3);
            sb3.append(" job limit exceeded.\nIn JobScheduler there are ");
            sb3.append(str5);
            sb3.append(".\nThere are ");
            sb3.append(size);
            sb3.append(" jobs tracked by WorkManager's database;\nthe Configuration limit is ");
            String m = Animation.CC.m(sb3, this.mConfiguration.maxSchedulerLimit, '.');
            Logger$LogcatLogger.get().error(str3, m);
            throw new IllegalStateException(m, e);
        } catch (Throwable th2) {
            Logger$LogcatLogger.get().error(str3, "Unable to schedule " + workSpec, th2);
        }
    }
}
