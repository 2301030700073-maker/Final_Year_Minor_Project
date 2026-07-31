package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.os.Trace;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.unit.DpKt;
import androidx.room.Room;
import androidx.room.TransactionExecutor;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.SystemClock;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.IdGenerator;
import androidx.work.impl.utils.ProcessUtils;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.activitytab.ActivityTabFragment$onCreateView$2$1$1;
import org.wikipedia.language.LanguageUtil;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final Trackers mTrackers;
    public final WorkDatabase mWorkDatabase;
    public final WorkManagerTaskExecutor mWorkTaskExecutor;

    static {
        Logger$LogcatLogger.tagWithPrefix("WorkManagerImpl");
        sDelegatedInstance = null;
        sDefaultInstance = null;
        sLock = new Object();
    }

    public WorkManagerImpl(Context context, final Configuration configuration, WorkManagerTaskExecutor workManagerTaskExecutor, final WorkDatabase workDatabase, final List list, Processor processor, Trackers trackers) {
        Context applicationContext = context.getApplicationContext();
        Continuation continuation = null;
        if (Build.VERSION.SDK_INT >= 24 && LanguageUtil.isDeviceProtectedStorage(applicationContext)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot initialize WorkManager in direct boot mode");
            throw null;
        }
        Logger$LogcatLogger logger$LogcatLogger = new Logger$LogcatLogger(4);
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
        this.mWorkTaskExecutor = workManagerTaskExecutor;
        this.mWorkDatabase = workDatabase;
        this.mProcessor = processor;
        this.mTrackers = trackers;
        this.mConfiguration = configuration;
        this.mSchedulers = list;
        CoroutineDispatcher coroutineDispatcher = workManagerTaskExecutor.mTaskDispatcher;
        coroutineDispatcher.getClass();
        ContextScope CoroutineScope = AwaitKt.CoroutineScope(coroutineDispatcher);
        this.mPreferenceUtils = new IdGenerator(workDatabase);
        final TransactionExecutor transactionExecutor = workManagerTaskExecutor.mBackgroundExecutor;
        String str = Schedulers.TAG;
        processor.addExecutionListener(new ExecutionListener() { // from class: androidx.work.impl.Schedulers$$ExternalSyntheticLambda0
            @Override // androidx.work.impl.ExecutionListener
            public final void onExecuted(WorkGenerationalId workGenerationalId, boolean z) {
                transactionExecutor.execute(new Schedulers$$ExternalSyntheticLambda1(list, workGenerationalId, configuration, workDatabase, 0));
            }
        });
        workManagerTaskExecutor.mBackgroundExecutor.execute(new ForceStopRunnable(applicationContext, this));
        String str2 = UnfinishedWorkListenerKt.TAG;
        if (ProcessUtils.isDefaultProcess(applicationContext, configuration)) {
            int i = 3;
            AwaitKt.launch$default(CoroutineScope, null, null, new ThumbNode$onAttach$1(22, new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(StateFlowKt.distinctUntilChanged(StateFlowKt.buffer$default(new Prefs$observeKeys$$inlined$filter$1(i, DpKt.createFlow(workDatabase.workSpecDao().__db, new String[]{"workspec"}, new Data$$ExternalSyntheticLambda0(13)), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(4, null)), -1)), new ActivityTabFragment$onCreateView$2$1$1(2, applicationContext, continuation), i), continuation), 3);
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
        List listOf = Room.listOf(oneTimeWorkRequest);
        if (listOf.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("enqueue needs at least one WorkRequest.");
        } else {
            new WorkContinuationImpl(this, null, ExistingWorkPolicy.KEEP, listOf).enqueue();
        }
    }

    public final Data.Builder enqueueUniqueWork(String str, ExistingWorkPolicy existingWorkPolicy, OneTimeWorkRequest oneTimeWorkRequest) {
        existingWorkPolicy.getClass();
        return new WorkContinuationImpl(this, str, existingWorkPolicy, Room.listOf(oneTimeWorkRequest)).enqueue();
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
        boolean isEnabled = TuplesKt.isEnabled();
        if (isEnabled) {
            try {
                Trace.beginSection(TuplesKt.truncatedTraceSectionLabel("ReschedulingWork"));
            } finally {
                if (isEnabled) {
                    Trace.endSection();
                }
            }
        }
        workManagerImpl$$ExternalSyntheticLambda0.invoke();
    }
}
