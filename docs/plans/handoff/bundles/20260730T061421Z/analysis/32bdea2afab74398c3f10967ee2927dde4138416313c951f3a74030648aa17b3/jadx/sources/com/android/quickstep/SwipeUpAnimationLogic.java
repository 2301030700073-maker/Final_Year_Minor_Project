package com.android.quickstep;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.animation.Interpolator;
import c.a.c.a.a;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.views.FloatingIconView;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;

/* loaded from: classes.dex */
public abstract class SwipeUpAnimationLogic {
    public final Context mContext;
    public final RecentsAnimationDeviceState mDeviceState;
    public DeviceProfile mDp;
    public final GestureState mGestureState;
    public final TaskViewSimulator mTaskViewSimulator;
    public final TransformParams mTransformParams;
    public int mTransitionDragLength;
    public AnimatorPlaybackController mWindowTransitionController;
    public static final Rect TEMP_RECT = new Rect();
    public static final Interpolator PULLBACK_INTERPOLATOR = Interpolators.DEACCEL;
    public final AnimatedFloat mCurrentShift = new AnimatedFloat(new Runnable() { // from class: c.a.b.U1
        @Override // java.lang.Runnable
        public final void run() {
            SwipeUpAnimationLogic.this.updateFinalShift();
        }
    });
    public float mDragLengthFactor = 1.0f;
    public float mDragLengthFactorStartPullback = 1.0f;
    public float mDragLengthFactorMaxPullback = 1.0f;

    public abstract class HomeAnimationFactory {
        public FloatingIconView mIconView;

        public HomeAnimationFactory(FloatingIconView floatingIconView) {
            this.mIconView = floatingIconView;
        }

        public abstract AnimatorPlaybackController createActivityAnimationToHome();

        public RectF getWindowTargetRect() {
            PagedOrientationHandler orientationHandler = SwipeUpAnimationLogic.this.getOrientationHandler();
            float primaryValue = orientationHandler.getPrimaryValue(r5.availableWidthPx, r5.availableHeightPx) / 2.0f;
            float secondaryValue = orientationHandler.getSecondaryValue(r5.availableWidthPx, r5.availableHeightPx) - r5.hotseatBarSizePx;
            float f = SwipeUpAnimationLogic.this.mDp.iconSizePx / 2;
            return new RectF(primaryValue - f, secondaryValue - f, primaryValue + f, secondaryValue + f);
        }

        public void playAtomicAnimation(float f) {
        }
    }

