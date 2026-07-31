package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.compose.ui.Modifier;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.fragment.app.FragmentState;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;
import com.google.android.exoplayer2.util.Log;
import io.reactivex.rxjava3.internal.util.OpenHashSet;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {
    public final AnchorInfo mAnchorInfo;
    public final int mInitialPrefetchItemCount;
    public boolean mLastStackFromEnd;
    public final LayoutChunkResult mLayoutChunkResult;
    public LayoutState mLayoutState;
    public int mOrientation;
    public RoomOpenDelegate mOrientationHelper;
    public SavedState mPendingSavedState;
    public int mPendingScrollPosition;
    public int mPendingScrollPositionOffset;
    public final int[] mReusableIntPair;
    public final boolean mReverseLayout;
    public boolean mShouldReverseLayout;
    public final boolean mSmoothScrollbarEnabled;
    public boolean mStackFromEnd;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AnchorInfo {
        public int mCoordinate;
        public boolean mLayoutFromEnd;
        public RoomOpenDelegate mOrientationHelper;
        public int mPosition;
        public boolean mValid;

        public AnchorInfo() {
            reset();
        }

        public final void assignCoordinateFromPadding() {
            boolean z = this.mLayoutFromEnd;
            RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
            this.mCoordinate = z ? roomOpenDelegate.getEndAfterPadding() : roomOpenDelegate.getStartAfterPadding();
        }

        public final void assignFromViewAndKeepVisibleRect(int i, View view) {
            RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
            int totalSpace = Integer.MIN_VALUE == roomOpenDelegate.version ? 0 : roomOpenDelegate.getTotalSpace() - roomOpenDelegate.version;
            if (totalSpace >= 0) {
                boolean z = this.mLayoutFromEnd;
                RoomOpenDelegate roomOpenDelegate2 = this.mOrientationHelper;
                if (z) {
                    int decoratedEnd = roomOpenDelegate2.getDecoratedEnd(view);
                    RoomOpenDelegate roomOpenDelegate3 = this.mOrientationHelper;
                    this.mCoordinate = (Integer.MIN_VALUE != roomOpenDelegate3.version ? roomOpenDelegate3.getTotalSpace() - roomOpenDelegate3.version : 0) + decoratedEnd;
                } else {
                    this.mCoordinate = roomOpenDelegate2.getDecoratedStart(view);
                }
                this.mPosition = i;
                return;
            }
            this.mPosition = i;
            boolean z2 = this.mLayoutFromEnd;
            RoomOpenDelegate roomOpenDelegate4 = this.mOrientationHelper;
            if (!z2) {
                int decoratedStart = roomOpenDelegate4.getDecoratedStart(view);
                int startAfterPadding = decoratedStart - this.mOrientationHelper.getStartAfterPadding();
                this.mCoordinate = decoratedStart;
                if (startAfterPadding > 0) {
                    int endAfterPadding = (this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (this.mOrientationHelper.getEndAfterPadding() - totalSpace) - this.mOrientationHelper.getDecoratedEnd(view))) - (this.mOrientationHelper.getDecoratedMeasurement(view) + decoratedStart);
                    if (endAfterPadding < 0) {
                        this.mCoordinate -= Math.min(startAfterPadding, -endAfterPadding);
                        return;
                    }
                    return;
                }
                return;
            }
            int endAfterPadding2 = (roomOpenDelegate4.getEndAfterPadding() - totalSpace) - this.mOrientationHelper.getDecoratedEnd(view);
            this.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - endAfterPadding2;
            if (endAfterPadding2 > 0) {
                int decoratedMeasurement = this.mCoordinate - this.mOrientationHelper.getDecoratedMeasurement(view);
                int startAfterPadding2 = this.mOrientationHelper.getStartAfterPadding();
                int min = decoratedMeasurement - (Math.min(this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding2, 0) + startAfterPadding2);
                if (min < 0) {
                    this.mCoordinate = Math.min(endAfterPadding2, -min) + this.mCoordinate;
                }
            }
        }

        public final void reset() {
            this.mPosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mValid = false;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + '}';
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LayoutState {
        public int mAvailable;
        public int mCurrentPosition;
        public int mExtraFillSpace;
        public boolean mInfinite;
        public int mItemDirection;
        public int mLastScrollDelta;
        public int mLayoutDirection;
        public int mNoRecycleSpace;
        public int mOffset;
        public boolean mRecycle;
        public List mScrapList;
        public int mScrollingOffset;

        public final void assignPositionFromScrapList(View view) {
            int layoutPosition;
            int size = this.mScrapList.size();
            View view2 = null;
            int i = Log.LOG_LEVEL_OFF;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = ((RecyclerView.ViewHolder) this.mScrapList.get(i2)).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.mViewHolder.isRemoved() && (layoutPosition = (layoutParams.mViewHolder.getLayoutPosition() - this.mCurrentPosition) * this.mItemDirection) >= 0 && layoutPosition < i) {
                    view2 = view3;
                    if (layoutPosition == 0) {
                        break;
                    } else {
                        i = layoutPosition;
                    }
                }
            }
            if (view2 == null) {
                this.mCurrentPosition = -1;
            } else {
                this.mCurrentPosition = ((RecyclerView.LayoutParams) view2.getLayoutParams()).mViewHolder.getLayoutPosition();
            }
        }

        public final View next(RecyclerView.Recycler recycler) {
            List list = this.mScrapList;
            if (list == null) {
                View view = recycler.tryGetViewHolderForPositionByDeadline(this.mCurrentPosition, Long.MAX_VALUE).itemView;
                this.mCurrentPosition += this.mItemDirection;
                return view;
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view2 = ((RecyclerView.ViewHolder) this.mScrapList.get(i)).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view2.getLayoutParams();
                if (!layoutParams.mViewHolder.isRemoved() && this.mCurrentPosition == layoutParams.mViewHolder.getLayoutPosition()) {
                    assignPositionFromScrapList(view2);
                    return view2;
                }
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(22);
        public boolean mAnchorLayoutFromEnd;
        public int mAnchorOffset;
        public int mAnchorPosition;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        boolean z = properties.reverseLayout;
        assertNotInLayoutOrScroll(null);
        if (z != this.mReverseLayout) {
            this.mReverseLayout = z;
            requestLayout();
        }
        setStackFromEnd(properties.stackFromEnd);
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

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, OpenHashSet openHashSet) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, state);
        collectPrefetchPositionsForLayoutState(state, this.mLayoutState, openHashSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectInitialPrefetchPositions(int i, OpenHashSet openHashSet) {
        boolean z;
        int i2;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || (i2 = savedState.mAnchorPosition) < 0) {
            resolveShouldLayoutReverse();
            z = this.mShouldReverseLayout;
            i2 = this.mPendingScrollPosition;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            z = savedState.mAnchorLayoutFromEnd;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.mInitialPrefetchItemCount && i2 >= 0 && i2 < i; i4++) {
            openHashSet.addPosition(i2, 0);
            i2 += i3;
        }
    }

    public void collectPrefetchPositionsForLayoutState(RecyclerView.State state, LayoutState layoutState, OpenHashSet openHashSet) {
        int i = layoutState.mCurrentPosition;
        if (i < 0 || i >= state.getItemCount()) {
            return;
        }
        openHashSet.addPosition(i, Math.max(0, layoutState.mScrollingOffset));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        boolean z = !this.mSmoothScrollbarEnabled;
        return DiffUtil.computeScrollExtent(state, roomOpenDelegate, findFirstVisibleChildClosestToStart(z), findFirstVisibleChildClosestToEnd(z), this, this.mSmoothScrollbarEnabled);
    }

    public final int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        boolean z = !this.mSmoothScrollbarEnabled;
        return DiffUtil.computeScrollOffset(state, roomOpenDelegate, findFirstVisibleChildClosestToStart(z), findFirstVisibleChildClosestToEnd(z), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    public final int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        boolean z = !this.mSmoothScrollbarEnabled;
        return DiffUtil.computeScrollRange(state, roomOpenDelegate, findFirstVisibleChildClosestToStart(z), findFirstVisibleChildClosestToEnd(z), this, this.mSmoothScrollbarEnabled);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = (i < RecyclerView.LayoutManager.getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final int convertFocusDirectionToLayoutDirection$1(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE : this.mOrientation == 0 ? 1 : Integer.MIN_VALUE : this.mOrientation == 1 ? -1 : Integer.MIN_VALUE : this.mOrientation == 0 ? -1 : Integer.MIN_VALUE : (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1 : (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
    }

    public final void ensureLayoutState() {
        if (this.mLayoutState == null) {
            LayoutState layoutState = new LayoutState();
            layoutState.mRecycle = true;
            layoutState.mExtraFillSpace = 0;
            layoutState.mNoRecycleSpace = 0;
            layoutState.mScrapList = null;
            this.mLayoutState = layoutState;
        }
    }

    public final int fill(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state, boolean z) {
        int i;
        int i2 = layoutState.mAvailable;
        int i3 = layoutState.mScrollingOffset;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                layoutState.mScrollingOffset = i3 + i2;
            }
            recycleByLayoutState(recycler, layoutState);
        }
        int i4 = layoutState.mAvailable + layoutState.mExtraFillSpace;
        while (true) {
            if ((!layoutState.mInfinite && i4 <= 0) || (i = layoutState.mCurrentPosition) < 0 || i >= state.getItemCount()) {
                break;
            }
            LayoutChunkResult layoutChunkResult = this.mLayoutChunkResult;
            layoutChunkResult.mConsumed = 0;
            layoutChunkResult.mFinished = false;
            layoutChunkResult.mIgnoreConsumed = false;
            layoutChunkResult.mFocusable = false;
            layoutChunk(recycler, state, layoutState, layoutChunkResult);
            if (!layoutChunkResult.mFinished) {
                int i5 = layoutState.mOffset;
                int i6 = layoutChunkResult.mConsumed;
                layoutState.mOffset = (layoutState.mLayoutDirection * i6) + i5;
                if (!layoutChunkResult.mIgnoreConsumed || layoutState.mScrapList != null || !state.mInPreLayout) {
                    layoutState.mAvailable -= i6;
                    i4 -= i6;
                }
                int i7 = layoutState.mScrollingOffset;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    layoutState.mScrollingOffset = i8;
                    int i9 = layoutState.mAvailable;
                    if (i9 < 0) {
                        layoutState.mScrollingOffset = i8 + i9;
                    }
                    recycleByLayoutState(recycler, layoutState);
                }
                if (z && layoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - layoutState.mAvailable;
    }

    public final View findFirstVisibleChildClosestToEnd(boolean z) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z) : findOneVisibleChild(getChildCount() - 1, -1, z);
    }

    public final View findFirstVisibleChildClosestToStart(boolean z) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z) : findOneVisibleChild(0, getChildCount(), z);
    }

    public final View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        int i3;
        int i4;
        ensureLayoutState();
        if (i2 <= i && i2 >= i) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i)) < this.mOrientationHelper.getStartAfterPadding()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4);
    }

    public final View findOneVisibleChild(int i, int i2, boolean z) {
        ensureLayoutState();
        int i3 = z ? 24579 : 320;
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, 320) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, 320);
    }

    public View findReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        ensureLayoutState();
        int childCount = getChildCount();
        if (z2) {
            i2 = getChildCount() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = childCount;
            i2 = 0;
            i3 = 1;
        }
        int itemCount = state.getItemCount();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i) {
            View childAt = getChildAt(i2);
            int position = RecyclerView.LayoutManager.getPosition(childAt);
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(childAt);
            int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(childAt);
            if (position >= 0 && position < itemCount) {
                if (!((RecyclerView.LayoutParams) childAt.getLayoutParams()).mViewHolder.isRemoved()) {
                    boolean z3 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
                    boolean z4 = decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding;
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
            i2 += i3;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - RecyclerView.LayoutManager.getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (RecyclerView.LayoutManager.getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    public final int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy$1(-endAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    public final int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy$1(startAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (startAfterPadding = i3 - this.mOrientationHelper.getStartAfterPadding()) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(-startAfterPadding);
        return i2 - startAfterPadding;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public final View getChildClosestToEnd$1() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    public final View getChildClosestToStart$1() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    public final boolean isLayoutRTL() {
        return this.mRecyclerView.getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isLayoutReversed() {
        return this.mReverseLayout;
    }

    public void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int i4;
        View next = layoutState.next(recycler);
        if (next == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) next.getLayoutParams();
        List list = layoutState.mScrapList;
        boolean z = this.mShouldReverseLayout;
        int i5 = layoutState.mLayoutDirection;
        if (list == null) {
            if (z == (i5 == -1)) {
                addViewInt(next, -1, false);
            } else {
                addViewInt(next, 0, false);
            }
        } else {
            if (z == (i5 == -1)) {
                addViewInt(next, -1, true);
            } else {
                addViewInt(next, 0, true);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) next.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(next);
        int i6 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
        int i7 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
        int childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(canScrollHorizontally(), this.mWidth, this.mWidthMode, getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + i6, ((ViewGroup.MarginLayoutParams) layoutParams2).width);
        int childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(canScrollVertically(), this.mHeight, this.mHeightMode, getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i7, ((ViewGroup.MarginLayoutParams) layoutParams2).height);
        if (shouldMeasureChild(next, childMeasureSpec, childMeasureSpec2, layoutParams2)) {
            next.measure(childMeasureSpec, childMeasureSpec2);
        }
        layoutChunkResult.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(next);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                i4 = this.mWidth - getPaddingRight();
                i2 = i4 - this.mOrientationHelper.getDecoratedMeasurementInOther(next);
            } else {
                int paddingLeft = getPaddingLeft();
                i4 = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingLeft;
                i2 = paddingLeft;
            }
            int i8 = layoutState.mLayoutDirection;
            i3 = layoutState.mOffset;
            int i9 = layoutChunkResult.mConsumed;
            if (i8 == -1) {
                int i10 = i3 - i9;
                i = i3;
                i3 = i10;
            } else {
                i = i9 + i3;
            }
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingTop;
            int i11 = layoutState.mLayoutDirection;
            int i12 = layoutState.mOffset;
            int i13 = layoutChunkResult.mConsumed;
            if (i11 == -1) {
                int i14 = i12 - i13;
                i4 = i12;
                i3 = paddingTop;
                i = decoratedMeasurementInOther;
                i2 = i14;
            } else {
                int i15 = i12 + i13;
                i = decoratedMeasurementInOther;
                i2 = i12;
                i3 = paddingTop;
                i4 = i15;
            }
        }
        RecyclerView.LayoutManager.layoutDecoratedWithMargins(next, i2, i3, i4, i);
        if (layoutParams.mViewHolder.isRemoved() || layoutParams.mViewHolder.isUpdated()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = next.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int convertFocusDirectionToLayoutDirection$1;
        resolveShouldLayoutReverse();
        if (getChildCount() != 0 && (convertFocusDirectionToLayoutDirection$1 = convertFocusDirectionToLayoutDirection$1(i)) != Integer.MIN_VALUE) {
            ensureLayoutState();
            updateLayoutState(convertFocusDirectionToLayoutDirection$1, (int) (this.mOrientationHelper.getTotalSpace() * 0.33333334f), false, state);
            LayoutState layoutState = this.mLayoutState;
            layoutState.mScrollingOffset = Integer.MIN_VALUE;
            layoutState.mRecycle = false;
            fill(recycler, layoutState, state, true);
            boolean z = this.mShouldReverseLayout;
            View findOnePartiallyOrCompletelyInvisibleChild = convertFocusDirectionToLayoutDirection$1 == -1 ? z ? findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1) : findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : z ? findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
            View childClosestToStart$1 = convertFocusDirectionToLayoutDirection$1 == -1 ? getChildClosestToStart$1() : getChildClosestToEnd$1();
            if (!childClosestToStart$1.hasFocusable()) {
                return findOnePartiallyOrCompletelyInvisibleChild;
            }
            if (findOnePartiallyOrCompletelyInvisibleChild != null) {
                return childClosestToStart$1;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false);
            accessibilityEvent.setFromIndex(findOneVisibleChild == null ? -1 : RecyclerView.LayoutManager.getPosition(findOneVisibleChild));
            View findOneVisibleChild2 = findOneVisibleChild(getChildCount() - 1, -1, false);
            accessibilityEvent.setToIndex(findOneVisibleChild2 != null ? RecyclerView.LayoutManager.getPosition(findOneVisibleChild2) : -1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
        RecyclerView.Adapter adapter = this.mRecyclerView.mAdapter;
        if (adapter == null || adapter.getItemCount() <= 0) {
            return;
        }
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_TO_POSITION);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View findReferenceChild;
        int i;
        int decoratedStart;
        int i2;
        int i3;
        int i4;
        ?? r5;
        int i5;
        int i6;
        int fixLayoutEndGap;
        int i7;
        View findViewByPosition;
        int decoratedStart2;
        int i8;
        int i9;
        int i10 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && (i9 = savedState.mAnchorPosition) >= 0) {
            this.mPendingScrollPosition = i9;
        }
        ensureLayoutState();
        boolean z = false;
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        AnchorInfo anchorInfo = this.mAnchorInfo;
        boolean z2 = true;
        if (!anchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            anchorInfo.reset();
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
            if (!state.mInPreLayout && (i = this.mPendingScrollPosition) != -1) {
                if (i < 0 || i >= state.getItemCount()) {
                    this.mPendingScrollPosition = -1;
                    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                } else {
                    int i11 = this.mPendingScrollPosition;
                    anchorInfo.mPosition = i11;
                    SavedState savedState2 = this.mPendingSavedState;
                    if (savedState2 != null && savedState2.mAnchorPosition >= 0) {
                        boolean z3 = savedState2.mAnchorLayoutFromEnd;
                        anchorInfo.mLayoutFromEnd = z3;
                        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
                        if (z3) {
                            anchorInfo.mCoordinate = roomOpenDelegate.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                        } else {
                            anchorInfo.mCoordinate = roomOpenDelegate.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
                        }
                    } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                        View findViewByPosition2 = findViewByPosition(i11);
                        if (findViewByPosition2 == null) {
                            if (getChildCount() > 0) {
                                anchorInfo.mLayoutFromEnd = (this.mPendingScrollPosition < RecyclerView.LayoutManager.getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                            }
                            anchorInfo.assignCoordinateFromPadding();
                        } else if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition2) > this.mOrientationHelper.getTotalSpace()) {
                            anchorInfo.assignCoordinateFromPadding();
                        } else {
                            int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(findViewByPosition2) - this.mOrientationHelper.getStartAfterPadding();
                            RoomOpenDelegate roomOpenDelegate2 = this.mOrientationHelper;
                            if (decoratedStart3 < 0) {
                                anchorInfo.mCoordinate = roomOpenDelegate2.getStartAfterPadding();
                                anchorInfo.mLayoutFromEnd = false;
                            } else if (roomOpenDelegate2.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition2) < 0) {
                                anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                                anchorInfo.mLayoutFromEnd = true;
                            } else {
                                boolean z4 = anchorInfo.mLayoutFromEnd;
                                RoomOpenDelegate roomOpenDelegate3 = this.mOrientationHelper;
                                if (z4) {
                                    int decoratedEnd = roomOpenDelegate3.getDecoratedEnd(findViewByPosition2);
                                    RoomOpenDelegate roomOpenDelegate4 = this.mOrientationHelper;
                                    decoratedStart = (Integer.MIN_VALUE == roomOpenDelegate4.version ? 0 : roomOpenDelegate4.getTotalSpace() - roomOpenDelegate4.version) + decoratedEnd;
                                } else {
                                    decoratedStart = roomOpenDelegate3.getDecoratedStart(findViewByPosition2);
                                }
                                anchorInfo.mCoordinate = decoratedStart;
                            }
                        }
                    } else {
                        boolean z5 = this.mShouldReverseLayout;
                        anchorInfo.mLayoutFromEnd = z5;
                        RoomOpenDelegate roomOpenDelegate5 = this.mOrientationHelper;
                        if (z5) {
                            anchorInfo.mCoordinate = roomOpenDelegate5.getEndAfterPadding() - this.mPendingScrollPositionOffset;
                        } else {
                            anchorInfo.mCoordinate = roomOpenDelegate5.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                        }
                    }
                    anchorInfo.mValid = true;
                }
            }
            if (getChildCount() != 0) {
                View focusedChild2 = getFocusedChild();
                if (focusedChild2 != null) {
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) focusedChild2.getLayoutParams();
                    if (!layoutParams.mViewHolder.isRemoved() && layoutParams.mViewHolder.getLayoutPosition() >= 0 && layoutParams.mViewHolder.getLayoutPosition() < state.getItemCount()) {
                        anchorInfo.assignFromViewAndKeepVisibleRect(RecyclerView.LayoutManager.getPosition(focusedChild2), focusedChild2);
                        anchorInfo.mValid = true;
                    }
                }
                boolean z6 = this.mLastStackFromEnd;
                boolean z7 = this.mStackFromEnd;
                if (z6 == z7 && (findReferenceChild = findReferenceChild(recycler, state, anchorInfo.mLayoutFromEnd, z7)) != null) {
                    int position = RecyclerView.LayoutManager.getPosition(findReferenceChild);
                    boolean z8 = anchorInfo.mLayoutFromEnd;
                    RoomOpenDelegate roomOpenDelegate6 = anchorInfo.mOrientationHelper;
                    if (z8) {
                        int decoratedEnd2 = roomOpenDelegate6.getDecoratedEnd(findReferenceChild);
                        RoomOpenDelegate roomOpenDelegate7 = anchorInfo.mOrientationHelper;
                        anchorInfo.mCoordinate = (Integer.MIN_VALUE == roomOpenDelegate7.version ? 0 : roomOpenDelegate7.getTotalSpace() - roomOpenDelegate7.version) + decoratedEnd2;
                    } else {
                        anchorInfo.mCoordinate = roomOpenDelegate6.getDecoratedStart(findReferenceChild);
                    }
                    anchorInfo.mPosition = position;
                    if (!state.mInPreLayout && supportsPredictiveItemAnimations()) {
                        int decoratedStart4 = this.mOrientationHelper.getDecoratedStart(findReferenceChild);
                        int decoratedEnd3 = this.mOrientationHelper.getDecoratedEnd(findReferenceChild);
                        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                        boolean z9 = decoratedEnd3 <= startAfterPadding && decoratedStart4 < startAfterPadding;
                        boolean z10 = decoratedStart4 >= endAfterPadding && decoratedEnd3 > endAfterPadding;
                        if (z9 || z10) {
                            if (anchorInfo.mLayoutFromEnd) {
                                startAfterPadding = endAfterPadding;
                            }
                            anchorInfo.mCoordinate = startAfterPadding;
                        }
                    }
                    anchorInfo.mValid = true;
                }
            }
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = this.mStackFromEnd ? state.getItemCount() - 1 : 0;
            anchorInfo.mValid = true;
        } else if (focusedChild != null && (this.mOrientationHelper.getDecoratedStart(focusedChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(focusedChild) <= this.mOrientationHelper.getStartAfterPadding())) {
            anchorInfo.assignFromViewAndKeepVisibleRect(RecyclerView.LayoutManager.getPosition(focusedChild), focusedChild);
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = layoutState.mLastScrollDelta >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        int totalSpace = state.mTargetPosition != -1 ? this.mOrientationHelper.getTotalSpace() : 0;
        if (this.mLayoutState.mLayoutDirection == -1) {
            i2 = 0;
        } else {
            i2 = totalSpace;
            totalSpace = 0;
        }
        iArr[0] = totalSpace;
        iArr[1] = i2;
        int startAfterPadding2 = this.mOrientationHelper.getStartAfterPadding() + Math.max(0, totalSpace);
        int endPadding = this.mOrientationHelper.getEndPadding() + Math.max(0, iArr[1]);
        if (state.mInPreLayout && (i7 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(i7)) != null) {
            boolean z11 = this.mShouldReverseLayout;
            RoomOpenDelegate roomOpenDelegate8 = this.mOrientationHelper;
            if (z11) {
                i8 = roomOpenDelegate8.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition);
                decoratedStart2 = this.mPendingScrollPositionOffset;
            } else {
                decoratedStart2 = roomOpenDelegate8.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                i8 = this.mPendingScrollPositionOffset;
            }
            int i12 = i8 - decoratedStart2;
            if (i12 > 0) {
                startAfterPadding2 += i12;
            } else {
                endPadding -= i12;
            }
        }
        boolean z12 = anchorInfo.mLayoutFromEnd;
        boolean z13 = this.mShouldReverseLayout;
        if (!z12 ? !z13 : z13) {
            i10 = 1;
        }
        onAnchorReady(recycler, state, anchorInfo, i10);
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.mInfinite = this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
        this.mLayoutState.getClass();
        this.mLayoutState.mNoRecycleSpace = 0;
        boolean z14 = anchorInfo.mLayoutFromEnd;
        int i13 = anchorInfo.mPosition;
        if (z14) {
            updateLayoutStateToFillStart(i13, anchorInfo.mCoordinate);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mExtraFillSpace = startAfterPadding2;
            fill(recycler, layoutState2, state, false);
            LayoutState layoutState3 = this.mLayoutState;
            i4 = layoutState3.mOffset;
            int i14 = layoutState3.mCurrentPosition;
            int i15 = layoutState3.mAvailable;
            if (i15 > 0) {
                endPadding += i15;
            }
            updateLayoutStateToFillEnd(anchorInfo.mPosition, anchorInfo.mCoordinate);
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mExtraFillSpace = endPadding;
            layoutState4.mCurrentPosition += layoutState4.mItemDirection;
            fill(recycler, layoutState4, state, false);
            LayoutState layoutState5 = this.mLayoutState;
            i3 = layoutState5.mOffset;
            int i16 = layoutState5.mAvailable;
            if (i16 > 0) {
                updateLayoutStateToFillStart(i14, i4);
                LayoutState layoutState6 = this.mLayoutState;
                layoutState6.mExtraFillSpace = i16;
                fill(recycler, layoutState6, state, false);
                i4 = this.mLayoutState.mOffset;
            }
        } else {
            updateLayoutStateToFillEnd(i13, anchorInfo.mCoordinate);
            LayoutState layoutState7 = this.mLayoutState;
            layoutState7.mExtraFillSpace = endPadding;
            fill(recycler, layoutState7, state, false);
            LayoutState layoutState8 = this.mLayoutState;
            i3 = layoutState8.mOffset;
            int i17 = layoutState8.mCurrentPosition;
            int i18 = layoutState8.mAvailable;
            if (i18 > 0) {
                startAfterPadding2 += i18;
            }
            updateLayoutStateToFillStart(anchorInfo.mPosition, anchorInfo.mCoordinate);
            LayoutState layoutState9 = this.mLayoutState;
            layoutState9.mExtraFillSpace = startAfterPadding2;
            layoutState9.mCurrentPosition += layoutState9.mItemDirection;
            fill(recycler, layoutState9, state, false);
            LayoutState layoutState10 = this.mLayoutState;
            int i19 = layoutState10.mOffset;
            int i20 = layoutState10.mAvailable;
            if (i20 > 0) {
                updateLayoutStateToFillEnd(i17, i3);
                LayoutState layoutState11 = this.mLayoutState;
                layoutState11.mExtraFillSpace = i20;
                fill(recycler, layoutState11, state, false);
                i3 = this.mLayoutState.mOffset;
            }
            i4 = i19;
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap2 = fixLayoutEndGap(i3, recycler, state, true);
                i5 = i4 + fixLayoutEndGap2;
                i6 = i3 + fixLayoutEndGap2;
                fixLayoutEndGap = fixLayoutStartGap(i5, recycler, state, false);
            } else {
                int fixLayoutStartGap = fixLayoutStartGap(i4, recycler, state, true);
                i5 = i4 + fixLayoutStartGap;
                i6 = i3 + fixLayoutStartGap;
                fixLayoutEndGap = fixLayoutEndGap(i6, recycler, state, false);
            }
            i4 = i5 + fixLayoutEndGap;
            i3 = i6 + fixLayoutEndGap;
        }
        if (state.mRunPredictiveAnimations && getChildCount() != 0 && !state.mInPreLayout && supportsPredictiveItemAnimations()) {
            List list = recycler.mUnmodifiableAttachedScrap;
            int size = list.size();
            int position2 = RecyclerView.LayoutManager.getPosition(getChildAt(0));
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            while (i21 < size) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) list.get(i21);
                if (!viewHolder.isRemoved()) {
                    boolean z15 = viewHolder.getLayoutPosition() < position2 ? z2 : z;
                    boolean z16 = this.mShouldReverseLayout;
                    RoomOpenDelegate roomOpenDelegate9 = this.mOrientationHelper;
                    View view = viewHolder.itemView;
                    if (z15 != z16) {
                        i22 += roomOpenDelegate9.getDecoratedMeasurement(view);
                    } else {
                        i23 += roomOpenDelegate9.getDecoratedMeasurement(view);
                    }
                }
                i21++;
                z = false;
                z2 = true;
            }
            this.mLayoutState.mScrapList = list;
            if (i22 > 0) {
                updateLayoutStateToFillStart(RecyclerView.LayoutManager.getPosition(getChildClosestToStart$1()), i4);
                LayoutState layoutState12 = this.mLayoutState;
                layoutState12.mExtraFillSpace = i22;
                r5 = 0;
                layoutState12.mAvailable = 0;
                layoutState12.assignPositionFromScrapList(null);
                fill(recycler, this.mLayoutState, state, false);
            } else {
                r5 = 0;
            }
            if (i23 > 0) {
                updateLayoutStateToFillEnd(RecyclerView.LayoutManager.getPosition(getChildClosestToEnd$1()), i3);
                LayoutState layoutState13 = this.mLayoutState;
                layoutState13.mExtraFillSpace = i23;
                layoutState13.mAvailable = r5;
                layoutState13.assignPositionFromScrapList(null);
                fill(recycler, this.mLayoutState, state, r5);
            }
            this.mLayoutState.mScrapList = null;
        }
        if (state.mInPreLayout) {
            anchorInfo.reset();
        } else {
            RoomOpenDelegate roomOpenDelegate10 = this.mOrientationHelper;
            roomOpenDelegate10.version = roomOpenDelegate10.getTotalSpace();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.reset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.mAnchorPosition = -1;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            SavedState savedState2 = new SavedState();
            savedState2.mAnchorPosition = savedState.mAnchorPosition;
            savedState2.mAnchorOffset = savedState.mAnchorOffset;
            savedState2.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            return savedState2;
        }
        SavedState savedState3 = new SavedState();
        if (getChildCount() <= 0) {
            savedState3.mAnchorPosition = -1;
            return savedState3;
        }
        ensureLayoutState();
        boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
        savedState3.mAnchorLayoutFromEnd = z;
        if (z) {
            View childClosestToEnd$1 = getChildClosestToEnd$1();
            savedState3.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd$1);
            savedState3.mAnchorPosition = RecyclerView.LayoutManager.getPosition(childClosestToEnd$1);
            return savedState3;
        }
        View childClosestToStart$1 = getChildClosestToStart$1();
        savedState3.mAnchorPosition = RecyclerView.LayoutManager.getPosition(childClosestToStart$1);
        savedState3.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart$1) - this.mOrientationHelper.getStartAfterPadding();
        return savedState3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        int min;
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (i == 16908343 && bundle != null) {
            if (this.mOrientation == 1) {
                int i2 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
                if (i2 < 0) {
                    return false;
                }
                RecyclerView recyclerView = this.mRecyclerView;
                min = Math.min(i2, getRowCountForAccessibility(recyclerView.mRecycler, recyclerView.mState) - 1);
            } else {
                int i3 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
                if (i3 < 0) {
                    return false;
                }
                RecyclerView recyclerView2 = this.mRecyclerView;
                min = Math.min(i3, getColumnCountForAccessibility(recyclerView2.mRecycler, recyclerView2.mState) - 1);
            }
            if (min >= 0) {
                scrollToPositionWithOffset(min, 0);
                return true;
            }
        }
        return false;
    }

    public final void recycleByLayoutState(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        int i = layoutState.mScrollingOffset;
        int i2 = layoutState.mNoRecycleSpace;
        if (layoutState.mLayoutDirection == -1) {
            int childCount = getChildCount();
            if (i < 0) {
                return;
            }
            int end = (this.mOrientationHelper.getEnd() - i) + i2;
            if (this.mShouldReverseLayout) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (this.mOrientationHelper.getDecoratedStart(childAt) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt) < end) {
                        recycleChildren(recycler, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = childCount - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View childAt2 = getChildAt(i5);
                if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                    recycleChildren(recycler, i4, i5);
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
                if (this.mOrientationHelper.getDecoratedEnd(childAt3) > i6 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt3) > i6) {
                    recycleChildren(recycler, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = childCount2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View childAt4 = getChildAt(i9);
            if (this.mOrientationHelper.getDecoratedEnd(childAt4) > i6 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt4) > i6) {
                recycleChildren(recycler, i8, i9);
                return;
            }
        }
    }

    public final void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                View childAt = getChildAt(i);
                removeViewAt(i);
                recycler.recycleView(childAt);
                i--;
            }
            return;
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            View childAt2 = getChildAt(i3);
            removeViewAt(i3);
            recycler.recycleView(childAt2);
        }
    }

    public final void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public final int scrollBy$1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() != 0 && i != 0) {
            ensureLayoutState();
            this.mLayoutState.mRecycle = true;
            int i2 = i > 0 ? 1 : -1;
            int abs = Math.abs(i);
            updateLayoutState(i2, abs, true, state);
            LayoutState layoutState = this.mLayoutState;
            int fill = fill(recycler, layoutState, state, false) + layoutState.mScrollingOffset;
            if (fill >= 0) {
                if (abs > fill) {
                    i = i2 * fill;
                }
                this.mOrientationHelper.offsetChildren(-i);
                this.mLayoutState.mLastScrollDelta = i;
                return i;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy$1(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.mAnchorPosition = -1;
        }
        requestLayout();
    }

    public final void scrollToPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.mAnchorPosition = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy$1(i, recycler, state);
    }

    public final void setOrientation(int i) {
        if (i != 0 && i != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "invalid orientation:"));
            return;
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.mOrientation || this.mOrientationHelper == null) {
            RoomOpenDelegate createOrientationHelper = RoomOpenDelegate.createOrientationHelper(this, i);
            this.mOrientationHelper = createOrientationHelper;
            this.mAnchorInfo.mOrientationHelper = createOrientationHelper;
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

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean shouldMeasureTwice() {
        if (this.mHeightMode != 1073741824 && this.mWidthMode != 1073741824) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.mTargetPosition = i;
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    public final void updateLayoutState(int i, int i2, boolean z, RecyclerView.State state) {
        int i3;
        int startAfterPadding;
        this.mLayoutState.mInfinite = this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
        this.mLayoutState.mLayoutDirection = i;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        int totalSpace = state.mTargetPosition != -1 ? this.mOrientationHelper.getTotalSpace() : 0;
        if (this.mLayoutState.mLayoutDirection == -1) {
            i3 = 0;
        } else {
            i3 = totalSpace;
            totalSpace = 0;
        }
        iArr[0] = totalSpace;
        iArr[1] = i3;
        int max = Math.max(0, totalSpace);
        int max2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        LayoutState layoutState = this.mLayoutState;
        int i4 = z2 ? max2 : max;
        layoutState.mExtraFillSpace = i4;
        if (!z2) {
            max = max2;
        }
        layoutState.mNoRecycleSpace = max;
        if (z2) {
            layoutState.mExtraFillSpace = this.mOrientationHelper.getEndPadding() + i4;
            View childClosestToEnd$1 = getChildClosestToEnd$1();
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            int position = RecyclerView.LayoutManager.getPosition(childClosestToEnd$1);
            LayoutState layoutState3 = this.mLayoutState;
            layoutState2.mCurrentPosition = position + layoutState3.mItemDirection;
            layoutState3.mOffset = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd$1);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd$1) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart$1 = getChildClosestToStart$1();
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mExtraFillSpace = this.mOrientationHelper.getStartAfterPadding() + layoutState4.mExtraFillSpace;
            LayoutState layoutState5 = this.mLayoutState;
            layoutState5.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            int position2 = RecyclerView.LayoutManager.getPosition(childClosestToStart$1);
            LayoutState layoutState6 = this.mLayoutState;
            layoutState5.mCurrentPosition = position2 + layoutState6.mItemDirection;
            layoutState6.mOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart$1);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart$1)) + this.mOrientationHelper.getStartAfterPadding();
        }
        LayoutState layoutState7 = this.mLayoutState;
        layoutState7.mAvailable = i2;
        if (z) {
            layoutState7.mAvailable = i2 - startAfterPadding;
        }
        layoutState7.mScrollingOffset = startAfterPadding;
    }

    public final void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - i2;
        LayoutState layoutState = this.mLayoutState;
        layoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        layoutState.mCurrentPosition = i;
        layoutState.mLayoutDirection = 1;
        layoutState.mOffset = i2;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    public final void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.mAvailable = i2 - this.mOrientationHelper.getStartAfterPadding();
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = i;
        layoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        layoutState.mLayoutDirection = -1;
        layoutState.mOffset = i2;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
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

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i) {
    }
}
