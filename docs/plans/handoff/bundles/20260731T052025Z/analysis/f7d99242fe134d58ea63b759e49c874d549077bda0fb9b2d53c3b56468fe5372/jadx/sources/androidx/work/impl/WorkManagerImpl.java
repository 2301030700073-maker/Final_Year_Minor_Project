package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.os.Trace;
import androidx.camera.camera2.compat.Api24Compat;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.TransactionExecutor;
import androidx.sqlite.SQLite;
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
import app.k9mail.K9App;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.job.WorkManagerConfigurationProvider;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.ui.messagelist.MessageListFragment$onCreate$2;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final LocalStore.AnonymousClass7 mTrackers;
    public final WorkDatabase mWorkDatabase;
    public final Dispatcher mWorkTaskExecutor;

    static {
        Logger$LogcatLogger.tagWithPrefix("WorkManagerImpl");
        sDelegatedInstance = null;
        sDefaultInstance = null;
        sLock = new Object();
    }

    public WorkManagerImpl(Context context, final Configuration configuration, Dispatcher dispatcher, final WorkDatabase workDatabase, final List list, Processor processor, LocalStore.AnonymousClass7 anonymousClass7) {
        Context applicationContext = context.getApplicationContext();
        Continuation continuation = null;
        if (Build.VERSION.SDK_INT >= 24 && Api24Compat.isDeviceProtectedStorage(applicationContext)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot initialize WorkManager in direct boot mode");
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
        this.mTrackers = anonymousClass7;
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
            int i = 3;
            FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(FlowKt.distinctUntilChanged(FlowKt.buffer$default(new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(i, SQLite.createFlow(workDatabase.workSpecDao().__db, false, new String[]{"workspec"}, new Data$$ExternalSyntheticLambda0(11)), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(4, null)), -1)), new MessageListFragment$onCreate$2(applicationContext, continuation, i), 2), CoroutineScope);
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
                    Context applicationContext = context.getApplicationContext();
                    if (!(applicationContext instanceof K9App)) {
                        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                    }
                    WorkManagerConfigurationProvider workManagerConfigurationProvider = (WorkManagerConfigurationProvider) ((K9App) applicationContext).workManagerConfigurationProvider$delegate.getValue();
                    workManagerConfigurationProvider.getClass();
                    Configuration.Builder builder = new Configuration.Builder(0);
                    builder.workerFactory = workManagerConfigurationProvider.workerFactory;
                    initialize(applicationContext, new Configuration(builder));
                    workManagerImpl = getInstance$1(applicationContext);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return workManagerImpl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
    
        r3 = r3.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        if (androidx.work.impl.WorkManagerImpl.sDefaultInstance != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
    
        androidx.work.impl.WorkManagerImpl.sDefaultInstance = androidx.appcompat.app.ActionBar.createWorkManager(r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        androidx.work.impl.WorkManagerImpl.sDelegatedInstance = androidx.work.impl.WorkManagerImpl.sDefaultInstance;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initialize(android.content.Context r3, androidx.work.Configuration r4) {
        /*
            java.lang.Object r0 = androidx.work.impl.WorkManagerImpl.sLock
            monitor-enter(r0)
            androidx.work.impl.WorkManagerImpl r1 = androidx.work.impl.WorkManagerImpl.sDelegatedInstance     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L16
            androidx.work.impl.WorkManagerImpl r2 = androidx.work.impl.WorkManagerImpl.sDefaultInstance     // Catch: java.lang.Throwable -> L14
            if (r2 != 0) goto Lc
            goto L16
        Lc:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L14
            java.lang.String r4 = "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L14
            throw r3     // Catch: java.lang.Throwable -> L14
        L14:
            r3 = move-exception
            goto L2c
        L16:
            if (r1 != 0) goto L2a
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L14
            androidx.work.impl.WorkManagerImpl r1 = androidx.work.impl.WorkManagerImpl.sDefaultInstance     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L26
            androidx.work.impl.WorkManagerImpl r3 = androidx.appcompat.app.ActionBar.createWorkManager(r3, r4)     // Catch: java.lang.Throwable -> L14
            androidx.work.impl.WorkManagerImpl.sDefaultInstance = r3     // Catch: java.lang.Throwable -> L14
        L26:
            androidx.work.impl.WorkManagerImpl r3 = androidx.work.impl.WorkManagerImpl.sDefaultInstance     // Catch: java.lang.Throwable -> L14
            androidx.work.impl.WorkManagerImpl.sDelegatedInstance = r3     // Catch: java.lang.Throwable -> L14
        L2a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            return
        L2c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkManagerImpl.initialize(android.content.Context, androidx.work.Configuration):void");
    }

    public final void enqueue(OneTimeWorkRequest oneTimeWorkRequest) {
        oneTimeWorkRequest.getClass();
        List listOf = IntOffsetKt.listOf(oneTimeWorkRequest);
        if (listOf.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("enqueue needs at least one WorkRequest.");
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
        boolean isEnabled = Util.isEnabled();
        if (isEnabled) {
            try {
                Trace.beginSection(Util.truncatedTraceSectionLabel("ReschedulingWork"));
            } finally {
                if (isEnabled) {
                    Trace.endSection();
                }
            }
        }
        workManagerImpl$$ExternalSyntheticLambda0.invoke();
    }
}
