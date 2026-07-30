package com.android.launcher3.allapps;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.android.launcher3.PagedView;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class AllAppsPagedView extends PagedView {
    public AllAppsPagedView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.PagedView
    public boolean canScroll(float f, float f2) {
        return f2 > f && super.canScroll(f, f2);
    }

    @Override // com.android.launcher3.PagedView
    public void determineScrollingStart(MotionEvent motionEvent) {
        float abs = Math.abs(motionEvent.getX() - getDownMotionX());
        float abs2 = Math.abs(motionEvent.getY() - getDownMotionY());
        if (Float.compare(abs, RecentsState.NO_OFFSET) == 0) {
            return;
        }
        float atan = (float) Math.atan(abs2 / abs);
        float f = this.mTouchSlop;
        if (abs > f || abs2 > f) {
            cancelCurrentPageLongPress();
        }
        if (atan > 1.0471976f) {
            return;
        }
        if (atan > 0.5235988f) {
            super.determineScrollingStart(motionEvent, (((float) Math.sqrt((atan - 0.5235988f) / 0.5235988f)) * 4.0f) + 1.0f);
        } else {
            super.determineScrollingStart(motionEvent);
        }
    }

    @Override // com.android.launcher3.PagedView
    public String getCurrentPageDescription() {
        return "";
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        ((PersonalWorkSlidingTabStrip) this.mPageIndicator).updateIndicatorPosition(i / this.mMaxScroll);
    }

    public AllAppsPagedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AllAppsPagedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
