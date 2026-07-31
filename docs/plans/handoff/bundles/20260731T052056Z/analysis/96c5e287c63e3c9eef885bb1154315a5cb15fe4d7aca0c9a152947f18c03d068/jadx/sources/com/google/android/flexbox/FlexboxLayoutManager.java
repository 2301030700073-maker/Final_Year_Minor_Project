package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.animation.core.Animation;
import androidx.fragment.app.FragmentState;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider;
import androidx.room.RoomOpenDelegate;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements FlexContainer, RecyclerView$SmoothScroller$ScrollVectorProvider {
    public static final Rect TEMP_RECT = new Rect();
    public int mAlignItems;
    public final Context mContext;
    public int mFlexDirection;
    public int mFlexWrap;
    public boolean mFromBottomToTop;
    public boolean mIsRtl;
    public int mJustifyContent;
    public LayoutState mLayoutState;
    public RoomOpenDelegate mOrientationHelper;
    public View mParent;
    public SavedState mPendingSavedState;
    public RecyclerView.Recycler mRecycler;
    public RecyclerView.State mState;
    public RoomOpenDelegate mSubOrientationHelper;
    public final int mMaxLine = -1;
    public List mFlexLines = new ArrayList();
    public final Request.Builder mFlexboxHelper = new Request.Builder(this);
    public final AnchorInfo mAnchorInfo = new AnchorInfo();
    public int mPendingScrollPosition = -1;
    public int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    public int mLastWidth = Integer.MIN_VALUE;
    public int mLastHeight = Integer.MIN_VALUE;
    public final SparseArray mViewCache = new SparseArray();
    public int mDirtyPosition = -1;
    public final FlexboxHelper$FlexLinesResult mFlexLinesResult = new FlexboxHelper$FlexLinesResult();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AnchorInfo {
        public boolean mAssignedFromSavedState;
        public int mCoordinate;
        public int mFlexLinePosition;
        public boolean mLayoutFromEnd;
        public int mPerpendicularCoordinate = 0;
        public int mPosition;
        public boolean mValid;

        public AnchorInfo() {
        }

        public final void assignCoordinateFromPadding() {
            FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
            if (!flexboxLayoutManager.isMainAxisDirectionHorizontal() && flexboxLayoutManager.mIsRtl) {
                this.mCoordinate = this.mLayoutFromEnd ? flexboxLayoutManager.mOrientationHelper.getEndAfterPadding() : flexboxLayoutManager.mWidth - flexboxLayoutManager.mOrientationHelper.getStartAfterPadding();
                return;
            }
            boolean z = this.mLayoutFromEnd;
            RoomOpenDelegate roomOpenDelegate = flexboxLayoutManager.mOrientationHelper;
            this.mCoordinate = z ? roomOpenDelegate.getEndAfterPadding() : roomOpenDelegate.getStartAfterPadding();
        }

        public final void reset() {
            this.mPosition = -1;
            this.mFlexLinePosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            this.mValid = false;
            this.mAssignedFromSavedState = false;
            FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
            boolean isMainAxisDirectionHorizontal = flexboxLayoutManager.isMainAxisDirectionHorizontal();
            int i = flexboxLayoutManager.mFlexWrap;
            if (isMainAxisDirectionHorizontal) {
                if (i == 0) {
                    this.mLayoutFromEnd = flexboxLayoutManager.mFlexDirection == 1;
                    return;
                } else {
                    this.mLayoutFromEnd = i == 2;
                    return;
                }
            }
            if (i == 0) {
                this.mLayoutFromEnd = flexboxLayoutManager.mFlexDirection == 3;
            } else {
                this.mLayoutFromEnd = i == 2;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AnchorInfo{mPosition=");
            sb.append(this.mPosition);
            sb.append(", mFlexLinePosition=");
            sb.append(this.mFlexLinePosition);
            sb.append(", mCoordinate=");
            sb.append(this.mCoordinate);
            sb.append(", mPerpendicularCoordinate=");
            sb.append(this.mPerpendicularCoordinate);
            sb.append(", mLayoutFromEnd=");
            sb.append(this.mLayoutFromEnd);
            sb.append(", mValid=");
            sb.append(this.mValid);
            sb.append(", mAssignedFromSavedState=");
            return Animation.CC.m(sb, this.mAssignedFromSavedState, '}');
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new FragmentState.AnonymousClass1(23);
        public int mAlignSelf;
        public float mFlexBasisPercent;
        public float mFlexGrow;
        public float mFlexShrink;
        public int mMaxHeight;
        public int mMaxWidth;
        public int mMinHeight;
        public int mMinWidth;
        public boolean mWrapBefore;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getMinHeight() {
            return this.mMinHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getMinWidth() {
            return this.mMinWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getOrder() {
            return 1;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final void setMinHeight(int i) {
            this.mMinHeight = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final void setMinWidth(int i) {
            this.mMinWidth = i;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LayoutState {
        public int mAvailable;
        public int mFlexLinePosition;
        public boolean mInfinite;
        public int mLastScrollDelta;
        public int mLayoutDirection;
        public int mOffset;
        public int mPosition;
        public int mScrollingOffset;
        public boolean mShouldRecycle;

        public final String toString() {
            StringBuilder sb = new StringBuilder("LayoutState{mAvailable=");
            sb.append(this.mAvailable);
            sb.append(", mFlexLinePosition=");
            sb.append(this.mFlexLinePosition);
            sb.append(", mPosition=");
            sb.append(this.mPosition);
            sb.append(", mOffset=");
            sb.append(this.mOffset);
            sb.append(", mScrollingOffset=");
            sb.append(this.mScrollingOffset);
            sb.append(", mLastScrollDelta=");
            sb.append(this.mLastScrollDelta);
            sb.append(", mItemDirection=1, mLayoutDirection=");
            return Animation.CC.m(sb, this.mLayoutDirection, '}');
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(24);
        public int mAnchorOffset;
        public int mAnchorPosition;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SavedState{mAnchorPosition=");
            sb.append(this.mAnchorPosition);
            sb.append(", mAnchorOffset=");
            return Animation.CC.m(sb, this.mAnchorOffset, '}');
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        int i3 = properties.orientation;
        if (i3 != 0) {
            if (i3 == 1) {
                if (properties.reverseLayout) {
                    setFlexDirection(3);
                } else {
                    setFlexDirection(2);
                }
            }
        } else if (properties.reverseLayout) {
            setFlexDirection(1);
        } else {
            setFlexDirection(0);
        }
        setFlexWrap(1);
        setAlignItems(4);
        this.mContext = context;
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

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        if (this.mFlexWrap == 0) {
            return isMainAxisDirectionHorizontal();
        }
        if (!isMainAxisDirectionHorizontal()) {
            return true;
        }
        int i = this.mWidth;
        View view = this.mParent;
        return i > (view != null ? view.getWidth() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        if (this.mFlexWrap == 0) {
            return !isMainAxisDirectionHorizontal();
        }
        if (!isMainAxisDirectionHorizontal()) {
            int i = this.mHeight;
            View view = this.mParent;
            if (i <= (view != null ? view.getHeight() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent$2(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset$2(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange$2(state);
    }

    public final int computeScrollExtent$2(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        ensureOrientationHelper();
        View findFirstReferenceChild = findFirstReferenceChild(itemCount);
        View findLastReferenceChild = findLastReferenceChild(itemCount);
        if (state.getItemCount() == 0 || findFirstReferenceChild == null || findLastReferenceChild == null) {
            return 0;
        }
        return Math.min(this.mOrientationHelper.getTotalSpace(), this.mOrientationHelper.getDecoratedEnd(findLastReferenceChild) - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild));
    }

    public final int computeScrollOffset$2(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View findFirstReferenceChild = findFirstReferenceChild(itemCount);
        View findLastReferenceChild = findLastReferenceChild(itemCount);
        if (state.getItemCount() == 0 || findFirstReferenceChild == null || findLastReferenceChild == null) {
            return 0;
        }
        int position = RecyclerView.LayoutManager.getPosition(findFirstReferenceChild);
        int position2 = RecyclerView.LayoutManager.getPosition(findLastReferenceChild);
        int abs = Math.abs(this.mOrientationHelper.getDecoratedEnd(findLastReferenceChild) - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild));
        int i = ((int[]) this.mFlexboxHelper.headers)[position];
        if (i == 0 || i == -1) {
            return 0;
        }
        return Math.round((i * (abs / ((r3[position2] - i) + 1))) + (this.mOrientationHelper.getStartAfterPadding() - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild)));
    }

    public final int computeScrollRange$2(RecyclerView.State state) {
        if (getChildCount() != 0) {
            int itemCount = state.getItemCount();
            View findFirstReferenceChild = findFirstReferenceChild(itemCount);
            View findLastReferenceChild = findLastReferenceChild(itemCount);
            if (state.getItemCount() != 0 && findFirstReferenceChild != null && findLastReferenceChild != null) {
                View findOneVisibleChild = findOneVisibleChild(0, getChildCount());
                int position = findOneVisibleChild == null ? -1 : RecyclerView.LayoutManager.getPosition(findOneVisibleChild);
                return (int) ((Math.abs(this.mOrientationHelper.getDecoratedEnd(findLastReferenceChild) - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild)) / (((findOneVisibleChild(getChildCount() - 1, -1) != null ? RecyclerView.LayoutManager.getPosition(r4) : -1) - position) + 1)) * state.getItemCount());
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i2 = i < RecyclerView.LayoutManager.getPosition(childAt) ? -1 : 1;
        return isMainAxisDirectionHorizontal() ? new PointF(RecyclerView.DECELERATION_RATE, i2) : new PointF(i2, RecyclerView.DECELERATION_RATE);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent$2(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset$2(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange$2(state);
    }

    public final void ensureOrientationHelper() {
        if (this.mOrientationHelper != null) {
            return;
        }
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i = this.mFlexWrap;
        if (isMainAxisDirectionHorizontal) {
            if (i == 0) {
                this.mOrientationHelper = new OrientationHelper$1(this, 0);
                this.mSubOrientationHelper = new OrientationHelper$1(this, 1);
                return;
            } else {
                this.mOrientationHelper = new OrientationHelper$1(this, 1);
                this.mSubOrientationHelper = new OrientationHelper$1(this, 0);
                return;
            }
        }
        if (i == 0) {
            this.mOrientationHelper = new OrientationHelper$1(this, 1);
            this.mSubOrientationHelper = new OrientationHelper$1(this, 0);
        } else {
            this.mOrientationHelper = new OrientationHelper$1(this, 0);
            this.mSubOrientationHelper = new OrientationHelper$1(this, 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0463, code lost:
    
        r3 = r34.mAvailable - r8;
        r34.mAvailable = r3;
        r4 = r34.mScrollingOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x046c, code lost:
    
        if (r4 == Integer.MIN_VALUE) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x046e, code lost:
    
        r4 = r4 + r8;
        r34.mScrollingOffset = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0471, code lost:
    
        if (r3 >= 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0473, code lost:
    
        r34.mScrollingOffset = r4 + r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0476, code lost:
    
        recycleByLayoutState(r32, r34);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x047d, code lost:
    
        return r26 - r34.mAvailable;
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int fill(androidx.recyclerview.widget.RecyclerView.Recycler r32, androidx.recyclerview.widget.RecyclerView.State r33, com.google.android.flexbox.FlexboxLayoutManager.LayoutState r34) {
        /*
            Method dump skipped, instructions count: 1150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.fill(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, com.google.android.flexbox.FlexboxLayoutManager$LayoutState):int");
    }

    public final View findFirstReferenceChild(int i) {
        View findReferenceChild = findReferenceChild(0, getChildCount(), i);
        if (findReferenceChild == null) {
            return null;
        }
        int i2 = ((int[]) this.mFlexboxHelper.headers)[RecyclerView.LayoutManager.getPosition(findReferenceChild)];
        if (i2 == -1) {
            return null;
        }
        return findFirstReferenceViewInLine(findReferenceChild, (FlexLine) this.mFlexLines.get(i2));
    }

    public final View findFirstReferenceViewInLine(View view, FlexLine flexLine) {
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i = flexLine.mItemCount;
        for (int i2 = 1; i2 < i; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.mIsRtl || isMainAxisDirectionHorizontal) {
                    if (this.mOrientationHelper.getDecoratedStart(view) <= this.mOrientationHelper.getDecoratedStart(childAt)) {
                    }
                    view = childAt;
                } else {
                    if (this.mOrientationHelper.getDecoratedEnd(view) >= this.mOrientationHelper.getDecoratedEnd(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View findLastReferenceChild(int i) {
        View findReferenceChild = findReferenceChild(getChildCount() - 1, -1, i);
        if (findReferenceChild == null) {
            return null;
        }
        return findLastReferenceViewInLine(findReferenceChild, (FlexLine) this.mFlexLines.get(((int[]) this.mFlexboxHelper.headers)[RecyclerView.LayoutManager.getPosition(findReferenceChild)]));
    }

    public final View findLastReferenceViewInLine(View view, FlexLine flexLine) {
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int childCount = (getChildCount() - flexLine.mItemCount) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.mIsRtl || isMainAxisDirectionHorizontal) {
                    if (this.mOrientationHelper.getDecoratedEnd(view) >= this.mOrientationHelper.getDecoratedEnd(childAt)) {
                    }
                    view = childAt;
                } else {
                    if (this.mOrientationHelper.getDecoratedStart(view) <= this.mOrientationHelper.getDecoratedStart(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View findOneVisibleChild(int i, int i2) {
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View childAt = getChildAt(i);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int paddingRight = this.mWidth - getPaddingRight();
            int paddingBottom = this.mHeight - getPaddingBottom();
            int decoratedLeft = RecyclerView.LayoutManager.getDecoratedLeft(childAt) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).leftMargin;
            int decoratedTop = RecyclerView.LayoutManager.getDecoratedTop(childAt) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).topMargin;
            int decoratedRight = RecyclerView.LayoutManager.getDecoratedRight(childAt) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).rightMargin;
            int decoratedBottom = RecyclerView.LayoutManager.getDecoratedBottom(childAt) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
            boolean z = decoratedLeft >= paddingRight || decoratedRight >= paddingLeft;
            boolean z2 = decoratedTop >= paddingBottom || decoratedBottom >= paddingTop;
            if (z && z2) {
                return childAt;
            }
            i += i3;
        }
        return null;
    }

    public final View findReferenceChild(int i, int i2, int i3) {
        int position;
        ensureOrientationHelper();
        if (this.mLayoutState == null) {
            LayoutState layoutState = new LayoutState();
            layoutState.mLayoutDirection = 1;
            this.mLayoutState = layoutState;
        }
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        int i4 = i2 <= i ? -1 : 1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            if (childAt != null && (position = RecyclerView.LayoutManager.getPosition(childAt)) >= 0 && position < i3) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).mViewHolder.isRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.getDecoratedStart(childAt) >= startAfterPadding && this.mOrientationHelper.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    public final int fixLayoutEndGap$1(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i2;
        int endAfterPadding;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            i2 = -handleScrollingMainOrientation(-endAfterPadding2, recycler, state);
        } else {
            int startAfterPadding = i - this.mOrientationHelper.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i2 = handleScrollingMainOrientation(startAfterPadding, recycler, state);
        }
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    public final int fixLayoutStartGap$1(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i2;
        int startAfterPadding;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            i2 = -handleScrollingMainOrientation(startAfterPadding2, recycler, state);
        } else {
            int endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i;
            if (endAfterPadding <= 0) {
                return 0;
            }
            i2 = handleScrollingMainOrientation(-endAfterPadding, recycler, state);
        }
        int i3 = i + i2;
        if (!z || (startAfterPadding = i3 - this.mOrientationHelper.getStartAfterPadding()) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(-startAfterPadding);
        return i2 - startAfterPadding;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.mFlexGrow = RecyclerView.DECELERATION_RATE;
        layoutParams.mFlexShrink = 1.0f;
        layoutParams.mAlignSelf = -1;
        layoutParams.mFlexBasisPercent = -1.0f;
        layoutParams.mMaxWidth = 16777215;
        layoutParams.mMaxHeight = 16777215;
        return layoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        layoutParams.mFlexGrow = RecyclerView.DECELERATION_RATE;
        layoutParams.mFlexShrink = 1.0f;
        layoutParams.mAlignSelf = -1;
        layoutParams.mFlexBasisPercent = -1.0f;
        layoutParams.mMaxWidth = 16777215;
        layoutParams.mMaxHeight = 16777215;
        return layoutParams;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getAlignContent() {
        return 5;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getAlignItems() {
        return this.mAlignItems;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(canScrollVertically(), this.mHeight, this.mHeightMode, i2, i3);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(canScrollHorizontally(), this.mWidth, this.mWidthMode, i2, i3);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getDecorationLengthCrossAxis(View view) {
        int i;
        int i2;
        if (isMainAxisDirectionHorizontal()) {
            i = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.top;
            i2 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
        } else {
            i = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.left;
            i2 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.right;
        }
        return i + i2;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getDecorationLengthMainAxis(View view, int i, int i2) {
        int i3;
        int i4;
        if (isMainAxisDirectionHorizontal()) {
            i3 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.left;
            i4 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.right;
        } else {
            i3 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.top;
            i4 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
        }
        return i3 + i4;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getFlexDirection() {
        return this.mFlexDirection;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final View getFlexItemAt(int i) {
        View view = (View) this.mViewCache.get(i);
        return view != null ? view : this.mRecycler.getViewForPosition(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getFlexItemCount() {
        return this.mState.getItemCount();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final List getFlexLinesInternal() {
        return this.mFlexLines;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getFlexWrap() {
        return this.mFlexWrap;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getLargestMainSize() {
        if (this.mFlexLines.size() == 0) {
            return 0;
        }
        int size = this.mFlexLines.size();
        int i = Integer.MIN_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            i = Math.max(i, ((FlexLine) this.mFlexLines.get(i2)).mMainSize);
        }
        return i;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getMaxLine() {
        return this.mMaxLine;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final View getReorderedFlexItemAt(int i) {
        return getFlexItemAt(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final int getSumOfCrossSize() {
        int size = this.mFlexLines.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((FlexLine) this.mFlexLines.get(i2)).mCrossSize;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int handleScrollingMainOrientation(int r20, androidx.recyclerview.widget.RecyclerView.Recycler r21, androidx.recyclerview.widget.RecyclerView.State r22) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.handleScrollingMainOrientation(int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):int");
    }

    public final int handleScrollingSubOrientation(int i) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureOrientationHelper();
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        View view = this.mParent;
        int width = isMainAxisDirectionHorizontal ? view.getWidth() : view.getHeight();
        int i2 = isMainAxisDirectionHorizontal ? this.mWidth : this.mHeight;
        int layoutDirection = this.mRecyclerView.getLayoutDirection();
        AnchorInfo anchorInfo = this.mAnchorInfo;
        if (layoutDirection == 1) {
            int abs = Math.abs(i);
            if (i < 0) {
                return -Math.min((i2 + anchorInfo.mPerpendicularCoordinate) - width, abs);
            }
            int i3 = anchorInfo.mPerpendicularCoordinate;
            if (i3 + i > 0) {
                return -i3;
            }
        } else {
            if (i > 0) {
                return Math.min((i2 - anchorInfo.mPerpendicularCoordinate) - width, i);
            }
            int i4 = anchorInfo.mPerpendicularCoordinate;
            if (i4 + i < 0) {
                return -i4;
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final boolean isMainAxisDirectionHorizontal() {
        int i = this.mFlexDirection;
        return i == 0 || i == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAdapterChanged() {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        this.mParent = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(int i, int i2) {
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsMoved(int i, int i2) {
        updateDirtyPosition(Math.min(i, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(int i, int i2) {
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        updateDirtyPosition(i);
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        View childAt;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        int i4;
        int i5;
        this.mRecycler = recycler;
        this.mState = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.mInPreLayout) {
            return;
        }
        int layoutDirection = this.mRecyclerView.getLayoutDirection();
        int i6 = this.mFlexDirection;
        if (i6 == 0) {
            this.mIsRtl = layoutDirection == 1;
            this.mFromBottomToTop = this.mFlexWrap == 2;
        } else if (i6 == 1) {
            this.mIsRtl = layoutDirection != 1;
            this.mFromBottomToTop = this.mFlexWrap == 2;
        } else if (i6 == 2) {
            boolean z3 = layoutDirection == 1;
            this.mIsRtl = z3;
            if (this.mFlexWrap == 2) {
                this.mIsRtl = !z3;
            }
            this.mFromBottomToTop = false;
        } else if (i6 != 3) {
            this.mIsRtl = false;
            this.mFromBottomToTop = false;
        } else {
            boolean z4 = layoutDirection == 1;
            this.mIsRtl = z4;
            if (this.mFlexWrap == 2) {
                this.mIsRtl = !z4;
            }
            this.mFromBottomToTop = true;
        }
        ensureOrientationHelper();
        if (this.mLayoutState == null) {
            LayoutState layoutState = new LayoutState();
            layoutState.mLayoutDirection = 1;
            this.mLayoutState = layoutState;
        }
        Request.Builder builder = this.mFlexboxHelper;
        builder.ensureMeasureSpecCache(itemCount);
        builder.ensureMeasuredSizeCache(itemCount);
        builder.ensureIndexToFlexLine(itemCount);
        this.mLayoutState.mShouldRecycle = false;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && (i5 = savedState.mAnchorPosition) >= 0 && i5 < itemCount) {
            this.mPendingScrollPosition = i5;
        }
        AnchorInfo anchorInfo = this.mAnchorInfo;
        if (!anchorInfo.mValid || this.mPendingScrollPosition != -1 || savedState != null) {
            anchorInfo.reset();
            SavedState savedState2 = this.mPendingSavedState;
            if (!state.mInPreLayout && (i = this.mPendingScrollPosition) != -1) {
                if (i < 0 || i >= state.getItemCount()) {
                    this.mPendingScrollPosition = -1;
                    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                } else {
                    int i7 = this.mPendingScrollPosition;
                    anchorInfo.mPosition = i7;
                    anchorInfo.mFlexLinePosition = ((int[]) builder.headers)[i7];
                    SavedState savedState3 = this.mPendingSavedState;
                    if (savedState3 != null) {
                        int itemCount2 = state.getItemCount();
                        int i8 = savedState3.mAnchorPosition;
                        if (i8 >= 0 && i8 < itemCount2) {
                            anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + savedState2.mAnchorOffset;
                            anchorInfo.mAssignedFromSavedState = true;
                            anchorInfo.mFlexLinePosition = -1;
                            anchorInfo.mValid = true;
                        }
                    }
                    if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                        View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                        if (findViewByPosition == null) {
                            if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                                anchorInfo.mLayoutFromEnd = this.mPendingScrollPosition < RecyclerView.LayoutManager.getPosition(childAt);
                            }
                            anchorInfo.assignCoordinateFromPadding();
                        } else if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                            anchorInfo.assignCoordinateFromPadding();
                        } else {
                            int decoratedStart = this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                            RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
                            if (decoratedStart < 0) {
                                anchorInfo.mCoordinate = roomOpenDelegate.getStartAfterPadding();
                                anchorInfo.mLayoutFromEnd = false;
                            } else if (roomOpenDelegate.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition) < 0) {
                                anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                                anchorInfo.mLayoutFromEnd = true;
                            } else {
                                boolean z5 = anchorInfo.mLayoutFromEnd;
                                RoomOpenDelegate roomOpenDelegate2 = this.mOrientationHelper;
                                anchorInfo.mCoordinate = z5 ? this.mOrientationHelper.getTotalSpaceChange() + roomOpenDelegate2.getDecoratedEnd(findViewByPosition) : roomOpenDelegate2.getDecoratedStart(findViewByPosition);
                            }
                        }
                    } else if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
                        anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                    } else {
                        anchorInfo.mCoordinate = this.mPendingScrollPositionOffset - this.mOrientationHelper.getEndPadding();
                    }
                    anchorInfo.mValid = true;
                }
            }
            if (getChildCount() != 0) {
                View findLastReferenceChild = anchorInfo.mLayoutFromEnd ? findLastReferenceChild(state.getItemCount()) : findFirstReferenceChild(state.getItemCount());
                if (findLastReferenceChild != null) {
                    FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
                    RoomOpenDelegate roomOpenDelegate3 = flexboxLayoutManager.mFlexWrap == 0 ? flexboxLayoutManager.mSubOrientationHelper : flexboxLayoutManager.mOrientationHelper;
                    if (flexboxLayoutManager.isMainAxisDirectionHorizontal() || !flexboxLayoutManager.mIsRtl) {
                        if (anchorInfo.mLayoutFromEnd) {
                            anchorInfo.mCoordinate = roomOpenDelegate3.getTotalSpaceChange() + roomOpenDelegate3.getDecoratedEnd(findLastReferenceChild);
                        } else {
                            anchorInfo.mCoordinate = roomOpenDelegate3.getDecoratedStart(findLastReferenceChild);
                        }
                    } else if (anchorInfo.mLayoutFromEnd) {
                        anchorInfo.mCoordinate = roomOpenDelegate3.getTotalSpaceChange() + roomOpenDelegate3.getDecoratedStart(findLastReferenceChild);
                    } else {
                        anchorInfo.mCoordinate = roomOpenDelegate3.getDecoratedEnd(findLastReferenceChild);
                    }
                    int position = RecyclerView.LayoutManager.getPosition(findLastReferenceChild);
                    anchorInfo.mPosition = position;
                    anchorInfo.mAssignedFromSavedState = false;
                    int[] iArr = (int[]) flexboxLayoutManager.mFlexboxHelper.headers;
                    if (position == -1) {
                        position = 0;
                    }
                    int i9 = iArr[position];
                    if (i9 == -1) {
                        i9 = 0;
                    }
                    anchorInfo.mFlexLinePosition = i9;
                    int size = flexboxLayoutManager.mFlexLines.size();
                    int i10 = anchorInfo.mFlexLinePosition;
                    if (size > i10) {
                        anchorInfo.mPosition = ((FlexLine) flexboxLayoutManager.mFlexLines.get(i10)).mFirstIndex;
                    }
                    anchorInfo.mValid = true;
                }
            }
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = 0;
            anchorInfo.mFlexLinePosition = 0;
            anchorInfo.mValid = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (anchorInfo.mLayoutFromEnd) {
            updateLayoutStateToFillStart(anchorInfo, false, true);
        } else {
            updateLayoutStateToFillEnd(anchorInfo, false, true);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mWidth, this.mWidthMode);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.mHeight, this.mHeightMode);
        int i11 = this.mWidth;
        int i12 = this.mHeight;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        Context context = this.mContext;
        if (isMainAxisDirectionHorizontal) {
            int i13 = this.mLastWidth;
            z = (i13 == Integer.MIN_VALUE || i13 == i11) ? false : true;
            LayoutState layoutState2 = this.mLayoutState;
            i2 = layoutState2.mInfinite ? context.getResources().getDisplayMetrics().heightPixels : layoutState2.mAvailable;
        } else {
            int i14 = this.mLastHeight;
            z = (i14 == Integer.MIN_VALUE || i14 == i12) ? false : true;
            LayoutState layoutState3 = this.mLayoutState;
            i2 = layoutState3.mInfinite ? context.getResources().getDisplayMetrics().widthPixels : layoutState3.mAvailable;
        }
        int i15 = i2;
        this.mLastWidth = i11;
        this.mLastHeight = i12;
        int i16 = this.mDirtyPosition;
        FlexboxHelper$FlexLinesResult flexboxHelper$FlexLinesResult = this.mFlexLinesResult;
        if (i16 != -1 || (this.mPendingScrollPosition == -1 && !z)) {
            int i17 = anchorInfo.mPosition;
            if (i16 != -1) {
                i17 = Math.min(i16, i17);
            }
            flexboxHelper$FlexLinesResult.mFlexLines = null;
            flexboxHelper$FlexLinesResult.mChildState = 0;
            boolean isMainAxisDirectionHorizontal2 = isMainAxisDirectionHorizontal();
            List list = this.mFlexLines;
            if (isMainAxisDirectionHorizontal2) {
                if (list.size() > 0) {
                    builder.clearFlexLines(this.mFlexLines, i17);
                    this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i15, i17, anchorInfo.mPosition, this.mFlexLines);
                } else {
                    builder.ensureIndexToFlexLine(itemCount);
                    this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i15, 0, -1, this.mFlexLines);
                }
            } else if (list.size() > 0) {
                builder.clearFlexLines(this.mFlexLines, i17);
                int i18 = i17;
                this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec2, makeMeasureSpec, i15, i18, anchorInfo.mPosition, this.mFlexLines);
                makeMeasureSpec2 = makeMeasureSpec2;
                makeMeasureSpec = makeMeasureSpec;
                i17 = i18;
            } else {
                builder.ensureIndexToFlexLine(itemCount);
                this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec2, makeMeasureSpec, i15, 0, -1, this.mFlexLines);
                makeMeasureSpec2 = makeMeasureSpec2;
                makeMeasureSpec = makeMeasureSpec;
            }
            this.mFlexLines = flexboxHelper$FlexLinesResult.mFlexLines;
            builder.determineMainSize(makeMeasureSpec, makeMeasureSpec2, i17);
            builder.stretchViews(i17);
        } else if (!anchorInfo.mLayoutFromEnd) {
            this.mFlexLines.clear();
            flexboxHelper$FlexLinesResult.mFlexLines = null;
            flexboxHelper$FlexLinesResult.mChildState = 0;
            boolean isMainAxisDirectionHorizontal3 = isMainAxisDirectionHorizontal();
            int i19 = anchorInfo.mPosition;
            Request.Builder builder2 = this.mFlexboxHelper;
            FlexboxHelper$FlexLinesResult flexboxHelper$FlexLinesResult2 = this.mFlexLinesResult;
            if (isMainAxisDirectionHorizontal3) {
                builder2.calculateFlexLines(flexboxHelper$FlexLinesResult2, makeMeasureSpec, makeMeasureSpec2, i15, 0, i19, this.mFlexLines);
            } else {
                builder2.calculateFlexLines(flexboxHelper$FlexLinesResult2, makeMeasureSpec2, makeMeasureSpec, i15, 0, i19, this.mFlexLines);
                makeMeasureSpec2 = makeMeasureSpec2;
                makeMeasureSpec = makeMeasureSpec;
            }
            this.mFlexLines = flexboxHelper$FlexLinesResult.mFlexLines;
            builder.determineMainSize(makeMeasureSpec, makeMeasureSpec2, 0);
            builder.stretchViews(0);
            int i20 = ((int[]) builder.headers)[anchorInfo.mPosition];
            anchorInfo.mFlexLinePosition = i20;
            this.mLayoutState.mFlexLinePosition = i20;
        }
        fill(recycler, state, this.mLayoutState);
        boolean z6 = anchorInfo.mLayoutFromEnd;
        LayoutState layoutState4 = this.mLayoutState;
        if (z6) {
            i4 = layoutState4.mOffset;
            z2 = true;
            updateLayoutStateToFillEnd(anchorInfo, true, false);
            fill(recycler, state, this.mLayoutState);
            i3 = this.mLayoutState.mOffset;
        } else {
            z2 = true;
            i3 = layoutState4.mOffset;
            updateLayoutStateToFillStart(anchorInfo, true, false);
            fill(recycler, state, this.mLayoutState);
            i4 = this.mLayoutState.mOffset;
        }
        if (getChildCount() > 0) {
            if (anchorInfo.mLayoutFromEnd) {
                fixLayoutStartGap$1(fixLayoutEndGap$1(i3, recycler, state, z2) + i4, recycler, state, false);
            } else {
                fixLayoutEndGap$1(fixLayoutStartGap$1(i4, recycler, state, z2) + i3, recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mDirtyPosition = -1;
        this.mAnchorInfo.reset();
        this.mViewCache.clear();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final void onNewFlexItemAdded(View view, int i, int i2, FlexLine flexLine) {
        calculateItemDecorationsForChild(view, TEMP_RECT);
        if (isMainAxisDirectionHorizontal()) {
            int i3 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.left + ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.right;
            flexLine.mMainSize += i3;
            flexLine.mDividerLengthInMainSize += i3;
        } else {
            int i4 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.top + ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
            flexLine.mMainSize += i4;
            flexLine.mDividerLengthInMainSize += i4;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
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
            return savedState2;
        }
        SavedState savedState3 = new SavedState();
        if (getChildCount() <= 0) {
            savedState3.mAnchorPosition = -1;
            return savedState3;
        }
        View childAt = getChildAt(0);
        savedState3.mAnchorPosition = RecyclerView.LayoutManager.getPosition(childAt);
        savedState3.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childAt) - this.mOrientationHelper.getStartAfterPadding();
        return savedState3;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0114 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void recycleByLayoutState(androidx.recyclerview.widget.RecyclerView.Recycler r10, com.google.android.flexbox.FlexboxLayoutManager.LayoutState r11) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.recycleByLayoutState(androidx.recyclerview.widget.RecyclerView$Recycler, com.google.android.flexbox.FlexboxLayoutManager$LayoutState):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!isMainAxisDirectionHorizontal() || this.mFlexWrap == 0) {
            int handleScrollingMainOrientation = handleScrollingMainOrientation(i, recycler, state);
            this.mViewCache.clear();
            return handleScrollingMainOrientation;
        }
        int handleScrollingSubOrientation = handleScrollingSubOrientation(i);
        this.mAnchorInfo.mPerpendicularCoordinate += handleScrollingSubOrientation;
        this.mSubOrientationHelper.offsetChildren(-handleScrollingSubOrientation);
        return handleScrollingSubOrientation;
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

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (isMainAxisDirectionHorizontal() || (this.mFlexWrap == 0 && !isMainAxisDirectionHorizontal())) {
            int handleScrollingMainOrientation = handleScrollingMainOrientation(i, recycler, state);
            this.mViewCache.clear();
            return handleScrollingMainOrientation;
        }
        int handleScrollingSubOrientation = handleScrollingSubOrientation(i);
        this.mAnchorInfo.mPerpendicularCoordinate += handleScrollingSubOrientation;
        this.mSubOrientationHelper.offsetChildren(-handleScrollingSubOrientation);
        return handleScrollingSubOrientation;
    }

    public final void setAlignItems(int i) {
        int i2 = this.mAlignItems;
        if (i2 != i) {
            if (i2 == 4 || i == 4) {
                removeAllViews();
                this.mFlexLines.clear();
                AnchorInfo anchorInfo = this.mAnchorInfo;
                anchorInfo.reset();
                anchorInfo.mPerpendicularCoordinate = 0;
            }
            this.mAlignItems = i;
            requestLayout();
        }
    }

    public final void setFlexDirection(int i) {
        if (this.mFlexDirection != i) {
            removeAllViews();
            this.mFlexDirection = i;
            this.mOrientationHelper = null;
            this.mSubOrientationHelper = null;
            this.mFlexLines.clear();
            AnchorInfo anchorInfo = this.mAnchorInfo;
            anchorInfo.reset();
            anchorInfo.mPerpendicularCoordinate = 0;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final void setFlexLines(List list) {
        this.mFlexLines = list;
    }

    public final void setFlexWrap(int i) {
        int i2 = this.mFlexWrap;
        if (i2 != 1) {
            if (i2 == 0) {
                removeAllViews();
                this.mFlexLines.clear();
                AnchorInfo anchorInfo = this.mAnchorInfo;
                anchorInfo.reset();
                anchorInfo.mPerpendicularCoordinate = 0;
            }
            this.mFlexWrap = 1;
            this.mOrientationHelper = null;
            this.mSubOrientationHelper = null;
            requestLayout();
        }
    }

    public final boolean shouldMeasureChild(View view, int i, int i2, LayoutParams layoutParams) {
        return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.mTargetPosition = i;
        startSmoothScroll(linearSmoothScroller);
    }

    public final void updateDirtyPosition(int i) {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1);
        if (i >= (findOneVisibleChild != null ? RecyclerView.LayoutManager.getPosition(findOneVisibleChild) : -1)) {
            return;
        }
        int childCount = getChildCount();
        Request.Builder builder = this.mFlexboxHelper;
        builder.ensureMeasureSpecCache(childCount);
        builder.ensureMeasuredSizeCache(childCount);
        builder.ensureIndexToFlexLine(childCount);
        if (i >= ((int[]) builder.headers).length) {
            return;
        }
        this.mDirtyPosition = i;
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        this.mPendingScrollPosition = RecyclerView.LayoutManager.getPosition(childAt);
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            this.mPendingScrollPositionOffset = this.mOrientationHelper.getDecoratedStart(childAt) - this.mOrientationHelper.getStartAfterPadding();
        } else {
            this.mPendingScrollPositionOffset = this.mOrientationHelper.getEndPadding() + this.mOrientationHelper.getDecoratedEnd(childAt);
        }
    }

    public final void updateLayoutStateToFillEnd(AnchorInfo anchorInfo, boolean z, boolean z2) {
        int i;
        if (z2) {
            int i2 = isMainAxisDirectionHorizontal() ? this.mHeightMode : this.mWidthMode;
            this.mLayoutState.mInfinite = i2 == 0 || i2 == Integer.MIN_VALUE;
        } else {
            this.mLayoutState.mInfinite = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - anchorInfo.mCoordinate;
        } else {
            this.mLayoutState.mAvailable = anchorInfo.mCoordinate - getPaddingRight();
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.mPosition = anchorInfo.mPosition;
        layoutState.mLayoutDirection = 1;
        layoutState.mOffset = anchorInfo.mCoordinate;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
        layoutState.mFlexLinePosition = anchorInfo.mFlexLinePosition;
        if (!z || this.mFlexLines.size() <= 1 || (i = anchorInfo.mFlexLinePosition) < 0 || i >= this.mFlexLines.size() - 1) {
            return;
        }
        FlexLine flexLine = (FlexLine) this.mFlexLines.get(anchorInfo.mFlexLinePosition);
        LayoutState layoutState2 = this.mLayoutState;
        layoutState2.mFlexLinePosition++;
        layoutState2.mPosition += flexLine.mItemCount;
    }

    public final void updateLayoutStateToFillStart(AnchorInfo anchorInfo, boolean z, boolean z2) {
        if (z2) {
            int i = isMainAxisDirectionHorizontal() ? this.mHeightMode : this.mWidthMode;
            this.mLayoutState.mInfinite = i == 0 || i == Integer.MIN_VALUE;
        } else {
            this.mLayoutState.mInfinite = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            this.mLayoutState.mAvailable = anchorInfo.mCoordinate - this.mOrientationHelper.getStartAfterPadding();
        } else {
            this.mLayoutState.mAvailable = (this.mParent.getWidth() - anchorInfo.mCoordinate) - this.mOrientationHelper.getStartAfterPadding();
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.mPosition = anchorInfo.mPosition;
        layoutState.mLayoutDirection = -1;
        layoutState.mOffset = anchorInfo.mCoordinate;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
        int i2 = anchorInfo.mFlexLinePosition;
        layoutState.mFlexLinePosition = i2;
        if (!z || i2 <= 0) {
            return;
        }
        int size = this.mFlexLines.size();
        int i3 = anchorInfo.mFlexLinePosition;
        if (size > i3) {
            FlexLine flexLine = (FlexLine) this.mFlexLines.get(i3);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mFlexLinePosition--;
            layoutState2.mPosition -= flexLine.mItemCount;
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final void updateViewCache(View view, int i) {
        this.mViewCache.put(i, view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(int i) {
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    @Override // com.google.android.flexbox.FlexContainer
    public final void onNewFlexLineAdded(FlexLine flexLine) {
    }

    public FlexboxLayoutManager(Context context) {
        setFlexDirection(0);
        setFlexWrap(1);
        setAlignItems(4);
        this.mContext = context;
    }
}
