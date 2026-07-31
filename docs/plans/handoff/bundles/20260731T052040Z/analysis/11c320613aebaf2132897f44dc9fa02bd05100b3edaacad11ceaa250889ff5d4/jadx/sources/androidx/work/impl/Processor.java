package androidx.work.impl;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.Configuration;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Processor {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("Processor");
    public final Context mAppContext;
    public final Configuration mConfiguration;
    public final WorkDatabase mWorkDatabase;
    public final Dispatcher mWorkTaskExecutor;
    public final HashMap mEnqueuedWorkMap = new HashMap();
    public final HashMap mForegroundWorkMap = new HashMap();
    public final HashSet mCancelledIds = new HashSet();
    public final ArrayList mOuterListeners = new ArrayList();
    public PowerManager.WakeLock mForegroundLock = null;
    public final Object mLock = new Object();
    public final HashMap mWorkRuns = new HashMap();

    public Processor(Context context, Configuration configuration, Dispatcher dispatcher, WorkDatabase workDatabase) {
        this.mAppContext = context;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = dispatcher;
        this.mWorkDatabase = workDatabase;
    }

    public static boolean interrupt(String str, WorkerWrapper workerWrapper, int i) {
        String str2 = TAG;
        if (workerWrapper == null) {
            Logger$LogcatLogger.get().debug(str2, "WorkerWrapper could not be found for " + str);
            return false;
        }
        workerWrapper.workerJob.cancelImpl$kotlinx_coroutines_core(new WorkerStoppedException(i));
        Logger$LogcatLogger.get().debug(str2, "WorkerWrapper interrupted for " + str);
        return true;
    }

    public final void addExecutionListener(ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.add(executionListener);
        }
    }

    public final WorkerWrapper cleanUpWorkerUnsafe(String str) {
        WorkerWrapper workerWrapper = (WorkerWrapper) this.mForegroundWorkMap.remove(str);
        boolean z = workerWrapper != null;
        if (!z) {
            workerWrapper = (WorkerWrapper) this.mEnqueuedWorkMap.remove(str);
        }
        this.mWorkRuns.remove(str);
        if (z) {
            synchronized (this.mLock) {
                try {
                    if (this.mForegroundWorkMap.isEmpty()) {
                        Context context = this.mAppContext;
                        String str2 = SystemForegroundDispatcher.TAG;
                        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                        intent.setAction("ACTION_STOP_FOREGROUND");
                        try {
                            this.mAppContext.startService(intent);
                        } catch (Throwable th) {
                            Logger$LogcatLogger.get().error(TAG, "Unable to stop foreground service", th);
                        }
                        PowerManager.WakeLock wakeLock = this.mForegroundLock;
                        if (wakeLock != null) {
                            wakeLock.release();
                            this.mForegroundLock = null;
                        }
                    }
                } finally {
                }
            }
        }
        return workerWrapper;
    }

    public final WorkSpec getRunningWorkSpec(String str) {
        synchronized (this.mLock) {
            try {
                WorkerWrapper workerWrapperUnsafe = getWorkerWrapperUnsafe(str);
                if (workerWrapperUnsafe == null) {
                    return null;
                }
                return workerWrapperUnsafe.workSpec;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final WorkerWrapper getWorkerWrapperUnsafe(String str) {
        WorkerWrapper workerWrapper = (WorkerWrapper) this.mForegroundWorkMap.get(str);
        return workerWrapper == null ? (WorkerWrapper) this.mEnqueuedWorkMap.get(str) : workerWrapper;
    }

    public final boolean isEnqueued(String str) {
        boolean z;
        synchronized (this.mLock) {
            z = getWorkerWrapperUnsafe(str) != null;
        }
        return z;
    }

    public final void removeExecutionListener(ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.remove(executionListener);
        }
    }

    public final boolean stopWork(StartStopToken startStopToken, int i) {
        String str = startStopToken.id.workSpecId;
        synchronized (this.mLock) {
            try {
                if (this.mForegroundWorkMap.get(str) == null) {
                    Set set = (Set) this.mWorkRuns.get(str);
                    if (set != null && set.contains(startStopToken)) {
                        return interrupt(str, cleanUpWorkerUnsafe(str), i);
                    }
                    return false;
                }
                Logger$LogcatLogger.get().debug(TAG, "Ignored stopWork. WorkerWrapper " + str + " is in foreground");
                return false;
            } finally {
            }
        }
    }
}
