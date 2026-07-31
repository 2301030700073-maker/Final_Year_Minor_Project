package androidx.work.impl.background.greedy;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import androidx.core.app.ActivityRecreator;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import androidx.work.WorkInfo;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.ProcessUtils;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import coil3.ImageLoader$Builder;
import coil3.memory.MemoryCacheService;
import coil3.network.NetworkHeaders;
import coil3.svg.internal.AndroidSvg;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GreedyScheduler implements Scheduler, OnConstraintsStateChangedListener, ExecutionListener {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("GreedyScheduler");
    public final Configuration mConfiguration;
    public final Headers.Builder mConstraintsTracker;
    public final Context mContext;
    public final DelayedWorkTracker mDelayedWorkTracker;
    public final HashMap mFirstRunAttempts;
    public Boolean mInDefaultProcess;
    public final Processor mProcessor;
    public boolean mRegisteredExecutionListener;
    public final AndroidSvg mStartStopTokens;
    public final WorkManagerTaskExecutor mTaskExecutor;
    public final ImageLoader$Builder mTimeLimiter;
    public final AndroidSvg mWorkLauncher;
    public final HashMap mConstrainedWorkSpecs = new HashMap();
    public final Object mLock = new Object();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AttemptData {
        public final int mRunAttemptCount;
        public final long mTimeStamp;

        public AttemptData(long j, int i) {
            this.mRunAttemptCount = i;
            this.mTimeStamp = j;
        }
    }

    public GreedyScheduler(Context context, Configuration configuration, Trackers trackers, Processor processor, AndroidSvg androidSvg, WorkManagerTaskExecutor workManagerTaskExecutor) {
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(5);
        AndroidSvg androidSvg2 = new AndroidSvg();
        androidSvg2.svg = builder;
        androidSvg2.renderOptions = new Object();
        this.mStartStopTokens = androidSvg2;
        this.mFirstRunAttempts = new HashMap();
        this.mContext = context;
        MemoryCacheService memoryCacheService = configuration.runnableScheduler;
        this.mDelayedWorkTracker = new DelayedWorkTracker(this, memoryCacheService, configuration.clock);
        this.mTimeLimiter = new ImageLoader$Builder(memoryCacheService, androidSvg);
        this.mTaskExecutor = workManagerTaskExecutor;
        this.mConstraintsTracker = new Headers.Builder(trackers);
        this.mConfiguration = configuration;
        this.mProcessor = processor;
        this.mWorkLauncher = androidSvg;
    }

    @Override // androidx.work.impl.Scheduler
    public final void cancel(String str) {
        List<StartStopToken> remove;
        Runnable runnable;
        String str2 = TAG;
        Boolean bool = this.mInDefaultProcess;
        if (bool == null) {
            bool = Boolean.valueOf(ProcessUtils.isDefaultProcess(this.mContext, this.mConfiguration));
            this.mInDefaultProcess = bool;
        }
        if (!bool.booleanValue()) {
            Logger$LogcatLogger.get().info(str2, "Ignoring schedule request in non-main process");
            return;
        }
        if (!this.mRegisteredExecutionListener) {
            this.mProcessor.addExecutionListener(this);
            this.mRegisteredExecutionListener = true;
        }
        Logger$LogcatLogger.get().debug(str2, "Cancelling work ID " + str);
        DelayedWorkTracker delayedWorkTracker = this.mDelayedWorkTracker;
        if (delayedWorkTracker != null && (runnable = (Runnable) delayedWorkTracker.mRunnables.remove(str)) != null) {
            ((Handler) delayedWorkTracker.mRunnableScheduler.imageLoader).removeCallbacks(runnable);
        }
        AndroidSvg androidSvg = this.mStartStopTokens;
        androidSvg.getClass();
        str.getClass();
        synchronized (androidSvg.renderOptions) {
            remove = ((NetworkHeaders.Builder) androidSvg.svg).remove(str);
        }
        for (StartStopToken startStopToken : remove) {
            this.mTimeLimiter.cancel(startStopToken);
            AndroidSvg androidSvg2 = this.mWorkLauncher;
            androidSvg2.getClass();
            androidSvg2.stopWork(startStopToken, -512);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean hasLimitedSchedulingSlots() {
        return false;
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public final void onConstraintsStateChanged(WorkSpec workSpec, ConstraintsState constraintsState) {
        WorkGenerationalId generationalId = ResultKt.generationalId(workSpec);
        boolean z = constraintsState instanceof ConstraintsState.ConstraintsMet;
        AndroidSvg androidSvg = this.mWorkLauncher;
        ImageLoader$Builder imageLoader$Builder = this.mTimeLimiter;
        String str = TAG;
        AndroidSvg androidSvg2 = this.mStartStopTokens;
        if (z) {
            if (androidSvg2.contains(generationalId)) {
                return;
            }
            Logger$LogcatLogger.get().debug(str, "Constraints met: Scheduling work ID " + generationalId);
            StartStopToken startStopToken = androidSvg2.tokenFor(generationalId);
            imageLoader$Builder.track(startStopToken);
            androidSvg.getClass();
            androidSvg.startWork(startStopToken, null);
            return;
        }
        Logger$LogcatLogger.get().debug(str, "Constraints not met: Cancelling work ID " + generationalId);
        StartStopToken remove = androidSvg2.remove(generationalId);
        if (remove != null) {
            imageLoader$Builder.cancel(remove);
            int i = ((ConstraintsState.ConstraintsNotMet) constraintsState).reason;
            androidSvg.getClass();
            androidSvg.stopWork(remove, i);
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void onExecuted(WorkGenerationalId workGenerationalId, boolean z) {
        StartStopToken remove = this.mStartStopTokens.remove(workGenerationalId);
        if (remove != null) {
            this.mTimeLimiter.cancel(remove);
        }
        removeConstraintTrackingFor(workGenerationalId);
        if (z) {
            return;
        }
        synchronized (this.mLock) {
            this.mFirstRunAttempts.remove(workGenerationalId);
        }
    }

    public final void removeConstraintTrackingFor(WorkGenerationalId workGenerationalId) {
        Job job;
        synchronized (this.mLock) {
            job = (Job) this.mConstrainedWorkSpecs.remove(workGenerationalId);
        }
        if (job != null) {
            Logger$LogcatLogger.get().debug(TAG, "Stopping tracking for " + workGenerationalId);
            job.cancel(null);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final void schedule(WorkSpec... workSpecArr) {
        Boolean bool = this.mInDefaultProcess;
        if (bool == null) {
            bool = Boolean.valueOf(ProcessUtils.isDefaultProcess(this.mContext, this.mConfiguration));
            this.mInDefaultProcess = bool;
        }
        if (!bool.booleanValue()) {
            Logger$LogcatLogger.get().info(TAG, "Ignoring schedule request in a secondary process");
            return;
        }
        if (!this.mRegisteredExecutionListener) {
            this.mProcessor.addExecutionListener(this);
            this.mRegisteredExecutionListener = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (WorkSpec workSpec : workSpecArr) {
            if (!this.mStartStopTokens.contains(ResultKt.generationalId(workSpec))) {
                long max = Math.max(workSpec.calculateNextRunTime(), throttleIfNeeded(workSpec));
                SystemClock systemClock = this.mConfiguration.clock;
                long currentTimeMillis = System.currentTimeMillis();
                if (workSpec.state == WorkInfo.State.ENQUEUED) {
                    if (currentTimeMillis < max) {
                        DelayedWorkTracker delayedWorkTracker = this.mDelayedWorkTracker;
                        if (delayedWorkTracker != null) {
                            MemoryCacheService memoryCacheService = delayedWorkTracker.mRunnableScheduler;
                            HashMap hashMap = delayedWorkTracker.mRunnables;
                            Runnable runnable = (Runnable) hashMap.remove(workSpec.id);
                            if (runnable != null) {
                                ((Handler) memoryCacheService.imageLoader).removeCallbacks(runnable);
                            }
                            ActivityRecreator.AnonymousClass1 anonymousClass1 = new ActivityRecreator.AnonymousClass1(7, delayedWorkTracker, workSpec, false);
                            hashMap.put(workSpec.id, anonymousClass1);
                            ((Handler) memoryCacheService.imageLoader).postDelayed(anonymousClass1, max - System.currentTimeMillis());
                        }
                    } else if (!Intrinsics.areEqual(Constraints.NONE, workSpec.constraints)) {
                        Constraints constraints = workSpec.constraints;
                        if (constraints.requiresDeviceIdle) {
                            Logger$LogcatLogger.get().debug(TAG, "Ignoring " + workSpec + ". Requires device idle.");
                        } else if (Build.VERSION.SDK_INT < 24 || !constraints.hasContentUriTriggers()) {
                            hashSet.add(workSpec);
                            hashSet2.add(workSpec.id);
                        } else {
                            Logger$LogcatLogger.get().debug(TAG, "Ignoring " + workSpec + ". Requires ContentUri triggers.");
                        }
                    } else if (!this.mStartStopTokens.contains(ResultKt.generationalId(workSpec))) {
                        Logger$LogcatLogger.get().debug(TAG, "Starting work for " + workSpec.id);
                        AndroidSvg androidSvg = this.mStartStopTokens;
                        androidSvg.getClass();
                        StartStopToken startStopToken = androidSvg.tokenFor(ResultKt.generationalId(workSpec));
                        this.mTimeLimiter.track(startStopToken);
                        AndroidSvg androidSvg2 = this.mWorkLauncher;
                        androidSvg2.getClass();
                        androidSvg2.startWork(startStopToken, null);
                    }
                }
            }
        }
        synchronized (this.mLock) {
            try {
                if (!hashSet.isEmpty()) {
                    Logger$LogcatLogger.get().debug(TAG, "Starting tracking for " + TextUtils.join(",", hashSet2));
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        WorkSpec workSpec2 = (WorkSpec) it.next();
                        WorkGenerationalId generationalId = ResultKt.generationalId(workSpec2);
                        if (!this.mConstrainedWorkSpecs.containsKey(generationalId)) {
                            this.mConstrainedWorkSpecs.put(generationalId, WorkConstraintsTrackerKt.listen(this.mConstraintsTracker, workSpec2, this.mTaskExecutor.mTaskDispatcher, this));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final long throttleIfNeeded(WorkSpec workSpec) {
        long max;
        synchronized (this.mLock) {
            try {
                WorkGenerationalId generationalId = ResultKt.generationalId(workSpec);
                AttemptData attemptData = (AttemptData) this.mFirstRunAttempts.get(generationalId);
                if (attemptData == null) {
                    int i = workSpec.runAttemptCount;
                    SystemClock systemClock = this.mConfiguration.clock;
                    attemptData = new AttemptData(System.currentTimeMillis(), i);
                    this.mFirstRunAttempts.put(generationalId, attemptData);
                }
                max = (Math.max((workSpec.runAttemptCount - attemptData.mRunAttemptCount) - 5, 0) * 30000) + attemptData.mTimeStamp;
            } catch (Throwable th) {
                throw th;
            }
        }
        return max;
    }
}
