package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.util.DefaultDisplay;
import com.android.quickstep.AnimatedFloat;
import com.android.quickstep.GestureState;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.interaction.SwipeUpGestureTutorialController;
import com.android.quickstep.interaction.TutorialController;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;

@TargetApi(30)
/* loaded from: classes.dex */
public abstract class SwipeUpGestureTutorialController extends TutorialController {
    public float mFakeTaskViewRadius;
    public Rect mFakeTaskViewRect;
    public SwipeUpAnimationLogic.RunningWindowAnim mRunningWindowAnim;
    public final ViewSwipeUpAnimation mViewSwipeUpAnimation;

    public class FakeTransformParams extends TransformParams {
        public FakeTransformParams() {
        }

        @Override // com.android.quickstep.util.TransformParams
        public void applySurfaceParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr) {
            SyncRtSurfaceTransactionApplierCompat.SurfaceParams surfaceParams = surfaceParamsArr[0];
            SwipeUpGestureTutorialController.this.mFakeTaskView.setAnimationMatrix(surfaceParams.matrix);
            SwipeUpGestureTutorialController.this.mFakeTaskViewRect.set(surfaceParams.windowCrop);
            SwipeUpGestureTutorialController.this.mFakeTaskViewRadius = surfaceParams.cornerRadius;
            SwipeUpGestureTutorialController.this.mFakeTaskView.invalidateOutline();
        }

