package androidx.work.impl.background.greedy;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import androidx.core.app.ActivityRecreator;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger$LogcatLogger;
import androidx.work.WorkInfo$State;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.ProcessUtils;
import coil3.ComponentRegistry;
import coil3.memory.MemoryCacheService;
import com.grack.nanojson.JsonBuilder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Job;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GreedyScheduler implements Scheduler, OnConstraintsStateChangedListener, ExecutionListener {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("GreedyScheduler");
    public final Configuration mConfiguration;
    public final WorkConstraintsTracker mConstraintsTracker;
    public final Context mContext;
    public final DelayedWorkTracker mDelayedWorkTracker;
    public Boolean mInDefaultProcess;
    public final Processor mProcessor;
    public boolean mRegisteredExecutionListener;
    public final Dispatcher mTaskExecutor;
    public final Dispatcher mTimeLimiter;
    public final JsonBuilder mWorkLauncher;
    public final HashMap mConstrainedWorkSpecs = new HashMap();
    public final Object mLock = new Object();
    public final JsonBuilder mStartStopTokens = new JsonBuilder(new Data.Builder(4));
    public final HashMap mFirstRunAttempts = new HashMap();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AttemptData {
        public final int mRunAttemptCount;
        public final long mTimeStamp;

        public AttemptData(int i, long j) {
            this.mRunAttemptCount = i;
            this.mTimeStamp = j;
        }
    }

    public GreedyScheduler(Context context, Configuration configuration, ComponentRegistry.Builder builder, Processor processor, JsonBuilder jsonBuilder, Dispatcher dispatcher) {
        this.mContext = context;
        MemoryCacheService memoryCacheService = configuration.runnableScheduler;
        this.mDelayedWorkTracker = new DelayedWorkTracker(this, memoryCacheService, configuration.clock);
        this.mTimeLimiter = new Dispatcher(memoryCacheService, jsonBuilder);
        this.mTaskExecutor = dispatcher;
        this.mConstraintsTracker = new WorkConstraintsTracker(builder);
        this.mConfiguration = configuration;
        this.mProcessor = processor;
        this.mWorkLauncher = jsonBuilder;
    }

    @Override // androidx.work.impl.Scheduler
    public final void cancel(String str) {
        List<StartStopToken> remove;
        Runnable runnable;
        String str2 = TAG;
        if (this.mInDefaultProcess == null) {
            this.mInDefaultProcess = Boolean.valueOf(ProcessUtils.isDefaultProcess(this.mContext, this.mConfiguration));
        }
        if (!this.mInDefaultProcess.booleanValue()) {
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
        JsonBuilder jsonBuilder = this.mStartStopTokens;
        jsonBuilder.getClass();
        str.getClass();
        synchronized (jsonBuilder.root) {
            remove = ((Data.Builder) jsonBuilder.json).remove(str);
        }
        for (StartStopToken startStopToken : remove) {
            this.mTimeLimiter.cancel(startStopToken);
            JsonBuilder jsonBuilder2 = this.mWorkLauncher;
            jsonBuilder2.getClass();
            jsonBuilder2.stopWork(startStopToken, -512);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean hasLimitedSchedulingSlots() {
        return false;
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public final void onConstraintsStateChanged(WorkSpec workSpec, ConstraintsState constraintsState) {
        WorkGenerationalId generationalId = RangesKt.generationalId(workSpec);
        boolean z = constraintsState instanceof ConstraintsState.ConstraintsMet;
        JsonBuilder jsonBuilder = this.mWorkLauncher;
        Dispatcher dispatcher = this.mTimeLimiter;
        String str = TAG;
        JsonBuilder jsonBuilder2 = this.mStartStopTokens;
        if (z) {
            if (jsonBuilder2.contains(generationalId)) {
                return;
            }
            Logger$LogcatLogger.get().debug(str, "Constraints met: Scheduling work ID " + generationalId);
            StartStopToken startStopToken = jsonBuilder2.tokenFor(generationalId);
            dispatcher.track(startStopToken);
            jsonBuilder.getClass();
            jsonBuilder.startWork(startStopToken, null);
            return;
        }
        Logger$LogcatLogger.get().debug(str, "Constraints not met: Cancelling work ID " + generationalId);
        StartStopToken remove = jsonBuilder2.remove(generationalId);
        if (remove != null) {
            dispatcher.cancel(remove);
            int i = ((ConstraintsState.ConstraintsNotMet) constraintsState).reason;
            jsonBuilder.getClass();
            jsonBuilder.stopWork(remove, i);
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
        if (this.mInDefaultProcess == null) {
            this.mInDefaultProcess = Boolean.valueOf(ProcessUtils.isDefaultProcess(this.mContext, this.mConfiguration));
        }
        if (!this.mInDefaultProcess.booleanValue()) {
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
            if (!this.mStartStopTokens.contains(RangesKt.generationalId(workSpec))) {
                long max = Math.max(workSpec.calculateNextRunTime(), throttleIfNeeded(workSpec));
                this.mConfiguration.clock.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                if (workSpec.state == WorkInfo$State.ENQUEUED) {
                    if (currentTimeMillis < max) {
                        DelayedWorkTracker delayedWorkTracker = this.mDelayedWorkTracker;
                        if (delayedWorkTracker != null) {
                            MemoryCacheService memoryCacheService = delayedWorkTracker.mRunnableScheduler;
                            HashMap hashMap = delayedWorkTracker.mRunnables;
                            Runnable runnable = (Runnable) hashMap.remove(workSpec.id);
                            if (runnable != null) {
                                ((Handler) memoryCacheService.imageLoader).removeCallbacks(runnable);
                            }
                            ActivityRecreator.AnonymousClass1 anonymousClass1 = new ActivityRecreator.AnonymousClass1(10, delayedWorkTracker, workSpec, false);
                            hashMap.put(workSpec.id, anonymousClass1);
                            delayedWorkTracker.mClock.getClass();
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
                    } else if (!this.mStartStopTokens.contains(RangesKt.generationalId(workSpec))) {
                        Logger$LogcatLogger.get().debug(TAG, "Starting work for " + workSpec.id);
                        JsonBuilder jsonBuilder = this.mStartStopTokens;
                        jsonBuilder.getClass();
                        StartStopToken startStopToken = jsonBuilder.tokenFor(RangesKt.generationalId(workSpec));
                        this.mTimeLimiter.track(startStopToken);
                        JsonBuilder jsonBuilder2 = this.mWorkLauncher;
                        jsonBuilder2.getClass();
                        jsonBuilder2.startWork(startStopToken, null);
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
                        WorkGenerationalId generationalId = RangesKt.generationalId(workSpec2);
                        if (!this.mConstrainedWorkSpecs.containsKey(generationalId)) {
                            this.mConstrainedWorkSpecs.put(generationalId, WorkConstraintsTrackerKt.listen(this.mConstraintsTracker, workSpec2, (CoroutineDispatcher) this.mTaskExecutor.readyAsyncCalls, this));
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
                WorkGenerationalId generationalId = RangesKt.generationalId(workSpec);
                AttemptData attemptData = (AttemptData) this.mFirstRunAttempts.get(generationalId);
                if (attemptData == null) {
                    int i = workSpec.runAttemptCount;
                    this.mConfiguration.clock.getClass();
                    attemptData = new AttemptData(i, System.currentTimeMillis());
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
