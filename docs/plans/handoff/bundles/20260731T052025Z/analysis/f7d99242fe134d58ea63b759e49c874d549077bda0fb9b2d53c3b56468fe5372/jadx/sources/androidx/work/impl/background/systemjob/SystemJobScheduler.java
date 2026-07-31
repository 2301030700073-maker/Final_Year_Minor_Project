package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import androidx.work.impl.utils.IdGenerator;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        DBUtil.performBlocking(systemIdInfoDao.__db, false, true, new IconKt$$ExternalSyntheticLambda1(str, 11));
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
        boolean z2 = false;
        final IdGenerator idGenerator = new IdGenerator(workDatabase, 0);
        int length = workSpecArr.length;
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
                    WorkGenerationalId generationalId = Validate.generationalId(workSpec);
                    int i2 = generationalId.generation;
                    String str3 = generationalId.workSpecId;
                    SystemIdInfoDao_Impl systemIdInfoDao = workDatabase.systemIdInfoDao();
                    systemIdInfoDao.getClass();
                    str3.getClass();
                    SystemIdInfo systemIdInfo = (SystemIdInfo) DBUtil.performBlocking(systemIdInfoDao.__db, true, z2, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str3, i2, 1));
                    Configuration configuration = this.mConfiguration;
                    WorkDatabase workDatabase2 = idGenerator.workDatabase;
                    if (systemIdInfo != null) {
                        intValue = systemIdInfo.systemId;
                    } else {
                        configuration.getClass();
                        final int i3 = configuration.maxJobSchedulerId;
                        Object runInTransaction = workDatabase2.runInTransaction(new Callable() { // from class: androidx.work.impl.utils.IdGenerator$$ExternalSyntheticLambda0
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                WorkDatabase workDatabase3 = IdGenerator.this.workDatabase;
                                Long longValue = workDatabase3.preferenceDao().getLongValue("next_job_scheduler_id");
                                int i4 = 0;
                                int longValue2 = longValue != null ? (int) longValue.longValue() : 0;
                                int i5 = longValue2 == Integer.MAX_VALUE ? 0 : longValue2 + 1;
                                PreferenceDao_Impl preferenceDao = workDatabase3.preferenceDao();
                                DBUtil.performBlocking(preferenceDao.__db, false, true, new DI$$ExternalSyntheticLambda0(3, preferenceDao, new Preference("next_job_scheduler_id", Long.valueOf(i5))));
                                if (longValue2 < 0 || longValue2 > i3) {
                                    PreferenceDao_Impl preferenceDao2 = workDatabase3.preferenceDao();
                                    DBUtil.performBlocking(preferenceDao2.__db, false, true, new DI$$ExternalSyntheticLambda0(3, preferenceDao2, new Preference("next_job_scheduler_id", 1L)));
                                } else {
                                    i4 = longValue2;
                                }
                                return Integer.valueOf(i4);
                            }
                        });
                        runInTransaction.getClass();
                        intValue = ((Number) runInTransaction).intValue();
                    }
                    if (systemIdInfo == null) {
                        SystemIdInfo systemIdInfo2 = new SystemIdInfo(str3, i2, intValue);
                        SystemIdInfoDao_Impl systemIdInfoDao2 = workDatabase.systemIdInfoDao();
                        systemIdInfoDao2.getClass();
                        DBUtil.performBlocking(systemIdInfoDao2.__db, false, true, new DI$$ExternalSyntheticLambda0(4, systemIdInfoDao2, systemIdInfo2));
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
                            configuration.getClass();
                            final int i4 = configuration.maxJobSchedulerId;
                            Object runInTransaction2 = workDatabase2.runInTransaction(new Callable() { // from class: androidx.work.impl.utils.IdGenerator$$ExternalSyntheticLambda0
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    WorkDatabase workDatabase3 = IdGenerator.this.workDatabase;
                                    Long longValue = workDatabase3.preferenceDao().getLongValue("next_job_scheduler_id");
                                    int i42 = 0;
                                    int longValue2 = longValue != null ? (int) longValue.longValue() : 0;
                                    int i5 = longValue2 == Integer.MAX_VALUE ? 0 : longValue2 + 1;
                                    PreferenceDao_Impl preferenceDao = workDatabase3.preferenceDao();
                                    DBUtil.performBlocking(preferenceDao.__db, false, true, new DI$$ExternalSyntheticLambda0(3, preferenceDao, new Preference("next_job_scheduler_id", Long.valueOf(i5))));
                                    if (longValue2 < 0 || longValue2 > i4) {
                                        PreferenceDao_Impl preferenceDao2 = workDatabase3.preferenceDao();
                                        DBUtil.performBlocking(preferenceDao2.__db, false, true, new DI$$ExternalSyntheticLambda0(3, preferenceDao2, new Preference("next_job_scheduler_id", 1L)));
                                    } else {
                                        i42 = longValue2;
                                    }
                                    return Integer.valueOf(i42);
                                }
                            });
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
            Context context = this.mContext;
            context.getClass();
            WorkDatabase workDatabase = this.mWorkDatabase;
            workDatabase.getClass();
            Configuration configuration = this.mConfiguration;
            configuration.getClass();
            int i2 = Build.VERSION.SDK_INT;
            int i3 = i2 >= 31 ? 150 : 100;
            int size = ((List) DBUtil.performBlocking(workDatabase.workSpecDao().__db, true, false, new Data$$ExternalSyntheticLambda0(6))).size();
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
            String m = CameraDevices$CC.m(sb3, configuration.maxSchedulerLimit, '.');
            Logger$LogcatLogger.get().error(str3, m);
            UriKt$$ExternalSyntheticBUOutline0.m(m, e);
        } catch (Throwable th2) {
            Logger$LogcatLogger.get().error(str3, "Unable to schedule " + workSpec, th2);
        }
    }
}
