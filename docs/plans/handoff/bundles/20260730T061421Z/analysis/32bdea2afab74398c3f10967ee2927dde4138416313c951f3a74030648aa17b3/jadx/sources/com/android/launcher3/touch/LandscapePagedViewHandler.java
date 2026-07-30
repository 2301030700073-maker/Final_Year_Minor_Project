package com.android.launcher3.touch;

import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.PagedView;
import com.android.launcher3.Utilities;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.OverScroller;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class LandscapePagedViewHandler implements PagedOrientationHandler {
    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void adjustFloatingIconStartVelocity(PointF pointF) {
        pointF.set(-pointF.y, pointF.x);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollBy(PagedView pagedView, int i, int i2, int i3) {
        pagedView.scrollTo(pagedView.getScrollX() + i2, i + i3);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollTo(PagedView pagedView, int i, int i2) {
        pagedView.superScrollTo(i, i2);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getCenterForPage(View view, Rect rect) {
        return ((((view.getMeasuredWidth() + view.getPaddingLeft()) + rect.left) - rect.right) - view.getPaddingRight()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public PagedOrientationHandler.ChildBounds getChildBounds(View view, int i, int i2, boolean z) {
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i + measuredHeight;
        int measuredWidth = view.getMeasuredWidth();
        int i4 = i2 - (measuredWidth / 2);
        if (z) {
            view.layout(i4, i, i4 + measuredWidth, i3);
        }
        return new PagedOrientationHandler.ChildBounds(measuredHeight, measuredWidth, i3, i4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getChildStart(View view) {
        return view.getTop();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getChildStartWithTranslation(View view) {
        return view.getTranslationY() + view.getTop();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getClearAllScrollOffset(View view, boolean z) {
        return (z ? view.getPaddingBottom() : -view.getPaddingTop()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void getCurveProperties(PagedView pagedView, Rect rect, PagedOrientationHandler.CurveProperties curveProperties) {
        curveProperties.scroll = pagedView.getScrollY();
        curveProperties.halfPageSize = pagedView.getNormalChildHeight() / 2;
        curveProperties.halfScreenSize = pagedView.getMeasuredHeight() / 2;
        curveProperties.screenCenter = pagedView.getPaddingTop() + rect.top + curveProperties.scroll + curveProperties.halfPageSize;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getDegreesRotated() {
        return 90.0f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getMeasuredSize(View view) {
        return view.getMeasuredHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public SingleAxisSwipeDetector.Direction getOppositeSwipeDirection() {
        return SingleAxisSwipeDetector.HORIZONTAL;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getPrimaryDirection(MotionEvent motionEvent, int i) {
        return motionEvent.getY(i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getPrimaryScroll(View view) {
        return view.getScrollY();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getPrimaryValue(int i, int i2) {
        return i2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getPrimaryVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public FloatProperty getPrimaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_Y;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean getRecentsRtlSetting(Resources resources) {
        return !Utilities.isRtl(resources);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getRotation() {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getScrollOffsetEnd(View view, Rect rect) {
        return (view.getHeight() - view.getPaddingBottom()) - rect.bottom;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getScrollOffsetStart(View view, Rect rect) {
        return view.getPaddingTop() + rect.top;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSecondaryDimension(View view) {
        return view.getWidth();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSecondaryValue(int i, int i2) {
        return i;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public FloatProperty getSecondaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_X;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskDismissDirectionFactor() {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskDragDisplacementFactor(boolean z) {
        return z ? 1 : -1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskMenuLayoutOrientation(LinearLayout linearLayout) {
        return 0;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskMenuWidth(View view) {
        return view.getMeasuredHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuX(float f, View view) {
        return view.getMeasuredWidth() + f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuY(float f, View view) {
        return f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean isGoingUp(float f, boolean z) {
        if (z) {
            if (f < RecentsState.NO_OFFSET) {
                return true;
            }
        } else if (f > RecentsState.NO_OFFSET) {
            return true;
        }
        return false;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean isLayoutNaturalToLauncher() {
        return false;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void scrollerStartScroll(OverScroller overScroller, int i) {
        OverScroller.SplineOverScroller splineOverScroller = overScroller.mScroller;
        int i2 = splineOverScroller.mCurrentPosition;
        overScroller.mMode = 0;
        splineOverScroller.startScroll(i2, i - i2, 250, RecentsState.NO_OFFSET);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void set(Object obj, PagedOrientationHandler.Int2DAction int2DAction, int i) {
        int2DAction.call(obj, 0, i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setLayoutParamsForTaskMenuOptionItem(LinearLayout.LayoutParams layoutParams) {
        layoutParams.width = 0;
        layoutParams.height = -2;
        layoutParams.weight = 1.0f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setMaxScroll(AccessibilityEvent accessibilityEvent, int i) {
        accessibilityEvent.setMaxScrollY(i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setPrimaryAndResetSecondaryTranslate(View view, float f) {
        view.setTranslationX(RecentsState.NO_OFFSET);
        view.setTranslationY(f);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollTo(PagedView pagedView, int i) {
        pagedView.superScrollTo(pagedView.getScrollX(), i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void set(Object obj, PagedOrientationHandler.Float2DAction float2DAction, float f) {
        float2DAction.call(obj, RecentsState.NO_OFFSET, f);
    }
}
