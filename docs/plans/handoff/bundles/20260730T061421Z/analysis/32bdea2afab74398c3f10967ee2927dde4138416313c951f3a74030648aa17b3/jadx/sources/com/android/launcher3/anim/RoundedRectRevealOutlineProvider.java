package com.android.launcher3.anim;

import android.graphics.Rect;

/* loaded from: classes.dex */
public class RoundedRectRevealOutlineProvider extends RevealOutlineAnimation {
    public final float mEndRadius;
    public final Rect mEndRect;
    public final float mStartRadius;
    public final Rect mStartRect;

    public RoundedRectRevealOutlineProvider(float f, float f2, Rect rect, Rect rect2) {
        this.mStartRadius = f;
        this.mEndRadius = f2;
        this.mStartRect = rect;
        this.mEndRect = rect2;
    }

    @Override // com.android.launcher3.anim.RevealOutlineAnimation
    public boolean shouldRemoveElevationDuringAnimation() {
        return false;
    }
}
