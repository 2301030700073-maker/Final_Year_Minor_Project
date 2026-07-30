package com.android.launcher3.uioverrides.touchcontrollers;

import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.touch.AbstractStateChangeTouchController;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.quickstep.SystemUiProxy;

/* loaded from: classes.dex */
public class LandscapeEdgeSwipeController extends AbstractStateChangeTouchController {
    public LandscapeEdgeSwipeController(Launcher launcher) {
        super(launcher, SingleAxisSwipeDetector.HORIZONTAL);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public boolean canInterceptTouch(MotionEvent motionEvent) {
        if (this.mCurrentAnimation != null) {
            return true;
        }
        if (AbstractFloatingView.getTopOpenView(this.mLauncher) != null) {
            return false;
        }
        return this.mLauncher.isInState(LauncherState.NORMAL) && (motionEvent.getEdgeFlags() & 256) != 0;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public int getDirectionForLog() {
        return this.mLauncher.getDeviceProfile().isSeascape() ? 4 : 3;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public int getLogContainerTypeForNormalState(MotionEvent motionEvent) {
        return 11;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public float getShiftRange() {
        return this.mLauncher.mDragLayer.getWidth();
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z) {
        return this.mLauncher.getDeviceProfile().isSeascape() == z ? LauncherState.OVERVIEW : LauncherState.NORMAL;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public float initCurrentAnimation(int i) {
        float shiftRange = getShiftRange();
        this.mCurrentAnimation = this.mLauncher.getStateManager().createAnimationToNewWorkspace(this.mToState, (long) (2.0f * shiftRange), i);
        return (this.mLauncher.getDeviceProfile().isSeascape() ? 2 : -2) / shiftRange;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void onSwipeInteractionCompleted(LauncherState launcherState, int i) {
        super.onSwipeInteractionCompleted(launcherState, i);
        if (this.mStartState == LauncherState.NORMAL && launcherState == LauncherState.OVERVIEW) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mLauncher)).onOverviewShown(true, "LandscapeEdgeSwipeCtrl");
        }
    }
}
