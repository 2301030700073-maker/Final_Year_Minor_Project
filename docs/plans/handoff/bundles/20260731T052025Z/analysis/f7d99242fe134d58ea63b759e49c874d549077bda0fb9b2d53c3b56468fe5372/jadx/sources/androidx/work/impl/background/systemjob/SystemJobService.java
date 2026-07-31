package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import androidx.camera.camera2.compat.Api24Compat;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.view.DisplayCompat;
import androidx.webkit.internal.ApiHelperForP;
import androidx.work.Data;
import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import java.util.Arrays;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SystemJobService extends JobService implements ExecutionListener {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("SystemJobService");
    public final HashMap mJobParameters = new HashMap();
    public final Data.Builder mStartStopTokens = new Data.Builder(5);
    public Base64Util mWorkLauncher;
    public WorkManagerImpl mWorkManagerImpl;

    public static void assertMainThread(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("Cannot invoke ", str, " on a background thread"));
    }

    public static WorkGenerationalId workGenerationalIdFromJobParameters(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(getApplicationContext());
            this.mWorkManagerImpl = instance$1;
            Processor processor = instance$1.mProcessor;
            this.mWorkLauncher = new Base64Util(processor, instance$1.mWorkTaskExecutor);
            processor.addExecutionListener(this);
        } catch (IllegalStateException e) {
            if (Application.class.equals(getApplication().getClass())) {
                Logger$LogcatLogger.get().warning(TAG, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
            }
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        WorkManagerImpl workManagerImpl = this.mWorkManagerImpl;
        if (workManagerImpl != null) {
            workManagerImpl.mProcessor.removeExecutionListener(this);
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void onExecuted(WorkGenerationalId workGenerationalId, boolean z) {
        assertMainThread("onExecuted");
        Logger$LogcatLogger.get().debug(TAG, workGenerationalId.workSpecId + " executed on JobScheduler");
        JobParameters jobParameters = (JobParameters) this.mJobParameters.remove(workGenerationalId);
        this.mStartStopTokens.remove(workGenerationalId);
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        SystemClock systemClock;
        assertMainThread("onStartJob");
        WorkManagerImpl workManagerImpl = this.mWorkManagerImpl;
        String str = TAG;
        if (workManagerImpl == null) {
            Logger$LogcatLogger.get().debug(str, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        WorkGenerationalId workGenerationalIdFromJobParameters = workGenerationalIdFromJobParameters(jobParameters);
        if (workGenerationalIdFromJobParameters == null) {
            Logger$LogcatLogger.get().error(str, "WorkSpec id not found!");
            return false;
        }
        HashMap hashMap = this.mJobParameters;
        if (hashMap.containsKey(workGenerationalIdFromJobParameters)) {
            Logger$LogcatLogger.get().debug(str, "Job is already being executed by SystemJobService: " + workGenerationalIdFromJobParameters);
            return false;
        }
        Logger$LogcatLogger.get().debug(str, "onStartJob for " + workGenerationalIdFromJobParameters);
        hashMap.put(workGenerationalIdFromJobParameters, jobParameters);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            systemClock = new SystemClock();
            if (Api24Compat.getTriggeredContentUris(jobParameters) != null) {
                Arrays.asList(Api24Compat.getTriggeredContentUris(jobParameters));
            }
            if (Api24Compat.getTriggeredContentAuthorities(jobParameters) != null) {
                Arrays.asList(Api24Compat.getTriggeredContentAuthorities(jobParameters));
            }
            if (i >= 28) {
                ApiHelperForP.getNetwork(jobParameters);
            }
        } else {
            systemClock = null;
        }
        this.mWorkLauncher.startWork(this.mStartStopTokens.tokenFor(workGenerationalIdFromJobParameters), systemClock);
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        boolean contains;
        assertMainThread("onStopJob");
        if (this.mWorkManagerImpl == null) {
            Logger$LogcatLogger.get().debug(TAG, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        WorkGenerationalId workGenerationalIdFromJobParameters = workGenerationalIdFromJobParameters(jobParameters);
        if (workGenerationalIdFromJobParameters == null) {
            Logger$LogcatLogger.get().error(TAG, "WorkSpec id not found!");
            return false;
        }
        Logger$LogcatLogger.get().debug(TAG, "onStopJob for " + workGenerationalIdFromJobParameters);
        this.mJobParameters.remove(workGenerationalIdFromJobParameters);
        StartStopToken remove = this.mStartStopTokens.remove(workGenerationalIdFromJobParameters);
        if (remove != null) {
            int stopReason = Build.VERSION.SDK_INT >= 31 ? DisplayCompat.getStopReason(jobParameters) : -512;
            Base64Util base64Util = this.mWorkLauncher;
            base64Util.getClass();
            base64Util.stopWork(remove, stopReason);
        }
        Processor processor = this.mWorkManagerImpl.mProcessor;
        String str = workGenerationalIdFromJobParameters.workSpecId;
        synchronized (processor.mLock) {
            contains = processor.mCancelledIds.contains(str);
        }
        return !contains;
    }
}
