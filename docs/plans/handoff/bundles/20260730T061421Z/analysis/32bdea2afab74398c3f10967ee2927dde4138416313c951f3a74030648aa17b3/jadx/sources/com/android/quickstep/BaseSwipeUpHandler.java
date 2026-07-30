package com.android.quickstep;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.VibratorWrapper;
import com.android.launcher3.util.WindowBounds;
import com.android.quickstep.BaseSwipeUpHandler;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.InputConsumerController;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Predicate;

@TargetApi(29)
/* loaded from: classes.dex */
public abstract class BaseSwipeUpHandler extends SwipeUpAnimationLogic implements RecentsAnimationCallbacks.RecentsAnimationListener {
    public static final String TAG = "BaseSwipeUpHandler";
    public StatefulActivity mActivity;
    public final ActivityInitListener mActivityInitListener;
    public final BaseActivityInterface mActivityInterface;
    public boolean mCanceled;
    public Runnable mGestureEndCallback;
    public final InputConsumerController mInputConsumer;
    public RecentsAnimationController mRecentsAnimationController;
    public final ArrayList mRecentsAnimationStartCallbacks;
    public RecentsAnimationTargets mRecentsAnimationTargets;
    public RecentsView mRecentsView;
    public boolean mRecentsViewScrollLinked;
    public MultiStateCallback mStateCallback;

    public interface Factory {
        BaseSwipeUpHandler newHandler(GestureState gestureState, long j, boolean z);
    }

