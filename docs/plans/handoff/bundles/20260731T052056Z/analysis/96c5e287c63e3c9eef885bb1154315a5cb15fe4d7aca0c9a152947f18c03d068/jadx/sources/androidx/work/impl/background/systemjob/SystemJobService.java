package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import androidx.compose.animation.core.Animation;
import androidx.core.os.HandlerCompat$Api28Impl;
import androidx.core.view.DisplayCompat;
import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import coil3.network.NetworkHeaders;
import coil3.svg.internal.AndroidSvg;
import java.util.Arrays;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.language.LanguageUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class SystemJobService extends JobService implements ExecutionListener {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("SystemJobService");
    public final HashMap mJobParameters = new HashMap();
    public final NetworkHeaders.Builder mStartStopTokens = new NetworkHeaders.Builder(5);
    public AndroidSvg mWorkLauncher;
    public WorkManagerImpl mWorkManagerImpl;

    public static void assertMainThread(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m("Cannot invoke ", str, " on a background thread"));
    }

    public static WorkGenerationalId workGenerationalIdFromJobParameters(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getInt("EXTRA_WORK_SPEC_GENERATION"), extras.getString("EXTRA_WORK_SPEC_ID"));
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
            this.mWorkLauncher = new AndroidSvg(processor, instance$1.mWorkTaskExecutor);
            processor.addExecutionListener(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
            }
            Logger$LogcatLogger.get().warning(TAG, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
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
            if (LanguageUtil.getTriggeredContentUris(jobParameters) != null) {
                Arrays.asList(LanguageUtil.getTriggeredContentUris(jobParameters));
            }
            if (LanguageUtil.getTriggeredContentAuthorities(jobParameters) != null) {
                Arrays.asList(LanguageUtil.getTriggeredContentAuthorities(jobParameters));
            }
            if (i >= 28) {
                HandlerCompat$Api28Impl.getNetwork(jobParameters);
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
            AndroidSvg androidSvg = this.mWorkLauncher;
            androidSvg.getClass();
            androidSvg.stopWork(remove, stopReason);
        }
        Processor processor = this.mWorkManagerImpl.mProcessor;
        String str = workGenerationalIdFromJobParameters.workSpecId;
        synchronized (processor.mLock) {
            contains = processor.mCancelledIds.contains(str);
        }
        return !contains;
    }
}
