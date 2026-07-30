package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.AbstractStateChangeTouchController;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.util.Objects;

/* loaded from: classes.dex */
public class QuickSwitchTouchController extends AbstractStateChangeTouchController {
    public final RecentsView mOverviewPanel;

    public QuickSwitchTouchController(Launcher launcher) {
        super(launcher, SingleAxisSwipeDetector.HORIZONTAL);
        this.mOverviewPanel = (RecentsView) launcher.getOverviewPanel();
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public boolean canInterceptTouch(MotionEvent motionEvent) {
        if (this.mCurrentAnimation != null) {
            return true;
        }
        return this.mLauncher.isInState(LauncherState.NORMAL) && (motionEvent.getEdgeFlags() & 256) != 0;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public int getDirectionForLog() {
        return Utilities.isRtl(this.mLauncher.getResources()) ? 3 : 4;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public int getLogContainerTypeForNormalState(MotionEvent motionEvent) {
        return 11;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public float getShiftRange() {
        return this.mLauncher.getDeviceProfile().widthPx / 2.0f;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z) {
        return (((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mLauncher)).getLastSystemUiStateFlags() & 128) != 0 ? LauncherState.NORMAL : z ? LauncherState.QUICK_SWITCH : LauncherState.NORMAL;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public float initCurrentAnimation(int i) {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        Interpolator interpolator = Interpolators.DEACCEL_2;
        Interpolator[] interpolatorArr = stateAnimationConfig.mInterpolators;
        interpolatorArr[3] = interpolator;
        interpolatorArr[10] = interpolator;
        if (SysUINavigationMode.getMode(this.mLauncher) == SysUINavigationMode.Mode.NO_BUTTON) {
            Interpolator interpolator2 = Interpolators.ACCEL_2;
            Interpolator[] interpolatorArr2 = stateAnimationConfig.mInterpolators;
            interpolatorArr2[2] = interpolator2;
            interpolatorArr2[0] = interpolator2;
            interpolatorArr2[6] = interpolator2;
            interpolatorArr2[8] = interpolator2;
            interpolatorArr2[9] = Interpolators.INSTANT;
        } else {
            Interpolator interpolator3 = Interpolators.LINEAR;
            Interpolator[] interpolatorArr3 = stateAnimationConfig.mInterpolators;
            interpolatorArr3[2] = interpolator3;
            interpolatorArr3[0] = interpolator3;
        }
        stateAnimationConfig.duration = (long) (getShiftRange() * 2.0f);
        AnimatorPlaybackController createAnimationToNewWorkspace = this.mLauncher.getStateManager().createAnimationToNewWorkspace(this.mToState, stateAnimationConfig);
        createAnimationToNewWorkspace.mOnCancelRunnable = new Runnable() { // from class: c.a.a.Z0.m.o
            @Override // java.lang.Runnable
            public final void run() {
                QuickSwitchTouchController.this.clearState();
            }
        };
        this.mCurrentAnimation = createAnimationToNewWorkspace;
        createAnimationToNewWorkspace.mAnimationPlayer.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.Z0.m.p
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                QuickSwitchTouchController quickSwitchTouchController = QuickSwitchTouchController.this;
                Objects.requireNonNull(quickSwitchTouchController);
                quickSwitchTouchController.updateFullscreenProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return 1.0f / getShiftRange();
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z, float f) {
        super.onDragStart(z, f);
        this.mStartContainerType = 11;
        ActivityManagerWrapper.getInstance().closeSystemWindows(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void onSwipeInteractionCompleted(LauncherState launcherState, int i) {
        super.onSwipeInteractionCompleted(launcherState, i);
    }

    public final void updateFullscreenProgress(float f) {
        TaskView taskViewAt;
        this.mOverviewPanel.setFullscreenProgress(f);
        int i = 0;
        if (f > 0.85f && (taskViewAt = this.mOverviewPanel.getTaskViewAt(0)) != null) {
            i = taskViewAt.getThumbnail().getSysUiStatusNavFlags();
        }
        this.mLauncher.getSystemUiController().updateUiState(3, i);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void updateProgress(float f) {
        super.updateProgress(f);
        updateFullscreenProgress(Utilities.boundToRange(f, RecentsState.NO_OFFSET, 1.0f));
    }

    public QuickSwitchTouchController(Launcher launcher, SingleAxisSwipeDetector.Direction direction) {
        super(launcher, direction);
        this.mOverviewPanel = (RecentsView) launcher.getOverviewPanel();
    }
}
