package com.android.launcher3.touch;

import android.content.res.Resources;
import android.graphics.PointF;
import android.view.View;
import com.android.launcher3.Utilities;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class SeascapePagedViewHandler extends LandscapePagedViewHandler {
    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public void adjustFloatingIconStartVelocity(PointF pointF) {
        pointF.set(pointF.y, -pointF.x);
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public float getDegreesRotated() {
        return 270.0f;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public boolean getRecentsRtlSetting(Resources resources) {
        return Utilities.isRtl(resources);
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public int getRotation() {
        return 3;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskDismissDirectionFactor() {
        return -1;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskDragDisplacementFactor(boolean z) {
        return z ? -1 : 1;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuX(float f, View view) {
        return f;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuY(float f, View view) {
        return f + view.getMeasuredHeight();
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public boolean isGoingUp(float f, boolean z) {
        if (z) {
            if (f > RecentsState.NO_OFFSET) {
                return true;
            }
        } else if (f < RecentsState.NO_OFFSET) {
            return true;
        }
        return false;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public void setPrimaryAndResetSecondaryTranslate(View view, float f) {
        view.setTranslationX(RecentsState.NO_OFFSET);
        view.setTranslationY(f);
    }
}
