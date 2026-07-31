package org.schabi.newpipe.views;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FocusAwareDrawerLayout extends DrawerLayout {
    public FocusAwareDrawerLayout(Context context) {
        super(context, null, R.attr.drawerLayoutStyle);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        View view = null;
        boolean z = false;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if (((DrawerLayout.LayoutParams) childAt.getLayoutParams()).gravity == 0) {
                view = childAt;
            } else if (DrawerLayout.isDrawerVisible(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
        }
        if (view == null || z) {
            return;
        }
        view.addFocusables(arrayList, i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        boolean z = false;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (((DrawerLayout.LayoutParams) childAt.getLayoutParams()).gravity != 0 && DrawerLayout.isDrawerVisible(childAt)) {
                if (childAt.requestFocus(i, rect)) {
                    return true;
                }
                z = true;
            }
        }
        if (z) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout
    public final void openDrawer(View view) {
        if (!DrawerLayout.isDrawerView(view)) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m$2(view, " is not a sliding drawer", "View ");
            return;
        }
        DrawerLayout.LayoutParams layoutParams = (DrawerLayout.LayoutParams) view.getLayoutParams();
        if (this.mFirstLayout) {
            layoutParams.onScreen = 1.0f;
            layoutParams.openState = 1;
            updateChildrenImportantForAccessibility(view, true);
            updateChildAccessibilityAction(view);
        } else {
            layoutParams.openState |= 2;
            if (checkDrawerViewAbsoluteGravity(3, view)) {
                this.mLeftDragger.smoothSlideViewTo(view, 0, view.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
            }
        }
        invalidate();
        view.requestFocus(2);
    }

    public FocusAwareDrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public FocusAwareDrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.drawerLayoutStyle);
    }
}
