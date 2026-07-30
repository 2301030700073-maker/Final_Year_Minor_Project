package com.android.launcher3.util;

import android.view.Window;
import c.a.c.a.a;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SystemUiController {
    public final int[] mStates = new int[4];
    public final Window mWindow;

    public SystemUiController(Window window) {
        this.mWindow = window;
    }

    public final int getSysUiVisibilityFlags(int i, int i2) {
        if (Utilities.ATLEAST_OREO) {
            if ((i & 1) != 0) {
                i2 |= 16;
            } else if ((i & 2) != 0) {
                i2 &= -17;
            }
        }
        return (i & 4) != 0 ? i2 | QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED : (i & 8) != 0 ? i2 & (-8193) : i2;
    }

    public String toString() {
        StringBuilder f = a.f("mStates=");
        f.append(Arrays.toString(this.mStates));
        return f.toString();
    }

    public void updateUiState(int i, boolean z) {
        updateUiState(i, z ? 5 : 10);
    }

    public void updateUiState(int i, int i2) {
        int[] iArr = this.mStates;
        if (iArr[i] == i2) {
            return;
        }
        iArr[i] = i2;
        int systemUiVisibility = this.mWindow.getDecorView().getSystemUiVisibility();
        int i3 = systemUiVisibility;
        for (int i4 : this.mStates) {
            i3 = getSysUiVisibilityFlags(i4, i3);
        }
        if (i3 != systemUiVisibility) {
            this.mWindow.getDecorView().setSystemUiVisibility(i3);
        }
    }
}
