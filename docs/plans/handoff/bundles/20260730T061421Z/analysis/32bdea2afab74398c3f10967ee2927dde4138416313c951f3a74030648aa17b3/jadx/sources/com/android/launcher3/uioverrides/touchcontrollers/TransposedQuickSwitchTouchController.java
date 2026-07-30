package com.android.launcher3.uioverrides.touchcontrollers;

import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.touch.SingleAxisSwipeDetector;

/* loaded from: classes.dex */
public class TransposedQuickSwitchTouchController extends QuickSwitchTouchController {
    public TransposedQuickSwitchTouchController(Launcher launcher) {
        super(launcher, SingleAxisSwipeDetector.VERTICAL);
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public float getShiftRange() {
        return this.mLauncher.getDeviceProfile().heightPx / 2.0f;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z) {
        return super.getTargetState(launcherState, z ^ this.mLauncher.getDeviceProfile().isSeascape());
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public float initCurrentAnimation(int i) {
        float initCurrentAnimation = super.initCurrentAnimation(i);
        return this.mLauncher.getDeviceProfile().isSeascape() ? initCurrentAnimation : -initCurrentAnimation;
    }
}
