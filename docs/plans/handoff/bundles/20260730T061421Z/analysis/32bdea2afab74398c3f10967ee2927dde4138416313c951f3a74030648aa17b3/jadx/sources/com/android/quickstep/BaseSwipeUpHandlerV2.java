package com.android.quickstep;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.SystemClock;
import android.os.Trace;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import c.a.a.E0.a;
import c.a.a.E0.h;
import c.a.b.K;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.BaseSwipeUpHandlerV2;
import com.android.quickstep.GestureState;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.inputconsumers.OverviewInputConsumer;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.ShelfPeekAnim;
import com.android.quickstep.views.LiveTileOverlay;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputConsumerController;
import com.android.systemui.shared.system.LatencyTrackerCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.TaskInfoCompat;
import com.android.systemui.shared.system.TaskStackChangeListener;
import java.util.Objects;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public abstract class BaseSwipeUpHandlerV2 extends BaseSwipeUpHandler implements View.OnApplyWindowInsetsListener {
    public static final int LOG_NO_OP_PAGE_INDEX = -1;
    public static final long MAX_SWIPE_DURATION = 350;
    public static final long MIN_OVERSHOOT_DURATION = 120;
    public static final float MIN_PROGRESS_FOR_OVERVIEW = 0.7f;
    public static final long RECENTS_ATTACH_DURATION = 300;
    public static final String SCREENSHOT_CAPTURED_EVT = "ScreenshotCaptured";
    public TaskStackChangeListener mActivityRestartListener;
    public BaseActivityInterface.AnimationFactory mAnimationFactory;
    public boolean mContinuingLastGesture;
    public PointF mDownPos;
    public boolean mGestureStarted;
    public boolean mHasLauncherTransitionControllerStarted;
    public boolean mIsLikelyToStartNewTask;
    public boolean mIsShelfPeeking;
    public long mLauncherFrameDrawnTime;
    public AnimatorPlaybackController mLauncherTransitionController;
    public int mLogAction;
    public int mLogDirection;
    public final Runnable mOnDeferredActivityLaunch;
    public boolean mPassedOverviewThreshold;
    public SwipeUpAnimationLogic.RunningWindowAnim mRunningWindowAnim;
    public final TaskAnimationManager mTaskAnimationManager;
    public ThumbnailData mTaskSnapshot;
    public final long mTouchTimeMs;
    public boolean mWasLauncherAlreadyVisible;
    public static final String TAG = BaseSwipeUpHandlerV2.class.getSimpleName();
    public static final String[] STATE_NAMES = null;
    public static final int STATE_LAUNCHER_PRESENT = getFlagForIndex(0, "STATE_LAUNCHER_PRESENT");
    public static final int STATE_LAUNCHER_STARTED = getFlagForIndex(1, "STATE_LAUNCHER_STARTED");
    public static final int STATE_LAUNCHER_DRAWN = getFlagForIndex(2, "STATE_LAUNCHER_DRAWN");
    public static final int STATE_APP_CONTROLLER_RECEIVED = getFlagForIndex(3, "STATE_APP_CONTROLLER_RECEIVED");
    public static final int STATE_SCALED_CONTROLLER_HOME = getFlagForIndex(4, "STATE_SCALED_CONTROLLER_HOME");
    public static final int STATE_SCALED_CONTROLLER_RECENTS = getFlagForIndex(5, "STATE_SCALED_CONTROLLER_RECENTS");
    public static final int STATE_HANDLER_INVALIDATED = getFlagForIndex(6, "STATE_HANDLER_INVALIDATED");
    public static final int STATE_GESTURE_STARTED = getFlagForIndex(7, "STATE_GESTURE_STARTED");
    public static final int STATE_GESTURE_CANCELLED = getFlagForIndex(8, "STATE_GESTURE_CANCELLED");
    public static final int STATE_GESTURE_COMPLETED = getFlagForIndex(9, "STATE_GESTURE_COMPLETED");
    public static final int STATE_CAPTURE_SCREENSHOT = getFlagForIndex(10, "STATE_CAPTURE_SCREENSHOT");
    public static final int STATE_SCREENSHOT_CAPTURED = getFlagForIndex(11, "STATE_SCREENSHOT_CAPTURED");
    public static final int STATE_SCREENSHOT_VIEW_SHOWN = getFlagForIndex(12, "STATE_SCREENSHOT_VIEW_SHOWN");
    public static final int STATE_RESUME_LAST_TASK = getFlagForIndex(13, "STATE_RESUME_LAST_TASK");
    public static final int STATE_START_NEW_TASK = getFlagForIndex(14, "STATE_START_NEW_TASK");
    public static final int STATE_CURRENT_TASK_FINISHED = getFlagForIndex(15, "STATE_CURRENT_TASK_FINISHED");
    public static final int LAUNCHER_UI_STATES = (STATE_LAUNCHER_PRESENT | STATE_LAUNCHER_DRAWN) | STATE_LAUNCHER_STARTED;
    public static final float SWIPE_DURATION_MULTIPLIER = Math.min(1.4285715f, 3.3333333f);

    /* renamed from: com.android.quickstep.BaseSwipeUpHandlerV2$1, reason: invalid class name */
    public class AnonymousClass1 implements ViewTreeObserver.OnDrawListener {
        public boolean mHandled = false;
        public final /* synthetic */ StatefulActivity val$activity;
        public final /* synthetic */ View val$dragLayer;
        public final /* synthetic */ Object val$traceToken;

        public AnonymousClass1(Object obj, View view, StatefulActivity statefulActivity) {
            this.val$traceToken = obj;
            this.val$dragLayer = view;
            this.val$activity = statefulActivity;
        }

        public /* synthetic */ void a(View view) {
            view.getViewTreeObserver().removeOnDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            if (this.mHandled) {
                return;
            }
            this.mHandled = true;
            Trace.endSection();
            final View view = this.val$dragLayer;
            view.post(new Runnable() { // from class: c.a.b.t
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSwipeUpHandlerV2.AnonymousClass1.this.a(view);
                }
            });
            StatefulActivity statefulActivity = this.val$activity;
            BaseSwipeUpHandlerV2 baseSwipeUpHandlerV2 = BaseSwipeUpHandlerV2.this;
            if (statefulActivity != baseSwipeUpHandlerV2.mActivity) {
                return;
            }
            baseSwipeUpHandlerV2.mStateCallback.a(BaseSwipeUpHandlerV2.STATE_LAUNCHER_DRAWN);
        }
    }

    /* renamed from: com.android.quickstep.BaseSwipeUpHandlerV2$6, reason: invalid class name */
    public /* synthetic */ class AnonymousClass6 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget;

        static {
            int[] iArr = new int[GestureState.GestureEndTarget.values().length];
            $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget = iArr;
            try {
                GestureState.GestureEndTarget gestureEndTarget = GestureState.GestureEndTarget.HOME;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget;
                GestureState.GestureEndTarget gestureEndTarget2 = GestureState.GestureEndTarget.RECENTS;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget;
                GestureState.GestureEndTarget gestureEndTarget3 = GestureState.GestureEndTarget.NEW_TASK;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget;
                GestureState.GestureEndTarget gestureEndTarget4 = GestureState.GestureEndTarget.LAST_TASK;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public BaseSwipeUpHandlerV2(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, long j, boolean z, InputConsumerController inputConsumerController) {
        super(context, recentsAnimationDeviceState, gestureState, inputConsumerController);
        this.mAnimationFactory = new BaseActivityInterface.AnimationFactory() { // from class: c.a.b.V
            @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
            public final void createActivityInterface(long j2) {
                BaseSwipeUpHandlerV2.G(j2);
            }
        };
        this.mLogAction = 3;
        this.mLogDirection = 1;
        this.mOnDeferredActivityLaunch = new Runnable() { // from class: c.a.b.M
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.onDeferredActivityLaunch();
            }
        };
        this.mActivityRestartListener = new TaskStackChangeListener() { // from class: com.android.quickstep.BaseSwipeUpHandlerV2.2
            @Override // com.android.systemui.shared.system.TaskStackChangeListener
            public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z2, boolean z3, boolean z4) {
                if (runningTaskInfo.taskId != BaseSwipeUpHandlerV2.this.mGestureState.getRunningTaskId() || TaskInfoCompat.getActivityType(runningTaskInfo) == 2) {
                    return;
                }
                BaseSwipeUpHandlerV2.this.endRunningWindowAnim(true);
                ActivityManagerWrapper.getInstance().unregisterTaskStackListener(BaseSwipeUpHandlerV2.this.mActivityRestartListener);
                ActivityManagerWrapper.getInstance().startActivityFromRecents(runningTaskInfo.taskId, null);
            }
        };
        this.mTaskAnimationManager = taskAnimationManager;
        this.mTouchTimeMs = j;
        this.mContinuingLastGesture = z;
        initAfterSubclassConstructor();
        initStateCallbacks();
    }

    public static /* synthetic */ void G(long j) {
    }

    private void addLiveTileOverlay() {
        if (LiveTileOverlay.INSTANCE.attach(this.mActivity.getRootView().getOverlay())) {
            this.mRecentsView.setLiveTileOverlayAttached(true);
        }
    }

    private void animateToProgress(final float f, final float f2, final long j, final Interpolator interpolator, final GestureState.GestureEndTarget gestureEndTarget, final PointF pointF) {
        runOnRecentsAnimationStart(new Runnable() { // from class: c.a.b.y
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.t(f, f2, j, interpolator, gestureEndTarget, pointF);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: animateToProgressInternal, reason: merged with bridge method [inline-methods] */
    public void t(float f, final float f2, long j, Interpolator interpolator, final GestureState.GestureEndTarget gestureEndTarget, PointF pointF) {
        this.mGestureState.setEndTarget(gestureEndTarget, false);
        maybeUpdateRecentsAttachedState();
        if (this.mGestureState.getEndTarget().isLauncher) {
            ActivityManagerWrapper.getInstance().registerTaskStackListener(this.mActivityRestartListener);
        }
        if (this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME) {
            SwipeUpAnimationLogic.HomeAnimationFactory createHomeAnimationFactory = createHomeAnimationFactory(j);
            RectFSpringAnim createWindowAnimationToHome = createWindowAnimationToHome(f, createHomeAnimationFactory);
            createWindowAnimationToHome.addAnimatorListener(new AnimationSuccessListener() { // from class: com.android.quickstep.BaseSwipeUpHandlerV2.3
                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public void onAnimationSuccess(Animator animator) {
                    BaseSwipeUpHandlerV2 baseSwipeUpHandlerV2 = BaseSwipeUpHandlerV2.this;
                    if (baseSwipeUpHandlerV2.mRecentsAnimationController == null) {
                        return;
                    }
                    baseSwipeUpHandlerV2.mGestureState.setState(GestureState.STATE_END_TARGET_ANIMATION_FINISHED);
                }
            });
            getOrientationHandler().adjustFloatingIconStartVelocity(pointF);
            createWindowAnimationToHome.start(this.mContext, pointF);
            createHomeAnimationFactory.playAtomicAnimation(pointF.y);
            this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(createWindowAnimationToHome);
            this.mLauncherTransitionController = null;
        } else {
            ObjectAnimator animateToValue = this.mCurrentShift.animateToValue(f, f2);
            animateToValue.setDuration(j).setInterpolator(interpolator);
            animateToValue.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.b.H
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BaseSwipeUpHandlerV2.this.u(valueAnimator);
                }
            });
            animateToValue.addListener(new AnimationSuccessListener() { // from class: com.android.quickstep.BaseSwipeUpHandlerV2.4
                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public void onAnimationSuccess(Animator animator) {
                    BaseSwipeUpHandlerV2 baseSwipeUpHandlerV2 = BaseSwipeUpHandlerV2.this;
                    if (baseSwipeUpHandlerV2.mRecentsAnimationController == null) {
                        return;
                    }
                    RecentsView recentsView = baseSwipeUpHandlerV2.mRecentsView;
                    if (recentsView != null) {
                        int nextPage = recentsView.getNextPage();
                        int lastAppearedTaskIndex = BaseSwipeUpHandlerV2.this.getLastAppearedTaskIndex();
                        boolean hasStartedNewTask = BaseSwipeUpHandlerV2.this.hasStartedNewTask();
                        if (gestureEndTarget == GestureState.GestureEndTarget.NEW_TASK && nextPage == lastAppearedTaskIndex && !hasStartedNewTask) {
                            BaseSwipeUpHandlerV2.this.mGestureState.setEndTarget(GestureState.GestureEndTarget.LAST_TASK);
                        } else if (gestureEndTarget == GestureState.GestureEndTarget.LAST_TASK && hasStartedNewTask) {
                            BaseSwipeUpHandlerV2.this.mGestureState.setEndTarget(GestureState.GestureEndTarget.NEW_TASK);
                        }
                    }
                    BaseSwipeUpHandlerV2.this.mGestureState.setState(GestureState.STATE_END_TARGET_ANIMATION_FINISHED);
                }
            });
            animateToValue.start();
            this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(animateToValue);
        }
        if (this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME) {
            f = RecentsState.NO_OFFSET;
        }
        h hVar = new h(interpolator, f, f2);
        AnimatorPlaybackController animatorPlaybackController = this.mLauncherTransitionController;
        if (animatorPlaybackController == null) {
            return;
        }
        if (f == f2 || j <= 0) {
            AnimatorPlaybackController.callAnimatorCommandRecursively(this.mLauncherTransitionController.mAnim, new a(new TimeInterpolator() { // from class: c.a.b.J
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f3) {
                    float f4 = f2;
                    BaseSwipeUpHandlerV2.v(f4, f3);
                    return f4;
                }
            }));
        } else {
            AnimatorPlaybackController.callAnimatorCommandRecursively(animatorPlaybackController.mAnim, new a(hVar));
        }
        this.mLauncherTransitionController.mAnimationPlayer.setDuration(Math.max(0L, j));
        if (FeatureFlags.UNSTABLE_SPRINGS.get()) {
            this.mLauncherTransitionController.dispatchOnStart();
        }
        this.mLauncherTransitionController.mAnimationPlayer.start();
        this.mHasLauncherTransitionControllerStarted = true;
    }

    private void buildAnimationController() {
        if (canCreateNewOrUpdateExistingLauncherTransitionController()) {
            initTransitionEndpoints(this.mActivity.getDeviceProfile());
            this.mAnimationFactory.createActivityInterface(this.mTransitionDragLength);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x001c, code lost:
    
        if (r3 != r0) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.quickstep.GestureState.GestureEndTarget calculateEndTarget(android.graphics.PointF r6, float r7, boolean r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.BaseSwipeUpHandlerV2.calculateEndTarget(android.graphics.PointF, float, boolean, boolean):com.android.quickstep.GestureState$GestureEndTarget");
    }

    private boolean canCreateNewOrUpdateExistingLauncherTransitionController() {
        return (this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME || this.mHasLauncherTransitionControllerStarted) ? false : true;
    }

    private void cancelCurrentAnimation() {
        this.mCanceled = true;
        this.mCurrentShift.cancelAnimation();
        AnimatorPlaybackController animatorPlaybackController = this.mLauncherTransitionController;
        if (animatorPlaybackController == null || !animatorPlaybackController.mAnimationPlayer.isStarted()) {
            return;
        }
        this.mLauncherTransitionController.mAnimationPlayer.cancel();
    }

    private void computeRecentsScrollIfInvisible() {
        RecentsView recentsView = this.mRecentsView;
        if (recentsView == null || recentsView.getVisibility() == 0) {
            return;
        }
        this.mRecentsView.computeScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueComputingRecentsScrollIfNecessary() {
        if (this.mGestureState.hasState(GestureState.STATE_RECENTS_SCROLLING_FINISHED) || this.mStateCallback.hasStates(STATE_HANDLER_INVALIDATED) || this.mCanceled) {
            return;
        }
        computeRecentsScrollIfInvisible();
        this.mRecentsView.postOnAnimation(new K(this));
    }

    private void doLogGesture(GestureState.GestureEndTarget gestureEndTarget) {
        if (this.mDp == null || this.mDownPos == null) {
            return;
        }
        int nextPage = gestureEndTarget == GestureState.GestureEndTarget.LAST_TASK ? -1 : this.mRecentsView.getNextPage();
        UserEventDispatcher newInstance = UserEventDispatcher.newInstance(this.mContext);
        int i = this.mLogAction;
        int i2 = this.mLogDirection;
        PointF pointF = this.mDownPos;
        newInstance.logStateChangeAction(i, i2, (int) pointF.x, (int) pointF.y, 11, 13, gestureEndTarget.containerType, nextPage);
        int ordinal = gestureEndTarget.ordinal();
        StatsLogManager.newInstance(this.mContext).logger().withSrcState(1).withDstState(StatsLogManager.containerTypeToAtomState(gestureEndTarget.containerType)).log(ordinal != 0 ? ordinal != 1 ? (ordinal == 2 || ordinal == 3) ? this.mLogDirection == 3 ? StatsLogManager.LauncherEvent.LAUNCHER_QUICKSWITCH_LEFT : StatsLogManager.LauncherEvent.LAUNCHER_QUICKSWITCH_RIGHT : StatsLogManager.LauncherEvent.IGNORE : StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_GESTURE : StatsLogManager.LauncherEvent.LAUNCHER_HOME_GESTURE);
    }

    private void endLauncherTransitionController() {
        setShelfState(ShelfPeekAnim.ShelfAnimState.CANCEL, Interpolators.LINEAR, 0L);
        AnimatorPlaybackController animatorPlaybackController = this.mLauncherTransitionController;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.mAnimationPlayer.end();
            this.mLauncherTransitionController = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endRunningWindowAnim(boolean z) {
        SwipeUpAnimationLogic.RunningWindowAnim runningWindowAnim = this.mRunningWindowAnim;
        if (runningWindowAnim != null) {
            if (z) {
                runningWindowAnim.cancel();
            } else {
                runningWindowAnim.end();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishCurrentTransitionToHome() {
        if (!hasTargets() || this.mRecentsAnimationController == null) {
            this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
        } else {
            finishRecentsControllerToHome(new Runnable() { // from class: c.a.b.Z
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSwipeUpHandlerV2.this.y();
                }
            });
        }
        ActiveGestureLog.INSTANCE.addLog("finishRecentsAnimation", true);
        doLogGesture(GestureState.GestureEndTarget.HOME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishCurrentTransitionToRecents() {
        RecentsAnimationController recentsAnimationController;
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
        } else if (!hasTargets() || (recentsAnimationController = this.mRecentsAnimationController) == null) {
            this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
        } else {
            recentsAnimationController.finish(true, new Runnable() { // from class: c.a.b.O
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSwipeUpHandlerV2.this.z();
                }
            });
        }
        ActiveGestureLog.INSTANCE.addLog("finishRecentsAnimation", true);
    }

    public static int getFlagForIndex(int i, String str) {
        return 1 << i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleNormalGestureEnd(float r20, boolean r21, android.graphics.PointF r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.BaseSwipeUpHandlerV2.handleNormalGestureEnd(float, boolean, android.graphics.PointF, boolean):void");
    }

    private void initStateCallbacks() {
        MultiStateCallback multiStateCallback = new MultiStateCallback(STATE_NAMES);
        this.mStateCallback = multiStateCallback;
        multiStateCallback.runOnceAtState(STATE_LAUNCHER_PRESENT | STATE_GESTURE_STARTED, new Runnable() { // from class: c.a.b.N
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.onLauncherPresentAndGestureStarted();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_LAUNCHER_DRAWN | STATE_GESTURE_STARTED, new Runnable() { // from class: c.a.b.L
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.initializeLauncherAnimationController();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_LAUNCHER_PRESENT | STATE_LAUNCHER_DRAWN, new Runnable() { // from class: c.a.b.x
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.launcherFrameDrawn();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_LAUNCHER_PRESENT | STATE_LAUNCHER_STARTED | STATE_GESTURE_CANCELLED, new Runnable() { // from class: c.a.b.c0
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.resetStateForAnimationCancel();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_RESUME_LAST_TASK | STATE_APP_CONTROLLER_RECEIVED, new Runnable() { // from class: c.a.b.T
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.resumeLastTask();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_START_NEW_TASK | STATE_SCREENSHOT_CAPTURED, new Runnable() { // from class: c.a.b.S
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.startNewTask();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_LAUNCHER_PRESENT | STATE_APP_CONTROLLER_RECEIVED | STATE_LAUNCHER_DRAWN | STATE_CAPTURE_SCREENSHOT, new Runnable() { // from class: c.a.b.d0
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.switchToScreenshot();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_SCREENSHOT_CAPTURED | STATE_GESTURE_COMPLETED | STATE_SCALED_CONTROLLER_RECENTS, new Runnable() { // from class: c.a.b.a0
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.finishCurrentTransitionToRecents();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_SCREENSHOT_CAPTURED | STATE_GESTURE_COMPLETED | STATE_SCALED_CONTROLLER_HOME, new Runnable() { // from class: c.a.b.A
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.finishCurrentTransitionToHome();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_SCALED_CONTROLLER_HOME | STATE_CURRENT_TASK_FINISHED, new Runnable() { // from class: c.a.b.u
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.reset();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_LAUNCHER_PRESENT | STATE_APP_CONTROLLER_RECEIVED | STATE_LAUNCHER_DRAWN | STATE_SCALED_CONTROLLER_RECENTS | STATE_CURRENT_TASK_FINISHED | STATE_GESTURE_COMPLETED | STATE_GESTURE_STARTED, new Runnable() { // from class: c.a.b.P
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.setupLauncherUiAfterSwipeUpToRecentsAnimation();
            }
        });
        this.mGestureState.runOnceAtState(GestureState.STATE_END_TARGET_ANIMATION_FINISHED, new K(this));
        this.mGestureState.runOnceAtState(GestureState.STATE_END_TARGET_ANIMATION_FINISHED | GestureState.STATE_RECENTS_SCROLLING_FINISHED, new Runnable() { // from class: c.a.b.G
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.onSettledOnEndTarget();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_HANDLER_INVALIDATED, new Runnable() { // from class: c.a.b.F
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.invalidateHandler();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_LAUNCHER_PRESENT | STATE_HANDLER_INVALIDATED, new Runnable() { // from class: c.a.b.Q
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.invalidateHandlerWithLauncher();
            }
        });
        this.mStateCallback.runOnceAtState(STATE_HANDLER_INVALIDATED | STATE_RESUME_LAST_TASK, new Runnable() { // from class: c.a.b.z
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.notifyTransitionCancelled();
            }
        });
        this.mGestureState.runOnceAtState(GestureState.STATE_END_TARGET_SET, new Runnable() { // from class: c.a.b.b0
            @Override // java.lang.Runnable
            public final void run() {
                BaseSwipeUpHandlerV2.this.B();
            }
        });
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            return;
        }
        this.mStateCallback.addChangeListener(STATE_APP_CONTROLLER_RECEIVED | STATE_LAUNCHER_PRESENT | STATE_SCREENSHOT_VIEW_SHOWN | STATE_CAPTURE_SCREENSHOT, new Consumer() { // from class: c.a.b.I
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BaseSwipeUpHandlerV2.this.C((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeLauncherAnimationController() {
        buildAnimationController();
        Trace.beginSection("logToggleRecents");
        if (LatencyTrackerCompat.isEnabled(this.mContext)) {
            LatencyTrackerCompat.logToggleRecents((int) (this.mLauncherFrameDrawnTime - this.mTouchTimeMs));
        }
        Trace.endSection();
        ((RecentsModel) RecentsModel.INSTANCE.b(this.mContext)).getThumbnailCache().getHighResLoadingState().setVisible(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateHandler() {
        endRunningWindowAnim(false);
        Runnable runnable = this.mGestureEndCallback;
        if (runnable != null) {
            runnable.run();
        }
        this.mActivityInitListener.unregister();
        ActivityManagerWrapper.getInstance().unregisterTaskStackListener(this.mActivityRestartListener);
        this.mTaskSnapshot = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateHandlerWithLauncher() {
        endLauncherTransitionController();
        this.mRecentsView.onGestureAnimationEnd();
        resetLauncherListenersAndOverlays();
    }

    public static boolean isNotInRecents(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        return remoteAnimationTargetCompat.isNotInRecents || remoteAnimationTargetCompat.activityType == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launcherFrameDrawn() {
        this.mLauncherFrameDrawnTime = SystemClock.uptimeMillis();
    }

    private void notifyGestureStartedAsync() {
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity != null) {
            statefulActivity.clearForceInvisibleFlag(9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyTransitionCancelled() {
        this.mAnimationFactory.onTransitionCancelled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimatorPlaybackControllerCreated(AnimatorPlaybackController animatorPlaybackController) {
        this.mLauncherTransitionController = animatorPlaybackController;
        AnimatorPlaybackController.callAnimatorCommandRecursively(animatorPlaybackController.mAnim, new a(new TimeInterpolator() { // from class: c.a.b.U
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                return BaseSwipeUpHandlerV2.this.H(f);
            }
        }));
        this.mLauncherTransitionController.dispatchOnStart();
        updateLauncherTransitionProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDeferredActivityLaunch() {
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            this.mActivityInterface.switchRunningTaskViewToScreenshot(null, new Runnable() { // from class: c.a.b.Y
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSwipeUpHandlerV2.this.I();
                }
            });
        } else {
            this.mTaskAnimationManager.finishRunningRecentsAnimation(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLauncherPresentAndGestureStarted() {
        setupRecentsViewUi();
        this.mGestureState.getActivityInterface().setOnDeferredActivityLaunchCallback(this.mOnDeferredActivityLaunch);
        notifyGestureStartedAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLauncherStart() {
        StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
        if (this.mActivity == createdActivity && !this.mStateCallback.hasStates(STATE_HANDLER_INVALIDATED)) {
            this.mTaskViewSimulator.setRecentsConfiguration(this.mActivity.getResources().getConfiguration());
            if (this.mGestureState.getEndTarget() != GestureState.GestureEndTarget.HOME) {
                Runnable runnable = new Runnable() { // from class: c.a.b.W
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseSwipeUpHandlerV2.this.J();
                    }
                };
                if (this.mWasLauncherAlreadyVisible) {
                    this.mStateCallback.runOnceAtState(STATE_GESTURE_STARTED, runnable);
                } else {
                    runnable.run();
                }
            }
            AbstractFloatingView.closeAllOpenViewsExcept(createdActivity, this.mWasLauncherAlreadyVisible, 256);
            if (this.mWasLauncherAlreadyVisible) {
                this.mStateCallback.a(STATE_LAUNCHER_DRAWN);
            } else {
                Trace.beginSection("WTS-init");
                BaseDragLayer dragLayer = createdActivity.getDragLayer();
                dragLayer.getViewTreeObserver().addOnDrawListener(new AnonymousClass1(null, dragLayer, createdActivity));
            }
            createdActivity.getRootView().setOnApplyWindowInsetsListener(this);
            this.mStateCallback.a(STATE_LAUNCHER_STARTED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSettledOnEndTarget() {
        int ordinal = this.mGestureState.getEndTarget().ordinal();
        if (ordinal == 0) {
            this.mStateCallback.a(STATE_SCALED_CONTROLLER_HOME | STATE_CAPTURE_SCREENSHOT);
            ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mContext)).notifySwipeToHomeFinished();
        } else if (ordinal == 1) {
            this.mStateCallback.a(STATE_SCALED_CONTROLLER_RECENTS | STATE_CAPTURE_SCREENSHOT | STATE_SCREENSHOT_VIEW_SHOWN);
        } else if (ordinal == 2) {
            this.mStateCallback.a(STATE_START_NEW_TASK | STATE_CAPTURE_SCREENSHOT);
        } else if (ordinal == 3) {
            this.mStateCallback.a(STATE_RESUME_LAST_TASK);
        }
        ActiveGestureLog activeGestureLog = ActiveGestureLog.INSTANCE;
        StringBuilder f = c.a.c.a.a.f("onSettledOnEndTarget ");
        f.append(this.mGestureState.getEndTarget());
        activeGestureLog.addLog(f.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLiveTileOverlay() {
        LiveTileOverlay.INSTANCE.detach(this.mActivity.getRootView().getOverlay());
        this.mRecentsView.setLiveTileOverlayAttached(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        this.mStateCallback.setStateOnUiThread(STATE_HANDLER_INVALIDATED);
    }

    private void resetLauncherListenersAndOverlays() {
        if (!FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            this.mActivityInterface.setOnDeferredActivityLaunchCallback(null);
        }
        this.mActivity.getRootView().setOnApplyWindowInsetsListener(null);
        removeLiveTileOverlay();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetStateForAnimationCancel() {
        this.mActivityInterface.onTransitionCancelled(this.mWasLauncherAlreadyVisible || this.mGestureStarted);
        this.mActivity.clearForceInvisibleFlag(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeLastTask() {
        this.mRecentsAnimationController.finish(false, null);
        ActiveGestureLog.INSTANCE.addLog("finishRecentsAnimation", false);
        doLogGesture(GestureState.GestureEndTarget.LAST_TASK);
        reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupLauncherUiAfterSwipeUpToRecentsAnimation() {
        endLauncherTransitionController();
        this.mActivityInterface.onSwipeUpToRecentsComplete();
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.setDeferCancelUntilNextTransition(true, true);
        }
        this.mRecentsView.onSwipeUpAnimationSuccess();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mContext)).onOverviewShown(false, TAG);
        doLogGesture(GestureState.GestureEndTarget.RECENTS);
        reset();
    }

    private void setupRecentsViewUi() {
        if (this.mContinuingLastGesture) {
            updateSysUiFlags(this.mCurrentShift.value);
        } else {
            notifyGestureAnimationStartToRecents();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startNewTask() {
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            this.mRecentsAnimationController.finish(true, new Runnable() { // from class: c.a.b.D
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSwipeUpHandlerV2.this.startNewTaskInternal();
                }
            });
        } else {
            startNewTaskInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startNewTaskInternal() {
        startNewTask(new Consumer() { // from class: c.a.b.w
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BaseSwipeUpHandlerV2.this.K((Boolean) obj);
            }
        });
    }

    private void updateLauncherTransitionProgress() {
        if (this.mLauncherTransitionController == null || !canCreateNewOrUpdateExistingLauncherTransitionController()) {
            return;
        }
        this.mLauncherTransitionController.setPlayFraction(this.mCurrentShift.value / this.mDragLengthFactor);
    }

    private void updateSysUiFlags(float f) {
        RecentsView recentsView;
        if (this.mRecentsAnimationController == null || (recentsView = this.mRecentsView) == null) {
            return;
        }
        TaskView runningTaskView = recentsView.getRunningTaskView();
        TaskView taskViewNearestToCenterOfScreen = this.mRecentsView.getTaskViewNearestToCenterOfScreen();
        int sysUiStatusNavFlags = taskViewNearestToCenterOfScreen == null ? 0 : taskViewNearestToCenterOfScreen.getThumbnail().getSysUiStatusNavFlags();
        boolean z = true;
        boolean z2 = f > 0.14999998f;
        boolean z3 = taskViewNearestToCenterOfScreen != runningTaskView;
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (!z2 && (!z3 || sysUiStatusNavFlags == 0)) {
            z = false;
        }
        recentsAnimationController.setUseLauncherSystemBarFlags(z);
        this.mRecentsAnimationController.setSplitScreenMinimized(z2);
        this.mActivity.getSystemUiController().updateUiState(3, z2 ? 0 : sysUiStatusNavFlags);
    }

    public static /* synthetic */ float v(float f, float f2) {
        return f;
    }

    public /* synthetic */ void A() {
        this.mGestureState.setState(GestureState.STATE_RECENTS_SCROLLING_FINISHED);
    }

    public /* synthetic */ void B() {
        this.mDeviceState.onEndTargetCalculated(this.mGestureState.getEndTarget(), this.mActivityInterface);
    }

    public /* synthetic */ void C(Boolean bool) {
        this.mRecentsView.setRunningTaskHidden(!bool.booleanValue());
    }

    public /* synthetic */ float H(float f) {
        return f * this.mDragLengthFactor;
    }

    public /* synthetic */ void I() {
        this.mTaskAnimationManager.finishRunningRecentsAnimation(true);
    }

    public /* synthetic */ void J() {
        this.mAnimationFactory = this.mActivityInterface.prepareRecentsUI(this.mDeviceState, this.mWasLauncherAlreadyVisible, new Consumer() { // from class: c.a.b.B
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BaseSwipeUpHandlerV2.this.onAnimatorPlaybackControllerCreated((AnimatorPlaybackController) obj);
            }
        });
        maybeUpdateRecentsAttachedState(false);
    }

    public /* synthetic */ void K(Boolean bool) {
        if (!bool.booleanValue()) {
            reset();
            endLauncherTransitionController();
            updateSysUiFlags(1.0f);
        }
        doLogGesture(GestureState.GestureEndTarget.NEW_TASK);
    }

    public /* synthetic */ void L() {
        this.mStateCallback.setStateOnUiThread(STATE_SCREENSHOT_CAPTURED);
    }

    public abstract SwipeUpAnimationLogic.HomeAnimationFactory createHomeAnimationFactory(long j);

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public InputConsumer createNewInputProxyHandler() {
        endRunningWindowAnim(this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME);
        endLauncherTransitionController();
        StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
        return createdActivity == null ? InputConsumer.NO_OP : new OverviewInputConsumer(this.mGestureState, createdActivity, null, true);
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler, com.android.quickstep.SwipeUpAnimationLogic
    public RectFSpringAnim createWindowAnimationToHome(float f, SwipeUpAnimationLogic.HomeAnimationFactory homeAnimationFactory) {
        RectFSpringAnim createWindowAnimationToHome = super.createWindowAnimationToHome(f, homeAnimationFactory);
        createWindowAnimationToHome.addOnUpdateListener(new RectFSpringAnim.OnUpdateListener() { // from class: c.a.b.v
            @Override // com.android.quickstep.util.RectFSpringAnim.OnUpdateListener
            public final void onUpdate(RectF rectF, float f2) {
                BaseSwipeUpHandlerV2.this.x(rectF, f2);
            }
        });
        createWindowAnimationToHome.addAnimatorListener(new AnimationSuccessListener() { // from class: com.android.quickstep.BaseSwipeUpHandlerV2.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseSwipeUpHandlerV2 baseSwipeUpHandlerV2 = BaseSwipeUpHandlerV2.this;
                if (baseSwipeUpHandlerV2.mActivity != null) {
                    baseSwipeUpHandlerV2.removeLiveTileOverlay();
                }
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                final RecentsView recentsView = BaseSwipeUpHandlerV2.this.mRecentsView;
                if (recentsView != null) {
                    Objects.requireNonNull(recentsView);
                    recentsView.post(new Runnable() { // from class: c.a.b.Q1
                        @Override // java.lang.Runnable
                        public final void run() {
                            RecentsView.this.resetTaskVisuals();
                        }
                    });
                }
                BaseSwipeUpHandlerV2.this.maybeUpdateRecentsAttachedState(false);
                BaseSwipeUpHandlerV2 baseSwipeUpHandlerV2 = BaseSwipeUpHandlerV2.this;
                baseSwipeUpHandlerV2.mActivityInterface.onSwipeUpToHomeComplete(baseSwipeUpHandlerV2.mDeviceState);
            }
        });
        return createWindowAnimationToHome;
    }

    public abstract void finishRecentsControllerToHome(Runnable runnable);

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public Intent getLaunchIntent() {
        return this.mGestureState.getOverviewIntent();
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public boolean handleTaskAppeared(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        if (this.mStateCallback.hasStates(STATE_HANDLER_INVALIDATED) || !this.mStateCallback.hasStates(STATE_START_NEW_TASK) || remoteAnimationTargetCompat.taskId != this.mGestureState.getLastStartedTaskId()) {
            return false;
        }
        reset();
        return true;
    }

    public boolean isCanceled() {
        return this.mCanceled;
    }

    public void maybeUpdateRecentsAttachedState() {
        maybeUpdateRecentsAttachedState(true);
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public boolean moveWindowWithRecentsScroll() {
        return this.mGestureState.getEndTarget() != GestureState.GestureEndTarget.HOME;
    }

    public void notifyGestureAnimationStartToRecents() {
        this.mRecentsView.onGestureAnimationStart(this.mGestureState.getRunningTaskId());
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public boolean onActivityInit(Boolean bool) {
        super.onActivityInit(bool);
        StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity == createdActivity) {
            return true;
        }
        if (statefulActivity != null) {
            int state = this.mStateCallback.getState() & (~LAUNCHER_UI_STATES);
            initStateCallbacks();
            this.mStateCallback.a(state);
        }
        this.mWasLauncherAlreadyVisible = bool.booleanValue();
        this.mActivity = createdActivity;
        if (bool.booleanValue()) {
            this.mActivity.clearForceInvisibleFlag(9);
        } else {
            this.mActivity.addForceInvisibleFlag(9);
        }
        RecentsView recentsView = (RecentsView) createdActivity.getOverviewPanel();
        this.mRecentsView = recentsView;
        recentsView.setOnPageTransitionEndCallback(null);
        addLiveTileOverlay();
        this.mStateCallback.a(STATE_LAUNCHER_PRESENT);
        if (bool.booleanValue()) {
            onLauncherStart();
        } else {
            createdActivity.runOnceOnStart(new Runnable() { // from class: c.a.b.E
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSwipeUpHandlerV2.this.onLauncherStart();
                }
            });
        }
        setupRecentsViewUi();
        if (this.mDeviceState.getNavMode() == SysUINavigationMode.Mode.TWO_BUTTONS) {
            this.mActivityInterface.updateOverviewPredictionState();
        }
        linkRecentsViewScroll();
        return true;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        buildAnimationController();
        return onApplyWindowInsets;
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public void onConsumerAboutToBeSwitched() {
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity != null) {
            statefulActivity.clearRunOnceOnStartCallback();
            resetLauncherListenersAndOverlays();
        }
        if (this.mGestureState.getEndTarget() == null || this.mGestureState.isRunningAnimationToLauncher()) {
            reset();
        } else {
            cancelCurrentAnimation();
        }
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public void onGestureCancelled() {
        updateDisplacement(RecentsState.NO_OFFSET);
        this.mStateCallback.setStateOnUiThread(STATE_GESTURE_COMPLETED);
        this.mLogAction = 6;
        handleNormalGestureEnd(RecentsState.NO_OFFSET, false, new PointF(), true);
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public void onGestureEnded(float f, PointF pointF, PointF pointF2) {
        boolean z = this.mGestureStarted && Math.abs(f) > this.mContext.getResources().getDimension(R.dimen.quickstep_fling_threshold_velocity);
        this.mStateCallback.setStateOnUiThread(STATE_GESTURE_COMPLETED);
        this.mLogAction = z ? 4 : 3;
        if (Math.abs(pointF.y) > Math.abs(pointF.x)) {
            this.mLogDirection = pointF.y >= RecentsState.NO_OFFSET ? 2 : 1;
        } else {
            this.mLogDirection = pointF.x < RecentsState.NO_OFFSET ? 3 : 4;
        }
        this.mDownPos = pointF2;
        handleNormalGestureEnd(f, z, pointF, false);
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public void onGestureStarted(boolean z) {
        notifyGestureStartedAsync();
        setIsLikelyToStartNewTask(z, false);
        this.mStateCallback.setStateOnUiThread(STATE_GESTURE_STARTED);
        this.mGestureStarted = true;
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public void onMotionPauseChanged(boolean z) {
        setShelfState(z ? ShelfPeekAnim.ShelfAnimState.PEEK : ShelfPeekAnim.ShelfAnimState.HIDE, ShelfPeekAnim.INTERPOLATOR, 240L);
        if (this.mDeviceState.isFullyGesturalNavMode() && z) {
            this.mActivityInterface.updateOverviewPredictionState();
        }
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler, com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationCanceled(ThumbnailData thumbnailData) {
        ActiveGestureLog.INSTANCE.addLog("cancelRecentsAnimation");
        this.mActivityInitListener.unregister();
        this.mStateCallback.setStateOnUiThread(STATE_GESTURE_CANCELLED | STATE_HANDLER_INVALIDATED);
        super.onRecentsAnimationCanceled(thumbnailData);
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler, com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        ActiveGestureLog.INSTANCE.addLog("startRecentsAnimationCallback", recentsAnimationTargets.apps.length);
        super.onRecentsAnimationStart(recentsAnimationController, recentsAnimationTargets);
        MultiStateCallback multiStateCallback = this.mStateCallback;
        int i = STATE_APP_CONTROLLER_RECEIVED | STATE_GESTURE_STARTED;
        final RecentsAnimationController recentsAnimationController2 = this.mRecentsAnimationController;
        Objects.requireNonNull(recentsAnimationController2);
        multiStateCallback.runOnceAtState(i, new Runnable() { // from class: c.a.b.l0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationController.this.enableInputConsumer();
            }
        });
        this.mStateCallback.setStateOnUiThread(STATE_APP_CONTROLLER_RECEIVED);
        this.mPassedOverviewThreshold = false;
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public void onRestartPreviouslyAppearedTask() {
        super.onRestartPreviouslyAppearedTask();
        reset();
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler
    public void setIsLikelyToStartNewTask(boolean z) {
        setIsLikelyToStartNewTask(z, true);
    }

    public void setShelfState(ShelfPeekAnim.ShelfAnimState shelfAnimState, Interpolator interpolator, long j) {
        this.mAnimationFactory.setShelfState(shelfAnimState, interpolator, j);
        boolean z = this.mIsShelfPeeking;
        boolean z2 = shelfAnimState == ShelfPeekAnim.ShelfAnimState.PEEK;
        this.mIsShelfPeeking = z2;
        if (z2 != z) {
            maybeUpdateRecentsAttachedState();
        }
        if (shelfAnimState.shouldPreformHaptic) {
            performHapticFeedback();
        }
    }

    public void switchToScreenshot() {
        int runningTaskId = this.mGestureState.getRunningTaskId();
        boolean z = false;
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
            if (recentsAnimationController != null) {
                recentsAnimationController.getController().setWillFinishToHome(true);
                if (this.mTaskSnapshot == null) {
                    this.mTaskSnapshot = this.mRecentsAnimationController.screenshotTask(runningTaskId);
                }
                this.mRecentsView.updateThumbnail(runningTaskId, this.mTaskSnapshot, false);
            }
            this.mStateCallback.setStateOnUiThread(STATE_SCREENSHOT_CAPTURED);
            return;
        }
        if (!hasTargets()) {
            this.mStateCallback.setStateOnUiThread(STATE_SCREENSHOT_CAPTURED);
            return;
        }
        RecentsAnimationController recentsAnimationController2 = this.mRecentsAnimationController;
        if (recentsAnimationController2 != null) {
            if (this.mTaskSnapshot == null) {
                this.mTaskSnapshot = recentsAnimationController2.screenshotTask(runningTaskId);
            }
            TaskView updateThumbnail = this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME ? null : this.mRecentsView.updateThumbnail(runningTaskId, this.mTaskSnapshot);
            if (updateThumbnail != null && !this.mCanceled) {
                z = ViewUtils.postDraw(updateThumbnail, new Runnable() { // from class: c.a.b.X
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseSwipeUpHandlerV2.this.L();
                    }
                }, new BooleanSupplier() { // from class: c.a.b.f0
                    @Override // java.util.function.BooleanSupplier
                    public final boolean getAsBoolean() {
                        return BaseSwipeUpHandlerV2.this.isCanceled();
                    }
                });
            }
        }
        if (z) {
            return;
        }
        Trace.beginSection(SCREENSHOT_CAPTURED_EVT);
        this.mStateCallback.setStateOnUiThread(STATE_SCREENSHOT_CAPTURED);
        Trace.endSection();
    }

    public /* synthetic */ void u(ValueAnimator valueAnimator) {
        computeRecentsScrollIfInvisible();
    }

    @Override // com.android.quickstep.BaseSwipeUpHandler, com.android.quickstep.SwipeUpAnimationLogic
    public void updateFinalShift() {
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() && this.mRecentsAnimationTargets != null) {
            LiveTileOverlay.INSTANCE.update(this.mTaskViewSimulator.getCurrentCropRect(), this.mTaskViewSimulator.getCurrentCornerRadius());
        }
        boolean z = this.mCurrentShift.value >= 0.7f;
        if (z != this.mPassedOverviewThreshold) {
            this.mPassedOverviewThreshold = z;
            if (!this.mDeviceState.isFullyGesturalNavMode()) {
                performHapticFeedback();
            }
        }
        updateSysUiFlags(this.mCurrentShift.value);
        applyWindowTransform();
        updateLauncherTransitionProgress();
    }

    public /* synthetic */ void x(RectF rectF, float f) {
        updateSysUiFlags(Math.max(f, this.mCurrentShift.value));
    }

    public /* synthetic */ void y() {
        this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
    }

    public /* synthetic */ void z() {
        this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeUpdateRecentsAttachedState(boolean z) {
        if (!this.mDeviceState.isFullyGesturalNavMode() || this.mRecentsView == null) {
            return;
        }
        RecentsAnimationTargets recentsAnimationTargets = this.mRecentsAnimationTargets;
        RemoteAnimationTargetCompat findTask = recentsAnimationTargets != null ? recentsAnimationTargets.findTask(this.mGestureState.getRunningTaskId()) : null;
        boolean z2 = true;
        if (this.mGestureState.getEndTarget() != null) {
            z2 = this.mGestureState.getEndTarget().recentsAttachedToAppWindow;
        } else if ((!this.mContinuingLastGesture || this.mRecentsView.getRunningTaskIndex() == this.mRecentsView.getNextPage()) && ((findTask == null || !isNotInRecents(findTask)) && !this.mIsShelfPeeking && !this.mIsLikelyToStartNewTask)) {
            z2 = false;
        }
        this.mAnimationFactory.setRecentsAttachedToAppWindow(z2, z);
    }

    private void setIsLikelyToStartNewTask(boolean z, boolean z2) {
        if (this.mIsLikelyToStartNewTask != z) {
            this.mIsLikelyToStartNewTask = z;
            maybeUpdateRecentsAttachedState(z2);
        }
    }
}
