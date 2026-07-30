package com.android.launcher3.touch;

import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;

/* loaded from: classes.dex */
public class AllAppsSwipeController extends AbstractStateChangeTouchController {
    public MotionEvent mTouchDownEvent;

    public AllAppsSwipeController(Launcher launcher) {
        super(launcher, SingleAxisSwipeDetector.VERTICAL);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public boolean canInterceptTouch(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mTouchDownEvent = motionEvent;
        }
        if (this.mCurrentAnimation != null) {
            return true;
        }
        if (AbstractFloatingView.getTopOpenView(this.mLauncher) != null) {
            return false;
        }
        if (this.mLauncher.isInState(LauncherState.NORMAL) || this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            return !this.mLauncher.isInState(LauncherState.ALL_APPS) || this.mLauncher.mAppsView.shouldContainerScroll(motionEvent);
        }
        return false;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public int getLogContainerTypeForNormalState(MotionEvent motionEvent) {
        Launcher launcher = this.mLauncher;
        return launcher.mDragLayer.isEventOverView(launcher.mHotseat, this.mTouchDownEvent) ? 2 : 1;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z) {
        return (launcherState == LauncherState.NORMAL && z) ? LauncherState.ALL_APPS : (launcherState != LauncherState.ALL_APPS || z) ? launcherState : LauncherState.NORMAL;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public float initCurrentAnimation(int i) {
        float shiftRange = getShiftRange();
        this.mCurrentAnimation = this.mLauncher.getStateManager().createAnimationToNewWorkspace(this.mToState, (long) (2.0f * shiftRange), i);
        return 1.0f / ((this.mToState.getVerticalProgress(this.mLauncher) * shiftRange) - (this.mFromState.getVerticalProgress(this.mLauncher) * shiftRange));
    }
}
