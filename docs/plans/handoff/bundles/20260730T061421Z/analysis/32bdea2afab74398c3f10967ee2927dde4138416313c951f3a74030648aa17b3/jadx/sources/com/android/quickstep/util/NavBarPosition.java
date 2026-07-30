package com.android.quickstep.util;

import com.android.launcher3.util.DefaultDisplay;
import com.android.quickstep.SysUINavigationMode;

/* loaded from: classes.dex */
public class NavBarPosition {
    public final int mDisplayRotation;
    public final SysUINavigationMode.Mode mMode;

    public NavBarPosition(SysUINavigationMode.Mode mode, DefaultDisplay.Info info) {
        this.mMode = mode;
        this.mDisplayRotation = info.rotation;
    }

    public float getRotation() {
        if (isLeftEdge()) {
            return 90.0f;
        }
        return isRightEdge() ? -90 : 0;
    }

    public boolean isLeftEdge() {
        return this.mMode != SysUINavigationMode.Mode.NO_BUTTON && this.mDisplayRotation == 3;
    }

    public boolean isRightEdge() {
        return this.mMode != SysUINavigationMode.Mode.NO_BUTTON && this.mDisplayRotation == 1;
    }

    public NavBarPosition(SysUINavigationMode.Mode mode, int i) {
        this.mMode = mode;
        this.mDisplayRotation = i;
    }
}
