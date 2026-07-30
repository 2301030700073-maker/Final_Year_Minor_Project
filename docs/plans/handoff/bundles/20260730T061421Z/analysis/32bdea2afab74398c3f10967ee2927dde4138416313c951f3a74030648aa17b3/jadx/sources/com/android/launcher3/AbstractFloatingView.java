package com.android.launcher3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import b.l.W;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;

/* loaded from: classes.dex */
public abstract class AbstractFloatingView extends LinearLayout implements TouchController {
    public static final int TYPE_ACCESSIBLE = 3263;
    public static final int TYPE_ACTION_POPUP = 2;
    public static final int TYPE_ALL = 4095;
    public static final int TYPE_ALL_APPS_EDU = 512;
    public static final int TYPE_DISCOVERY_BOUNCE = 64;
    public static final int TYPE_FOLDER = 1;
    public static final int TYPE_HIDE_BACK_BUTTON = 488;
    public static final int TYPE_LISTENER = 256;
    public static final int TYPE_ON_BOARD_POPUP = 32;
    public static final int TYPE_OPTIONS_POPUP = 2048;
    public static final int TYPE_REBIND_SAFE = 628;
    public static final int TYPE_SNACKBAR = 128;
    public static final int TYPE_STATUS_BAR_SWIPE_DOWN_DISALLOW = 1148;
    public static final int TYPE_TASK_MENU = 1024;
    public static final int TYPE_WIDGETS_BOTTOM_SHEET = 4;
    public static final int TYPE_WIDGETS_FULL_SHEET = 16;
    public static final int TYPE_WIDGET_RESIZE_FRAME = 8;
    public boolean mIsOpen;

    public AbstractFloatingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static void closeAllOpenViews(ActivityContext activityContext, boolean z) {
        closeOpenViews(activityContext, z, TYPE_ALL);
        activityContext.finishAutoCancelActionMode();
    }

    public static void closeAllOpenViewsExcept(ActivityContext activityContext, boolean z, int i) {
        closeOpenViews(activityContext, z, (~i) & TYPE_ALL);
        activityContext.finishAutoCancelActionMode();
    }

    public static void closeOpenContainer(ActivityContext activityContext, int i) {
        AbstractFloatingView openView = getOpenView(activityContext, i);
        if (openView != null) {
            openView.close(true);
        }
    }

    public static void closeOpenViews(ActivityContext activityContext, boolean z, int i) {
        BaseDragLayer dragLayer = activityContext.getDragLayer();
        for (int childCount = dragLayer.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = dragLayer.getChildAt(childCount);
            if (childAt instanceof AbstractFloatingView) {
                AbstractFloatingView abstractFloatingView = (AbstractFloatingView) childAt;
                if (abstractFloatingView.isOfType(i)) {
                    abstractFloatingView.close(z);
                }
            }
        }
    }

    public static AbstractFloatingView getOpenView(ActivityContext activityContext, int i) {
        BaseDragLayer dragLayer = activityContext.getDragLayer();
        if (dragLayer == null) {
            return null;
        }
        for (int childCount = dragLayer.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = dragLayer.getChildAt(childCount);
            if (childAt instanceof AbstractFloatingView) {
                AbstractFloatingView abstractFloatingView = (AbstractFloatingView) childAt;
                if (abstractFloatingView.isOfType(i) && abstractFloatingView.isOpen()) {
                    return abstractFloatingView;
                }
            }
        }
        return null;
    }

    public static AbstractFloatingView getTopOpenView(ActivityContext activityContext) {
        return getTopOpenViewWithType(activityContext, TYPE_ALL);
    }

    public static AbstractFloatingView getTopOpenViewWithType(ActivityContext activityContext, int i) {
        return getOpenView(activityContext, i);
    }

    public void addHintCloseAnim(float f, Interpolator interpolator, PendingAnimation pendingAnimation) {
    }

    public void announceAccessibilityChanges() {
        Pair accessibilityTarget = getAccessibilityTarget();
        if (accessibilityTarget == null || !W.isAccessibilityEnabled(getContext())) {
            return;
        }
        W.sendCustomAccessibilityEvent((View) accessibilityTarget.first, 32, (String) accessibilityTarget.second);
        if (this.mIsOpen) {
            getAccessibilityInitialFocusView().performAccessibilityAction(64, null);
        }
        ActivityContext.lookupContext(getContext()).getDragLayer().sendAccessibilityEvent(2048);
    }

    public boolean canInterceptEventsInSystemGestureRegion() {
        return false;
    }

    public final void close(boolean z) {
        boolean areAnimationsEnabled = z & Utilities.areAnimationsEnabled(getContext());
        if (this.mIsOpen) {
            BaseActivity.fromContext(getContext()).getUserEventDispatcher().resetElapsedContainerMillis("container closed");
        }
        handleClose(areAnimationsEnabled);
        this.mIsOpen = false;
    }

    public View getAccessibilityInitialFocusView() {
        return this;
    }

    public Pair getAccessibilityTarget() {
        return null;
    }

    public int getLogContainerType() {
        return 0;
    }

    public abstract void handleClose(boolean z);

    public abstract boolean isOfType(int i);

    public final boolean isOpen() {
        return this.mIsOpen;
    }

    public abstract void logActionCommand(int i);

    public boolean onBackPressed() {
        logActionCommand(1);
        close(true);
        return true;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public AbstractFloatingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public static void closeAllOpenViews(ActivityContext activityContext) {
        closeAllOpenViews(activityContext, true);
    }

    public static void closeAllOpenViewsExcept(ActivityContext activityContext, int i) {
        closeAllOpenViewsExcept(activityContext, true, i);
    }
}
