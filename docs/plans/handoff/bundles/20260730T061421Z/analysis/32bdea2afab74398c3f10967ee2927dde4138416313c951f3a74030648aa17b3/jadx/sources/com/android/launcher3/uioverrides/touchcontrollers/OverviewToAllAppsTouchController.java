package com.android.launcher3.uioverrides.touchcontrollers;

import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.views.RecentsView;

/* loaded from: classes.dex */
public class OverviewToAllAppsTouchController extends PortraitStatesTouchController {
    public OverviewToAllAppsTouchController(Launcher launcher) {
        super(launcher, true);
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public boolean canInterceptTouch(MotionEvent motionEvent) {
        if (this.mCurrentAnimation != null) {
            return true;
        }
        if (AbstractFloatingView.getTopOpenView(this.mLauncher) != null) {
            return false;
        }
        if (this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            return this.mLauncher.mAppsView.shouldContainerScroll(motionEvent);
        }
        if (this.mLauncher.isInState(LauncherState.NORMAL)) {
            return (motionEvent.getEdgeFlags() & 256) == 0;
        }
        if (!this.mLauncher.isInState(LauncherState.OVERVIEW)) {
            return false;
        }
        RecentsView recentsView = (RecentsView) this.mLauncher.getOverviewPanel();
        return motionEvent.getY() > ((float) (recentsView.getBottom() - recentsView.getPaddingBottom()));
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public int getLogContainerTypeForNormalState(MotionEvent motionEvent) {
        return 1;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z) {
        return (launcherState != LauncherState.ALL_APPS || z) ? z ? LauncherState.ALL_APPS : launcherState : TouchInteractionService.isConnected() ? (LauncherState) this.mLauncher.getStateManager().mLastStableState : LauncherState.NORMAL;
    }
}