        @Override // com.android.quickstep.util.TransformParams
        public SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] createSurfaceParams(TransformParams.BuilderProxy builderProxy) {
            SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder((SurfaceControl) null);
            builderProxy.onBuildTargetParams(builder, null, this);
            return new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[]{builder.build()};
        }
    }

    public class ViewSwipeUpAnimation extends SwipeUpAnimationLogic {
        public ViewSwipeUpAnimation(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, GestureState gestureState) {
            super(context, recentsAnimationDeviceState, gestureState, new FakeTransformParams());
        }

        public AnimatedFloat getCurrentShift() {
            return this.mCurrentShift;
        }

        public RectFSpringAnim handleSwipeUpToHome(PointF pointF) {
            PointF pointF2 = new PointF(pointF.x, pointF.y);
            float boundToRange = Utilities.boundToRange(this.mCurrentShift.value - ((pointF2.y * DefaultDisplay.getSingleFrameMs(this.mContext)) / this.mTransitionDragLength), RecentsState.NO_OFFSET, this.mDragLengthFactor);
            final long min = Math.min(350L, Math.round(Math.abs(((1.0f - r7) * this.mTransitionDragLength) / pointF2.y)) * 2);
            RectFSpringAnim createWindowAnimationToHome = createWindowAnimationToHome(boundToRange, new SwipeUpAnimationLogic.HomeAnimationFactory(null) { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.ViewSwipeUpAnimation.1
                @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
                public AnimatorPlaybackController createActivityAnimationToHome() {
                    return AnimatorPlaybackController.wrap(new AnimatorSet(), min);
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
                public RectF getWindowTargetRect() {
                    return new RectF((ViewSwipeUpAnimation.this.mDp.widthPx - ViewSwipeUpAnimation.this.mDp.allAppsIconSizePx) / 2, ViewSwipeUpAnimation.this.mDp.heightPx - (ViewSwipeUpAnimation.this.mDp.allAppsCellHeightPx * 3), r1 + r0, r2 + r0);
                }
            });
            createWindowAnimationToHome.start(this.mContext, pointF2);
            return createWindowAnimationToHome;
        }

        public void initDp(DeviceProfile deviceProfile) {
            initTransitionEndpoints(deviceProfile);
            this.mTaskViewSimulator.setPreviewBounds(new Rect(0, 0, deviceProfile.widthPx, deviceProfile.heightPx), deviceProfile.mInsets);
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic
        public void updateFinalShift() {
            this.mWindowTransitionController.setPlayFraction(this.mCurrentShift.value / this.mDragLengthFactor);
            this.mTaskViewSimulator.apply(this.mTransformParams);
        }
    }

    public SwipeUpGestureTutorialController(TutorialFragment tutorialFragment, TutorialController.TutorialType tutorialType) {
        super(tutorialFragment, tutorialType);
        this.mFakeTaskViewRect = new Rect();
        RecentsAnimationDeviceState recentsAnimationDeviceState = new RecentsAnimationDeviceState(this.mContext);
        OverviewComponentObserver overviewComponentObserver = new OverviewComponentObserver(this.mContext, recentsAnimationDeviceState);
        this.mViewSwipeUpAnimation = new ViewSwipeUpAnimation(this.mContext, recentsAnimationDeviceState, new GestureState(overviewComponentObserver, -1));
        overviewComponentObserver.onDestroy();
        recentsAnimationDeviceState.destroy();
        DeviceProfile copy = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(this.mContext)).getDeviceProfile(this.mContext).copy(this.mContext);
        Insets insets = ((WindowManager) this.mContext.getSystemService(WindowManager.class)).getCurrentWindowMetrics().getWindowInsets().getInsets(WindowInsets.Type.systemBars());
        copy.mInsets.set(new Rect(insets.left, insets.top, insets.right, insets.bottom));
        copy.updateWorkspacePadding();
        this.mViewSwipeUpAnimation.initDp(copy);
        this.mFakeTaskViewRadius = QuickStepContract.getWindowCornerRadius(this.mContext.getResources());
        this.mFakeTaskView.setClipToOutline(true);
        this.mFakeTaskView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(SwipeUpGestureTutorialController.this.mFakeTaskViewRect, SwipeUpGestureTutorialController.this.mFakeTaskViewRadius);
            }
        });
    }

    private void cancelRunningAnimation() {
        SwipeUpAnimationLogic.RunningWindowAnim runningWindowAnim = this.mRunningWindowAnim;
        if (runningWindowAnim != null) {
            runningWindowAnim.cancel();
        }
        this.mRunningWindowAnim = null;
    }

    public void animateFakeTaskViewHome(PointF pointF, final Runnable runnable) {
        hideFeedback();
        hideHandCoachingAnimation();
        cancelRunningAnimation();
        RectFSpringAnim handleSwipeUpToHome = this.mViewSwipeUpAnimation.handleSwipeUpToHome(pointF);
        handleSwipeUpToHome.addAnimatorListener(AnimationSuccessListener.forRunnable(new Runnable() { // from class: c.a.b.a2.n
            @Override // java.lang.Runnable
            public final void run() {
                SwipeUpGestureTutorialController.this.d(runnable);
            }
        }));
        this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(handleSwipeUpToHome);
    }

    public /* synthetic */ void d(Runnable runnable) {
        fadeOutFakeTaskView(false, runnable);
    }

    public void fadeOutFakeTaskView(boolean z, Runnable runnable) {
        hideFeedback();
        hideHandCoachingAnimation();
        cancelRunningAnimation();
        PendingAnimation pendingAnimation = new PendingAnimation(300L);
        final AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator, boolean z2) {
                SwipeUpGestureTutorialController.this.mFakeTaskView.setVisibility(4);
                SwipeUpGestureTutorialController.this.mFakeTaskView.setAlpha(1.0f);
                SwipeUpGestureTutorialController.this.mRunningWindowAnim = null;
            }
        };
        if (z) {
            pendingAnimation.setFloat(this.mViewSwipeUpAnimation.getCurrentShift(), AnimatedFloat.VALUE, 1.0f, Interpolators.ACCEL);
            pendingAnimation.mAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.3
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator, boolean z2) {
                    PendingAnimation pendingAnimation2 = new PendingAnimation(300L);
                    pendingAnimation2.setViewAlpha(SwipeUpGestureTutorialController.this.mFakeTaskView, RecentsState.NO_OFFSET, Interpolators.ACCEL);
                    pendingAnimation2.mAnim.addListener(animatorListenerAdapter);
                    AnimatorSet buildAnim = pendingAnimation2.buildAnim();
                    buildAnim.setStartDelay(100L);
                    buildAnim.start();
                    SwipeUpGestureTutorialController.this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(buildAnim);
                }
            });
        } else {
            pendingAnimation.setViewAlpha(this.mFakeTaskView, RecentsState.NO_OFFSET, Interpolators.ACCEL);
            pendingAnimation.mAnim.addListener(animatorListenerAdapter);
        }
        if (runnable != null) {
            pendingAnimation.mAnim.addListener(AnimationSuccessListener.forRunnable(runnable));
        }
        AnimatorSet buildAnim = pendingAnimation.buildAnim();
        buildAnim.start();
        this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(buildAnim);
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void setNavBarGestureProgress(Float f) {
        TutorialController.TutorialType tutorialType;
        if (f == null || (tutorialType = this.mTutorialType) == TutorialController.TutorialType.HOME_NAVIGATION_COMPLETE || tutorialType == TutorialController.TutorialType.OVERVIEW_NAVIGATION_COMPLETE) {
            this.mFakeTaskView.setVisibility(4);
            return;
        }
        this.mFakeTaskView.setVisibility(0);
        if (this.mRunningWindowAnim == null) {
            this.mViewSwipeUpAnimation.updateDisplacement(f.floatValue());
        }
    }
}
