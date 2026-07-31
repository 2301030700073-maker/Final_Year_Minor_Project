package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.cardview.widget.CardView;
import androidx.collection.LruCache;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.fragment.app.FragmentState;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;
import coil3.Extras;
import com.google.android.exoplayer2.util.Log;
import io.reactivex.rxjava3.internal.util.OpenHashSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {
    public final AnchorInfo mAnchorInfo;
    public final FastScroller.AnonymousClass1 mCheckForGapsRunnable;
    public final int mGapStrategy;
    public boolean mLastLayoutFromEnd;
    public boolean mLastLayoutRTL;
    public final LayoutState mLayoutState;
    public final CardView.AnonymousClass1 mLazySpanLookup;
    public final int mOrientation;
    public SavedState mPendingSavedState;
    public int[] mPrefetchDistances;
    public final RoomOpenDelegate mPrimaryOrientation;
    public final BitSet mRemainingSpans;
    public boolean mReverseLayout;
    public final RoomOpenDelegate mSecondaryOrientation;
    public int mSizePerSpan;
    public final boolean mSmoothScrollbarEnabled;
    public final int mSpanCount;
    public final LruCache[] mSpans;
    public final Rect mTmpRect;
    public boolean mShouldReverseLayout = false;
    public int mPendingScrollPosition = -1;
    public int mPendingScrollPositionOffset = Integer.MIN_VALUE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AnchorInfo {
        public boolean mInvalidateOffsets;
        public boolean mLayoutFromEnd;
        public int mOffset;
        public int mPosition;
        public int[] mSpanReferenceLines;
        public boolean mValid;

        public AnchorInfo() {
            reset();
        }

        public final void reset() {
            this.mPosition = -1;
            this.mOffset = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mInvalidateOffsets = false;
            this.mValid = false;
            int[] iArr = this.mSpanReferenceLines;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LayoutParams extends RecyclerView.LayoutParams {
        public LruCache mSpan;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(24);
        public boolean mAnchorLayoutFromEnd;
        public int mAnchorPosition;
        public ArrayList mFullSpanItems;
        public boolean mLastLayoutRTL;
        public boolean mReverseLayout;
        public int[] mSpanLookup;
        public int mSpanLookupSize;
        public int[] mSpanOffsets;
        public int mSpanOffsetsSize;
        public int mVisibleAnchorPosition;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mSpanCount = -1;
        this.mReverseLayout = false;
        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(29, false);
        this.mLazySpanLookup = anonymousClass1;
        this.mGapStrategy = 2;
        this.mTmpRect = new Rect();
        this.mAnchorInfo = new AnchorInfo();
        this.mSmoothScrollbarEnabled = true;
        this.mCheckForGapsRunnable = new FastScroller.AnonymousClass1(this, 2);
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        int i3 = properties.orientation;
        if (i3 != 0 && i3 != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("invalid orientation.");
            throw null;
        }
        assertNotInLayoutOrScroll(null);
        if (i3 != this.mOrientation) {
            this.mOrientation = i3;
            RoomOpenDelegate roomOpenDelegate = this.mPrimaryOrientation;
            this.mPrimaryOrientation = this.mSecondaryOrientation;
            this.mSecondaryOrientation = roomOpenDelegate;
            requestLayout();
        }
        int i4 = properties.spanCount;
        assertNotInLayoutOrScroll(null);
        if (i4 != this.mSpanCount) {
            anonymousClass1.clear();
            requestLayout();
            this.mSpanCount = i4;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new LruCache[this.mSpanCount];
            for (int i5 = 0; i5 < this.mSpanCount; i5++) {
                this.mSpans[i5] = new LruCache(this, i5);
            }
            requestLayout();
        }
        boolean z = properties.reverseLayout;
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.mReverseLayout != z) {
            savedState.mReverseLayout = z;
        }
        this.mReverseLayout = z;
        requestLayout();
        LayoutState layoutState = new LayoutState();
        layoutState.mRecycle = true;
        layoutState.mStartLine = 0;
        layoutState.mEndLine = 0;
        this.mLayoutState = layoutState;
        this.mPrimaryOrientation = RoomOpenDelegate.createOrientationHelper(this, this.mOrientation);
        this.mSecondaryOrientation = RoomOpenDelegate.createOrientationHelper(this, 1 - this.mOrientation);
    }

    public static int updateSpecWithExtra(int i, int i2, int i3) {
        int mode;
        return (!(i2 == 0 && i3 == 0) && ((mode = View.MeasureSpec.getMode(i)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    public final boolean checkForGaps() {
        int firstChildPosition;
        if (getChildCount() != 0 && this.mGapStrategy != 0 && this.mIsAttachedToWindow) {
            if (this.mShouldReverseLayout) {
                firstChildPosition = getLastChildPosition();
                getFirstChildPosition();
            } else {
                firstChildPosition = getFirstChildPosition();
                getLastChildPosition();
            }
            if (firstChildPosition == 0 && hasGapsToFix() != null) {
                this.mLazySpanLookup.clear();
                this.mRequestedSimpleAnimations = true;
                requestLayout();
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, OpenHashSet openHashSet) {
        LayoutState layoutState;
        int endLine;
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        prepareLayoutStateForDelta(i, state);
        int[] iArr = this.mPrefetchDistances;
        int i3 = this.mSpanCount;
        if (iArr == null || iArr.length < i3) {
            this.mPrefetchDistances = new int[i3];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            layoutState = this.mLayoutState;
            if (i4 >= i3) {
                break;
            }
            int i6 = layoutState.mItemDirection;
            LruCache[] lruCacheArr = this.mSpans;
            if (i6 == -1) {
                int i7 = layoutState.mStartLine;
                endLine = i7 - lruCacheArr[i4].getStartLine(i7);
            } else {
                endLine = lruCacheArr[i4].getEndLine(layoutState.mEndLine) - layoutState.mEndLine;
            }
            if (endLine >= 0) {
                this.mPrefetchDistances[i5] = endLine;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.mPrefetchDistances, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = layoutState.mCurrentPosition;
            if (i9 < 0 || i9 >= state.getItemCount()) {
                return;
            }
            openHashSet.addPosition(layoutState.mCurrentPosition, this.mPrefetchDistances[i8]);
            layoutState.mCurrentPosition += layoutState.mItemDirection;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        boolean z = !this.mSmoothScrollbarEnabled;
        return DiffUtil.computeScrollExtent(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(z), findFirstVisibleItemClosestToEnd(z), this, this.mSmoothScrollbarEnabled);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset$1(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        boolean z = !this.mSmoothScrollbarEnabled;
        return DiffUtil.computeScrollRange(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(z), findFirstVisibleItemClosestToEnd(z), this, this.mSmoothScrollbarEnabled);
    }

    public final int computeScrollOffset$1(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        boolean z = !this.mSmoothScrollbarEnabled;
        return DiffUtil.computeScrollOffset(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(z), findFirstVisibleItemClosestToEnd(z), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0019, code lost:
    
        if ((r4 < getFirstChildPosition()) != r3.mShouldReverseLayout) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r3.mShouldReverseLayout != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        r1 = 1;
     */
    @Override // androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.PointF computeScrollVectorForPosition(int r4) {
        /*
            r3 = this;
            int r0 = r3.getChildCount()
            r1 = -1
            r2 = 1
            if (r0 != 0) goto Le
            boolean r4 = r3.mShouldReverseLayout
            if (r4 == 0) goto L1b
        Lc:
            r1 = r2
            goto L1b
        Le:
            int r0 = r3.getFirstChildPosition()
            if (r4 >= r0) goto L16
            r4 = r2
            goto L17
        L16:
            r4 = 0
        L17:
            boolean r0 = r3.mShouldReverseLayout
            if (r4 == r0) goto Lc
        L1b:
            android.graphics.PointF r4 = new android.graphics.PointF
            r4.<init>()
            if (r1 != 0) goto L24
            r3 = 0
            return r3
        L24:
            int r3 = r3.mOrientation
            r0 = 0
            if (r3 != 0) goto L2f
            float r3 = (float) r1
            r4.x = r3
            r4.y = r0
            return r4
        L2f:
            r4.x = r0
            float r3 = (float) r1
            r4.y = r3
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.computeScrollVectorForPosition(int):android.graphics.PointF");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        boolean z = !this.mSmoothScrollbarEnabled;
        return DiffUtil.computeScrollExtent(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(z), findFirstVisibleItemClosestToEnd(z), this, this.mSmoothScrollbarEnabled);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset$1(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        boolean z = !this.mSmoothScrollbarEnabled;
        return DiffUtil.computeScrollRange(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(z), findFirstVisibleItemClosestToEnd(z), this, this.mSmoothScrollbarEnabled);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0277, code lost:
    
        recycle(r1, r7);
     */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int fill(androidx.recyclerview.widget.RecyclerView.Recycler r25, androidx.recyclerview.widget.LayoutState r26, androidx.recyclerview.widget.RecyclerView.State r27) {
        /*
            Method dump skipped, instructions count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.fill(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.LayoutState, androidx.recyclerview.widget.RecyclerView$State):int");
    }

    public final View findFirstVisibleItemClosestToEnd(boolean z) {
        RoomOpenDelegate roomOpenDelegate = this.mPrimaryOrientation;
        int startAfterPadding = roomOpenDelegate.getStartAfterPadding();
        int endAfterPadding = roomOpenDelegate.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = roomOpenDelegate.getDecoratedStart(childAt);
            int decoratedEnd = roomOpenDelegate.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd <= endAfterPadding || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View findFirstVisibleItemClosestToStart(boolean z) {
        RoomOpenDelegate roomOpenDelegate = this.mPrimaryOrientation;
        int startAfterPadding = roomOpenDelegate.getStartAfterPadding();
        int endAfterPadding = roomOpenDelegate.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int decoratedStart = roomOpenDelegate.getDecoratedStart(childAt);
            if (roomOpenDelegate.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart >= startAfterPadding || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final void fixEndGap(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int maxEnd = getMaxEnd(Integer.MIN_VALUE);
        if (maxEnd != Integer.MIN_VALUE && (endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - maxEnd) > 0) {
            int i = endAfterPadding - (-scrollBy$1(-endAfterPadding, recycler, state));
            if (!z || i <= 0) {
                return;
            }
            this.mPrimaryOrientation.offsetChildren(i);
        }
    }

    public final void fixStartGap(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int minStart = getMinStart(Log.LOG_LEVEL_OFF);
        if (minStart != Integer.MAX_VALUE && (startAfterPadding = minStart - this.mPrimaryOrientation.getStartAfterPadding()) > 0) {
            int scrollBy$1 = startAfterPadding - scrollBy$1(startAfterPadding, recycler, state);
            if (!z || scrollBy$1 <= 0) {
                return;
            }
            this.mPrimaryOrientation.offsetChildren(-scrollBy$1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return Math.min(this.mSpanCount, state.getItemCount());
        }
        return -1;
    }

    public final int getFirstChildPosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return RecyclerView.LayoutManager.getPosition(getChildAt(0));
    }

    public final int getLastChildPosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return RecyclerView.LayoutManager.getPosition(getChildAt(childCount - 1));
    }

    public final int getMaxEnd(int i) {
        int endLine = this.mSpans[0].getEndLine(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int endLine2 = this.mSpans[i2].getEndLine(i);
            if (endLine2 > endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    public final int getMinStart(int i) {
        int startLine = this.mSpans[0].getStartLine(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int startLine2 = this.mSpans[i2].getStartLine(i);
            if (startLine2 < startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return Math.min(this.mSpanCount, state.getItemCount());
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleUpdate(int r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.handleUpdate(int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x002a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View hasGapsToFix() {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.hasGapsToFix():android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return this.mGapStrategy != 0;
    }

    public final boolean isLayoutRTL() {
        return this.mRecyclerView.getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isLayoutReversed() {
        return this.mReverseLayout;
    }

    public final void measureChildWithDecorationsAndMargin$1(View view, int i, int i2) {
        RecyclerView recyclerView = this.mRecyclerView;
        Rect rect = this.mTmpRect;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.getItemDecorInsetsForChild(view));
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int updateSpecWithExtra = updateSpecWithExtra(i, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int updateSpecWithExtra2 = updateSpecWithExtra(i2, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.bottom);
        if (shouldMeasureChild(view, updateSpecWithExtra, updateSpecWithExtra2, layoutParams)) {
            view.measure(updateSpecWithExtra, updateSpecWithExtra2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            LruCache lruCache = this.mSpans[i2];
            int i3 = lruCache.maxSize;
            if (i3 != Integer.MIN_VALUE) {
                lruCache.maxSize = i3 + i;
            }
            int i4 = lruCache.size;
            if (i4 != Integer.MIN_VALUE) {
                lruCache.size = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            LruCache lruCache = this.mSpans[i2];
            int i3 = lruCache.maxSize;
            if (i3 != Integer.MIN_VALUE) {
                lruCache.maxSize = i3 + i;
            }
            int i4 = lruCache.size;
            if (i4 != Integer.MIN_VALUE) {
                lruCache.size = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAdapterChanged() {
        this.mLazySpanLookup.clear();
        for (int i = 0; i < this.mSpanCount; i++) {
            this.mSpans[i].clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.mCheckForGapsRunnable);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            this.mSpans[i].clear();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0037, code lost:
    
        if (r0 == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x003b, code lost:
    
        if (r0 == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0045, code lost:
    
        if (isLayoutRTL() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x004f, code lost:
    
        if (isLayoutRTL() == false) goto L26;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onFocusSearchFailed(android.view.View r8, int r9, androidx.recyclerview.widget.RecyclerView.Recycler r10, androidx.recyclerview.widget.RecyclerView.State r11) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View findFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(false);
            View findFirstVisibleItemClosestToEnd = findFirstVisibleItemClosestToEnd(false);
            if (findFirstVisibleItemClosestToStart == null || findFirstVisibleItemClosestToEnd == null) {
                return;
            }
            int position = RecyclerView.LayoutManager.getPosition(findFirstVisibleItemClosestToStart);
            int position2 = RecyclerView.LayoutManager.getPosition(findFirstVisibleItemClosestToEnd);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        LruCache lruCache = ((LayoutParams) layoutParams).mSpan;
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(lruCache != null ? lruCache.missCount : -1, 1, -1, -1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(-1, -1, lruCache != null ? lruCache.missCount : -1, 1, false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(int i, int i2) {
        handleUpdate(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsChanged() {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsMoved(int i, int i2) {
        handleUpdate(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(int i, int i2) {
        handleUpdate(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(int i, int i2) {
        handleUpdate(i, i2, 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x018b, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0187, code lost:
    
        if ((r4 < getFirstChildPosition()) != r17.mShouldReverseLayout) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0179, code lost:
    
        if (r17.mShouldReverseLayout != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0189, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:261:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:267:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayoutChildren(androidx.recyclerview.widget.RecyclerView.Recycler r18, androidx.recyclerview.widget.RecyclerView.State r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 1027
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.onLayoutChildren(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, boolean):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo.reset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.mAnchorPosition = -1;
                savedState.mVisibleAnchorPosition = -1;
                savedState.mSpanOffsets = null;
                savedState.mSpanOffsetsSize = 0;
                savedState.mSpanLookupSize = 0;
                savedState.mSpanLookup = null;
                savedState.mFullSpanItems = null;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable onSaveInstanceState() {
        int startLine;
        int startAfterPadding;
        int[] iArr;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            SavedState savedState2 = new SavedState();
            savedState2.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            savedState2.mAnchorPosition = savedState.mAnchorPosition;
            savedState2.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            savedState2.mSpanOffsets = savedState.mSpanOffsets;
            savedState2.mSpanLookupSize = savedState.mSpanLookupSize;
            savedState2.mSpanLookup = savedState.mSpanLookup;
            savedState2.mReverseLayout = savedState.mReverseLayout;
            savedState2.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            savedState2.mLastLayoutRTL = savedState.mLastLayoutRTL;
            savedState2.mFullSpanItems = savedState.mFullSpanItems;
            return savedState2;
        }
        SavedState savedState3 = new SavedState();
        savedState3.mReverseLayout = this.mReverseLayout;
        savedState3.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
        savedState3.mLastLayoutRTL = this.mLastLayoutRTL;
        CardView.AnonymousClass1 anonymousClass1 = this.mLazySpanLookup;
        if (anonymousClass1 == null || (iArr = (int[]) anonymousClass1.mCardBackground) == null) {
            savedState3.mSpanLookupSize = 0;
        } else {
            savedState3.mSpanLookup = iArr;
            savedState3.mSpanLookupSize = iArr.length;
            savedState3.mFullSpanItems = (ArrayList) anonymousClass1.this$0;
        }
        if (getChildCount() <= 0) {
            savedState3.mAnchorPosition = -1;
            savedState3.mVisibleAnchorPosition = -1;
            savedState3.mSpanOffsetsSize = 0;
            return savedState3;
        }
        savedState3.mAnchorPosition = this.mLastLayoutFromEnd ? getLastChildPosition() : getFirstChildPosition();
        View findFirstVisibleItemClosestToEnd = this.mShouldReverseLayout ? findFirstVisibleItemClosestToEnd(true) : findFirstVisibleItemClosestToStart(true);
        savedState3.mVisibleAnchorPosition = findFirstVisibleItemClosestToEnd != null ? RecyclerView.LayoutManager.getPosition(findFirstVisibleItemClosestToEnd) : -1;
        int i = this.mSpanCount;
        savedState3.mSpanOffsetsSize = i;
        savedState3.mSpanOffsets = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            boolean z = this.mLastLayoutFromEnd;
            RoomOpenDelegate roomOpenDelegate = this.mPrimaryOrientation;
            LruCache[] lruCacheArr = this.mSpans;
            if (z) {
                startLine = lruCacheArr[i2].getEndLine(Integer.MIN_VALUE);
                if (startLine != Integer.MIN_VALUE) {
                    startAfterPadding = roomOpenDelegate.getEndAfterPadding();
                    startLine -= startAfterPadding;
                    savedState3.mSpanOffsets[i2] = startLine;
                } else {
                    savedState3.mSpanOffsets[i2] = startLine;
                }
            } else {
                startLine = lruCacheArr[i2].getStartLine(Integer.MIN_VALUE);
                if (startLine != Integer.MIN_VALUE) {
                    startAfterPadding = roomOpenDelegate.getStartAfterPadding();
                    startLine -= startAfterPadding;
                    savedState3.mSpanOffsets[i2] = startLine;
                } else {
                    savedState3.mSpanOffsets[i2] = startLine;
                }
            }
        }
        return savedState3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onScrollStateChanged(int i) {
        if (i == 0) {
            checkForGaps();
        }
    }

    public final boolean preferLastSpan(int i) {
        if (this.mOrientation == 0) {
            return (i == -1) != this.mShouldReverseLayout;
        }
        return ((i == -1) == this.mShouldReverseLayout) == isLayoutRTL();
    }

    public final void prepareLayoutStateForDelta(int i, RecyclerView.State state) {
        int firstChildPosition;
        int i2;
        if (i > 0) {
            firstChildPosition = getLastChildPosition();
            i2 = 1;
        } else {
            firstChildPosition = getFirstChildPosition();
            i2 = -1;
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.mRecycle = true;
        updateLayoutState(firstChildPosition, state);
        setLayoutStateDirection(i2);
        layoutState.mCurrentPosition = firstChildPosition + layoutState.mItemDirection;
        layoutState.mAvailable = Math.abs(i);
    }

    public final void recycle(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        int i = layoutState.mAvailable;
        int i2 = layoutState.mLayoutDirection;
        if (i == 0) {
            if (i2 == -1) {
                recycleFromEnd(recycler, layoutState.mEndLine);
                return;
            } else {
                recycleFromStart(recycler, layoutState.mStartLine);
                return;
            }
        }
        int i3 = this.mSpanCount;
        LruCache[] lruCacheArr = this.mSpans;
        int i4 = 1;
        if (i2 == -1) {
            int i5 = layoutState.mStartLine;
            int startLine = lruCacheArr[0].getStartLine(i5);
            while (i4 < i3) {
                int startLine2 = lruCacheArr[i4].getStartLine(i5);
                if (startLine2 > startLine) {
                    startLine = startLine2;
                }
                i4++;
            }
            int i6 = i5 - startLine;
            int i7 = layoutState.mEndLine;
            if (i6 >= 0) {
                i7 -= Math.min(i6, layoutState.mAvailable);
            }
            recycleFromEnd(recycler, i7);
            return;
        }
        int i8 = layoutState.mEndLine;
        int endLine = lruCacheArr[0].getEndLine(i8);
        while (i4 < i3) {
            int endLine2 = lruCacheArr[i4].getEndLine(i8);
            if (endLine2 < endLine) {
                endLine = endLine2;
            }
            i4++;
        }
        int i9 = endLine - layoutState.mEndLine;
        int i10 = layoutState.mStartLine;
        if (i9 >= 0) {
            i10 += Math.min(i9, layoutState.mAvailable);
        }
        recycleFromStart(recycler, i10);
    }

    public final void recycleFromEnd(RecyclerView.Recycler recycler, int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            RoomOpenDelegate roomOpenDelegate = this.mPrimaryOrientation;
            if (roomOpenDelegate.getDecoratedStart(childAt) < i || roomOpenDelegate.getTransformedStartWithDecoration(childAt) < i) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            layoutParams.getClass();
            if (((ArrayList) layoutParams.mSpan.map).size() == 1) {
                return;
            }
            LruCache lruCache = layoutParams.mSpan;
            ArrayList arrayList = (ArrayList) lruCache.map;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.mSpan = null;
            if (layoutParams2.mViewHolder.isRemoved() || layoutParams2.mViewHolder.isUpdated()) {
                lruCache.hitCount -= ((StaggeredGridLayoutManager) lruCache.lock).mPrimaryOrientation.getDecoratedMeasurement(view);
            }
            if (size == 1) {
                lruCache.maxSize = Integer.MIN_VALUE;
            }
            lruCache.size = Integer.MIN_VALUE;
            removeAndRecycleView(childAt, recycler);
        }
    }

    public final void recycleFromStart(RecyclerView.Recycler recycler, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            RoomOpenDelegate roomOpenDelegate = this.mPrimaryOrientation;
            if (roomOpenDelegate.getDecoratedEnd(childAt) > i || roomOpenDelegate.getTransformedEndWithDecoration(childAt) > i) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            layoutParams.getClass();
            if (((ArrayList) layoutParams.mSpan.map).size() == 1) {
                return;
            }
            LruCache lruCache = layoutParams.mSpan;
            ArrayList arrayList = (ArrayList) lruCache.map;
            View view = (View) arrayList.remove(0);
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.mSpan = null;
            if (arrayList.size() == 0) {
                lruCache.size = Integer.MIN_VALUE;
            }
            if (layoutParams2.mViewHolder.isRemoved() || layoutParams2.mViewHolder.isUpdated()) {
                lruCache.hitCount -= ((StaggeredGridLayoutManager) lruCache.lock).mPrimaryOrientation.getDecoratedMeasurement(view);
            }
            lruCache.maxSize = Integer.MIN_VALUE;
            removeAndRecycleView(childAt, recycler);
        }
    }

    public final void resolveShouldLayoutReverse$1() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public final int scrollBy$1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        prepareLayoutStateForDelta(i, state);
        LayoutState layoutState = this.mLayoutState;
        int fill = fill(recycler, layoutState, state);
        if (layoutState.mAvailable >= fill) {
            i = i < 0 ? -fill : fill;
        }
        this.mPrimaryOrientation.offsetChildren(-i);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        layoutState.mAvailable = 0;
        recycle(recycler, layoutState);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy$1(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i) {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.mAnchorPosition != i) {
            savedState.mSpanOffsets = null;
            savedState.mSpanOffsetsSize = 0;
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
        }
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy$1(i, recycler, state);
    }

    public final void setLayoutStateDirection(int i) {
        LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = i;
        layoutState.mItemDirection = this.mShouldReverseLayout != (i == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void setMeasuredDimension(Rect rect, int i, int i2) {
        int chooseSize;
        int chooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int i3 = this.mOrientation;
        int i4 = this.mSpanCount;
        if (i3 == 1) {
            int height = rect.height() + paddingBottom;
            RecyclerView recyclerView = this.mRecyclerView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            chooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, height, recyclerView.getMinimumHeight());
            chooseSize = RecyclerView.LayoutManager.chooseSize(i, (this.mSizePerSpan * i4) + paddingRight, this.mRecyclerView.getMinimumWidth());
        } else {
            int width = rect.width() + paddingRight;
            RecyclerView recyclerView2 = this.mRecyclerView;
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            chooseSize = RecyclerView.LayoutManager.chooseSize(i, width, recyclerView2.getMinimumWidth());
            chooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, (this.mSizePerSpan * i4) + paddingBottom, this.mRecyclerView.getMinimumHeight());
        }
        this.mRecyclerView.setMeasuredDimension(chooseSize, chooseSize2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.mTargetPosition = i;
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null;
    }

    public final void updateLayoutState(int i, RecyclerView.State state) {
        int i2;
        int i3;
        int i4;
        LayoutState layoutState = this.mLayoutState;
        boolean z = false;
        layoutState.mAvailable = 0;
        layoutState.mCurrentPosition = i;
        LinearSmoothScroller linearSmoothScroller = this.mSmoothScroller;
        RoomOpenDelegate roomOpenDelegate = this.mPrimaryOrientation;
        if (linearSmoothScroller == null || !linearSmoothScroller.mRunning || (i4 = state.mTargetPosition) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.mShouldReverseLayout == (i4 < i)) {
                i2 = roomOpenDelegate.getTotalSpace();
                i3 = 0;
            } else {
                i3 = roomOpenDelegate.getTotalSpace();
                i2 = 0;
            }
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || !recyclerView.mClipToPadding) {
            layoutState.mEndLine = roomOpenDelegate.getEnd() + i2;
            layoutState.mStartLine = -i3;
        } else {
            layoutState.mStartLine = roomOpenDelegate.getStartAfterPadding() - i3;
            layoutState.mEndLine = roomOpenDelegate.getEndAfterPadding() + i2;
        }
        layoutState.mStopInFocusable = false;
        layoutState.mRecycle = true;
        if (roomOpenDelegate.getMode() == 0 && roomOpenDelegate.getEnd() == 0) {
            z = true;
        }
        layoutState.mInfinite = z;
    }

    public final void updateRemainingSpans(LruCache lruCache, int i, int i2) {
        int i3 = lruCache.hitCount;
        int i4 = lruCache.missCount;
        BitSet bitSet = this.mRemainingSpans;
        if (i != -1) {
            int i5 = lruCache.size;
            if (i5 == Integer.MIN_VALUE) {
                lruCache.calculateCachedEnd();
                i5 = lruCache.size;
            }
            if (i5 - i3 >= i2) {
                bitSet.set(i4, false);
                return;
            }
            return;
        }
        int i6 = lruCache.maxSize;
        if (i6 == Integer.MIN_VALUE) {
            View view = (View) ((ArrayList) lruCache.map).get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            lruCache.maxSize = ((StaggeredGridLayoutManager) lruCache.lock).mPrimaryOrientation.getDecoratedStart(view);
            layoutParams.getClass();
            i6 = lruCache.maxSize;
        }
        if (i6 + i3 <= i2) {
            bitSet.set(i4, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        onLayoutChildren(recycler, state, true);
    }
}
