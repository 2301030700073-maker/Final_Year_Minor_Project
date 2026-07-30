package com.android.quickstep;

import android.animation.ObjectAnimator;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.graphics.Matrix;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.quickstep.FallbackSwipeHandler;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.fallback.FallbackRecentsView;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputConsumerController;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;

/* loaded from: classes.dex */
public class FallbackSwipeHandler extends BaseSwipeUpHandlerV2 {
    public FallbackHomeAnimationFactory mActiveAnimationFactory;
    public float mMaxLauncherScale;
    public final boolean mRunningOverHome;
    public final Matrix mTmpMatrix;

    public class FallbackHomeAnimationFactory extends SwipeUpAnimationLogic.HomeAnimationFactory {
        public final long mDuration;
        public final AnimatedFloat mHomeAlpha;
        public final TransformParams mHomeAlphaParams;
        public final AnimatedFloat mRecentsAlpha;
        public final AnimatedFloat mVerticalShiftForScale;

        public FallbackHomeAnimationFactory(long j) {
            super(null);
            this.mHomeAlphaParams = new TransformParams();
            this.mVerticalShiftForScale = new AnimatedFloat();
            this.mRecentsAlpha = new AnimatedFloat();
            this.mDuration = j;
            if (FallbackSwipeHandler.this.mRunningOverHome) {
                AnimatedFloat animatedFloat = new AnimatedFloat();
                this.mHomeAlpha = animatedFloat;
                animatedFloat.value = Utilities.boundToRange(1.0f - FallbackSwipeHandler.this.mCurrentShift.value, RecentsState.NO_OFFSET, 1.0f);
                this.mVerticalShiftForScale.value = FallbackSwipeHandler.this.mCurrentShift.value;
                FallbackSwipeHandler.this.mTransformParams.setHomeBuilderProxy(new TransformParams.BuilderProxy() { // from class: c.a.b.k0
                    @Override // com.android.quickstep.util.TransformParams.BuilderProxy
                    public final void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
                        FallbackSwipeHandler.FallbackHomeAnimationFactory.this.updateHomeActivityTransformDuringHomeAnim(builder, remoteAnimationTargetCompat, transformParams);
                    }
                });
            } else {
                AnimatedFloat animatedFloat2 = new AnimatedFloat(new Runnable() { // from class: c.a.b.j0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FallbackSwipeHandler.FallbackHomeAnimationFactory.this.updateHomeAlpha();
                    }
                });
                this.mHomeAlpha = animatedFloat2;
                animatedFloat2.value = RecentsState.NO_OFFSET;
                this.mHomeAlphaParams.setHomeBuilderProxy(new TransformParams.BuilderProxy() { // from class: c.a.b.k0
                    @Override // com.android.quickstep.util.TransformParams.BuilderProxy
                    public final void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
                        FallbackSwipeHandler.FallbackHomeAnimationFactory.this.updateHomeActivityTransformDuringHomeAnim(builder, remoteAnimationTargetCompat, transformParams);
                    }
                });
            }
            this.mRecentsAlpha.value = 1.0f;
            FallbackSwipeHandler.this.mTransformParams.setBaseBuilderProxy(new TransformParams.BuilderProxy() { // from class: c.a.b.i0
                @Override // com.android.quickstep.util.TransformParams.BuilderProxy
                public final void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
                    FallbackSwipeHandler.FallbackHomeAnimationFactory.this.updateRecentsActivityTransformDuringHomeAnim(builder, remoteAnimationTargetCompat, transformParams);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateHomeActivityTransformDuringHomeAnim(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
            FallbackSwipeHandler.this.setHomeScaleAndAlpha(builder, remoteAnimationTargetCompat, this.mVerticalShiftForScale.value, this.mHomeAlpha.value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateHomeAlpha() {
            if (this.mHomeAlphaParams.getTargetSet() != null) {
                TransformParams transformParams = this.mHomeAlphaParams;
                transformParams.applySurfaceParams(transformParams.createSurfaceParams(TransformParams.BuilderProxy.NO_OP));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateRecentsActivityTransformDuringHomeAnim(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
            builder.withAlpha(this.mRecentsAlpha.value);
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public AnimatorPlaybackController createActivityAnimationToHome() {
            PendingAnimation pendingAnimation = new PendingAnimation(this.mDuration);
            pendingAnimation.setFloat(this.mRecentsAlpha, AnimatedFloat.VALUE, RecentsState.NO_OFFSET, Interpolators.ACCEL);
            return pendingAnimation.createPlaybackController();
        }

        public boolean handleHomeTaskAppeared(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
            if (remoteAnimationTargetCompat.activityType != 2) {
                return false;
            }
            this.mHomeAlphaParams.setTargetSet(new RemoteAnimationTargets(new RemoteAnimationTargetCompat[]{remoteAnimationTargetCompat}, new RemoteAnimationTargetCompat[0], remoteAnimationTargetCompat.mode));
            updateHomeAlpha();
            return true;
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public void playAtomicAnimation(float f) {
            AnimatedFloat animatedFloat = this.mHomeAlpha;
            ObjectAnimator animateToValue = animatedFloat.animateToValue(animatedFloat.value, 1.0f);
            animateToValue.setDuration(this.mDuration).setInterpolator(Interpolators.ACCEL);
            animateToValue.start();
            if (FallbackSwipeHandler.this.mRunningOverHome) {
                SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(FallbackSwipeHandler.this.mContext);
                springAnimationBuilder.mStartValue = this.mVerticalShiftForScale.value;
                springAnimationBuilder.mEndValue = RecentsState.NO_OFFSET;
                FallbackSwipeHandler fallbackSwipeHandler = FallbackSwipeHandler.this;
                springAnimationBuilder.mVelocity = (-f) / fallbackSwipeHandler.mTransitionDragLength;
                springAnimationBuilder.setMinimumVisibleChange(1.0f / fallbackSwipeHandler.mDp.heightPx);
                springAnimationBuilder.setDampingRatio(0.6f);
                springAnimationBuilder.setStiffness(800.0f);
                springAnimationBuilder.build(this.mVerticalShiftForScale, AnimatedFloat.VALUE).start();
            }
        }
    }

    public FallbackSwipeHandler(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, long j, boolean z, InputConsumerController inputConsumerController) {
        super(context, recentsAnimationDeviceState, taskAnimationManager, gestureState, j, z, inputConsumerController);
        this.mTmpMatrix = new Matrix();
        this.mMaxLauncherScale = 1.0f;
        boolean isHomeTask = ActivityManagerWrapper.isHomeTask(this.mGestureState.getRunningTask());
        this.mRunningOverHome = isHomeTask;
        if (isHomeTask) {
            this.mTransformParams.setHomeBuilderProxy(new TransformParams.BuilderProxy() { // from class: c.a.b.h0
                @Override // com.android.quickstep.util.TransformParams.BuilderProxy
                public final void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
                    FallbackSwipeHandler.this.updateHomeActivityTransformDuringSwipeUp(builder, remoteAnimationTargetCompat, transformParams);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHomeScaleAndAlpha(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, float f, float f2) {
        float mapRange = Utilities.mapRange(f, 1.0f, this.mMaxLauncherScale);
        this.mTmpMatrix.setScale(mapRange, mapRange, remoteAnimationTargetCompat.localBounds.exactCenterX(), remoteAnimationTargetCompat.localBounds.exactCenterY());
        builder.withMatrix(this.mTmpMatrix).withAlpha(f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHomeActivityTransformDuringSwipeUp(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
        float f = this.mCurrentShift.value;
        setHomeScaleAndAlpha(builder, remoteAnimationTargetCompat, f, Utilities.boundToRange(1.0f - f, RecentsState.NO_OFFSET, 1.0f));
    }

    @Override // com.android.quickstep.BaseSwipeUpHandlerV2
    public SwipeUpAnimationLogic.HomeAnimationFactory createHomeAnimationFactory(long j) {
        this.mActiveAnimationFactory = new FallbackHomeAnimationFactory(j);
        this.mContext.startActivity(new Intent(this.mGestureState.getHomeIntent()), ActivityOptions.makeCustomAnimation(this.mContext, 0, 0).toBundle());
        return this.mActiveAnimationFactory;
    }

    @Override // com.android.quickstep.BaseSwipeUpHandlerV2
    public void finishRecentsControllerToHome(Runnable runnable) {
        this.mRecentsAnimationController.finish(false, runnable, true);
    }

    @Override // com.android.quickstep.BaseSwipeUpHandlerV2, com.android.quickstep.BaseSwipeUpHandler
    public boolean handleTaskAppeared(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        FallbackHomeAnimationFactory fallbackHomeAnimationFactory = this.mActiveAnimationFactory;
        if (fallbackHomeAnimationFactory == null || !fallbackHomeAnimationFactory.handleHomeTaskAppeared(remoteAnimationTargetCompat)) {
            return super.handleTaskAppeared(remoteAnimationTargetCompat);
        }
        this.mActiveAnimationFactory = null;
        return false;
    }

    @Override // com.android.quickstep.SwipeUpAnimationLogic
    public void initTransitionEndpoints(DeviceProfile deviceProfile) {
        super.initTransitionEndpoints(deviceProfile);
        if (this.mRunningOverHome) {
            this.mMaxLauncherScale = 1.0f / this.mTaskViewSimulator.getFullScreenScale();
        }
    }

    @Override // com.android.quickstep.BaseSwipeUpHandlerV2
    public void notifyGestureAnimationStartToRecents() {
        if (this.mRunningOverHome) {
            ((FallbackRecentsView) this.mRecentsView).onGestureAnimationStartOnHome(this.mGestureState.getRunningTask());
        } else {
            super.notifyGestureAnimationStartToRecents();
        }
    }

    @Override // com.android.quickstep.BaseSwipeUpHandlerV2
    public void switchToScreenshot() {
        if (this.mRunningOverHome) {
            this.mStateCallback.setStateOnUiThread(BaseSwipeUpHandlerV2.STATE_SCREENSHOT_CAPTURED);
        } else {
            super.switchToScreenshot();
        }
    }
}