    public interface RunningWindowAnim {
        static RunningWindowAnim wrap(final Animator animator) {
            return new RunningWindowAnim() { // from class: com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim.1
                @Override // com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim
                public void cancel() {
                    animator.cancel();
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim
                public void end() {
                    animator.end();
                }
            };
        }

        void cancel();

        void end();

        static RunningWindowAnim wrap(final RectFSpringAnim rectFSpringAnim) {
            return new RunningWindowAnim() { // from class: com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim.2
                @Override // com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim
                public void cancel() {
                    RectFSpringAnim.this.cancel();
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim
                public void end() {
                    RectFSpringAnim.this.end();
                }
            };
        }
    }

    public class SpringAnimationRunner extends AnimationSuccessListener implements RectFSpringAnim.OnUpdateListener, TransformParams.BuilderProxy {
        public final RectF mCropRectF;
        public final float mEndRadius;
        public final FloatingIconView mFIV;
        public final AnimatorPlaybackController mHomeAnim;
        public final Matrix mHomeToWindowPositionMap;
        public final float mStartRadius;
        public final float mWindowAlphaThreshold;
        public final Rect mCropRect = new Rect();
        public final Matrix mMatrix = new Matrix();
        public final RectF mWindowCurrentRect = new RectF();

        public SpringAnimationRunner(HomeAnimationFactory homeAnimationFactory, RectF rectF, Matrix matrix) {
            this.mHomeAnim = homeAnimationFactory.createActivityAnimationToHome();
            this.mCropRectF = rectF;
            this.mHomeToWindowPositionMap = matrix;
            rectF.roundOut(this.mCropRect);
            this.mFIV = homeAnimationFactory.mIconView;
            this.mStartRadius = SwipeUpAnimationLogic.this.mTaskViewSimulator.getCurrentCornerRadius();
            this.mEndRadius = rectF.width() / 2.0f;
            this.mWindowAlphaThreshold = this.mFIV != null ? 0.9f : 1.0f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.mHomeAnim.dispatchOnStart();
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener
        public void onAnimationSuccess(Animator animator) {
            this.mHomeAnim.mAnimationPlayer.end();
        }

        @Override // com.android.quickstep.util.TransformParams.BuilderProxy
        public void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
            builder.withMatrix(this.mMatrix).withWindowCrop(this.mCropRect).withCornerRadius(transformParams.getCornerRadius());
        }

        @Override // com.android.quickstep.util.RectFSpringAnim.OnUpdateListener
        public void onCancel() {
            FloatingIconView floatingIconView = this.mFIV;
            if (floatingIconView != null) {
                floatingIconView.fastFinish();
            }
        }

        @Override // com.android.quickstep.util.RectFSpringAnim.OnUpdateListener
        public void onUpdate(RectF rectF, float f) {
            this.mHomeAnim.setPlayFraction(f);
            this.mHomeToWindowPositionMap.mapRect(this.mWindowCurrentRect, rectF);
            this.mMatrix.setRectToRect(this.mCropRectF, this.mWindowCurrentRect, Matrix.ScaleToFit.FILL);
            float mapRange = Utilities.mapRange(f, this.mStartRadius, this.mEndRadius);
            SwipeUpAnimationLogic swipeUpAnimationLogic = SwipeUpAnimationLogic.this;
            swipeUpAnimationLogic.mTransformParams.setTargetAlpha(swipeUpAnimationLogic.getWindowAlpha(f)).setCornerRadius(mapRange);
            TransformParams transformParams = SwipeUpAnimationLogic.this.mTransformParams;
            transformParams.applySurfaceParams(transformParams.createSurfaceParams(this));
            FloatingIconView floatingIconView = this.mFIV;
            if (floatingIconView != null) {
                floatingIconView.update(rectF, 1.0f, f, this.mWindowAlphaThreshold, this.mMatrix.mapRadius(mapRange), false);
            }
        }
    }

    public SwipeUpAnimationLogic(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, GestureState gestureState, TransformParams transformParams) {
        this.mContext = context;
        this.mDeviceState = recentsAnimationDeviceState;
        this.mGestureState = gestureState;
        TaskViewSimulator taskViewSimulator = new TaskViewSimulator(context, gestureState.getActivityInterface());
        this.mTaskViewSimulator = taskViewSimulator;
        this.mTransformParams = transformParams;
        taskViewSimulator.setLayoutRotation(this.mDeviceState.getCurrentActiveRotation(), this.mDeviceState.getDisplayRotation());
    }

    public /* synthetic */ float a(float f) {
        return f * this.mDragLengthFactor;
    }

    public RectFSpringAnim createWindowAnimationToHome(float f, HomeAnimationFactory homeAnimationFactory) {
        RectF windowTargetRect = homeAnimationFactory.getWindowTargetRect();
        FloatingIconView floatingIconView = homeAnimationFactory.mIconView;
        boolean z = floatingIconView != null;
        this.mWindowTransitionController.setPlayFraction(f / this.mDragLengthFactor);
        this.mTaskViewSimulator.apply(this.mTransformParams.setProgress(f));
        RectF rectF = new RectF(this.mTaskViewSimulator.getCurrentCropRect());
        Matrix matrix = new Matrix();
        this.mTaskViewSimulator.applyWindowToHomeRotation(matrix);
        RectF rectF2 = new RectF(rectF);
        this.mTaskViewSimulator.getCurrentMatrix().mapRect(rectF2);
        Matrix matrix2 = new Matrix();
        matrix.invert(matrix2);
        matrix2.mapRect(rectF2);
        final RectFSpringAnim rectFSpringAnim = new RectFSpringAnim(rectF2, windowTargetRect, this.mContext);
        if (z) {
            rectFSpringAnim.addAnimatorListener(floatingIconView);
            floatingIconView.mOnTargetChangeRunnable = new Runnable() { // from class: c.a.b.T1
                @Override // java.lang.Runnable
                public final void run() {
                    RectFSpringAnim.this.onTargetPositionChanged();
                }
            };
            floatingIconView.mFastFinishRunnable = new Runnable() { // from class: c.a.b.m0
                @Override // java.lang.Runnable
                public final void run() {
                    RectFSpringAnim.this.end();
                }
            };
        }
        SpringAnimationRunner springAnimationRunner = new SpringAnimationRunner(homeAnimationFactory, rectF, matrix);
        rectFSpringAnim.addOnUpdateListener(springAnimationRunner);
        rectFSpringAnim.addAnimatorListener(springAnimationRunner);
        return rectFSpringAnim;
    }

    public PagedOrientationHandler getOrientationHandler() {
        return this.mTaskViewSimulator.getOrientationState().getOrientationHandler();
    }

    public float getWindowAlpha(float f) {
        if (f <= RecentsState.NO_OFFSET) {
            return 1.0f;
        }
        return f >= 0.85f ? RecentsState.NO_OFFSET : Utilities.mapToRange(f, RecentsState.NO_OFFSET, 0.85f, 1.0f, RecentsState.NO_OFFSET, Interpolators.ACCEL_1_5);
    }

    public void initTransitionEndpoints(DeviceProfile deviceProfile) {
        this.mDp = deviceProfile;
        this.mTaskViewSimulator.setDp(deviceProfile);
        this.mTransitionDragLength = this.mGestureState.getActivityInterface().getSwipeUpDestinationAndLength(deviceProfile, this.mContext, TEMP_RECT, this.mTaskViewSimulator.getOrientationState().getOrientationHandler());
        if (this.mDeviceState.isFullyGesturalNavMode()) {
            this.mDragLengthFactor = deviceProfile.heightPx / this.mTransitionDragLength;
            float fullScreenScale = this.mTaskViewSimulator.getFullScreenScale();
            float f = 1.0f - fullScreenScale;
            this.mDragLengthFactorStartPullback = (0.75f - fullScreenScale) / f;
            this.mDragLengthFactorMaxPullback = (0.5f - fullScreenScale) / f;
        } else {
            this.mDragLengthFactor = 1.0f;
            this.mDragLengthFactorMaxPullback = 1.0f;
            this.mDragLengthFactorStartPullback = 1.0f;
        }
        PendingAnimation pendingAnimation = new PendingAnimation(this.mTransitionDragLength * 2);
        this.mTaskViewSimulator.addAppToOverviewAnim(pendingAnimation, new TimeInterpolator() { // from class: c.a.b.f1
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f2) {
                return SwipeUpAnimationLogic.this.a(f2);
            }
        });
        this.mWindowTransitionController = pendingAnimation.createPlaybackController();
    }

    public void updateDisplacement(float f) {
        float f2 = -f;
        int i = this.mTransitionDragLength;
        float f3 = this.mDragLengthFactor;
        if (f2 <= i * f3 || i <= 0) {
            float max = Math.max(f2, RecentsState.NO_OFFSET);
            int i2 = this.mTransitionDragLength;
            f3 = i2 == 0 ? 0.0f : max / i2;
            float f4 = this.mDragLengthFactorStartPullback;
            if (f3 > f4) {
                float interpolation = PULLBACK_INTERPOLATOR.getInterpolation(Utilities.getProgress(f3, f4, this.mDragLengthFactor));
                float f5 = this.mDragLengthFactorStartPullback;
                f3 = a.a(this.mDragLengthFactorMaxPullback, f5, interpolation, f5);
            }
        }
        this.mCurrentShift.updateValue(f3);
    }

    public abstract void updateFinalShift();
}
