package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import b.l.W;
import c.a.a.E0.h;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.uioverrides.touchcontrollers.NavBarToHomeTouchController;
import com.android.launcher3.util.TouchController;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.ActivityManagerWrapper;

/* loaded from: classes.dex */
public class NavBarToHomeTouchController implements TouchController, SingleAxisSwipeDetector.Listener {
    public static final Interpolator PULLBACK_INTERPOLATOR = Interpolators.DEACCEL_3;
    public AnimatorPlaybackController mCurrentAnimation;
    public LauncherState mEndState = LauncherState.NORMAL;
    public final Launcher mLauncher;
    public boolean mNoIntercept;
    public final float mPullbackDistance;
    public LauncherState mStartState;
    public final SingleAxisSwipeDetector mSwipeDetector;

    public NavBarToHomeTouchController(Launcher launcher) {
        this.mLauncher = launcher;
        this.mSwipeDetector = new SingleAxisSwipeDetector(this.mLauncher, this, SingleAxisSwipeDetector.VERTICAL);
        this.mPullbackDistance = this.mLauncher.getResources().getDimension(R.dimen.home_pullback_distance);
    }

    public final void logStateChange(int i, int i2) {
        this.mLauncher.getUserEventDispatcher().logStateChangeAction(i2, 1, this.mSwipeDetector.getDownX(), this.mSwipeDetector.getDownY(), 11, i, this.mEndState.containerType, this.mLauncher.mWorkspace.getCurrentPage());
        this.mLauncher.getStatsLogManager().logger().withSrcState(StatsLogManager.containerTypeToAtomState(this.mStartState.containerType)).withDstState(StatsLogManager.containerTypeToAtomState(this.mEndState.containerType)).log(StatsLogManager.LauncherEvent.LAUNCHER_HOME_GESTURE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0050, code lost:
    
        if (com.android.quickstep.util.AssistantUtilities.isExcludedAssistantRunning() != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0059  */
    @Override // com.android.launcher3.util.TouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onControllerInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getAction()
            r1 = 0
            if (r0 != 0) goto L5f
            com.android.launcher3.Launcher r0 = r4.mLauncher
            com.android.launcher3.statemanager.StateManager r0 = r0.getStateManager()
            com.android.launcher3.statemanager.BaseState r0 = r0.mState
            com.android.launcher3.LauncherState r0 = (com.android.launcher3.LauncherState) r0
            r4.mStartState = r0
            int r0 = r5.getEdgeFlags()
            r0 = r0 & 256(0x100, float:3.59E-43)
            r2 = 1
            if (r0 == 0) goto L1e
            r0 = r2
            goto L1f
        L1e:
            r0 = r1
        L1f:
            if (r0 != 0) goto L23
        L21:
            r0 = r1
            goto L53
        L23:
            com.android.launcher3.LauncherState r0 = r4.mStartState
            boolean r3 = r0.overviewUi
            if (r3 != 0) goto L52
            com.android.launcher3.LauncherState r3 = com.android.launcher3.LauncherState.ALL_APPS
            if (r0 != r3) goto L2e
            goto L52
        L2e:
            com.android.launcher3.config.FeatureFlags$BooleanFlag r0 = com.android.launcher3.config.FeatureFlags.ENABLE_ALL_APPS_EDU
            boolean r0 = r0.get()
            if (r0 == 0) goto L39
            r0 = 3583(0xdff, float:5.021E-42)
            goto L3b
        L39:
            r0 = 4095(0xfff, float:5.738E-42)
        L3b:
            com.android.launcher3.Launcher r3 = r4.mLauncher
            com.android.launcher3.AbstractFloatingView r0 = com.android.launcher3.AbstractFloatingView.getTopOpenViewWithType(r3, r0)
            if (r0 == 0) goto L44
            goto L52
        L44:
            com.android.launcher3.config.FeatureFlags$BooleanFlag r0 = com.android.launcher3.config.FeatureFlags.ASSISTANT_GIVES_LAUNCHER_FOCUS
            boolean r0 = r0.get()
            if (r0 == 0) goto L21
            boolean r0 = com.android.quickstep.util.AssistantUtilities.isExcludedAssistantRunning()
            if (r0 == 0) goto L21
        L52:
            r0 = r2
        L53:
            r0 = r0 ^ r2
            r4.mNoIntercept = r0
            if (r0 == 0) goto L59
            return r1
        L59:
            com.android.launcher3.touch.SingleAxisSwipeDetector r0 = r4.mSwipeDetector
            r0.mScrollDirections = r2
            r0.mIgnoreSlopWhenSettling = r1
        L5f:
            boolean r0 = r4.mNoIntercept
            if (r0 == 0) goto L64
            return r1
        L64:
            com.android.launcher3.touch.SingleAxisSwipeDetector r0 = r4.mSwipeDetector
            r0.onTouchEvent(r5)
            com.android.launcher3.touch.SingleAxisSwipeDetector r4 = r4.mSwipeDetector
            boolean r4 = r4.isDraggingOrSettling()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.NavBarToHomeTouchController.onControllerInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mSwipeDetector.onTouchEvent(motionEvent);
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f) {
        this.mCurrentAnimation.setPlayFraction(Utilities.getProgress(Math.min(RecentsState.NO_OFFSET, f), RecentsState.NO_OFFSET, this.mLauncher.getDeviceProfile().heightPx));
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragEnd(float f) {
        boolean isFling = this.mSwipeDetector.isFling(f);
        int i = isFling ? 4 : 3;
        float f2 = this.mCurrentAnimation.mCurrentFraction;
        if (!(PULLBACK_INTERPOLATOR.getInterpolation(f2) >= 0.5f || (f < RecentsState.NO_OFFSET && isFling))) {
            ValueAnimator valueAnimator = this.mCurrentAnimation.mAnimationPlayer;
            valueAnimator.setFloatValues(f2, RecentsState.NO_OFFSET);
            valueAnimator.addListener(AnimationSuccessListener.forRunnable(new Runnable() { // from class: c.a.a.Z0.m.d
                @Override // java.lang.Runnable
                public final void run() {
                    NavBarToHomeTouchController navBarToHomeTouchController = NavBarToHomeTouchController.this;
                    navBarToHomeTouchController.onSwipeInteractionCompleted(navBarToHomeTouchController.mStartState);
                }
            }));
            valueAnimator.setDuration(80L).start();
            return;
        }
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            final RecentsView recentsView = (RecentsView) this.mLauncher.getOverviewPanel();
            recentsView.switchToScreenshot(null, new Runnable() { // from class: c.a.a.Z0.m.b
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsView.this.finishRecentsAnimation(true, null);
                }
            });
        }
        this.mLauncher.getStateManager().goToState(this.mEndState, true, new Runnable() { // from class: c.a.a.Z0.m.c
            @Override // java.lang.Runnable
            public final void run() {
                NavBarToHomeTouchController navBarToHomeTouchController = NavBarToHomeTouchController.this;
                navBarToHomeTouchController.onSwipeInteractionCompleted(navBarToHomeTouchController.mEndState);
            }
        });
        LauncherState launcherState = this.mStartState;
        if (launcherState != this.mEndState) {
            logStateChange(launcherState.containerType, i);
        }
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this.mLauncher);
        if (topOpenView != null) {
            AbstractFloatingView.closeAllOpenViews(this.mLauncher);
            logStateChange(topOpenView.getLogContainerType(), i);
        }
        ActivityManagerWrapper.getInstance().closeSystemWindows(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z, float f) {
        long j = (long) (this.mLauncher.getDeviceProfile().heightPx * 2.0f);
        PendingAnimation pendingAnimation = new PendingAnimation(j);
        LauncherState launcherState = this.mStartState;
        if (launcherState.overviewUi) {
            final RecentsView recentsView = (RecentsView) this.mLauncher.getOverviewPanel();
            pendingAnimation.setFloat(recentsView, RecentsView.ADJACENT_PAGE_OFFSET, (-this.mPullbackDistance) / recentsView.getPageOffsetScale(), PULLBACK_INTERPOLATOR);
            if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
                pendingAnimation.addOnFrameCallback(new Runnable() { // from class: c.a.a.Z0.m.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        RecentsView.this.redrawLiveTile(false);
                    }
                });
            }
        } else if (launcherState == LauncherState.ALL_APPS) {
            AllAppsTransitionController allAppsTransitionController = this.mLauncher.mAllAppsController;
            pendingAnimation.setFloat(allAppsTransitionController, AllAppsTransitionController.ALL_APPS_PROGRESS, (-this.mPullbackDistance) / allAppsTransitionController.mShiftRange, PULLBACK_INTERPOLATOR);
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            stateAnimationConfig.duration = j;
            stateAnimationConfig.mInterpolators[10] = new h(PULLBACK_INTERPOLATOR, RecentsState.NO_OFFSET, 0.5f);
            allAppsTransitionController.setAlphas(this.mEndState, stateAnimationConfig, pendingAnimation);
        }
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this.mLauncher);
        if (topOpenView != null) {
            topOpenView.addHintCloseAnim(this.mPullbackDistance, PULLBACK_INTERPOLATOR, pendingAnimation);
        }
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        createPlaybackController.mOnCancelRunnable = new Runnable() { // from class: c.a.a.Z0.m.a
            @Override // java.lang.Runnable
            public final void run() {
                NavBarToHomeTouchController navBarToHomeTouchController = NavBarToHomeTouchController.this;
                navBarToHomeTouchController.mCurrentAnimation = null;
                navBarToHomeTouchController.mSwipeDetector.a(BaseSwipeDetector.ScrollState.IDLE);
                SingleAxisSwipeDetector singleAxisSwipeDetector = navBarToHomeTouchController.mSwipeDetector;
                singleAxisSwipeDetector.mScrollDirections = 0;
                singleAxisSwipeDetector.mIgnoreSlopWhenSettling = false;
            }
        };
        this.mCurrentAnimation = createPlaybackController;
    }

    public final void onSwipeInteractionCompleted(LauncherState launcherState) {
        this.mCurrentAnimation = null;
        this.mSwipeDetector.a(BaseSwipeDetector.ScrollState.IDLE);
        SingleAxisSwipeDetector singleAxisSwipeDetector = this.mSwipeDetector;
        singleAxisSwipeDetector.mScrollDirections = 0;
        singleAxisSwipeDetector.mIgnoreSlopWhenSettling = false;
        this.mLauncher.getStateManager().goToState(launcherState, false, 0L, null);
        W.sendStateEventToTest(this.mLauncher, launcherState.ordinal);
    }
}
