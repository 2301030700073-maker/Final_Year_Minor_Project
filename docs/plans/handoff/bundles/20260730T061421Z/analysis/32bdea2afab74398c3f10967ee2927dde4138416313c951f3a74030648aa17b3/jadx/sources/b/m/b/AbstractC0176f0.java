package b.m.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: b.m.b.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0176f0 {
    public C0171d mChildHelper;
    public int mHeight;
    public int mHeightMode;
    public int mPrefetchMaxCountObserved;
    public boolean mPrefetchMaxObservedInInitialPrefetch;
    public RecyclerView mRecyclerView;
    public F mSmoothScroller;
    public int mWidth;
    public int mWidthMode;
    public final H0 mHorizontalBoundCheckCallback = new C0170c0(this);
    public final H0 mVerticalBoundCheckCallback = new C0172d0(this);
    public I0 mHorizontalBoundCheck = new I0(this.mHorizontalBoundCheckCallback);
    public I0 mVerticalBoundCheck = new I0(this.mVerticalBoundCheckCallback);
    public boolean mRequestedSimpleAnimations = false;
    public boolean mIsAttachedToWindow = false;
    public boolean mAutoMeasure = false;
    public boolean mMeasurementCacheEnabled = true;
    public boolean mItemPrefetchEnabled = true;

    public static int chooseSize(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        if (r5 == 1073741824) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getChildMeasureSpec(int r4, int r5, int r6, int r7, boolean r8) {
        /*
            int r4 = r4 - r6
            r6 = 0
            int r4 = java.lang.Math.max(r6, r4)
            r0 = -2
            r1 = -1
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r8 == 0) goto L1a
            if (r7 < 0) goto L11
            goto L1c
        L11:
            if (r7 != r1) goto L2f
            if (r5 == r2) goto L20
            if (r5 == 0) goto L2f
            if (r5 == r3) goto L20
            goto L2f
        L1a:
            if (r7 < 0) goto L1e
        L1c:
            r5 = r3
            goto L31
        L1e:
            if (r7 != r1) goto L22
        L20:
            r7 = r4
            goto L31
        L22:
            if (r7 != r0) goto L2f
            if (r5 == r2) goto L2c
            if (r5 != r3) goto L29
            goto L2c
        L29:
            r7 = r4
            r5 = r6
            goto L31
        L2c:
            r7 = r4
            r5 = r2
            goto L31
        L2f:
            r5 = r6
            r7 = r5
        L31:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: b.m.b.AbstractC0176f0.getChildMeasureSpec(int, int, int, int, boolean):int");
    }

    public static C0174e0 getProperties(Context context, AttributeSet attributeSet, int i, int i2) {
        C0174e0 c0174e0 = new C0174e0();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.m.a.f1075a, i, i2);
        c0174e0.f1145a = obtainStyledAttributes.getInt(0, 1);
        c0174e0.f1146b = obtainStyledAttributes.getInt(10, 1);
        c0174e0.f1147c = obtainStyledAttributes.getBoolean(9, false);
        c0174e0.f1148d = obtainStyledAttributes.getBoolean(11, false);
        obtainStyledAttributes.recycle();
        return c0174e0;
    }

    public static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    public void addView(View view) {
        addViewInt(view, -1, false);
    }

    public final void addViewInt(View view, int i, boolean z) {
        w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (z || childViewHolderInt.isRemoved()) {
            this.mRecyclerView.mViewInfoStore.a(childViewHolderInt);
        } else {
            this.mRecyclerView.mViewInfoStore.f(childViewHolderInt);
        }
        C0178g0 c0178g0 = (C0178g0) view.getLayoutParams();
        if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.mScrapContainer.l(childViewHolderInt);
            } else {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            this.mChildHelper.b(view, i, view.getLayoutParams(), false);
        } else if (view.getParent() == this.mRecyclerView) {
            int j = this.mChildHelper.j(view);
            if (i == -1) {
                i = this.mChildHelper.e();
            }
            if (j == -1) {
                StringBuilder f = c.a.c.a.a.f("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                f.append(this.mRecyclerView.indexOfChild(view));
                throw new IllegalStateException(c.a.c.a.a.b(this.mRecyclerView, f));
            }
            if (j != i) {
                AbstractC0176f0 abstractC0176f0 = this.mRecyclerView.mLayout;
                View childAt = abstractC0176f0.getChildAt(j);
                if (childAt == null) {
                    throw new IllegalArgumentException("Cannot move a child from non-existing index:" + j + abstractC0176f0.mRecyclerView.toString());
                }
                abstractC0176f0.getChildAt(j);
                abstractC0176f0.detachViewInternal(j);
                C0178g0 c0178g02 = (C0178g0) childAt.getLayoutParams();
                w0 childViewHolderInt2 = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt2.isRemoved()) {
                    abstractC0176f0.mRecyclerView.mViewInfoStore.a(childViewHolderInt2);
                } else {
                    abstractC0176f0.mRecyclerView.mViewInfoStore.f(childViewHolderInt2);
                }
                abstractC0176f0.mChildHelper.b(childAt, i, c0178g02, childViewHolderInt2.isRemoved());
            }
        } else {
            this.mChildHelper.a(view, i, false);
            c0178g0.f1155c = true;
            F f2 = this.mSmoothScroller;
            if (f2 != null && f2.mRunning && f2.mRecyclerView.getChildLayoutPosition(view) == f2.mTargetPosition) {
                f2.mTargetView = view;
            }
        }
        if (c0178g0.f1156d) {
            childViewHolderInt.itemView.invalidate();
            c0178g0.f1156d = false;
        }
    }

    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    public boolean canScrollHorizontally() {
        return false;
    }

    public boolean canScrollVertically() {
        return false;
    }

    public boolean checkLayoutParams(C0178g0 c0178g0) {
        return c0178g0 != null;
    }

    public void collectAdjacentPrefetchPositions(int i, int i2, t0 t0Var, C0196u c0196u) {
    }

    public void collectInitialPrefetchPositions(int i, C0196u c0196u) {
    }

    public int computeHorizontalScrollExtent(t0 t0Var) {
        return 0;
    }

    public int computeHorizontalScrollOffset(t0 t0Var) {
        return 0;
    }

    public int computeHorizontalScrollRange(t0 t0Var) {
        return 0;
    }

    public int computeVerticalScrollExtent(t0 t0Var) {
        return 0;
    }

    public int computeVerticalScrollOffset(t0 t0Var) {
        return 0;
    }

    public int computeVerticalScrollRange(t0 t0Var) {
        return 0;
    }

    public void detachAndScrapAttachedViews(n0 n0Var) {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return;
            }
            View childAt = getChildAt(childCount);
            w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (!childViewHolderInt.shouldIgnore()) {
                if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.mRecyclerView.mAdapter.mHasStableIds) {
                    getChildAt(childCount);
                    detachViewInternal(childCount);
                    n0Var.j(childAt);
                    this.mRecyclerView.mViewInfoStore.f(childViewHolderInt);
                } else {
                    removeViewAt(childCount);
                    n0Var.i(childViewHolderInt);
                }
            }
        }
    }

    public final void detachViewInternal(int i) {
        this.mChildHelper.c(i);
    }

    public View findContainingItemView(View view) {
        View findContainingItemView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.f1141c.contains(findContainingItemView)) {
            return null;
        }
        return findContainingItemView;
    }

    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.g || !childViewHolderInt.isRemoved())) {
                return childAt;
            }
        }
        return null;
    }

    public abstract C0178g0 generateDefaultLayoutParams();

    public C0178g0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0178g0 ? new C0178g0((C0178g0) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0178g0((ViewGroup.MarginLayoutParams) layoutParams) : new C0178g0(layoutParams);
    }

    public View getChildAt(int i) {
        C0171d c0171d = this.mChildHelper;
        if (c0171d == null) {
            return null;
        }
        return c0171d.f1139a.a(c0171d.f(i));
    }

    public int getChildCount() {
        C0171d c0171d = this.mChildHelper;
        if (c0171d != null) {
            return c0171d.e();
        }
        return 0;
    }

    public int getColumnCountForAccessibility(n0 n0Var, t0 t0Var) {
        return -1;
    }

    public int getDecoratedBottom(View view) {
        return view.getBottom() + ((C0178g0) view.getLayoutParams()).f1154b.bottom;
    }

    public int getDecoratedLeft(View view) {
        return view.getLeft() - ((C0178g0) view.getLayoutParams()).f1154b.left;
    }

    public int getDecoratedMeasuredHeight(View view) {
        Rect rect = ((C0178g0) view.getLayoutParams()).f1154b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public int getDecoratedMeasuredWidth(View view) {
        Rect rect = ((C0178g0) view.getLayoutParams()).f1154b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public int getDecoratedRight(View view) {
        return view.getRight() + ((C0178g0) view.getLayoutParams()).f1154b.right;
    }

    public int getDecoratedTop(View view) {
        return view.getTop() - ((C0178g0) view.getLayoutParams()).f1154b.top;
    }

    public View getFocusedChild() {
        View focusedChild;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.f1141c.contains(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    public int getLayoutDirection() {
        return b.e.i.q.i(this.mRecyclerView);
    }

    public int getMinimumHeight() {
        return b.e.i.q.j(this.mRecyclerView);
    }

    public int getMinimumWidth() {
        return b.e.i.q.k(this.mRecyclerView);
    }

    public int getPaddingBottom() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public int getPaddingLeft() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public int getPaddingRight() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public int getPaddingTop() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int getPosition(View view) {
        return ((C0178g0) view.getLayoutParams()).a();
    }

    public int getRowCountForAccessibility(n0 n0Var, t0 t0Var) {
        return -1;
    }

    public int getSelectionModeForAccessibility() {
        return 0;
    }

    public void getTransformedBoundingBox(View view, boolean z, Rect rect) {
        Matrix matrix;
        if (z) {
            Rect rect2 = ((C0178g0) view.getLayoutParams()).f1154b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.mRecyclerView.mTempRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public boolean isAutoMeasureEnabled() {
        return false;
    }

    public boolean isLayoutHierarchical() {
        return false;
    }

    public boolean isViewPartiallyVisible(View view, boolean z) {
        boolean z2 = this.mHorizontalBoundCheck.b(view, 24579) && this.mVerticalBoundCheck.b(view, 24579);
        return z ? z2 : !z2;
    }

    public void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
        C0178g0 c0178g0 = (C0178g0) view.getLayoutParams();
        Rect rect = c0178g0.f1154b;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) c0178g0).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) c0178g0).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) c0178g0).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c0178g0).bottomMargin);
    }

    public void offsetChildrenHorizontal(int i) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i);
        }
    }

    public void onAdapterChanged(Q q, Q q2) {
    }

    public boolean onAddFocusables() {
        return false;
    }

    public void onAttachedToWindow() {
    }

    @Deprecated
    public void onDetachedFromWindow() {
    }

    public void onDetachedFromWindow(RecyclerView recyclerView, n0 n0Var) {
        onDetachedFromWindow();
    }

    public View onFocusSearchFailed(View view, int i, n0 n0Var, t0 t0Var) {
        return null;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        n0 n0Var = recyclerView.mRecycler;
        t0 t0Var = recyclerView.mState;
        onInitializeAccessibilityEvent1(accessibilityEvent);
    }

    public void onInitializeAccessibilityEvent1(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        Q q = this.mRecyclerView.mAdapter;
        if (q != null) {
            accessibilityEvent.setItemCount(q.getItemCount());
        }
    }

    public void onInitializeAccessibilityNodeInfoForItem(View view, b.e.i.E.d dVar) {
        w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null || childViewHolderInt.isRemoved()) {
            return;
        }
        C0171d c0171d = this.mChildHelper;
        if (c0171d.f1141c.contains(childViewHolderInt.itemView)) {
            return;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, dVar);
    }

    public void onInitializeAccessibilityNodeInfoForItem(n0 n0Var, t0 t0Var, View view, b.e.i.E.d dVar) {
    }

    public View onInterceptFocusSearch() {
        return null;
    }

    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
    }

    public void onItemsChanged(RecyclerView recyclerView) {
    }

    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
    }

    public void onItemsUpdated() {
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        onItemsUpdated();
    }

    public void onLayoutChildren(n0 n0Var, t0 t0Var) {
        Log.e(RecyclerView.TAG, "You must override onLayoutChildren(Recycler recycler, State state) ");
    }

    public void onLayoutCompleted(t0 t0Var) {
    }

    public void onMeasure(int i, int i2) {
        this.mRecyclerView.defaultOnMeasure(i, i2);
    }

    @Deprecated
    public boolean onRequestChildFocus(RecyclerView recyclerView) {
        F f = this.mSmoothScroller;
        return (f != null && f.mRunning) || recyclerView.isComputingLayout();
    }

    public boolean onRequestChildFocus1(RecyclerView recyclerView, View view, View view2) {
        return onRequestChildFocus(recyclerView);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onSmoothScrollerStopped(F f) {
        if (this.mSmoothScroller == f) {
            this.mSmoothScroller = null;
        }
    }

    public boolean performAccessibilityAction(int i) {
        int paddingTop;
        int paddingLeft;
        int i2;
        int i3;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            return false;
        }
        if (i == 4096) {
            paddingTop = recyclerView.canScrollVertically(1) ? (this.mHeight - getPaddingTop()) - getPaddingBottom() : 0;
            if (this.mRecyclerView.canScrollHorizontally(1)) {
                paddingLeft = (this.mWidth - getPaddingLeft()) - getPaddingRight();
                i3 = paddingLeft;
                i2 = paddingTop;
            }
            i2 = paddingTop;
            i3 = 0;
        } else if (i != 8192) {
            i3 = 0;
            i2 = 0;
        } else {
            paddingTop = recyclerView.canScrollVertically(-1) ? -((this.mHeight - getPaddingTop()) - getPaddingBottom()) : 0;
            if (this.mRecyclerView.canScrollHorizontally(-1)) {
                paddingLeft = -((this.mWidth - getPaddingLeft()) - getPaddingRight());
                i3 = paddingLeft;
                i2 = paddingTop;
            }
            i2 = paddingTop;
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        this.mRecyclerView.smoothScrollBy(i3, i2, null, RecyclerView.UNDEFINED_DURATION, true);
        return true;
    }

    public boolean performAccessibilityActionForItem() {
        return false;
    }

    public void removeAndRecycleAllViews(n0 n0Var) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                removeAndRecycleViewAt(childCount, n0Var);
            }
        }
    }

    public void removeAndRecycleScrapInt(n0 n0Var) {
        int size = n0Var.f1191a.size();
        for (int i = size - 1; i >= 0; i--) {
            View view = ((w0) n0Var.f1191a.get(i)).itemView;
            w0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.setIsRecyclable(false);
                if (childViewHolderInt.isTmpDetached()) {
                    this.mRecyclerView.removeDetachedView(view, false);
                }
                Z z = this.mRecyclerView.mItemAnimator;
                if (z != null) {
                    z.f(childViewHolderInt);
                }
                childViewHolderInt.setIsRecyclable(true);
                w0 childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                childViewHolderInt2.mScrapContainer = null;
                childViewHolderInt2.mInChangeScrap = false;
                childViewHolderInt2.clearReturnedFromScrapFlag();
                n0Var.i(childViewHolderInt2);
            }
        }
        n0Var.f1191a.clear();
        ArrayList arrayList = n0Var.f1192b;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (size > 0) {
            this.mRecyclerView.invalidate();
        }
    }

    public void removeAndRecycleView(View view, n0 n0Var) {
        C0171d c0171d = this.mChildHelper;
        int indexOfChild = c0171d.f1139a.f1119a.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (c0171d.f1140b.f(indexOfChild)) {
                c0171d.l(view);
            }
            c0171d.f1139a.c(indexOfChild);
        }
        n0Var.h(view);
    }

    public void removeAndRecycleViewAt(int i, n0 n0Var) {
        View childAt = getChildAt(i);
        removeViewAt(i);
        n0Var.h(childAt);
    }

    public void removeViewAt(int i) {
        C0171d c0171d;
        int f;
        View a2;
        if (getChildAt(i) == null || (a2 = c0171d.f1139a.a((f = (c0171d = this.mChildHelper).f(i)))) == null) {
            return;
        }
        if (c0171d.f1140b.f(f)) {
            c0171d.l(a2);
        }
        c0171d.f1139a.c(f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00b3, code lost:
    
        if (r9 == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView r10, android.view.View r11, android.graphics.Rect r12, boolean r13, boolean r14) {
        /*
            r9 = this;
            r0 = 2
            int[] r0 = new int[r0]
            int r1 = r9.getPaddingLeft()
            int r2 = r9.getPaddingTop()
            int r3 = r9.mWidth
            int r4 = r9.getPaddingRight()
            int r3 = r3 - r4
            int r4 = r9.mHeight
            int r5 = r9.getPaddingBottom()
            int r4 = r4 - r5
            int r5 = r11.getLeft()
            int r6 = r12.left
            int r5 = r5 + r6
            int r6 = r11.getScrollX()
            int r5 = r5 - r6
            int r6 = r11.getTop()
            int r7 = r12.top
            int r6 = r6 + r7
            int r11 = r11.getScrollY()
            int r6 = r6 - r11
            int r11 = r12.width()
            int r11 = r11 + r5
            int r12 = r12.height()
            int r12 = r12 + r6
            int r5 = r5 - r1
            r1 = 0
            int r7 = java.lang.Math.min(r1, r5)
            int r6 = r6 - r2
            int r2 = java.lang.Math.min(r1, r6)
            int r11 = r11 - r3
            int r3 = java.lang.Math.max(r1, r11)
            int r12 = r12 - r4
            int r12 = java.lang.Math.max(r1, r12)
            int r4 = r9.getLayoutDirection()
            r8 = 1
            if (r4 != r8) goto L5f
            if (r3 == 0) goto L5a
            goto L67
        L5a:
            int r3 = java.lang.Math.max(r7, r11)
            goto L67
        L5f:
            if (r7 == 0) goto L62
            goto L66
        L62:
            int r7 = java.lang.Math.min(r5, r3)
        L66:
            r3 = r7
        L67:
            if (r2 == 0) goto L6a
            goto L6e
        L6a:
            int r2 = java.lang.Math.min(r6, r12)
        L6e:
            r0[r1] = r3
            r0[r8] = r2
            r11 = r0[r1]
            r12 = r0[r8]
            if (r14 == 0) goto Lb5
            android.view.View r14 = r10.getFocusedChild()
            if (r14 != 0) goto L80
        L7e:
            r9 = r1
            goto Lb3
        L80:
            int r0 = r9.getPaddingLeft()
            int r2 = r9.getPaddingTop()
            int r3 = r9.mWidth
            int r4 = r9.getPaddingRight()
            int r3 = r3 - r4
            int r4 = r9.mHeight
            int r5 = r9.getPaddingBottom()
            int r4 = r4 - r5
            androidx.recyclerview.widget.RecyclerView r9 = r9.mRecyclerView
            android.graphics.Rect r9 = r9.mTempRect
            androidx.recyclerview.widget.RecyclerView.getDecoratedBoundsWithMarginsInt(r14, r9)
            int r14 = r9.left
            int r14 = r14 - r11
            if (r14 >= r3) goto L7e
            int r14 = r9.right
            int r14 = r14 - r11
            if (r14 <= r0) goto L7e
            int r14 = r9.top
            int r14 = r14 - r12
            if (r14 >= r4) goto L7e
            int r9 = r9.bottom
            int r9 = r9 - r12
            if (r9 > r2) goto Lb2
            goto L7e
        Lb2:
            r9 = r8
        Lb3:
            if (r9 == 0) goto Lba
        Lb5:
            if (r11 != 0) goto Lbb
            if (r12 == 0) goto Lba
            goto Lbb
        Lba:
            return r1
        Lbb:
            if (r13 == 0) goto Lc1
            r10.scrollBy(r11, r12)
            goto Lc4
        Lc1:
            r10.smoothScrollBy(r11, r12)
        Lc4:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: b.m.b.AbstractC0176f0.requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
    }

    public void requestLayout() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public int scrollHorizontallyBy(int i, n0 n0Var, t0 t0Var) {
        return 0;
    }

    public void scrollToPosition(int i) {
    }

    public int scrollVerticallyBy(int i, n0 n0Var, t0 t0Var) {
        return 0;
    }

    public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
        setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public void setMeasureSpecs(int i, int i2) {
        this.mWidth = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.mWidthMode = mode;
        if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            this.mWidth = 0;
        }
        this.mHeight = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.mHeightMode = mode2;
        if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            return;
        }
        this.mHeight = 0;
    }

    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft() + rect.width();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + rect.height();
        this.mRecyclerView.setMeasuredDimension(chooseSize(i, paddingRight, getMinimumWidth()), chooseSize(i2, paddingBottom, getMinimumHeight()));
    }

    public void setMeasuredDimensionFromChildren(int i, int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mRecyclerView.defaultOnMeasure(i, i2);
            return;
        }
        int i3 = RecyclerView.UNDEFINED_DURATION;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MAX_VALUE;
        int i6 = Integer.MIN_VALUE;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            Rect rect = this.mRecyclerView.mTempRect;
            RecyclerView.getDecoratedBoundsWithMarginsInt(childAt, rect);
            int i8 = rect.left;
            if (i8 < i4) {
                i4 = i8;
            }
            int i9 = rect.right;
            if (i9 > i3) {
                i3 = i9;
            }
            int i10 = rect.top;
            if (i10 < i5) {
                i5 = i10;
            }
            int i11 = rect.bottom;
            if (i11 > i6) {
                i6 = i11;
            }
        }
        this.mRecyclerView.mTempRect.set(i4, i5, i3, i6);
        setMeasuredDimension(this.mRecyclerView.mTempRect, i, i2);
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.mRecyclerView = null;
            this.mChildHelper = null;
            this.mWidth = 0;
            this.mHeight = 0;
        } else {
            this.mRecyclerView = recyclerView;
            this.mChildHelper = recyclerView.mChildHelper;
            this.mWidth = recyclerView.getWidth();
            this.mHeight = recyclerView.getHeight();
        }
        this.mWidthMode = 1073741824;
        this.mHeightMode = 1073741824;
    }

    public boolean shouldMeasureChild(View view, int i, int i2, C0178g0 c0178g0) {
        return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) c0178g0).width) && isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) c0178g0).height)) ? false : true;
    }

    public boolean shouldMeasureTwice() {
        return false;
    }

    public boolean shouldReMeasureChild(View view, int i, int i2, C0178g0 c0178g0) {
        return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) c0178g0).width) && isMeasurementUpToDate(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) c0178g0).height)) ? false : true;
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, t0 t0Var, int i) {
        Log.e(RecyclerView.TAG, "You must override smoothScrollToPosition to support smooth scrolling");
    }

    public void startSmoothScroll(F f) {
        F f2 = this.mSmoothScroller;
        if (f2 != null && f != f2 && f2.mRunning) {
            f2.stop();
        }
        this.mSmoothScroller = f;
        RecyclerView recyclerView = this.mRecyclerView;
        recyclerView.mViewFlinger.c();
        if (f.mStarted) {
            StringBuilder f3 = c.a.c.a.a.f("An instance of ");
            f3.append(f.getClass().getSimpleName());
            f3.append(" was started more than once. Each instance of");
            f3.append(f.getClass().getSimpleName());
            f3.append(" is intended to only be used once. You should create a new instance for each use.");
            Log.w(RecyclerView.TAG, f3.toString());
        }
        f.mRecyclerView = recyclerView;
        f.mLayoutManager = this;
        int i = f.mTargetPosition;
        if (i == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.mState.f1205a = i;
        f.mRunning = true;
        f.mPendingInitialRun = true;
        f.mTargetView = recyclerView.mLayout.findViewByPosition(i);
        f.onStart();
        f.mRecyclerView.mViewFlinger.a();
        f.mStarted = true;
    }

    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public C0178g0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new C0178g0(context, attributeSet);
    }
}
