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
import c.a.a.Y0.c;
import c.a.a.Y0.i;
import c.a.a.Y0.j;
import c.a.a.Y0.k;
import com.android.launcher3.PagedView;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.OverScroller;

/* loaded from: classes.dex */
public interface PagedOrientationHandler {
    public static final PagedOrientationHandler PORTRAIT = new PortraitPagedViewHandler();
    public static final PagedOrientationHandler LANDSCAPE = new LandscapePagedViewHandler();
    public static final PagedOrientationHandler SEASCAPE = new SeascapePagedViewHandler();
    public static final Int2DAction VIEW_SCROLL_BY = k.f1715a;
    public static final Int2DAction VIEW_SCROLL_TO = c.f1703a;
    public static final Float2DAction CANVAS_TRANSLATE = j.f1714a;
    public static final Float2DAction MATRIX_POST_TRANSLATE = i.f1713a;

    public class ChildBounds {
        public final int childPrimaryEnd;
        public final int primaryDimension;

        public ChildBounds(int i, int i2, int i3, int i4) {
            this.primaryDimension = i;
            this.childPrimaryEnd = i3;
        }
    }

    public class CurveProperties {
        public int halfPageSize;
        public int halfScreenSize;
        public int screenCenter;
        public int scroll;
    }

    public interface Float2DAction {
        void call(Object obj, float f, float f2);
    }

    public interface Int2DAction {
        void call(Object obj, int i, int i2);
    }

    void adjustFloatingIconStartVelocity(PointF pointF);

    void delegateScrollBy(PagedView pagedView, int i, int i2, int i3);

    void delegateScrollTo(PagedView pagedView, int i);

    void delegateScrollTo(PagedView pagedView, int i, int i2);

    int getCenterForPage(View view, Rect rect);

    ChildBounds getChildBounds(View view, int i, int i2, boolean z);

    int getChildStart(View view);

    float getChildStartWithTranslation(View view);

    int getClearAllScrollOffset(View view, boolean z);

    void getCurveProperties(PagedView pagedView, Rect rect, CurveProperties curveProperties);

    float getDegreesRotated();

    int getMeasuredSize(View view);

    SingleAxisSwipeDetector.Direction getOppositeSwipeDirection();

    float getPrimaryDirection(MotionEvent motionEvent, int i);

    int getPrimaryScroll(View view);

    int getPrimaryValue(int i, int i2);

    float getPrimaryVelocity(VelocityTracker velocityTracker, int i);

    FloatProperty getPrimaryViewTranslate();

    boolean getRecentsRtlSetting(Resources resources);

    int getRotation();

    int getScrollOffsetEnd(View view, Rect rect);

    int getScrollOffsetStart(View view, Rect rect);

    int getSecondaryDimension(View view);

    int getSecondaryValue(int i, int i2);

    FloatProperty getSecondaryViewTranslate();

    int getTaskDismissDirectionFactor();

    int getTaskDragDisplacementFactor(boolean z);

    int getTaskMenuLayoutOrientation(LinearLayout linearLayout);

    int getTaskMenuWidth(View view);

    float getTaskMenuX(float f, View view);

    float getTaskMenuY(float f, View view);

    boolean isGoingUp(float f, boolean z);

    boolean isLayoutNaturalToLauncher();

    void scrollerStartScroll(OverScroller overScroller, int i);

    void set(Object obj, Float2DAction float2DAction, float f);

    void set(Object obj, Int2DAction int2DAction, int i);

    void setLayoutParamsForTaskMenuOptionItem(LinearLayout.LayoutParams layoutParams);

    void setMaxScroll(AccessibilityEvent accessibilityEvent, int i);

    void setPrimaryAndResetSecondaryTranslate(View view, float f);
}
