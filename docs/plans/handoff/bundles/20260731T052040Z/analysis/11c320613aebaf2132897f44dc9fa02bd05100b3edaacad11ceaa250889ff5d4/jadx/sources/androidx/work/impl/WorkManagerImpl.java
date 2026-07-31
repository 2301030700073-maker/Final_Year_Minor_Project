package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.os.Trace;
import androidx.room.Room;
import androidx.room.TransactionExecutor;
import androidx.work.Configuration;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.SystemClock;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.IdGenerator;
import androidx.work.impl.utils.ProcessUtils;
import coil3.ComponentRegistry;
import java.util.List;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.jsoup.Jsoup;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkManagerImpl {
    public static WorkManagerImpl sDefaultInstance;
    public static WorkManagerImpl sDelegatedInstance;
    public static final Object sLock;
    public final Configuration mConfiguration;
    public final Context mContext;
    public boolean mForceStopRunnableCompleted = false;
    public final IdGenerator mPreferenceUtils;
    public final Processor mProcessor;
    public BroadcastReceiver.PendingResult mRescheduleReceiverResult;
    public final List mSchedulers;
    public final ComponentRegistry.Builder mTrackers;
    public final WorkDatabase mWorkDatabase;
    public final Dispatcher mWorkTaskExecutor;

    static {
        Logger$LogcatLogger.tagWithPrefix("WorkManagerImpl");
        sDelegatedInstance = null;
        sDefaultInstance = null;
        sLock = new Object();
    }

    public WorkManagerImpl(Context context, final Configuration configuration, Dispatcher dispatcher, final WorkDatabase workDatabase, final List list, Processor processor, ComponentRegistry.Builder builder) {
        Context applicationContext = context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 24 && Utility.isDeviceProtectedStorage(applicationContext)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot initialize WorkManager in direct boot mode");
            throw null;
        }
        Logger$LogcatLogger logger$LogcatLogger = new Logger$LogcatLogger(configuration.minimumLoggingLevel);
        synchronized (Logger$LogcatLogger.sLock) {
            try {
                if (Logger$LogcatLogger.sLogger == null) {
                    Logger$LogcatLogger.sLogger = logger$LogcatLogger;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mContext = applicationContext;
        this.mWorkTaskExecutor = dispatcher;
        this.mWorkDatabase = workDatabase;
        this.mProcessor = processor;
        this.mTrackers = builder;
        this.mConfiguration = configuration;
        this.mSchedulers = list;
        CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) dispatcher.readyAsyncCalls;
        coroutineDispatcher.getClass();
        ContextScope CoroutineScope = JobKt.CoroutineScope(coroutineDispatcher);
        this.mPreferenceUtils = new IdGenerator(workDatabase, 1);
        final TransactionExecutor transactionExecutor = (TransactionExecutor) dispatcher.executorServiceOrNull;
        String str = Schedulers.TAG;
        processor.addExecutionListener(new ExecutionListener() { // from class: androidx.work.impl.Schedulers$$ExternalSyntheticLambda0
            @Override // androidx.work.impl.ExecutionListener
            public final void onExecuted(WorkGenerationalId workGenerationalId, boolean z) {
                transactionExecutor.execute(new Schedulers$$ExternalSyntheticLambda1(list, workGenerationalId, configuration, workDatabase, 0));
            }
        });
        ((TransactionExecutor) dispatcher.executorServiceOrNull).execute(new ForceStopRunnable(applicationContext, this));
        String str2 = UnfinishedWorkListenerKt.TAG;
        if (ProcessUtils.isDefaultProcess(applicationContext, configuration)) {
            JobKt.launch$default(CoroutineScope, null, null, new FlowKt__CollectKt$launchIn$1(new FlowKt__MergeKt$flatMapMerge$$inlined$map$1(FlowKt.distinctUntilChanged(FlowKt.buffer$default(new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(Options.Companion.createFlow(workDatabase.workSpecDao().__db, false, new String[]{"workspec"}, new Data$$ExternalSyntheticLambda0(15)), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(4, null)), -1)), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2(applicationContext, null), 2), null), 3);
        }
    }

    public static WorkManagerImpl getInstance() {
        synchronized (sLock) {
            try {
                WorkManagerImpl workManagerImpl = sDelegatedInstance;
                if (workManagerImpl != null) {
                    return workManagerImpl;
                }
                return sDefaultInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static WorkManagerImpl getInstance$1(Context context) {
        WorkManagerImpl workManagerImpl;
        synchronized (sLock) {
            try {
                workManagerImpl = getInstance();
                if (workManagerImpl == null) {
                    context.getApplicationContext();
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return workManagerImpl;
    }

    public final void enqueue(OneTimeWorkRequest oneTimeWorkRequest) {
        oneTimeWorkRequest.getClass();
        List listOf = Jsoup.listOf(oneTimeWorkRequest);
        if (listOf.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("enqueue needs at least one WorkRequest.");
        } else {
            new WorkContinuationImpl(this, null, ExistingWorkPolicy.KEEP, listOf, 0).enqueue();
        }
    }

    public final void onForceStopRunnableCompleted() {
        synchronized (sLock) {
            try {
                this.mForceStopRunnableCompleted = true;
                BroadcastReceiver.PendingResult pendingResult = this.mRescheduleReceiverResult;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.mRescheduleReceiverResult = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void rescheduleEligibleWork() {
        SystemClock systemClock = this.mConfiguration.tracer;
        WorkManagerImpl$$ExternalSyntheticLambda0 workManagerImpl$$ExternalSyntheticLambda0 = new WorkManagerImpl$$ExternalSyntheticLambda0(this, 0);
        systemClock.getClass();
        boolean isEnabled = Room.isEnabled();
        if (isEnabled) {
            try {
                Trace.beginSection(Room.truncatedTraceSectionLabel("ReschedulingWork"));
            } finally {
                if (isEnabled) {
                    Trace.endSection();
                }
            }
        }
        workManagerImpl$$ExternalSyntheticLambda0.invoke();
    }
}