    public BaseSwipeUpHandler(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, GestureState gestureState, InputConsumerController inputConsumerController) {
        super(context, recentsAnimationDeviceState, gestureState, new TransformParams());
        this.mRecentsAnimationStartCallbacks = new ArrayList();
        this.mRecentsViewScrollLinked = false;
        BaseActivityInterface activityInterface = gestureState.getActivityInterface();
        this.mActivityInterface = activityInterface;
        this.mActivityInitListener = activityInterface.createActivityInitListener(new Predicate() { // from class: c.a.b.b
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return BaseSwipeUpHandler.this.onActivityInit((Boolean) obj);
            }
        });
        this.mInputConsumer = inputConsumerController;
    }

    public void applyWindowTransform() {
        AnimatorPlaybackController animatorPlaybackController = this.mWindowTransitionController;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.setPlayFraction(this.mCurrentShift.value / this.mDragLengthFactor);
        }
        if (this.mRecentsAnimationTargets != null) {
            if (this.mRecentsViewScrollLinked) {
                this.mTaskViewSimulator.setScroll(this.mRecentsView.getScrollOffset());
            }
            this.mTaskViewSimulator.apply(this.mTransformParams);
        }
    }

    public /* synthetic */ void b(SurfaceTransactionApplier surfaceTransactionApplier) {
        this.mRecentsAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
    }

    public /* synthetic */ void c(final SurfaceTransactionApplier surfaceTransactionApplier) {
        this.mTransformParams.setSyncTransactionApplier(surfaceTransactionApplier);
        runOnRecentsAnimationStart(new Runnable() { // from class: c.a.b.s
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandler.this.b(surfaceTransactionApplier);
            }
        });
    }

    public abstract InputConsumer createNewInputProxyHandler();

    @Override // com.android.quickstep.SwipeUpAnimationLogic
    public RectFSpringAnim createWindowAnimationToHome(float f, SwipeUpAnimationLogic.HomeAnimationFactory homeAnimationFactory) {
        RectFSpringAnim createWindowAnimationToHome = super.createWindowAnimationToHome(f, homeAnimationFactory);
        RecentsAnimationTargets recentsAnimationTargets = this.mRecentsAnimationTargets;
        if (recentsAnimationTargets != null) {
            recentsAnimationTargets.addReleaseCheck(createWindowAnimationToHome);
        }
        return createWindowAnimationToHome;
    }

    public /* synthetic */ void d(View view, int i, int i2, int i3, int i4) {
        if (moveWindowWithRecentsScroll()) {
            updateFinalShift();
        }
    }

    public /* synthetic */ void e() {
        this.mRecentsView.setRecentsAnimationTargets(this.mRecentsAnimationController, this.mRecentsAnimationTargets);
    }

    public /* synthetic */ void f(Consumer consumer, boolean z, TaskView taskView, Boolean bool) {
        consumer.accept(bool);
        if (bool.booleanValue()) {
            if (z) {
                onRestartPreviouslyAppearedTask();
            }
        } else {
            this.mActivityInterface.onLaunchTaskFailed();
            taskView.notifyTaskLaunchFailed(TAG);
            this.mRecentsAnimationController.finish(true, null);
        }
    }

    public int getLastAppearedTaskIndex() {
        return this.mGestureState.getLastAppearedTaskId() != -1 ? this.mRecentsView.getTaskIndexForId(this.mGestureState.getLastAppearedTaskId()) : this.mRecentsView.getRunningTaskIndex();
    }

    public abstract Intent getLaunchIntent();

    public Consumer getRecentsViewDispatcher(float f) {
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            return recentsView.getEventDispatcher(f);
        }
        return null;
    }

    public abstract boolean handleTaskAppeared(RemoteAnimationTargetCompat remoteAnimationTargetCompat);

    public boolean hasStartedNewTask() {
        return this.mGestureState.getLastStartedTaskId() != -1;
    }

    public boolean hasTargets() {
        RecentsAnimationTargets recentsAnimationTargets = this.mRecentsAnimationTargets;
        return recentsAnimationTargets != null && recentsAnimationTargets.hasTargets();
    }

    public void initAfterSubclassConstructor() {
        initTransitionEndpoints(this.mTaskViewSimulator.getOrientationState().getLauncherDeviceProfile());
    }

    public void initWhenReady(Intent intent) {
        ((RecentsModel) RecentsModel.INSTANCE.b(this.mContext)).getTasks(null);
        this.mActivityInitListener.register(intent);
    }

    public void linkRecentsViewScroll() {
        SurfaceTransactionApplier.create(this.mRecentsView, new Consumer() { // from class: c.a.b.p
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BaseSwipeUpHandler.this.c((SurfaceTransactionApplier) obj);
            }
        });
        this.mRecentsView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: c.a.b.r
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
                BaseSwipeUpHandler.this.d(view, i, i2, i3, i4);
            }
        });
        runOnRecentsAnimationStart(new Runnable() { // from class: c.a.b.o
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandler.this.e();
            }
        });
        this.mRecentsViewScrollLinked = true;
    }

    public abstract boolean moveWindowWithRecentsScroll();

    public boolean onActivityInit(Boolean bool) {
        StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
        if (createdActivity == null) {
            return true;
        }
        initTransitionEndpoints(createdActivity.getDeviceProfile());
        return true;
    }

    public abstract void onConsumerAboutToBeSwitched();

    public abstract void onGestureCancelled();

    public abstract void onGestureEnded(float f, PointF pointF, PointF pointF2);

    public void onGestureStarted(boolean z) {
    }

    public abstract void onMotionPauseChanged(boolean z);

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationCanceled(ThumbnailData thumbnailData) {
        this.mRecentsAnimationController = null;
        this.mRecentsAnimationTargets = null;
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.setRecentsAnimationTargets(null, null);
        }
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
        this.mRecentsAnimationController = null;
        this.mRecentsAnimationTargets = null;
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.setRecentsAnimationTargets(null, null);
        }
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        DeviceProfile copy;
        this.mRecentsAnimationController = recentsAnimationController;
        this.mRecentsAnimationTargets = recentsAnimationTargets;
        this.mTransformParams.setTargetSet(recentsAnimationTargets);
        RemoteAnimationTargetCompat findTask = recentsAnimationTargets.findTask(this.mGestureState.getRunningTaskId());
        if (findTask != null) {
            this.mTaskViewSimulator.setPreview(findTask);
        }
        if (this.mActivity == null) {
            DeviceProfile launcherDeviceProfile = this.mTaskViewSimulator.getOrientationState().getLauncherDeviceProfile();
            Rect rect = recentsAnimationTargets.minimizedHomeBounds;
            if (rect == null || findTask == null) {
                copy = launcherDeviceProfile.copy(this.mContext);
            } else {
                copy = launcherDeviceProfile.getMultiWindowProfile(this.mContext, new WindowBounds(this.mActivityInterface.getOverviewWindowBounds(rect, findTask), recentsAnimationTargets.homeContentInsets));
            }
            copy.updateInsets(recentsAnimationTargets.homeContentInsets);
            copy.updateIsSeascape(this.mContext);
            initTransitionEndpoints(copy);
        }
        if (this.mRecentsAnimationStartCallbacks.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.mRecentsAnimationStartCallbacks).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.mRecentsAnimationStartCallbacks.clear();
    }

    public void onRestartPreviouslyAppearedTask() {
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finish(false, null);
        }
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onTaskAppeared(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        if (this.mRecentsAnimationController == null || !handleTaskAppeared(remoteAnimationTargetCompat)) {
            return;
        }
        this.mRecentsAnimationController.finish(false, null);
        this.mActivityInterface.onLaunchTaskSuccess();
        ActiveGestureLog.INSTANCE.addLog("finishRecentsAnimation", false);
    }

    public void performHapticFeedback() {
        ((VibratorWrapper) VibratorWrapper.INSTANCE.b(this.mContext)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
    }

    public void runOnRecentsAnimationStart(Runnable runnable) {
        if (this.mRecentsAnimationTargets == null) {
            this.mRecentsAnimationStartCallbacks.add(runnable);
        } else {
            runnable.run();
        }
    }

    public void setGestureEndCallback(Runnable runnable) {
        this.mGestureEndCallback = runnable;
    }

    public void setIsLikelyToStartNewTask(boolean z) {
    }

    public void startNewTask(final Consumer consumer) {
        final TaskView taskView;
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            this.mRecentsView.getNextPageTaskView().launchTask(false, true);
            return;
        }
        int i = this.mRecentsView.getNextPageTaskView().getTask().key.id;
        if (!this.mCanceled && (taskView = this.mRecentsView.getTaskView(i)) != null) {
            this.mGestureState.updateLastStartedTaskId(i);
            final boolean contains = this.mGestureState.getPreviouslyAppearedTaskIds().contains(Integer.valueOf(i));
            taskView.launchTask(false, true, new Consumer() { // from class: c.a.b.q
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BaseSwipeUpHandler.this.f(consumer, contains, taskView, (Boolean) obj);
                }
            }, Executors.MAIN_EXECUTOR.mHandler);
        }
        this.mCanceled = false;
    }

    @Override // com.android.quickstep.SwipeUpAnimationLogic
    public abstract void updateFinalShift();
}
