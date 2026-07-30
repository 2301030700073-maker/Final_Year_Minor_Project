package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.util.Log;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.quickstep.AnimatedFloat;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RemoteAnimationProvider;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class AppToOverviewAnimationProvider extends RemoteAnimationProvider {
    public static final long RECENTS_LAUNCH_DURATION = 250;
    public static final String TAG = "AppToOverviewAnimationProvider";
    public StatefulActivity mActivity;
    public final BaseActivityInterface mActivityInterface;
    public final RecentsAnimationDeviceState mDeviceState;
    public RecentsView mRecentsView;
    public final int mTargetTaskId;

    public AppToOverviewAnimationProvider(BaseActivityInterface baseActivityInterface, int i, RecentsAnimationDeviceState recentsAnimationDeviceState) {
        this.mActivityInterface = baseActivityInterface;
        this.mTargetTaskId = i;
        this.mDeviceState = recentsAnimationDeviceState;
    }

    @Override // com.android.quickstep.util.RemoteAnimationProvider
    public AnimatorSet createWindowAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
        Interpolator clampToProgress;
        PendingAnimation pendingAnimation = new PendingAnimation(250L);
        if (this.mActivity == null) {
            Log.e(TAG, "Animation created, before activity");
            return pendingAnimation.buildAnim();
        }
        this.mRecentsView.setRunningTaskIconScaledDown(true);
        pendingAnimation.mAnim.addListener(new AnimationSuccessListener() { // from class: com.android.quickstep.AppToOverviewAnimationProvider.1
            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                AppToOverviewAnimationProvider.this.mActivityInterface.onSwipeUpToRecentsComplete();
                AppToOverviewAnimationProvider.this.mRecentsView.animateUpRunningTaskIconScale();
            }
        });
        DepthController depthController = this.mActivityInterface.getDepthController();
        if (depthController != null) {
            pendingAnimation.addFloat(depthController, DepthController.DEPTH, LauncherState.BACKGROUND_APP.getDepth(this.mActivity), LauncherState.OVERVIEW.getDepth(this.mActivity), Interpolators.TOUCH_RESPONSE_INTERPOLATOR);
        }
        RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2, 1);
        RemoteAnimationTargetCompat findTask = remoteAnimationTargets.findTask(this.mTargetTaskId);
        if (findTask == null) {
            Log.e(TAG, "No closing app");
            return pendingAnimation.buildAnim();
        }
        final TaskViewSimulator taskViewSimulator = new TaskViewSimulator(this.mActivity, this.mRecentsView.getSizeStrategy());
        taskViewSimulator.setDp(this.mActivity.getDeviceProfile());
        taskViewSimulator.setPreview(findTask);
        taskViewSimulator.setLayoutRotation(this.mRecentsView.getPagedViewOrientedState().getTouchRotation(), this.mRecentsView.getPagedViewOrientedState().getDisplayRotation());
        final TransformParams syncTransactionApplier = new TransformParams().setTargetSet(remoteAnimationTargets).setSyncTransactionApplier(new SurfaceTransactionApplier(this.mActivity.getRootView()));
        final AnimatedFloat animatedFloat = new AnimatedFloat(new Runnable() { // from class: c.a.b.i
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
        syncTransactionApplier.setBaseBuilderProxy(new TransformParams.BuilderProxy() { // from class: c.a.b.m
            @Override // com.android.quickstep.util.TransformParams.BuilderProxy
            public final void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
                builder.withAlpha(AnimatedFloat.this.value);
            }
        });
        if (remoteAnimationTargets.isAnimatingHome()) {
            syncTransactionApplier.setHomeBuilderProxy(new TransformParams.BuilderProxy() { // from class: c.a.b.k
                @Override // com.android.quickstep.util.TransformParams.BuilderProxy
                public final void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
                    builder.withAlpha(1.0f - transformParams.getProgress());
                }
            });
            clampToProgress = Interpolators.TOUCH_RESPONSE_INTERPOLATOR;
            pendingAnimation.addFloat(animatedFloat, AnimatedFloat.VALUE, RecentsState.NO_OFFSET, 1.0f, Interpolators.TOUCH_RESPONSE_INTERPOLATOR);
        } else {
            clampToProgress = Interpolators.clampToProgress(Interpolators.TOUCH_RESPONSE_INTERPOLATOR, RecentsState.NO_OFFSET, 0.8f);
            pendingAnimation.addFloat(animatedFloat, AnimatedFloat.VALUE, RecentsState.NO_OFFSET, 1.0f, Interpolators.clampToProgress(Interpolators.TOUCH_RESPONSE_INTERPOLATOR, 0.8f, 1.0f));
        }
        pendingAnimation.addFloat(syncTransactionApplier, TransformParams.PROGRESS, RecentsState.NO_OFFSET, 1.0f, clampToProgress);
        taskViewSimulator.addAppToOverviewAnim(pendingAnimation, clampToProgress);
        pendingAnimation.addOnFrameCallback(new Runnable() { // from class: c.a.b.l
            @Override // java.lang.Runnable
            public final void run() {
                TaskViewSimulator.this.apply(syncTransactionApplier);
            }
        });
        return pendingAnimation.buildAnim();
    }

    public long getRecentsLaunchDuration() {
        return 250L;
    }

    public boolean onActivityReady(StatefulActivity statefulActivity, Boolean bool) {
        ((RecentsView) statefulActivity.getOverviewPanel()).showCurrentTask(this.mTargetTaskId);
        AbstractFloatingView.closeAllOpenViews(statefulActivity, bool.booleanValue());
        BaseActivityInterface.AnimationFactory prepareRecentsUI = this.mActivityInterface.prepareRecentsUI(this.mDeviceState, bool.booleanValue(), new Consumer() { // from class: c.a.b.j
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AnimatorPlaybackController animatorPlaybackController = (AnimatorPlaybackController) obj;
                animatorPlaybackController.dispatchOnStart();
                animatorPlaybackController.mAnimationPlayer.end();
            }
        });
        prepareRecentsUI.createActivityInterface(250L);
        prepareRecentsUI.setRecentsAttachedToAppWindow(true, false);
        this.mActivity = statefulActivity;
        this.mRecentsView = (RecentsView) statefulActivity.getOverviewPanel();
        return false;
    }
}
