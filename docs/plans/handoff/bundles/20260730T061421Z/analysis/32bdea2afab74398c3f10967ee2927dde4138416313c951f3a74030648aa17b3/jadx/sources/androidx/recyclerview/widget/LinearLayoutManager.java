package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import b.l.W;
import b.m.b.AbstractC0176f0;
import b.m.b.B;
import b.m.b.C;
import b.m.b.C0174e0;
import b.m.b.C0178g0;
import b.m.b.C0196u;
import b.m.b.D;
import b.m.b.E;
import b.m.b.F;
import b.m.b.J;
import b.m.b.n0;
import b.m.b.s0;
import b.m.b.t0;
import c.a.c.a.a;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class LinearLayoutManager extends AbstractC0176f0 implements s0 {
    public final B mAnchorInfo;
    public int mInitialPrefetchItemCount;
    public boolean mLastStackFromEnd;
    public final C mLayoutChunkResult;
    public D mLayoutState;
    public int mOrientation;
    public J mOrientationHelper;
    public SavedState mPendingSavedState;
    public int mPendingScrollPosition;
    public int mPendingScrollPositionOffset;
    public int[] mReusableIntPair;
    public boolean mReverseLayout;
    public boolean mShouldReverseLayout;
    public boolean mSmoothScrollbarEnabled;
    public boolean mStackFromEnd;

    @SuppressLint({"BanParcelableUsage"})
    public class SavedState implements Parcelable {
        public static final Parcelable.Creator CREATOR = new E();

        /* renamed from: a, reason: collision with root package name */
        public int f185a;

        /* renamed from: b, reason: collision with root package name */
        public int f186b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f187c;

        public SavedState() {
        }

        public boolean a() {
            return this.f185a >= 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f185a);
            parcel.writeInt(this.f186b);
            parcel.writeInt(this.f187c ? 1 : 0);
        }

        public SavedState(Parcel parcel) {
            this.f185a = parcel.readInt();
            this.f186b = parcel.readInt();
            this.f187c = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.f185a = savedState.f185a;
            this.f186b = savedState.f186b;
            this.f187c = savedState.f187c;
        }
    }

    public LinearLayoutManager(Context context) {
        this(1, false);
    }

    @Override // b.m.b.AbstractC0176f0
    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView;
        if (this.mPendingSavedState != null || (recyclerView = this.mRecyclerView) == null) {
            return;
        }
        recyclerView.assertNotInLayoutOrScroll(str);
    }

    public void calculateExtraLayoutSpace(t0 t0Var, int[] iArr) {
        int i;
        int l = t0Var.f1205a != -1 ? this.mOrientationHelper.l() : 0;
        if (this.mLayoutState.f == -1) {
            i = 0;
        } else {
            i = l;
            l = 0;
        }
        iArr[0] = l;
        iArr[1] = i;
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // b.m.b.AbstractC0176f0
    public void collectAdjacentPrefetchPositions(int i, int i2, t0 t0Var, C0196u c0196u) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, t0Var);
        collectPrefetchPositionsForLayoutState(t0Var, this.mLayoutState, c0196u);
    }

    @Override // b.m.b.AbstractC0176f0
    public void collectInitialPrefetchPositions(int i, C0196u c0196u) {
        boolean z;
        int i2;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || !savedState.a()) {
            resolveShouldLayoutReverse();
            z = this.mShouldReverseLayout;
            i2 = this.mPendingScrollPosition;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.mPendingSavedState;
            z = savedState2.f187c;
            i2 = savedState2.f185a;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.mInitialPrefetchItemCount && i2 >= 0 && i2 < i; i4++) {
            c0196u.a(i2, 0);
            i2 += i3;
        }
    }

    public void collectPrefetchPositionsForLayoutState(t0 t0Var, D d2, C0196u c0196u) {
        int i = d2.f1095d;
        if (i < 0 || i >= t0Var.b()) {
            return;
        }
        c0196u.a(i, Math.max(0, d2.g));
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeHorizontalScrollExtent(t0 t0Var) {
        return computeScrollExtent(t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeHorizontalScrollOffset(t0 t0Var) {
        return computeScrollOffset(t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeHorizontalScrollRange(t0 t0Var) {
        return computeScrollRange(t0Var);
    }

    public final int computeScrollExtent(t0 t0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return W.a(t0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    public final int computeScrollOffset(t0 t0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return W.b(t0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    public final int computeScrollRange(t0 t0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return W.c(t0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    @Override // b.m.b.s0
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = (i < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i2, RecentsState.NO_OFFSET) : new PointF(RecentsState.NO_OFFSET, i2);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeVerticalScrollExtent(t0 t0Var) {
        return computeScrollExtent(t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeVerticalScrollOffset(t0 t0Var) {
        return computeScrollOffset(t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public int computeVerticalScrollRange(t0 t0Var) {
        return computeScrollRange(t0Var);
    }

    public int convertFocusDirectionToLayoutDirection(int i) {
        if (i == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i == 17) {
            if (this.mOrientation == 0) {
                return -1;
            }
            return RecyclerView.UNDEFINED_DURATION;
        }
        if (i == 33) {
            if (this.mOrientation == 1) {
                return -1;
            }
            return RecyclerView.UNDEFINED_DURATION;
        }
        if (i == 66) {
            if (this.mOrientation == 0) {
                return 1;
            }
            return RecyclerView.UNDEFINED_DURATION;
        }
        if (i == 130 && this.mOrientation == 1) {
            return 1;
        }
        return RecyclerView.UNDEFINED_DURATION;
    }

    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = new D();
        }
    }

    public int fill(n0 n0Var, D d2, t0 t0Var, boolean z) {
        int i = d2.f1094c;
        int i2 = d2.g;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                d2.g = i2 + i;
            }
            recycleByLayoutState(n0Var, d2);
        }
        int i3 = d2.f1094c + d2.h;
        C c2 = this.mLayoutChunkResult;
        while (true) {
            if ((!d2.m && i3 <= 0) || !d2.b(t0Var)) {
                break;
            }
            c2.f1088a = 0;
            c2.f1089b = false;
            c2.f1090c = false;
            c2.f1091d = false;
            layoutChunk(n0Var, t0Var, d2, c2);
            if (!c2.f1089b) {
                d2.f1093b = (c2.f1088a * d2.f) + d2.f1093b;
                if (!c2.f1090c || d2.l != null || !t0Var.g) {
                    int i4 = d2.f1094c;
                    int i5 = c2.f1088a;
                    d2.f1094c = i4 - i5;
                    i3 -= i5;
                }
                int i6 = d2.g;
                if (i6 != Integer.MIN_VALUE) {
                    int i7 = i6 + c2.f1088a;
                    d2.g = i7;
                    int i8 = d2.f1094c;
                    if (i8 < 0) {
                        d2.g = i7 + i8;
                    }
                    recycleByLayoutState(n0Var, d2);
                }
                if (z && c2.f1091d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - d2.f1094c;
    }

    public View findFirstVisibleChildClosestToEnd(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z, z2) : findOneVisibleChild(getChildCount() - 1, -1, z, z2);
    }

    public View findFirstVisibleChildClosestToStart(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z, z2) : findOneVisibleChild(0, getChildCount(), z, z2);
    }

    public View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        int i3;
        int i4;
        ensureLayoutState();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.e(getChildAt(i)) < this.mOrientationHelper.k()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i, i2, i3, i4) : this.mVerticalBoundCheck.a(i, i2, i3, i4);
    }

    public View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        ensureLayoutState();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i, i2, i3, i4) : this.mVerticalBoundCheck.a(i, i2, i3, i4);
    }

    public View findReferenceChild(n0 n0Var, t0 t0Var, boolean z, boolean z2) {
        int i;
        int i2;
        ensureLayoutState();
        int childCount = getChildCount();
        int i3 = -1;
        if (z2) {
            i = getChildCount() - 1;
            i2 = -1;
        } else {
            i3 = childCount;
            i = 0;
            i2 = 1;
        }
        int b2 = t0Var.b();
        int k = this.mOrientationHelper.k();
        int g = this.mOrientationHelper.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i != i3) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            int e = this.mOrientationHelper.e(childAt);
            int b3 = this.mOrientationHelper.b(childAt);
            if (position >= 0 && position < b2) {
                if (!((C0178g0) childAt.getLayoutParams()).c()) {
                    boolean z3 = b3 <= k && e < k;
                    boolean z4 = e >= g && b3 > g;
                    if (!z3 && !z4) {
                        return childAt;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            i += i2;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // b.m.b.AbstractC0176f0
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    public final int fixLayoutEndGap(int i, n0 n0Var, t0 t0Var, boolean z) {
        int g;
        int g2 = this.mOrientationHelper.g() - i;
        if (g2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(-g2, n0Var, t0Var);
        int i3 = i + i2;
        if (!z || (g = this.mOrientationHelper.g() - i3) <= 0) {
            return i2;
        }
        this.mOrientationHelper.p(g);
        return g + i2;
    }

    public final int fixLayoutStartGap(int i, n0 n0Var, t0 t0Var, boolean z) {
        int k;
        int k2 = i - this.mOrientationHelper.k();
        if (k2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(k2, n0Var, t0Var);
        int i3 = i + i2;
        if (!z || (k = i3 - this.mOrientationHelper.k()) <= 0) {
            return i2;
        }
        this.mOrientationHelper.p(-k);
        return i2 - k;
    }

    @Override // b.m.b.AbstractC0176f0
    public C0178g0 generateDefaultLayoutParams() {
        return new C0178g0(-2, -2);
    }

    public final View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    public final View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public void layoutChunk(n0 n0Var, t0 t0Var, D d2, C c2) {
        int i;
        int i2;
        int i3;
        int i4;
        int d3;
        View c3 = d2.c(n0Var);
        if (c3 == null) {
            c2.f1089b = true;
            return;
        }
        C0178g0 c0178g0 = (C0178g0) c3.getLayoutParams();
        if (d2.l == null) {
            if (this.mShouldReverseLayout == (d2.f == -1)) {
                addViewInt(c3, -1, false);
            } else {
                addViewInt(c3, 0, false);
            }
        } else {
            if (this.mShouldReverseLayout == (d2.f == -1)) {
                addViewInt(c3, -1, true);
            } else {
                addViewInt(c3, 0, true);
            }
        }
        C0178g0 c0178g02 = (C0178g0) c3.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(c3);
        int i5 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + 0;
        int i6 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + 0;
        int childMeasureSpec = AbstractC0176f0.getChildMeasureSpec(this.mWidth, this.mWidthMode, getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0178g02).leftMargin + ((ViewGroup.MarginLayoutParams) c0178g02).rightMargin + i5, ((ViewGroup.MarginLayoutParams) c0178g02).width, canScrollHorizontally());
        int childMeasureSpec2 = AbstractC0176f0.getChildMeasureSpec(this.mHeight, this.mHeightMode, getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0178g02).topMargin + ((ViewGroup.MarginLayoutParams) c0178g02).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) c0178g02).height, canScrollVertically());
        if (shouldMeasureChild(c3, childMeasureSpec, childMeasureSpec2, c0178g02)) {
            c3.measure(childMeasureSpec, childMeasureSpec2);
        }
        c2.f1088a = this.mOrientationHelper.c(c3);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                d3 = this.mWidth - getPaddingRight();
                i4 = d3 - this.mOrientationHelper.d(c3);
            } else {
                i4 = getPaddingLeft();
                d3 = this.mOrientationHelper.d(c3) + i4;
            }
            if (d2.f == -1) {
                int i7 = d2.f1093b;
                i3 = i7;
                i2 = d3;
                i = i7 - c2.f1088a;
            } else {
                int i8 = d2.f1093b;
                i = i8;
                i2 = d3;
                i3 = c2.f1088a + i8;
            }
        } else {
            int paddingTop = getPaddingTop();
            int d4 = this.mOrientationHelper.d(c3) + paddingTop;
            if (d2.f == -1) {
                int i9 = d2.f1093b;
                i2 = i9;
                i = paddingTop;
                i3 = d4;
                i4 = i9 - c2.f1088a;
            } else {
                int i10 = d2.f1093b;
                i = paddingTop;
                i2 = c2.f1088a + i10;
                i3 = d4;
                i4 = i10;
            }
        }
        layoutDecoratedWithMargins(c3, i4, i, i2, i3);
        if (c0178g0.c() || c0178g0.b()) {
            c2.f1090c = true;
        }
        c2.f1091d = c3.hasFocusable();
    }

    public void onAnchorReady(n0 n0Var, t0 t0Var, B b2, int i) {
    }

    @Override // b.m.b.AbstractC0176f0
    public void onDetachedFromWindow(RecyclerView recyclerView, n0 n0Var) {
        onDetachedFromWindow();
    }

    @Override // b.m.b.AbstractC0176f0
    public View onFocusSearchFailed(View view, int i, n0 n0Var, t0 t0Var) {
        int convertFocusDirectionToLayoutDirection;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.l() * 0.33333334f), false, t0Var);
        D d2 = this.mLayoutState;
        d2.g = RecyclerView.UNDEFINED_DURATION;
        d2.f1092a = false;
        fill(n0Var, d2, t0Var, true);
        View findOnePartiallyOrCompletelyInvisibleChild = convertFocusDirectionToLayoutDirection == -1 ? this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1) : findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
        View childClosestToStart = convertFocusDirectionToLayoutDirection == -1 ? getChildClosestToStart() : getChildClosestToEnd();
        if (!childClosestToStart.hasFocusable()) {
            return findOnePartiallyOrCompletelyInvisibleChild;
        }
        if (findOnePartiallyOrCompletelyInvisibleChild == null) {
            return null;
        }
        return childClosestToStart;
    }

    @Override // b.m.b.AbstractC0176f0
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        n0 n0Var = this.mRecyclerView.mRecycler;
        onInitializeAccessibilityEvent1(accessibilityEvent);
        if (getChildCount() > 0) {
            View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
            accessibilityEvent.setFromIndex(findOneVisibleChild == null ? -1 : getPosition(findOneVisibleChild));
            View findOneVisibleChild2 = findOneVisibleChild(getChildCount() - 1, -1, false, true);
            accessibilityEvent.setToIndex(findOneVisibleChild2 != null ? getPosition(findOneVisibleChild2) : -1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0210  */
    @Override // b.m.b.AbstractC0176f0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayoutChildren(b.m.b.n0 r17, b.m.b.t0 r18) {
        /*
            Method dump skipped, instructions count: 1063
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.onLayoutChildren(b.m.b.n0, b.m.b.t0):void");
    }

    @Override // b.m.b.AbstractC0176f0
    public void onLayoutCompleted(t0 t0Var) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = RecyclerView.UNDEFINED_DURATION;
        this.mAnchorInfo.d();
    }

    @Override // b.m.b.AbstractC0176f0
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.f185a = -1;
            }
            requestLayout();
        }
    }

    @Override // b.m.b.AbstractC0176f0
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState2.f187c = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState2.f186b = this.mOrientationHelper.g() - this.mOrientationHelper.b(childClosestToEnd);
                savedState2.f185a = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState2.f185a = getPosition(childClosestToStart);
                savedState2.f186b = this.mOrientationHelper.e(childClosestToStart) - this.mOrientationHelper.k();
            }
        } else {
            savedState2.f185a = -1;
        }
        return savedState2;
    }

    public final void recycleByLayoutState(n0 n0Var, D d2) {
        if (!d2.f1092a || d2.m) {
            return;
        }
        int i = d2.g;
        int i2 = d2.i;
        if (d2.f == -1) {
            int childCount = getChildCount();
            if (i < 0) {
                return;
            }
            int f = (this.mOrientationHelper.f() - i) + i2;
            if (this.mShouldReverseLayout) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (this.mOrientationHelper.e(childAt) < f || this.mOrientationHelper.o(childAt) < f) {
                        recycleChildren(n0Var, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = childCount - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View childAt2 = getChildAt(i5);
                if (this.mOrientationHelper.e(childAt2) < f || this.mOrientationHelper.o(childAt2) < f) {
                    recycleChildren(n0Var, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int childCount2 = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i7 = 0; i7 < childCount2; i7++) {
                View childAt3 = getChildAt(i7);
                if (this.mOrientationHelper.b(childAt3) > i6 || this.mOrientationHelper.n(childAt3) > i6) {
                    recycleChildren(n0Var, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = childCount2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View childAt4 = getChildAt(i9);
            if (this.mOrientationHelper.b(childAt4) > i6 || this.mOrientationHelper.n(childAt4) > i6) {
                recycleChildren(n0Var, i8, i9);
                return;
            }
        }
    }

    public final void recycleChildren(n0 n0Var, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                removeAndRecycleViewAt(i, n0Var);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                removeAndRecycleViewAt(i3, n0Var);
            }
        }
    }

    public boolean resolveIsInfinite() {
        return this.mOrientationHelper.i() == 0 && this.mOrientationHelper.f() == 0;
    }

    public final void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public int scrollBy(int i, n0 n0Var, t0 t0Var) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f1092a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        updateLayoutState(i2, abs, true, t0Var);
        D d2 = this.mLayoutState;
        int fill = fill(n0Var, d2, t0Var, false) + d2.g;
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i = i2 * fill;
        }
        this.mOrientationHelper.p(-i);
        this.mLayoutState.k = i;
        return i;
    }

    @Override // b.m.b.AbstractC0176f0
    public int scrollHorizontallyBy(int i, n0 n0Var, t0 t0Var) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, n0Var, t0Var);
    }

    @Override // b.m.b.AbstractC0176f0
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = RecyclerView.UNDEFINED_DURATION;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.f185a = -1;
        }
        requestLayout();
    }

    @Override // b.m.b.AbstractC0176f0
    public int scrollVerticallyBy(int i, n0 n0Var, t0 t0Var) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, n0Var, t0Var);
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(a.c("invalid orientation:", i));
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.mOrientation || this.mOrientationHelper == null) {
            J a2 = J.a(this, i);
            this.mOrientationHelper = a2;
            this.mAnchorInfo.f1084a = a2;
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z) {
            return;
        }
        this.mStackFromEnd = z;
        requestLayout();
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean shouldMeasureTwice() {
        boolean z;
        if (this.mHeightMode == 1073741824 || this.mWidthMode == 1073741824) {
            return false;
        }
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // b.m.b.AbstractC0176f0
    public void smoothScrollToPosition(RecyclerView recyclerView, t0 t0Var, int i) {
        F f = new F(recyclerView.getContext());
        f.mTargetPosition = i;
        startSmoothScroll(f);
    }

    @Override // b.m.b.AbstractC0176f0
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    public final void updateLayoutState(int i, int i2, boolean z, t0 t0Var) {
        int k;
        this.mLayoutState.m = resolveIsInfinite();
        this.mLayoutState.f = i;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(t0Var, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]);
        int max2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z2 = i == 1;
        this.mLayoutState.h = z2 ? max2 : max;
        D d2 = this.mLayoutState;
        if (!z2) {
            max = max2;
        }
        d2.i = max;
        if (z2) {
            D d3 = this.mLayoutState;
            d3.h = this.mOrientationHelper.h() + d3.h;
            View childClosestToEnd = getChildClosestToEnd();
            this.mLayoutState.e = this.mShouldReverseLayout ? -1 : 1;
            D d4 = this.mLayoutState;
            int position = getPosition(childClosestToEnd);
            D d5 = this.mLayoutState;
            d4.f1095d = position + d5.e;
            d5.f1093b = this.mOrientationHelper.b(childClosestToEnd);
            k = this.mOrientationHelper.b(childClosestToEnd) - this.mOrientationHelper.g();
        } else {
            View childClosestToStart = getChildClosestToStart();
            D d6 = this.mLayoutState;
            d6.h = this.mOrientationHelper.k() + d6.h;
            this.mLayoutState.e = this.mShouldReverseLayout ? 1 : -1;
            D d7 = this.mLayoutState;
            int position2 = getPosition(childClosestToStart);
            D d8 = this.mLayoutState;
            d7.f1095d = position2 + d8.e;
            d8.f1093b = this.mOrientationHelper.e(childClosestToStart);
            k = (-this.mOrientationHelper.e(childClosestToStart)) + this.mOrientationHelper.k();
        }
        D d9 = this.mLayoutState;
        d9.f1094c = i2;
        if (z) {
            d9.f1094c = i2 - k;
        }
        this.mLayoutState.g = k;
    }

    public final void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.f1094c = this.mOrientationHelper.g() - i2;
        this.mLayoutState.e = this.mShouldReverseLayout ? -1 : 1;
        D d2 = this.mLayoutState;
        d2.f1095d = i;
        d2.f = 1;
        d2.f1093b = i2;
        d2.g = RecyclerView.UNDEFINED_DURATION;
    }

    public final void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.f1094c = i2 - this.mOrientationHelper.k();
        D d2 = this.mLayoutState;
        d2.f1095d = i;
        d2.e = this.mShouldReverseLayout ? 1 : -1;
        D d3 = this.mLayoutState;
        d3.f = -1;
        d3.f1093b = i2;
        d3.g = RecyclerView.UNDEFINED_DURATION;
    }

    public LinearLayoutManager(int i, boolean z) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = RecyclerView.UNDEFINED_DURATION;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new B();
        this.mLayoutChunkResult = new C();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i);
        assertNotInLayoutOrScroll(null);
        if (z == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = RecyclerView.UNDEFINED_DURATION;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new B();
        this.mLayoutChunkResult = new C();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        C0174e0 properties = AbstractC0176f0.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.f1145a);
        boolean z = properties.f1147c;
        assertNotInLayoutOrScroll(null);
        if (z != this.mReverseLayout) {
            this.mReverseLayout = z;
            requestLayout();
        }
        setStackFromEnd(properties.f1148d);
    }
}
