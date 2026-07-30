package com.android.launcher3.dragndrop;

import android.graphics.PointF;
import android.view.VelocityTracker;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.Launcher;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class FlingToDeleteHelper {
    public ButtonDropTarget mDropTarget;
    public final int mFlingToDeleteThresholdVelocity;
    public final Launcher mLauncher;
    public VelocityTracker mVelocityTracker;

    public FlingToDeleteHelper(Launcher launcher) {
        this.mLauncher = launcher;
        this.mFlingToDeleteThresholdVelocity = launcher.getResources().getDimensionPixelSize(R.dimen.drag_flingToDeleteMinVelocity);
    }

    public final float getAngleBetweenVectors(PointF pointF, PointF pointF2) {
        return (float) Math.acos(((pointF.y * pointF2.y) + (pointF.x * pointF2.x)) / (pointF2.length() * pointF.length()));
    }
}
