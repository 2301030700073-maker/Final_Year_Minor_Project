package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import b.e.i.E.c;
import b.e.i.E.d;
import b.m.b.AbstractC0176f0;
import b.m.b.AbstractC0201z;
import b.m.b.B;
import b.m.b.C0178g0;
import b.m.b.C0196u;
import b.m.b.C0199x;
import b.m.b.C0200y;
import b.m.b.D;
import b.m.b.n0;
import b.m.b.t0;
import c.a.c.a.a;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public int[] mCachedBorders;
    public final Rect mDecorInsets;
    public boolean mPendingSpanCountChange;
    public final SparseIntArray mPreLayoutSpanIndexCache;
    public final SparseIntArray mPreLayoutSpanSizeCache;
    public View[] mSet;
    public int mSpanCount;
    public AbstractC0201z mSpanSizeLookup;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new C0199x();
        this.mDecorInsets = new Rect();
        setSpanCount(AbstractC0176f0.getProperties(context, attributeSet, i, i2).f1146b);
    }

    public final void calculateItemBorders(int i) {
        int i2;
        int[] iArr = this.mCachedBorders;
        int i3 = this.mSpanCount;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.mCachedBorders = iArr;
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean checkLayoutParams(C0178g0 c0178g0) {
        return c0178g0 instanceof C0200y;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void collectPrefetchPositionsForLayoutState(t0 t0Var, D d2, C0196u c0196u) {
        int i = this.mSpanCount;
        for (int i2 = 0; i2 < this.mSpanCount && d2.b(t0Var) && i > 0; i2++) {
            int i3 = d2.f1095d;
            c0196u.a(i3, Math.max(0, d2.g));
            i -= this.mSpanSizeLookup.getSpanSize(i3);
            d2.f1095d += d2.e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public int computeHorizontalScrollOffset(t0 t0Var) {
        return computeScrollOffset(t0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public int computeHorizontalScrollRange(t0 t0Var) {
        return computeScrollRange(t0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public int computeVerticalScrollOffset(t0 t0Var) {
        return computeScrollOffset(t0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public int computeVerticalScrollRange(t0 t0Var) {
        return computeScrollRange(t0Var);
    }

    public final void ensureViewSet() {
        View[] viewArr = this.mSet;
        if (viewArr == null || viewArr.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public View findReferenceChild(n0 n0Var, t0 t0Var, boolean z, boolean z2) {
        int i;
        int childCount = getChildCount();
        int i2 = -1;
        int i3 = 1;
        if (z2) {
            i = getChildCount() - 1;
            i3 = -1;
        } else {
            i2 = childCount;
            i = 0;
        }
        int b2 = t0Var.b();
        ensureLayoutState();
        int k = this.mOrientationHelper.k();
        int g = this.mOrientationHelper.g();
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < b2 && getSpanIndex(n0Var, t0Var, position) == 0) {
                if (((C0178g0) childAt.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.e(childAt) < g && this.mOrientationHelper.b(childAt) >= k) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i += i3;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public C0178g0 generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new C0200y(-2, -1) : new C0200y(-1, -2);
    }

    @Override // b.m.b.AbstractC0176f0
    public C0178g0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new C0200y(context, attributeSet);
    }

    @Override // b.m.b.AbstractC0176f0
    public int getColumnCountForAccessibility(n0 n0Var, t0 t0Var) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        if (t0Var.b() < 1) {
            return 0;
        }
        return getSpanGroupIndex(n0Var, t0Var, t0Var.b() - 1) + 1;
    }

    @Override // b.m.b.AbstractC0176f0
    public int getRowCountForAccessibility(n0 n0Var, t0 t0Var) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        if (t0Var.b() < 1) {
            return 0;
        }
        return getSpanGroupIndex(n0Var, t0Var, t0Var.b() - 1) + 1;
    }

    public int getSpaceForSpanRange(int i, int i2) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.mCachedBorders;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.mCachedBorders;
        int i3 = this.mSpanCount;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    public final int getSpanGroupIndex(n0 n0Var, t0 t0Var, int i) {
        if (!t0Var.g) {
            return this.mSpanSizeLookup.getSpanGroupIndex(i, this.mSpanCount);
        }
        int c2 = n0Var.c(i);
        if (c2 != -1) {
            return this.mSpanSizeLookup.getSpanGroupIndex(c2, this.mSpanCount);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    public final int getSpanIndex(n0 n0Var, t0 t0Var, int i) {
        if (!t0Var.g) {
            return this.mSpanSizeLookup.getCachedSpanIndex(i, this.mSpanCount);
        }
        int i2 = this.mPreLayoutSpanIndexCache.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int c2 = n0Var.c(i);
        if (c2 != -1) {
            return this.mSpanSizeLookup.getCachedSpanIndex(c2, this.mSpanCount);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    public final int getSpanSize(n0 n0Var, t0 t0Var, int i) {
        if (!t0Var.g) {
            return this.mSpanSizeLookup.getSpanSize(i);
        }
        int i2 = this.mPreLayoutSpanSizeCache.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int c2 = n0Var.c(i);
        if (c2 != -1) {
            return this.mSpanSizeLookup.getSpanSize(c2);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009f, code lost:
    
        r22.f1089b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a1, code lost:
    
        return;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layoutChunk(b.m.b.n0 r19, b.m.b.t0 r20, b.m.b.D r21, b.m.b.C r22) {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.layoutChunk(b.m.b.n0, b.m.b.t0, b.m.b.D, b.m.b.C):void");
    }

    public final void measureChild(View view, int i, boolean z) {
        int i2;
        int i3;
        C0200y c0200y = (C0200y) view.getLayoutParams();
        Rect rect = c0200y.f1154b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0200y).topMargin + ((ViewGroup.MarginLayoutParams) c0200y).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0200y).leftMargin + ((ViewGroup.MarginLayoutParams) c0200y).rightMargin;
        int spaceForSpanRange = getSpaceForSpanRange(c0200y.e, c0200y.f);
        if (this.mOrientation == 1) {
            i3 = AbstractC0176f0.getChildMeasureSpec(spaceForSpanRange, i, i5, ((ViewGroup.MarginLayoutParams) c0200y).width, false);
            i2 = AbstractC0176f0.getChildMeasureSpec(this.mOrientationHelper.l(), this.mHeightMode, i4, ((ViewGroup.MarginLayoutParams) c0200y).height, true);
        } else {
            int childMeasureSpec = AbstractC0176f0.getChildMeasureSpec(spaceForSpanRange, i, i4, ((ViewGroup.MarginLayoutParams) c0200y).height, false);
            int childMeasureSpec2 = AbstractC0176f0.getChildMeasureSpec(this.mOrientationHelper.l(), this.mWidthMode, i5, ((ViewGroup.MarginLayoutParams) c0200y).width, true);
            i2 = childMeasureSpec;
            i3 = childMeasureSpec2;
        }
        measureChildWithDecorationsAndMargin(view, i3, i2, z);
    }

    public final void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        C0178g0 c0178g0 = (C0178g0) view.getLayoutParams();
        if (z ? shouldReMeasureChild(view, i, i2, c0178g0) : shouldMeasureChild(view, i, i2, c0178g0)) {
            view.measure(i, i2);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void onAnchorReady(n0 n0Var, t0 t0Var, B b2, int i) {
        updateMeasurements();
        if (t0Var.b() > 0 && !t0Var.g) {
            boolean z = i == 1;
            int spanIndex = getSpanIndex(n0Var, t0Var, b2.f1085b);
            if (z) {
                while (spanIndex > 0) {
                    int i2 = b2.f1085b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    b2.f1085b = i3;
                    spanIndex = getSpanIndex(n0Var, t0Var, i3);
                }
            } else {
                int b3 = t0Var.b() - 1;
                int i4 = b2.f1085b;
                while (i4 < b3) {
                    int i5 = i4 + 1;
                    int spanIndex2 = getSpanIndex(n0Var, t0Var, i5);
                    if (spanIndex2 <= spanIndex) {
                        break;
                    }
                    i4 = i5;
                    spanIndex = spanIndex2;
                }
                b2.f1085b = i4;
            }
        }
        ensureViewSet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ce, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00e7, code lost:
    
        if (r13 == (r2 > r9)) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f0  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r23, int r24, b.m.b.n0 r25, b.m.b.t0 r26) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, b.m.b.n0, b.m.b.t0):android.view.View");
    }

    @Override // b.m.b.AbstractC0176f0
    public void onInitializeAccessibilityNodeInfoForItem(n0 n0Var, t0 t0Var, View view, d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0200y)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, dVar);
            return;
        }
        C0200y c0200y = (C0200y) layoutParams;
        int spanGroupIndex = getSpanGroupIndex(n0Var, t0Var, c0200y.a());
        if (this.mOrientation == 0) {
            dVar.h(c.a(c0200y.e, c0200y.f, spanGroupIndex, 1, false, false));
        } else {
            dVar.h(c.a(spanGroupIndex, 1, c0200y.e, c0200y.f, false, false));
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.mSpanIndexCache.clear();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.mSpanIndexCache.clear();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.mSpanSizeLookup.mSpanIndexCache.clear();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.mSpanIndexCache.clear();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // b.m.b.AbstractC0176f0
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.mSpanSizeLookup.mSpanIndexCache.clear();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public void onLayoutChildren(n0 n0Var, t0 t0Var) {
        if (t0Var.g) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                C0200y c0200y = (C0200y) getChildAt(i).getLayoutParams();
                int a2 = c0200y.a();
                this.mPreLayoutSpanSizeCache.put(a2, c0200y.f);
                this.mPreLayoutSpanIndexCache.put(a2, c0200y.e);
            }
        }
        super.onLayoutChildren(n0Var, t0Var);
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public void onLayoutCompleted(t0 t0Var) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = RecyclerView.UNDEFINED_DURATION;
        this.mAnchorInfo.d();
        this.mPendingSpanCountChange = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public int scrollHorizontallyBy(int i, n0 n0Var, t0 t0Var) {
        updateMeasurements();
        ensureViewSet();
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, n0Var, t0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public int scrollVerticallyBy(int i, n0 n0Var, t0 t0Var) {
        updateMeasurements();
        ensureViewSet();
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, n0Var, t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int chooseSize;
        int chooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.mOrientation == 1) {
            chooseSize2 = AbstractC0176f0.chooseSize(i2, rect.height() + paddingBottom, getMinimumHeight());
            int[] iArr = this.mCachedBorders;
            chooseSize = AbstractC0176f0.chooseSize(i, iArr[iArr.length - 1] + paddingRight, getMinimumWidth());
        } else {
            chooseSize = AbstractC0176f0.chooseSize(i, rect.width() + paddingRight, getMinimumWidth());
            int[] iArr2 = this.mCachedBorders;
            chooseSize2 = AbstractC0176f0.chooseSize(i2, iArr2[iArr2.length - 1] + paddingBottom, getMinimumHeight());
        }
        this.mRecyclerView.setMeasuredDimension(chooseSize, chooseSize2);
    }

    public void setSpanCount(int i) {
        if (i == this.mSpanCount) {
            return;
        }
        this.mPendingSpanCountChange = true;
        if (i < 1) {
            throw new IllegalArgumentException(a.c("Span count should be at least 1. Provided ", i));
        }
        this.mSpanCount = i;
        this.mSpanSizeLookup.mSpanIndexCache.clear();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd) {
            this.mStackFromEnd = false;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }

    public final void updateMeasurements() {
        int paddingBottom;
        int paddingTop;
        if (this.mOrientation == 1) {
            paddingBottom = this.mWidth - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            paddingBottom = this.mHeight - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        calculateItemBorders(paddingBottom - paddingTop);
    }

    @Override // b.m.b.AbstractC0176f0
    public C0178g0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0200y((ViewGroup.MarginLayoutParams) layoutParams) : new C0200y(layoutParams);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(i2, z);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new C0199x();
        this.mDecorInsets = new Rect();
        setSpanCount(i);
    }
}
