package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.compose.ui.Modifier;
import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1;
import androidx.work.impl.utils.IdGenerator;
import androidx.work.impl.utils.IdGenerator$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        SystemJobInfoConverter systemJobInfoConverter = new SystemJobInfoConverter(context, configuration.clock, configuration.isMarkingJobsAsImportantWhileForeground);
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
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
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
        DBUtil.performBlocking(systemIdInfoDao.__db, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 7));
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean hasLimitedSchedulingSlots() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v19 */
    @Override // androidx.work.impl.Scheduler
    public final void schedule(WorkSpec... workSpecArr) {
        int intValue;
        int i;
        ArrayList pendingJobIds;
        int intValue2;
        WorkDatabase workDatabase = this.mWorkDatabase;
        ?? r4 = 0;
        IdGenerator idGenerator = new IdGenerator(workDatabase, 0);
        int length = workSpecArr.length;
        int i2 = 0;
        while (i2 < length) {
            WorkSpec workSpec = workSpecArr[i2];
            workDatabase.beginTransaction();
            try {
                WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
                String str = workSpec.id;
                WorkSpec workSpec2 = workSpecDao.getWorkSpec(str);
                String str2 = TAG;
                if (workSpec2 == null) {
                    Logger$LogcatLogger.get().warning(str2, "Skipping scheduling " + str + " because it's no longer in the DB");
                    workDatabase.setTransactionSuccessful();
                } else if (workSpec2.state != WorkInfo$State.ENQUEUED) {
                    Logger$LogcatLogger.get().warning(str2, "Skipping scheduling " + str + " because it is no longer enqueued");
                    workDatabase.setTransactionSuccessful();
                } else {
                    WorkGenerationalId generationalId = RangesKt.generationalId(workSpec);
                    int i3 = generationalId.generation;
                    String str3 = generationalId.workSpecId;
                    SystemIdInfoDao_Impl systemIdInfoDao = workDatabase.systemIdInfoDao();
                    systemIdInfoDao.getClass();
                    str3.getClass();
                    SystemIdInfo systemIdInfo = (SystemIdInfo) DBUtil.performBlocking(systemIdInfoDao.__db, true, r4, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str3, i3, 1));
                    Configuration configuration = this.mConfiguration;
                    WorkDatabase workDatabase2 = idGenerator.workDatabase;
                    if (systemIdInfo != null) {
                        intValue = systemIdInfo.systemId;
                    } else {
                        configuration.getClass();
                        IdGenerator$$ExternalSyntheticLambda0 idGenerator$$ExternalSyntheticLambda0 = new IdGenerator$$ExternalSyntheticLambda0(idGenerator, configuration.maxJobSchedulerId, r4);
                        workDatabase2.getClass();
                        Object runInTransaction = workDatabase2.runInTransaction(new Worker$$ExternalSyntheticLambda0(idGenerator$$ExternalSyntheticLambda0, 14));
                        runInTransaction.getClass();
                        intValue = ((Number) runInTransaction).intValue();
                    }
                    if (systemIdInfo == null) {
                        SystemIdInfo systemIdInfo2 = new SystemIdInfo(str3, i3, intValue);
                        SystemIdInfoDao_Impl systemIdInfoDao2 = workDatabase.systemIdInfoDao();
                        systemIdInfoDao2.getClass();
                        DBUtil.performBlocking(systemIdInfoDao2.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(systemIdInfoDao2, systemIdInfo2, 4));
                    }
                    scheduleInternal(workSpec, intValue);
                    if (Build.VERSION.SDK_INT != 23 || (pendingJobIds = getPendingJobIds(this.mContext, this.mJobScheduler, str)) == null) {
                        i = 0;
                    } else {
                        int indexOf = pendingJobIds.indexOf(Integer.valueOf(intValue));
                        if (indexOf >= 0) {
                            pendingJobIds.remove(indexOf);
                        }
                        if (pendingJobIds.isEmpty()) {
                            configuration.getClass();
                            i = 0;
                            IdGenerator$$ExternalSyntheticLambda0 idGenerator$$ExternalSyntheticLambda02 = new IdGenerator$$ExternalSyntheticLambda0(idGenerator, configuration.maxJobSchedulerId, i);
                            workDatabase2.getClass();
                            Object runInTransaction2 = workDatabase2.runInTransaction(new Worker$$ExternalSyntheticLambda0(idGenerator$$ExternalSyntheticLambda02, 14));
                            runInTransaction2.getClass();
                            intValue2 = ((Number) runInTransaction2).intValue();
                        } else {
                            intValue2 = ((Integer) pendingJobIds.get(0)).intValue();
                            i = 0;
                        }
                        scheduleInternal(workSpec, intValue2);
                    }
                    workDatabase.setTransactionSuccessful();
                    i2++;
                    r4 = i;
                }
                workDatabase.endTransaction();
                i = r4;
                i2++;
                r4 = i;
            } finally {
                workDatabase.endTransaction();
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
            Context context = this.mContext;
            context.getClass();
            WorkDatabase workDatabase = this.mWorkDatabase;
            workDatabase.getClass();
            Configuration configuration = this.mConfiguration;
            configuration.getClass();
            int i2 = Build.VERSION.SDK_INT;
            int i3 = i2 >= 31 ? 150 : 100;
            int size = ((List) DBUtil.performBlocking(workDatabase.workSpecDao().__db, true, false, new Data$$ExternalSyntheticLambda0(10))).size();
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
                    str5 = CollectionsKt.joinToString$default(ArraysKt.filterNotNull(new String[]{list.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str, str6}), ",\n", null, null, null, 62);
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
            String m = Modifier.CC.m(sb3, configuration.maxSchedulerLimit, '.');
            Logger$LogcatLogger.get().error(str3, m);
            throw new IllegalStateException(m, e);
        } catch (Throwable th2) {
            Logger$LogcatLogger.get().error(str3, "Unable to schedule " + workSpec, th2);
        }
    }
}
