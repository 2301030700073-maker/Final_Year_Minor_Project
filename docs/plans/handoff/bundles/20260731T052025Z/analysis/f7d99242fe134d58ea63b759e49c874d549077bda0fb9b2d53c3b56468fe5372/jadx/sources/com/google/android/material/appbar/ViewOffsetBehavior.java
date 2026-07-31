package com.google.android.material.appbar;

import android.view.View;
import androidx.collection.CircularArray;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ViewOffsetBehavior extends CoordinatorLayout.Behavior {
    public int tempTopBottomOffset = 0;
    public CircularArray viewOffsetHelper;

    public ViewOffsetBehavior() {
    }

    public final int getTopAndBottomOffset() {
        CircularArray circularArray = this.viewOffsetHelper;
        if (circularArray != null) {
            return circularArray.capacityBitmask;
        }
        return 0;
    }

    public void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.onLayoutChild(view, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        layoutChild(coordinatorLayout, view, i);
        if (this.viewOffsetHelper == null) {
            this.viewOffsetHelper = new CircularArray(7, view);
        }
        CircularArray circularArray = this.viewOffsetHelper;
        View view2 = (View) circularArray.elements;
        circularArray.head = view2.getTop();
        circularArray.tail = view2.getLeft();
        this.viewOffsetHelper.applyOffsets();
        int i2 = this.tempTopBottomOffset;
        if (i2 == 0) {
            return true;
        }
        CircularArray circularArray2 = this.viewOffsetHelper;
        if (circularArray2.capacityBitmask != i2) {
            circularArray2.capacityBitmask = i2;
            circularArray2.applyOffsets();
        }
        this.tempTopBottomOffset = 0;
        return true;
    }

    public ViewOffsetBehavior(int i) {
    }
}
