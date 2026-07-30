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
public class PortraitPagedViewHandler implements PagedOrientationHandler {
    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void adjustFloatingIconStartVelocity(PointF pointF) {
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollBy(PagedView pagedView, int i, int i2, int i3) {
        pagedView.scrollTo(i + i2, pagedView.getScrollY() + i3);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollTo(PagedView pagedView, int i, int i2) {
        pagedView.superScrollTo(i2, i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getCenterForPage(View view, Rect rect) {
        return ((((view.getMeasuredHeight() + view.getPaddingTop()) + rect.top) - rect.bottom) - view.getPaddingBottom()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public PagedOrientationHandler.ChildBounds getChildBounds(View view, int i, int i2, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int i3 = i + measuredWidth;
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 - (measuredHeight / 2);
        if (z) {
            view.layout(i, i4, i3, i4 + measuredHeight);
        }
        return new PagedOrientationHandler.ChildBounds(measuredWidth, measuredHeight, i3, i4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getChildStart(View view) {
        return view.getLeft();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getChildStartWithTranslation(View view) {
        return view.getTranslationX() + view.getLeft();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getClearAllScrollOffset(View view, boolean z) {
        return (z ? view.getPaddingRight() : -view.getPaddingLeft()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void getCurveProperties(PagedView pagedView, Rect rect, PagedOrientationHandler.CurveProperties curveProperties) {
        curveProperties.scroll = pagedView.getScrollX();
        curveProperties.halfPageSize = pagedView.getNormalChildWidth() / 2;
        curveProperties.halfScreenSize = pagedView.getMeasuredWidth() / 2;
        curveProperties.screenCenter = pagedView.getPaddingLeft() + rect.left + curveProperties.scroll + curveProperties.halfPageSize;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getDegreesRotated() {
        return RecentsState.NO_OFFSET;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getMeasuredSize(View view) {
        return view.getMeasuredWidth();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public SingleAxisSwipeDetector.Direction getOppositeSwipeDirection() {
        return SingleAxisSwipeDetector.VERTICAL;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getPrimaryDirection(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getPrimaryScroll(View view) {
        return view.getScrollX();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getPrimaryValue(int i, int i2) {
        return i;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getPrimaryVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public FloatProperty getPrimaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_X;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean getRecentsRtlSetting(Resources resources) {
        return !Utilities.isRtl(resources);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getRotation() {
        return 0;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getScrollOffsetEnd(View view, Rect rect) {
        return (view.getWidth() - view.getPaddingRight()) - rect.right;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getScrollOffsetStart(View view, Rect rect) {
        return view.getPaddingLeft() + rect.left;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSecondaryDimension(View view) {
        return view.getHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSecondaryValue(int i, int i2) {
        return i2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public FloatProperty getSecondaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_Y;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskDismissDirectionFactor() {
        return -1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskDragDisplacementFactor(boolean z) {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskMenuLayoutOrientation(LinearLayout linearLayout) {
        return linearLayout.getOrientation();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskMenuWidth(View view) {
        return view.getMeasuredWidth();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuX(float f, View view) {
        return f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuY(float f, View view) {
        return f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean isGoingUp(float f, boolean z) {
        return f < RecentsState.NO_OFFSET;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean isLayoutNaturalToLauncher() {
        return true;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void scrollerStartScroll(OverScroller overScroller, int i) {
        OverScroller.SplineOverScroller splineOverScroller = overScroller.mScroller;
        int i2 = splineOverScroller.mCurrentPosition;
        overScroller.mMode = 0;
        splineOverScroller.startScroll(i - i2, i2, 250, RecentsState.NO_OFFSET);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void set(Object obj, PagedOrientationHandler.Int2DAction int2DAction, int i) {
        int2DAction.call(obj, i, 0);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setLayoutParamsForTaskMenuOptionItem(LinearLayout.LayoutParams layoutParams) {
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setMaxScroll(AccessibilityEvent accessibilityEvent, int i) {
        accessibilityEvent.setMaxScrollX(i);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setPrimaryAndResetSecondaryTranslate(View view, float f) {
        view.setTranslationX(f);
        view.setTranslationY(RecentsState.NO_OFFSET);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollTo(PagedView pagedView, int i) {
        pagedView.superScrollTo(i, pagedView.getScrollY());
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void set(Object obj, PagedOrientationHandler.Float2DAction float2DAction, float f) {
        float2DAction.call(obj, f, RecentsState.NO_OFFSET);
    }
}
