package com.android.launcher3;

import android.animation.LayoutTransition;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.ScrollView;
import b.h.a.D;
import b.l.W;
import c.a.a.Y0.c;
import c.a.a.Y0.j;
import c.a.a.Y0.k;
import com.android.launcher3.PagedView;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.OverScroller;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class PagedView extends ViewGroup {
    public static final int ACTION_MOVE_ALLOW_EASY_FLING = 254;
    public static final boolean DEBUG = false;
    public static final boolean DEBUG_FAILED_QUICKSWITCH = false;
    public static final int EASY_FLING_THRESHOLD_VELOCITY = 400;
    public static final int FLING_THRESHOLD_VELOCITY = 500;
    public static final int INVALID_PAGE = -1;
    public static final int INVALID_POINTER = -1;
    public static final float MAX_SCROLL_PROGRESS = 1.0f;
    public static final int MIN_FLING_VELOCITY = 250;
    public static final int MIN_SNAP_VELOCITY = 1500;
    public static final int OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION = 270;
    public static final int PAGE_SNAP_ANIMATION_DURATION = 750;
    public static final float RETURN_TO_ORIGINAL_PAGE_THRESHOLD = 0.33f;
    public static final float SIGNIFICANT_MOVE_THRESHOLD = 0.4f;
    public static final ComputePageScrollsLogic SIMPLE_SCROLL_LOGIC = new ComputePageScrollsLogic() { // from class: c.a.a.Z
        @Override // com.android.launcher3.PagedView.ComputePageScrollsLogic
        public final boolean shouldIncludeView(View view) {
            return PagedView.a(view);
        }
    };
    public static final String TAG = "PagedView";
    public int mActivePointerId;
    public boolean mAllowEasyFling;
    public boolean mAllowOverScroll;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mCurrentPage;
    public Interpolator mDefaultInterpolator;
    public float mDownMotionPrimary;
    public float mDownMotionX;
    public float mDownMotionY;
    public final int mEasyFlingThresholdVelocity;
    public boolean mFirstLayout;
    public final int mFlingThresholdVelocity;
    public boolean mFreeScroll;
    public final Rect mInsets;
    public boolean mIsBeingDragged;
    public boolean mIsLayoutValid;
    public boolean mIsPageInTransition;
    public boolean mIsRtl;
    public float mLastMotion;
    public float mLastMotionRemainder;
    public int mMaxScroll;
    public int mMaximumVelocity;
    public final int mMinFlingVelocity;
    public int mMinScroll;
    public final int mMinSnapVelocity;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mNextPage;
    public Runnable mOnPageTransitionEndCallback;
    public PagedOrientationHandler mOrientationHandler;
    public View mPageIndicator;
    public int mPageIndicatorViewId;
    public int[] mPageScrolls;
    public int mPageSlop;
    public int mPageSpacing;
    public OverScroller mScroller;
    public float mSpringOverScroll;
    public int[] mTmpIntPair;
    public float mTotalMotion;
    public int mTouchSlop;
    public int mUnboundedScroll;
    public VelocityTracker mVelocityTracker;
    public boolean mWasInOverscroll;

    public interface ComputePageScrollsLogic {
        boolean shouldIncludeView(View view);
    }

    public PagedView(Context context) {
        this(context, null);
    }

    public static /* synthetic */ boolean a(View view) {
        return view.getVisibility() != 8;
    }

    private void abortScrollerAnimation(boolean z) {
        this.mScroller.mScroller.finish();
        if (z) {
            this.mNextPage = -1;
            pageEndTransition();
        }
    }

    private void acquireVelocityTrackerAndAddMovement(MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
    }

    private void dispatchPageCountChanged() {
        KeyEvent.Callback callback = this.mPageIndicator;
        if (callback != null) {
            ((PageIndicator) callback).setMarkersCount(getChildCount());
        }
        invalidate();
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    private int ensureWithinScrollBounds(int i) {
        int i2 = !this.mIsRtl ? 1 : -1;
        int scrollForPage = getScrollForPage(i);
        while (true) {
            if (scrollForPage >= this.mMinScroll) {
                break;
            }
            i += i2;
            int scrollForPage2 = getScrollForPage(i);
            if (scrollForPage2 <= scrollForPage) {
                Log.e(TAG, "validateNewPage: failed to find a page > mMinScrollX");
                scrollForPage = scrollForPage2;
                break;
            }
            scrollForPage = scrollForPage2;
        }
        while (true) {
            if (scrollForPage <= this.mMaxScroll) {
                break;
            }
            i -= i2;
            int scrollForPage3 = getScrollForPage(i);
            if (scrollForPage3 >= scrollForPage) {
                Log.e(TAG, "validateNewPage: failed to find a page < mMaxScrollX");
                break;
            }
            scrollForPage = scrollForPage3;
        }
        return i;
    }

    private void forceFinishScroller(boolean z) {
        this.mScroller.mScroller.mFinished = true;
        if (z) {
            this.mNextPage = -1;
            pageEndTransition();
        }
    }

    private int getSpringOverScroll(int i) {
        if (this.mScroller.isSpringing()) {
            return i < 0 ? this.mScroller.mScroller.mCurrentPosition - this.mMinScroll : Math.max(0, this.mScroller.mScroller.mCurrentPosition - this.mMaxScroll);
        }
        return 0;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            float primaryDirection = this.mOrientationHandler.getPrimaryDirection(motionEvent, i);
            this.mDownMotionPrimary = primaryDirection;
            this.mLastMotion = primaryDirection;
            this.mLastMotionRemainder = RecentsState.NO_OFFSET;
            this.mActivePointerId = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void releaseVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void resetTouchState() {
        releaseVelocityTracker();
        this.mIsBeingDragged = false;
        this.mActivePointerId = -1;
    }

    private void sendScrollAccessibilityEvent() {
        if (!((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled() || this.mCurrentPage == getNextPage()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(QuickStepContract.SYSUI_STATE_TRACING_ENABLED);
        obtain.setScrollable(true);
        obtain.setScrollX(getScrollX());
        obtain.setScrollY(getScrollY());
        this.mOrientationHandler.setMaxScroll(obtain, this.mMaxScroll);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void updateIsBeingDraggedOnTouchDown() {
        OverScroller.SplineOverScroller splineOverScroller = this.mScroller.mScroller;
        if (!(this.mScroller.mScroller.mFinished || Math.abs(splineOverScroller.mFinal - splineOverScroller.mCurrentPosition) < this.mPageSlop / 3)) {
            this.mIsBeingDragged = true;
            return;
        }
        this.mIsBeingDragged = false;
        if (this.mScroller.mScroller.mFinished || this.mFreeScroll) {
            return;
        }
        setCurrentPage(getNextPage());
        pageEndTransition();
    }

    private void updatePageIndicator() {
        KeyEvent.Callback callback = this.mPageIndicator;
        if (callback != null) {
            ((PageIndicator) callback).setActiveMarker(getNextPage());
        }
    }

    private int validateNewPage(int i) {
        return Utilities.boundToRange(ensureWithinScrollBounds(i), 0, getPageCount() - 1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i, int i2) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int i3 = this.mCurrentPage;
        if (i3 >= 0 && i3 < getPageCount()) {
            getPageAt(this.mCurrentPage).addFocusables(arrayList, i, i2);
        }
        if (i == 17) {
            int i4 = this.mCurrentPage;
            if (i4 > 0) {
                getPageAt(i4 - 1).addFocusables(arrayList, i, i2);
                return;
            }
            return;
        }
        if (i != 66 || this.mCurrentPage >= getPageCount() - 1) {
            return;
        }
        getPageAt(this.mCurrentPage + 1).addFocusables(arrayList, i, i2);
    }

    public void announcePageForAccessibility() {
        if (W.isAccessibilityEnabled(getContext())) {
            announceForAccessibility(getCurrentPageDescription());
        }
    }

    public boolean canAnnouncePageDescription() {
        return true;
    }

    public boolean canScroll(float f, float f2) {
        ActivityContext lookupContext = ActivityContext.lookupContext(getContext());
        return lookupContext == null || AbstractFloatingView.getTopOpenView(lookupContext) == null;
    }

    public void cancelCurrentPageLongPress() {
        View pageAt = getPageAt(this.mCurrentPage);
        if (pageAt != null) {
            pageAt.cancelLongPress();
        }
    }

    public int computeMaxScroll() {
        int childCount = getChildCount();
        if (childCount > 0) {
            return getScrollForPage(this.mIsRtl ? 0 : childCount - 1);
        }
        return 0;
    }

    public int computeMinScroll() {
        return 0;
    }

    @Override // android.view.View
    public void computeScroll() {
        computeScrollHelper();
    }

    public boolean computeScrollHelper() {
        return computeScrollHelper(true);
    }

    public void dampedOverScroll(int i) {
        if (i == 0) {
            return;
        }
        int dampedScroll = W.dampedScroll(i, this.mOrientationHandler.getMeasuredSize(this));
        if (this.mScroller.isSpringing()) {
            this.mSpringOverScroll = getSpringOverScroll(i);
            invalidate();
        } else {
            this.mOrientationHandler.delegateScrollTo(this, Utilities.boundToRange(this.mOrientationHandler.getPrimaryScroll(this), this.mMinScroll, this.mMaxScroll) + dampedScroll);
            invalidate();
        }
    }

    public void determineScrollingStart(MotionEvent motionEvent) {
        determineScrollingStart(motionEvent, 1.0f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (!this.mScroller.isSpringing() || this.mSpringOverScroll == RecentsState.NO_OFFSET) {
            super.dispatchDraw(canvas);
            return;
        }
        int save = canvas.save();
        PagedOrientationHandler pagedOrientationHandler = this.mOrientationHandler;
        PagedOrientationHandler.Float2DAction float2DAction = PagedOrientationHandler.CANVAS_TRANSLATE;
        pagedOrientationHandler.set(canvas, j.f1714a, -this.mSpringOverScroll);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        if (super.dispatchUnhandledMove(view, i)) {
            return true;
        }
        if (this.mIsRtl) {
            if (i == 17) {
                i = 66;
            } else if (i == 66) {
                i = 17;
            }
        }
        if (i == 17) {
            if (getCurrentPage() <= 0) {
                return false;
            }
            snapToPage(getCurrentPage() - 1);
            getChildAt(getCurrentPage() - 1).requestFocus(i);
            return true;
        }
        if (i != 66 || getCurrentPage() >= getPageCount() - 1) {
            return false;
        }
        snapToPage(getCurrentPage() + 1);
        getChildAt(getCurrentPage() + 1).requestFocus(i);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void focusableViewAvailable(View view) {
        View pageAt = getPageAt(this.mCurrentPage);
        for (View view2 = view; view2 != pageAt; view2 = (View) view2.getParent()) {
            if (view2 == this || !(view2.getParent() instanceof View)) {
                return;
            }
        }
        super.focusableViewAvailable(view);
    }

    @Override // android.view.View
    public void forceLayout() {
        this.mIsLayoutValid = false;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ScrollView.class.getName();
    }

    public int getChildGap() {
        return 0;
    }

    public int getChildOffset(int i) {
        if (i < 0 || i > getChildCount() - 1) {
            return 0;
        }
        return this.mOrientationHandler.getChildStart(getPageAt(i));
    }

    public int getCurrentPage() {
        return this.mCurrentPage;
    }

    public String getCurrentPageDescription() {
        return getContext().getString(R.string.default_scroll_format, Integer.valueOf(getNextPage() + 1), Integer.valueOf(getChildCount()));
    }

    public float getDownMotionX() {
        return this.mDownMotionX;
    }

    public float getDownMotionY() {
        return this.mDownMotionY;
    }

    public int getExpectedHeight() {
        return getMeasuredHeight();
    }

    public int getExpectedWidth() {
        return getMeasuredWidth();
    }

    public int getLayoutTransitionOffsetForPage(int i) {
        int[] iArr = this.mPageScrolls;
        if (iArr == null || i >= iArr.length || i < 0) {
            return 0;
        }
        return (int) (getChildAt(i).getX() - (this.mPageScrolls[i] + (this.mIsRtl ? getPaddingRight() : getPaddingLeft())));
    }

    public int getNextPage() {
        int i = this.mNextPage;
        return i != -1 ? i : this.mCurrentPage;
    }

    public int getNormalChildHeight() {
        int expectedHeight = (getExpectedHeight() - getPaddingTop()) - getPaddingBottom();
        Rect rect = this.mInsets;
        return (expectedHeight - rect.top) - rect.bottom;
    }

    public int getNormalChildWidth() {
        int expectedWidth = (getExpectedWidth() - getPaddingLeft()) - getPaddingRight();
        Rect rect = this.mInsets;
        return (expectedWidth - rect.left) - rect.right;
    }

    public View getPageAt(int i) {
        return getChildAt(i);
    }

    public int getPageCount() {
        return getChildCount();
    }

    public View getPageIndicator() {
        return this.mPageIndicator;
    }

    public int getPageNearestToCenterOfScreen() {
        return getPageNearestToCenterOfScreen(this.mOrientationHandler.getPrimaryScroll(this));
    }

    public boolean getPageScrolls(int[] iArr, boolean z, ComputePageScrollsLogic computePageScrollsLogic) {
        int childCount = getChildCount();
        if (this.mIsRtl) {
            childCount = -1;
        }
        int i = this.mIsRtl ? -1 : 1;
        int centerForPage = this.mOrientationHandler.getCenterForPage(this, this.mInsets);
        int scrollOffsetStart = this.mOrientationHandler.getScrollOffsetStart(this, this.mInsets);
        int scrollOffsetEnd = this.mOrientationHandler.getScrollOffsetEnd(this, this.mInsets);
        boolean z2 = false;
        int i2 = scrollOffsetStart;
        for (int i3 = this.mIsRtl ? childCount - 1 : 0; i3 != childCount; i3 += i) {
            View pageAt = getPageAt(i3);
            if (computePageScrollsLogic.shouldIncludeView(pageAt)) {
                PagedOrientationHandler.ChildBounds childBounds = this.mOrientationHandler.getChildBounds(pageAt, i2, centerForPage, z);
                int i4 = childBounds.primaryDimension;
                int max = this.mIsRtl ? i2 - scrollOffsetStart : Math.max(0, childBounds.childPrimaryEnd - scrollOffsetEnd);
                if (iArr[i3] != max) {
                    iArr[i3] = max;
                    z2 = true;
                }
                i2 += getChildGap() + i4 + this.mPageSpacing;
            }
        }
        return z2;
    }

    public int getPageSnapDuration() {
        return isInOverScroll() ? OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION : PAGE_SNAP_ANIMATION_DURATION;
    }

    public int getPageSpacing() {
        return this.mPageSpacing;
    }

    public int getScrollForPage(int i) {
        int[] iArr = this.mPageScrolls;
        if (iArr == null || i >= iArr.length || i < 0) {
            return 0;
        }
        return iArr[i];
    }

    public float getScrollProgress(int i, View view, int i2) {
        int measuredWidth;
        int scrollForPage = i - (getScrollForPage(i2) + (getMeasuredWidth() / 2));
        int childCount = getChildCount();
        int i3 = i2 + 1;
        if ((scrollForPage < 0 && !this.mIsRtl) || (scrollForPage > 0 && this.mIsRtl)) {
            i3 = i2 - 1;
        }
        if (i3 < 0 || i3 > childCount - 1) {
            measuredWidth = this.mPageSpacing + view.getMeasuredWidth();
        } else {
            measuredWidth = Math.abs(getScrollForPage(i3) - getScrollForPage(i2));
        }
        return Math.max(Math.min(scrollForPage / (measuredWidth * 1.0f), 1.0f), -1.0f);
    }

    public int getUnboundedScroll() {
        return this.mUnboundedScroll;
    }

    public int[] getVisibleChildrenRange() {
        float measuredWidth = getMeasuredWidth();
        float f = RecentsState.NO_OFFSET;
        float f2 = measuredWidth + RecentsState.NO_OFFSET;
        float scaleX = getScaleX();
        if (scaleX < 1.0f && scaleX > RecentsState.NO_OFFSET) {
            float measuredWidth2 = getMeasuredWidth() / 2;
            f = measuredWidth2 - ((measuredWidth2 - RecentsState.NO_OFFSET) / scaleX);
            f2 = ((f2 - measuredWidth2) / scaleX) + measuredWidth2;
        }
        int childCount = getChildCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < childCount; i3++) {
            float translationX = (getPageAt(i3).getTranslationX() + r8.getLeft()) - getScrollX();
            if (translationX <= f2 && translationX + r8.getMeasuredWidth() >= f) {
                if (i == -1) {
                    i = i3;
                }
                i2 = i3;
            }
        }
        int[] iArr = this.mTmpIntPair;
        iArr[0] = i;
        iArr[1] = i2;
        return iArr;
    }

    public int indexToPage(int i) {
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void initParentViews(View view) {
        int i = this.mPageIndicatorViewId;
        if (i > -1) {
            View findViewById = view.findViewById(i);
            this.mPageIndicator = findViewById;
            ((PageIndicator) findViewById).setMarkersCount(getChildCount());
        }
    }

    public boolean isHandlingTouch() {
        return this.mIsBeingDragged;
    }

    public boolean isInOverScroll() {
        int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
        return primaryScroll > this.mMaxScroll || primaryScroll < this.mMinScroll;
    }

    public boolean isPageInTransition() {
        return this.mIsPageInTransition;
    }

    public boolean isPageOrderFlipped() {
        return false;
    }

    public void notifyPageSwitchListener(int i) {
        updatePageIndicator();
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8) {
            if ((motionEvent.getMetaState() & 1) != 0) {
                axisValue = motionEvent.getAxisValue(9);
                f = 0.0f;
            } else {
                f = -motionEvent.getAxisValue(9);
                axisValue = motionEvent.getAxisValue(10);
            }
            boolean z = false;
            if (!canScroll(Math.abs(f), Math.abs(axisValue))) {
                return false;
            }
            if (axisValue != RecentsState.NO_OFFSET || f != RecentsState.NO_OFFSET) {
                if (!this.mIsRtl ? axisValue > RecentsState.NO_OFFSET || f > RecentsState.NO_OFFSET : axisValue < RecentsState.NO_OFFSET || f < RecentsState.NO_OFFSET) {
                    z = true;
                }
                if (z) {
                    scrollRight();
                } else {
                    scrollLeft();
                }
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        boolean z = true;
        if (!this.mAllowOverScroll && getPageCount() <= 1) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        boolean isPageOrderFlipped = isPageOrderFlipped();
        int i = !this.mAllowOverScroll ? 1 : 0;
        accessibilityNodeInfo.setScrollable(getPageCount() > i);
        if (getCurrentPage() < getPageCount() - i) {
            accessibilityNodeInfo.addAction(isPageOrderFlipped ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD : AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(this.mIsRtl ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT);
        }
        if (getCurrentPage() >= i) {
            accessibilityNodeInfo.addAction(isPageOrderFlipped ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD : AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            accessibilityNodeInfo.addAction(this.mIsRtl ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT);
        }
        accessibilityNodeInfo.setLongClickable(false);
        accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getChildCount() <= 0) {
            return false;
        }
        acquireVelocityTrackerAndAddMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action == 2 && this.mIsBeingDragged) {
            return true;
        }
        int i = action & 255;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 6) {
                            onSecondaryPointerUp(motionEvent);
                            releaseVelocityTracker();
                        }
                    }
                } else if (this.mActivePointerId != -1) {
                    determineScrollingStart(motionEvent);
                }
            }
            resetTouchState();
        } else {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.mDownMotionX = x;
            this.mDownMotionY = y;
            float primaryDirection = this.mOrientationHandler.getPrimaryDirection(motionEvent, 0);
            this.mLastMotion = primaryDirection;
            this.mDownMotionPrimary = primaryDirection;
            this.mLastMotionRemainder = RecentsState.NO_OFFSET;
            this.mTotalMotion = RecentsState.NO_OFFSET;
            this.mAllowEasyFling = false;
            this.mActivePointerId = motionEvent.getPointerId(0);
            updateIsBeingDraggedOnTouchDown();
        }
        return this.mIsBeingDragged;
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int i5;
        this.mIsLayoutValid = true;
        int childCount = getChildCount();
        int[] iArr = this.mPageScrolls;
        if (iArr == null || childCount != iArr.length) {
            this.mPageScrolls = new int[childCount];
            z2 = true;
        } else {
            z2 = false;
        }
        if (childCount == 0) {
            return;
        }
        boolean z3 = getPageScrolls(this.mPageScrolls, true, SIMPLE_SCROLL_LOGIC) ? true : z2;
        LayoutTransition layoutTransition = getLayoutTransition();
        if (layoutTransition == null || !layoutTransition.isRunning()) {
            updateMinAndMaxScrollX();
        } else {
            layoutTransition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: com.android.launcher3.PagedView.1
                @Override // android.animation.LayoutTransition.TransitionListener
                public void endTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i6) {
                    if (layoutTransition2.isRunning()) {
                        return;
                    }
                    layoutTransition2.removeTransitionListener(this);
                    PagedView.this.updateMinAndMaxScrollX();
                }

                @Override // android.animation.LayoutTransition.TransitionListener
                public void startTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i6) {
                }
            });
        }
        if (this.mFirstLayout && (i5 = this.mCurrentPage) >= 0 && i5 < childCount) {
            updateCurrentPageScroll();
            this.mFirstLayout = false;
        }
        if (this.mScroller.mScroller.mFinished && z3) {
            setCurrentPage(getNextPage());
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (getChildCount() == 0) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 0 || mode2 == 0) {
            super.onMeasure(i, i2);
            return;
        }
        if (size <= 0 || size2 <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        Rect rect = this.mInsets;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((size - rect.left) - rect.right, 1073741824);
        Rect rect2 = this.mInsets;
        measureChildren(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec((size2 - rect2.top) - rect2.bottom, 1073741824));
        setMeasuredDimension(size, size2);
    }

    public boolean onOverscroll(int i) {
        if (!this.mAllowOverScroll) {
            return false;
        }
        onScrollInteractionBegin();
        overScroll(i);
        onScrollInteractionEnd();
        return true;
    }

    public void onPageBeginTransition() {
    }

    public void onPageEndTransition() {
        this.mWasInOverscroll = false;
        AccessibilityManager accessibilityManagerForTest = W.getAccessibilityManagerForTest(getContext());
        if (accessibilityManagerForTest != null) {
            W.sendEventToTest(accessibilityManagerForTest, "TAPL_SCROLL_FINISHED", null);
        }
        W.sendCustomAccessibilityEvent(getPageAt(this.mCurrentPage), 8, null);
        Runnable runnable = this.mOnPageTransitionEndCallback;
        if (runnable != null) {
            runnable.run();
            this.mOnPageTransitionEndCallback = null;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2 = this.mNextPage;
        if (i2 == -1) {
            i2 = this.mCurrentPage;
        }
        View pageAt = getPageAt(i2);
        if (pageAt != null) {
            return pageAt.requestFocus(i, rect);
        }
        return false;
    }

    public void onScrollInteractionBegin() {
    }

    public void onScrollInteractionEnd() {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        D d2;
        int i;
        boolean z = false;
        if (getChildCount() <= 0) {
            return false;
        }
        acquireVelocityTrackerAndAddMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            updateIsBeingDraggedOnTouchDown();
            if (!this.mScroller.mScroller.mFinished) {
                abortScrollerAnimation(false);
            }
            this.mDownMotionX = motionEvent.getX();
            this.mDownMotionY = motionEvent.getY();
            float primaryDirection = this.mOrientationHandler.getPrimaryDirection(motionEvent, 0);
            this.mLastMotion = primaryDirection;
            this.mDownMotionPrimary = primaryDirection;
            this.mLastMotionRemainder = RecentsState.NO_OFFSET;
            this.mTotalMotion = RecentsState.NO_OFFSET;
            this.mAllowEasyFling = false;
            this.mActivePointerId = motionEvent.getPointerId(0);
            if (this.mIsBeingDragged) {
                onScrollInteractionBegin();
                pageBeginTransition();
            }
        } else if (action == 1) {
            if (this.mIsBeingDragged) {
                int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (findPointerIndex == -1) {
                    return true;
                }
                float primaryDirection2 = this.mOrientationHandler.getPrimaryDirection(motionEvent, findPointerIndex);
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                int primaryVelocity = (int) this.mOrientationHandler.getPrimaryVelocity(velocityTracker, this.mActivePointerId);
                int i2 = (int) (primaryDirection2 - this.mDownMotionPrimary);
                float measuredSize = this.mOrientationHandler.getMeasuredSize(getPageAt(this.mCurrentPage));
                boolean z2 = ((float) Math.abs(i2)) > 0.4f * measuredSize;
                float abs = Math.abs((this.mLastMotion + this.mLastMotionRemainder) - primaryDirection2) + this.mTotalMotion;
                this.mTotalMotion = abs;
                boolean z3 = (this.mAllowEasyFling || (abs > ((float) this.mPageSlop) ? 1 : (abs == ((float) this.mPageSlop) ? 0 : -1)) > 0) && shouldFlingForVelocity(primaryVelocity);
                boolean z4 = !this.mIsRtl ? i2 >= 0 : i2 <= 0;
                boolean z5 = !this.mIsRtl ? primaryVelocity >= 0 : primaryVelocity <= 0;
                if (this.mFreeScroll) {
                    if (!this.mScroller.mScroller.mFinished) {
                        abortScrollerAnimation(true);
                    }
                    int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
                    int i3 = this.mMaxScroll;
                    int i4 = this.mMinScroll;
                    if ((primaryScroll < i3 || (!z5 && z3)) && (primaryScroll > i4 || (z5 && z3))) {
                        this.mScroller.setInterpolator(this.mDefaultInterpolator);
                        OverScroller overScroller = this.mScroller;
                        int i5 = -primaryVelocity;
                        int round = Math.round(getWidth() * 0.5f * 0.07f);
                        if (overScroller.mFlywheel) {
                            OverScroller.SplineOverScroller splineOverScroller = overScroller.mScroller;
                            if (!splineOverScroller.mFinished) {
                                float f = splineOverScroller.mCurrVelocity;
                                float f2 = i5;
                                if (Math.signum(f2) == Math.signum(f)) {
                                    i5 = (int) (f2 + f);
                                }
                            }
                        }
                        overScroller.mMode = 1;
                        overScroller.mScroller.fling(primaryScroll, i5, i4, i3, round);
                        int i6 = this.mScroller.mScroller.mFinal;
                        this.mNextPage = getPageNearestToCenterOfScreen(i6);
                        int scrollForPage = getScrollForPage(!this.mIsRtl ? 0 : getPageCount() - 1);
                        int scrollForPage2 = getScrollForPage(!this.mIsRtl ? getPageCount() - 1 : 0);
                        if (i6 > i4 && i6 < i3) {
                            if (i6 < (scrollForPage + i4) / 2) {
                                i3 = i4;
                            } else if (i6 <= (scrollForPage2 + i3) / 2) {
                                i3 = getScrollForPage(this.mNextPage);
                            }
                            OverScroller.SplineOverScroller splineOverScroller2 = this.mScroller.mScroller;
                            splineOverScroller2.mFinal = i3;
                            if (splineOverScroller2.mState == 3 && (d2 = splineOverScroller2.mSpring) != null) {
                                d2.k(i3);
                            }
                            splineOverScroller2.mSplineDistance = splineOverScroller2.mFinal - splineOverScroller2.mStart;
                            splineOverScroller2.mFinished = false;
                            OverScroller.SplineOverScroller splineOverScroller3 = this.mScroller.mScroller;
                            int i7 = 270 - splineOverScroller3.mDuration;
                            if (i7 > 0) {
                                int currentAnimationTimeMillis = ((int) (AnimationUtils.currentAnimationTimeMillis() - splineOverScroller3.mStartTime)) + i7;
                                splineOverScroller3.mSplineDuration = currentAnimationTimeMillis;
                                splineOverScroller3.mDuration = currentAnimationTimeMillis;
                                splineOverScroller3.mFinished = false;
                            }
                        }
                    } else {
                        OverScroller overScroller2 = this.mScroller;
                        overScroller2.mMode = 1;
                        OverScroller.SplineOverScroller splineOverScroller4 = overScroller2.mScroller;
                        splineOverScroller4.mFinished = true;
                        splineOverScroller4.mFinal = primaryScroll;
                        splineOverScroller4.mStart = primaryScroll;
                        splineOverScroller4.mCurrentPosition = primaryScroll;
                        splineOverScroller4.mVelocity = 0;
                        splineOverScroller4.mStartTime = AnimationUtils.currentAnimationTimeMillis();
                        splineOverScroller4.mDuration = 0;
                        if (primaryScroll < i4) {
                            splineOverScroller4.startSpringback(primaryScroll, i4);
                        } else if (primaryScroll > i3) {
                            splineOverScroller4.startSpringback(primaryScroll, i3);
                        }
                        this.mNextPage = getPageNearestToCenterOfScreen();
                    }
                    invalidate();
                } else {
                    if (Math.abs(i2) > measuredSize * 0.33f && Math.signum(primaryVelocity) != Math.signum(i2) && z3) {
                        z = true;
                    }
                    if (((z2 && !z4 && !z3) || (z3 && !z5)) && (i = this.mCurrentPage) > 0) {
                        if (!z) {
                            i--;
                        }
                        snapToPageWithVelocity(i, primaryVelocity);
                    } else if (!((z2 && z4 && !z3) || (z3 && z5)) || this.mCurrentPage >= getChildCount() - 1) {
                        snapToDestination();
                    } else {
                        int i8 = this.mCurrentPage;
                        if (!z) {
                            i8++;
                        }
                        snapToPageWithVelocity(i8, primaryVelocity);
                    }
                }
                onScrollInteractionEnd();
            }
            resetTouchState();
        } else if (action != 2) {
            if (action == 3) {
                if (this.mIsBeingDragged) {
                    snapToDestination();
                    onScrollInteractionEnd();
                }
                resetTouchState();
            } else if (action == 6) {
                onSecondaryPointerUp(motionEvent);
                releaseVelocityTracker();
            } else if (action == 254) {
                determineScrollingStart(motionEvent);
                this.mAllowEasyFling = true;
            }
        } else if (this.mIsBeingDragged) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.mActivePointerId);
            if (findPointerIndex2 == -1) {
                return true;
            }
            float primaryDirection3 = this.mOrientationHandler.getPrimaryDirection(motionEvent, findPointerIndex2);
            float f3 = (this.mLastMotion + this.mLastMotionRemainder) - primaryDirection3;
            this.mTotalMotion = Math.abs(f3) + this.mTotalMotion;
            if (Math.abs(f3) >= 1.0f) {
                this.mLastMotion = primaryDirection3;
                int i9 = (int) f3;
                this.mLastMotionRemainder = f3 - i9;
                PagedOrientationHandler pagedOrientationHandler = this.mOrientationHandler;
                PagedOrientationHandler.Int2DAction int2DAction = PagedOrientationHandler.VIEW_SCROLL_BY;
                pagedOrientationHandler.set(this, k.f1715a, i9);
            } else {
                awakenScrollBars();
            }
        } else {
            determineScrollingStart(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        dispatchPageCountChanged();
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mCurrentPage = validateNewPage(this.mCurrentPage);
        dispatchPageCountChanged();
    }

    public void overScroll(int i) {
        if (this.mScroller.isSpringing()) {
            this.mSpringOverScroll = getSpringOverScroll(i);
            invalidate();
        } else {
            if (i == 0) {
                return;
            }
            if (!this.mFreeScroll || this.mScroller.mScroller.mFinished) {
                dampedOverScroll(i);
            } else {
                this.mOrientationHandler.delegateScrollTo(this, (i < 0 ? this.mMinScroll : this.mMaxScroll) + i);
            }
        }
    }

    public void pageBeginTransition() {
        if (this.mIsPageInTransition) {
            return;
        }
        this.mIsPageInTransition = true;
        onPageBeginTransition();
    }

    public void pageEndTransition() {
        if (this.mIsPageInTransition) {
            this.mIsPageInTransition = false;
            onPageEndTransition();
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        boolean isPageOrderFlipped = isPageOrderFlipped();
        if (i == 4096) {
            if (isPageOrderFlipped) {
                if (!scrollLeft()) {
                    return false;
                }
            } else if (!scrollRight()) {
                return false;
            }
            return true;
        }
        if (i != 8192) {
            switch (i) {
                case android.R.id.accessibilityActionPageLeft:
                    return !this.mIsRtl ? scrollLeft() : scrollRight();
                case android.R.id.accessibilityActionPageRight:
                    return !this.mIsRtl ? scrollRight() : scrollLeft();
                default:
                    return false;
            }
        }
        if (isPageOrderFlipped) {
            if (!scrollRight()) {
                return false;
            }
        } else if (!scrollLeft()) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int indexToPage = indexToPage(indexOfChild(view));
        if (indexToPage < 0 || indexToPage == getCurrentPage() || isInTouchMode()) {
            return;
        }
        snapToPage(indexToPage);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        int indexToPage = indexToPage(indexOfChild(view));
        if (indexToPage == this.mCurrentPage && this.mScroller.mScroller.mFinished) {
            return false;
        }
        if (z) {
            setCurrentPage(indexToPage);
            return true;
        }
        snapToPage(indexToPage);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            getPageAt(this.mCurrentPage).cancelLongPress();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.mIsLayoutValid = false;
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        this.mOrientationHandler.delegateScrollBy(this, getUnboundedScroll(), i, i2);
    }

    public boolean scrollLeft() {
        if (getNextPage() <= 0) {
            return onOverscroll(-getMeasuredWidth());
        }
        snapToPage(getNextPage() - 1);
        return true;
    }

    public boolean scrollRight() {
        if (getNextPage() >= getChildCount() - 1) {
            return onOverscroll(getMeasuredWidth());
        }
        snapToPage(getNextPage() + 1);
        return true;
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        int primaryValue = this.mOrientationHandler.getPrimaryValue(i, i2);
        int secondaryValue = this.mOrientationHandler.getSecondaryValue(i, i2);
        this.mUnboundedScroll = primaryValue;
        boolean z = !this.mIsRtl ? primaryValue >= this.mMinScroll : primaryValue <= this.mMaxScroll;
        boolean z2 = !this.mIsRtl ? primaryValue <= this.mMaxScroll : primaryValue >= this.mMinScroll;
        if (!z && !z2) {
            this.mSpringOverScroll = RecentsState.NO_OFFSET;
        }
        if (z) {
            this.mOrientationHandler.delegateScrollTo(this, secondaryValue, this.mIsRtl ? this.mMaxScroll : this.mMinScroll);
            if (this.mAllowOverScroll) {
                this.mWasInOverscroll = true;
                overScroll(primaryValue - (this.mIsRtl ? this.mMaxScroll : this.mMinScroll));
                return;
            }
            return;
        }
        if (!z2) {
            if (this.mWasInOverscroll) {
                overScroll(0);
                this.mWasInOverscroll = false;
            }
            super.scrollTo(i, i2);
            return;
        }
        this.mOrientationHandler.delegateScrollTo(this, secondaryValue, this.mIsRtl ? this.mMinScroll : this.mMaxScroll);
        if (this.mAllowOverScroll) {
            this.mWasInOverscroll = true;
            overScroll(primaryValue - (this.mIsRtl ? this.mMinScroll : this.mMaxScroll));
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i) {
        if (i != 4096) {
            super.sendAccessibilityEvent(i);
        }
    }

    public void setCurrentPage(int i) {
        setCurrentPage(i, -1);
    }

    public void setDefaultInterpolator(Interpolator interpolator) {
        this.mDefaultInterpolator = interpolator;
        this.mScroller.setInterpolator(interpolator);
    }

    public void setEnableFreeScroll(boolean z) {
        boolean z2 = this.mFreeScroll;
        if (z2 == z) {
            return;
        }
        this.mFreeScroll = z;
        if (z) {
            setCurrentPage(getNextPage());
        } else {
            if (!z2 || getScrollForPage(getNextPage()) == getScrollX()) {
                return;
            }
            snapToPage(getNextPage());
        }
    }

    public void setEnableOverscroll(boolean z) {
        this.mAllowOverScroll = z;
    }

    public void setOnPageTransitionEndCallback(Runnable runnable) {
        if (this.mIsPageInTransition || runnable == null) {
            this.mOnPageTransitionEndCallback = runnable;
        } else {
            runnable.run();
        }
    }

    public void setPageSpacing(int i) {
        this.mPageSpacing = i;
        requestLayout();
    }

    public boolean shouldFlingForVelocity(int i) {
        return ((float) Math.abs(i)) > ((float) (this.mAllowEasyFling ? this.mEasyFlingThresholdVelocity : this.mFlingThresholdVelocity));
    }

    public void snapToDestination() {
        snapToPage(getPageNearestToCenterOfScreen(), getPageSnapDuration());
    }

    public boolean snapToPage(int i) {
        return snapToPage(i, PAGE_SNAP_ANIMATION_DURATION);
    }

    public boolean snapToPageImmediately(int i) {
        return snapToPage(i, PAGE_SNAP_ANIMATION_DURATION, true, null);
    }

    public boolean snapToPageWithVelocity(int i, int i2) {
        int validateNewPage = validateNewPage(i);
        int measuredSize = this.mOrientationHandler.getMeasuredSize(this) / 2;
        int scrollForPage = getScrollForPage(validateNewPage) - getUnboundedScroll();
        if (Math.abs(i2) < this.mMinFlingVelocity) {
            return snapToPage(validateNewPage, PAGE_SNAP_ANIMATION_DURATION);
        }
        float min = Math.min(1.0f, (Math.abs(scrollForPage) * 1.0f) / (measuredSize * 2));
        float f = measuredSize;
        float distanceInfluenceForSnapDuration = (distanceInfluenceForSnapDuration(min) * f) + f;
        float max = Math.max(this.mMinSnapVelocity, Math.abs(i2));
        int round = Math.round(Math.abs(distanceInfluenceForSnapDuration / max) * 1000.0f) * 4;
        return (!FeatureFlags.QUICKSTEP_SPRINGS.get() || this.mCurrentPage == validateNewPage) ? snapToPage(validateNewPage, scrollForPage, round) : snapToPage(validateNewPage, scrollForPage, round, false, null, Math.signum(scrollForPage) * max, true);
    }

    public void superScrollTo(int i, int i2) {
        super.scrollTo(i, i2);
    }

    public void updateCurrentPageScroll() {
        int i = this.mCurrentPage;
        int scrollForPage = (i < 0 || i >= getPageCount()) ? 0 : getScrollForPage(this.mCurrentPage);
        PagedOrientationHandler pagedOrientationHandler = this.mOrientationHandler;
        PagedOrientationHandler.Int2DAction int2DAction = PagedOrientationHandler.VIEW_SCROLL_TO;
        pagedOrientationHandler.set(this, c.f1703a, scrollForPage);
        this.mOrientationHandler.scrollerStartScroll(this.mScroller, scrollForPage);
        forceFinishScroller(true);
    }

    public void updateMinAndMaxScrollX() {
        this.mMinScroll = computeMinScroll();
        this.mMaxScroll = computeMaxScroll();
    }

    public PagedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int getPageNearestToCenterOfScreen(int i) {
        int measuredSize = (this.mOrientationHandler.getMeasuredSize(this) / 2) + i;
        int childCount = getChildCount();
        int i2 = Integer.MAX_VALUE;
        int i3 = -1;
        for (int i4 = 0; i4 < childCount; i4++) {
            int abs = Math.abs((getChildOffset(i4) + (this.mOrientationHandler.getMeasuredSize(getPageAt(i4)) / 2)) - measuredSize);
            if (abs < i2) {
                i3 = i4;
                i2 = abs;
            }
        }
        return i3;
    }

    public boolean computeScrollHelper(boolean z) {
        boolean z2;
        boolean z3;
        OverScroller overScroller = this.mScroller;
        OverScroller.SplineOverScroller splineOverScroller = overScroller.mScroller;
        boolean z4 = splineOverScroller.mFinished;
        if (z4) {
            z2 = false;
        } else {
            int i = overScroller.mMode;
            if (i != 0) {
                if (i == 1 && !z4 && !splineOverScroller.update()) {
                    OverScroller.SplineOverScroller splineOverScroller2 = overScroller.mScroller;
                    int i2 = splineOverScroller2.mState;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 == 2) {
                                splineOverScroller2.mStartTime += splineOverScroller2.mDuration;
                                splineOverScroller2.startSpringback(splineOverScroller2.mFinal, splineOverScroller2.mStart);
                            }
                            splineOverScroller2.update();
                            z3 = true;
                        }
                        z3 = false;
                    } else {
                        if (splineOverScroller2.mDuration < splineOverScroller2.mSplineDuration) {
                            int i3 = splineOverScroller2.mFinal;
                            splineOverScroller2.mStart = i3;
                            splineOverScroller2.mCurrentPosition = i3;
                            int i4 = (int) splineOverScroller2.mCurrVelocity;
                            splineOverScroller2.mVelocity = i4;
                            splineOverScroller2.mDeceleration = OverScroller.SplineOverScroller.getDeceleration(i4);
                            splineOverScroller2.mStartTime += splineOverScroller2.mDuration;
                            splineOverScroller2.onEdgeReached();
                            splineOverScroller2.update();
                            z3 = true;
                        }
                        z3 = false;
                    }
                    if (!z3) {
                        overScroller.mScroller.finish();
                    }
                }
            } else if (!overScroller.isSpringing()) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                OverScroller.SplineOverScroller splineOverScroller3 = overScroller.mScroller;
                long j = currentAnimationTimeMillis - splineOverScroller3.mStartTime;
                int i5 = splineOverScroller3.mDuration;
                if (j < i5) {
                    float interpolation = overScroller.mInterpolator.getInterpolation(j / i5);
                    OverScroller.SplineOverScroller splineOverScroller4 = overScroller.mScroller;
                    if (splineOverScroller4.mState != 3) {
                        splineOverScroller4.mCurrentPosition = Math.round(interpolation * (splineOverScroller4.mFinal - r2)) + splineOverScroller4.mStart;
                    }
                } else {
                    splineOverScroller3.finish();
                }
            }
            z2 = true;
        }
        if (z2) {
            int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
            int i6 = this.mUnboundedScroll;
            int i7 = this.mScroller.mScroller.mCurrentPosition;
            if (i6 != i7 || primaryScroll != i7) {
                PagedOrientationHandler pagedOrientationHandler = this.mOrientationHandler;
                PagedOrientationHandler.Int2DAction int2DAction = PagedOrientationHandler.VIEW_SCROLL_TO;
                pagedOrientationHandler.set(this, c.f1703a, this.mScroller.mScroller.mCurrentPosition);
            }
            if (z) {
                invalidate();
            }
            return true;
        }
        if (this.mNextPage != -1 && z) {
            sendScrollAccessibilityEvent();
            int i8 = this.mCurrentPage;
            this.mCurrentPage = validateNewPage(this.mNextPage);
            this.mNextPage = -1;
            notifyPageSwitchListener(i8);
            if (!this.mIsBeingDragged) {
                pageEndTransition();
            }
            if (canAnnouncePageDescription()) {
                announcePageForAccessibility();
            }
        }
        return false;
    }

    public void determineScrollingStart(MotionEvent motionEvent, float f) {
        int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        if (findPointerIndex == -1) {
            return;
        }
        float primaryDirection = this.mOrientationHandler.getPrimaryDirection(motionEvent, findPointerIndex);
        if (((int) Math.abs(primaryDirection - this.mLastMotion)) > Math.round(f * ((float) this.mTouchSlop)) || motionEvent.getAction() == 254) {
            this.mIsBeingDragged = true;
            this.mTotalMotion = Math.abs(this.mLastMotion - primaryDirection) + this.mTotalMotion;
            this.mLastMotion = primaryDirection;
            this.mLastMotionRemainder = RecentsState.NO_OFFSET;
            onScrollInteractionBegin();
            pageBeginTransition();
            requestDisallowInterceptTouchEvent(true);
        }
    }

    public void setCurrentPage(int i, int i2) {
        if (!this.mScroller.mScroller.mFinished) {
            abortScrollerAnimation(true);
        }
        if (getChildCount() == 0) {
            return;
        }
        if (i2 == -1) {
            i2 = this.mCurrentPage;
        }
        this.mCurrentPage = validateNewPage(i);
        updateCurrentPageScroll();
        notifyPageSwitchListener(i2);
        invalidate();
    }

    public boolean snapToPage(int i, int i2) {
        return snapToPage(i, i2, false, null);
    }

    public PagedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFreeScroll = false;
        this.mFirstLayout = true;
        this.mNextPage = -1;
        this.mPageSpacing = 0;
        this.mOrientationHandler = PagedOrientationHandler.PORTRAIT;
        this.mAllowOverScroll = true;
        this.mActivePointerId = -1;
        this.mIsPageInTransition = false;
        this.mWasInOverscroll = false;
        this.mInsets = new Rect();
        this.mTmpIntPair = new int[2];
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PagedView, i, 0);
        this.mPageIndicatorViewId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        setHapticFeedbackEnabled(false);
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mScroller = new OverScroller(context);
        setDefaultInterpolator(Interpolators.SCROLL);
        this.mCurrentPage = 0;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mPageSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        float f = getResources().getDisplayMetrics().density;
        this.mFlingThresholdVelocity = (int) (500.0f * f);
        this.mEasyFlingThresholdVelocity = (int) (400.0f * f);
        this.mMinFlingVelocity = (int) (250.0f * f);
        this.mMinSnapVelocity = (int) (f * 1500.0f);
        if (Utilities.ATLEAST_OREO) {
            setDefaultFocusHighlightEnabled(false);
        }
    }

    public boolean snapToPage(int i, int i2, TimeInterpolator timeInterpolator) {
        return snapToPage(i, i2, false, timeInterpolator);
    }

    public boolean snapToPage(int i, int i2, boolean z, TimeInterpolator timeInterpolator) {
        int validateNewPage = validateNewPage(i);
        return snapToPage(validateNewPage, getScrollForPage(validateNewPage) - getUnboundedScroll(), i2, z, timeInterpolator, RecentsState.NO_OFFSET, false);
    }

    public boolean snapToPage(int i, int i2, int i3) {
        return snapToPage(i, i2, i3, false, null, RecentsState.NO_OFFSET, false);
    }

    public boolean snapToPage(int i, int i2, int i3, boolean z, TimeInterpolator timeInterpolator, float f, boolean z2) {
        if (this.mFirstLayout) {
            setCurrentPage(i);
            return false;
        }
        this.mNextPage = validateNewPage(i);
        awakenScrollBars(i3);
        if (z) {
            i3 = 0;
        } else if (i3 == 0) {
            i3 = Math.abs(i2);
        }
        if (i3 != 0) {
            pageBeginTransition();
        }
        if (!this.mScroller.mScroller.mFinished) {
            abortScrollerAnimation(false);
        }
        if (timeInterpolator != null) {
            this.mScroller.setInterpolator(timeInterpolator);
        } else {
            this.mScroller.setInterpolator(this.mDefaultInterpolator);
        }
        if (z2 && FeatureFlags.QUICKSTEP_SPRINGS.get()) {
            OverScroller overScroller = this.mScroller;
            int unboundedScroll = getUnboundedScroll();
            overScroller.mMode = 0;
            OverScroller.SplineOverScroller splineOverScroller = overScroller.mScroller;
            splineOverScroller.mState = 3;
            splineOverScroller.startScroll(unboundedScroll, i2, i3, f);
        } else {
            this.mScroller.startScroll(getUnboundedScroll(), i2, i3);
        }
        updatePageIndicator();
        if (z) {
            computeScroll();
            pageEndTransition();
        }
        invalidate();
        return Math.abs(i2) > 0;
    }
}
