package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.CircularArray;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.fragment.app.FragmentState;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.List;
import org.apache.james.mime4j.stream.MimeTokenStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView$SmoothScroller$ScrollVectorProvider {
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnchorInfo {
        public final /* synthetic */ int $r8$classId;
        public int mCoordinate;
        public boolean mLayoutFromEnd;
        public RoomOpenDelegate mOrientationHelper;
        public int mPosition;
        public boolean mValid;

        public AnchorInfo(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 1:
                    break;
                default:
                    reset();
                    break;
            }
        }

        public final void assignCoordinateFromPadding() {
            switch (this.$r8$classId) {
                case 0:
                    boolean z = this.mLayoutFromEnd;
                    RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
                    this.mCoordinate = z ? roomOpenDelegate.getEndAfterPadding() : roomOpenDelegate.getStartAfterPadding();
                    break;
                default:
                    boolean z2 = this.mLayoutFromEnd;
                    RoomOpenDelegate roomOpenDelegate2 = this.mOrientationHelper;
                    this.mCoordinate = z2 ? roomOpenDelegate2.getEndAfterPadding() : roomOpenDelegate2.getStartAfterPadding();
                    break;
            }
        }

        public final void assignFromViewAndKeepVisibleRect(View view, int i) {
            switch (this.$r8$classId) {
                case 0:
                    int totalSpaceChange = this.mOrientationHelper.getTotalSpaceChange();
                    if (totalSpaceChange < 0) {
                        this.mPosition = i;
                        boolean z = this.mLayoutFromEnd;
                        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
                        if (!z) {
                            int decoratedStart = roomOpenDelegate.getDecoratedStart(view);
                            int startAfterPadding = decoratedStart - this.mOrientationHelper.getStartAfterPadding();
                            this.mCoordinate = decoratedStart;
                            if (startAfterPadding > 0) {
                                int endAfterPadding = (this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view))) - (this.mOrientationHelper.getDecoratedMeasurement(view) + decoratedStart);
                                if (endAfterPadding < 0) {
                                    this.mCoordinate -= Math.min(startAfterPadding, -endAfterPadding);
                                    break;
                                }
                            }
                        } else {
                            int endAfterPadding2 = (roomOpenDelegate.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view);
                            this.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - endAfterPadding2;
                            if (endAfterPadding2 > 0) {
                                int decoratedMeasurement = this.mCoordinate - this.mOrientationHelper.getDecoratedMeasurement(view);
                                int startAfterPadding2 = this.mOrientationHelper.getStartAfterPadding();
                                int min = decoratedMeasurement - (Math.min(this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding2, 0) + startAfterPadding2);
                                if (min < 0) {
                                    this.mCoordinate = Math.min(endAfterPadding2, -min) + this.mCoordinate;
                                    break;
                                }
                            }
                        }
                    } else {
                        boolean z2 = this.mLayoutFromEnd;
                        RoomOpenDelegate roomOpenDelegate2 = this.mOrientationHelper;
                        if (z2) {
                            this.mCoordinate = this.mOrientationHelper.getTotalSpaceChange() + roomOpenDelegate2.getDecoratedEnd(view);
                        } else {
                            this.mCoordinate = roomOpenDelegate2.getDecoratedStart(view);
                        }
                        this.mPosition = i;
                        break;
                    }
                    break;
                default:
                    int totalSpaceChange2 = this.mOrientationHelper.getTotalSpaceChange();
                    if (totalSpaceChange2 < 0) {
                        this.mPosition = i;
                        boolean z3 = this.mLayoutFromEnd;
                        RoomOpenDelegate roomOpenDelegate3 = this.mOrientationHelper;
                        if (!z3) {
                            int decoratedStart2 = roomOpenDelegate3.getDecoratedStart(view);
                            int startAfterPadding3 = decoratedStart2 - this.mOrientationHelper.getStartAfterPadding();
                            this.mCoordinate = decoratedStart2;
                            if (startAfterPadding3 > 0) {
                                int endAfterPadding3 = (this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange2) - this.mOrientationHelper.getDecoratedEnd(view))) - (this.mOrientationHelper.getDecoratedMeasurement(view) + decoratedStart2);
                                if (endAfterPadding3 < 0) {
                                    this.mCoordinate -= Math.min(startAfterPadding3, -endAfterPadding3);
                                    break;
                                }
                            }
                        } else {
                            int endAfterPadding4 = (roomOpenDelegate3.getEndAfterPadding() - totalSpaceChange2) - this.mOrientationHelper.getDecoratedEnd(view);
                            this.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - endAfterPadding4;
                            if (endAfterPadding4 > 0) {
                                int decoratedMeasurement2 = this.mCoordinate - this.mOrientationHelper.getDecoratedMeasurement(view);
                                int startAfterPadding4 = this.mOrientationHelper.getStartAfterPadding();
                                int min2 = decoratedMeasurement2 - (Math.min(this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding4, 0) + startAfterPadding4);
                                if (min2 < 0) {
                                    this.mCoordinate = Math.min(endAfterPadding4, -min2) + this.mCoordinate;
                                    break;
                                }
                            }
                        }
                    } else {
                        boolean z4 = this.mLayoutFromEnd;
                        RoomOpenDelegate roomOpenDelegate4 = this.mOrientationHelper;
                        if (z4) {
                            this.mCoordinate = this.mOrientationHelper.getTotalSpaceChange() + roomOpenDelegate4.getDecoratedEnd(view);
                        } else {
                            this.mCoordinate = roomOpenDelegate4.getDecoratedStart(view);
                        }
                        this.mPosition = i;
                        break;
                    }
                    break;
            }
        }

        public final void reset() {
            switch (this.$r8$classId) {
                case 0:
                    this.mPosition = -1;
                    this.mCoordinate = Integer.MIN_VALUE;
                    this.mLayoutFromEnd = false;
                    this.mValid = false;
                    break;
                default:
                    this.mPosition = -1;
                    this.mCoordinate = Integer.MIN_VALUE;
                    this.mLayoutFromEnd = false;
                    this.mValid = false;
                    break;
            }
        }

        public final String toString() {
            switch (this.$r8$classId) {
                case 0:
                    StringBuilder sb = new StringBuilder("AnchorInfo{mPosition=");
                    sb.append(this.mPosition);
                    sb.append(", mCoordinate=");
                    sb.append(this.mCoordinate);
                    sb.append(", mLayoutFromEnd=");
                    sb.append(this.mLayoutFromEnd);
                    sb.append(", mValid=");
                    return CameraDevices$CC.m(sb, this.mValid, '}');
                default:
                    StringBuilder sb2 = new StringBuilder("AnchorInfo{mPosition=");
                    sb2.append(this.mPosition);
                    sb2.append(", mCoordinate=");
                    sb2.append(this.mCoordinate);
                    sb2.append(", mLayoutFromEnd=");
                    sb2.append(this.mLayoutFromEnd);
                    sb2.append(", mValid=");
                    return CameraDevices$CC.m(sb2, this.mValid, '}');
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LayoutState {
        public final /* synthetic */ int $r8$classId;
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

        public /* synthetic */ LayoutState(int i) {
            this.$r8$classId = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x009c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void assignPositionFromScrapList(android.view.View r9) {
            /*
                r8 = this;
                int r0 = r8.$r8$classId
                r1 = -1
                r2 = 0
                r3 = 2147483647(0x7fffffff, float:NaN)
                r4 = 0
                switch(r0) {
                    case 0: goto L5b;
                    default: goto Lb;
                }
            Lb:
                java.util.List r0 = r8.mScrapList
                int r0 = r0.size()
            L11:
                if (r2 >= r0) goto L47
                java.util.List r5 = r8.mScrapList
                java.lang.Object r5 = r5.get(r2)
                androidx.recyclerview.widget.RecyclerView$ViewHolder r5 = (androidx.recyclerview.widget.RecyclerView.ViewHolder) r5
                android.view.View r5 = r5.itemView
                android.view.ViewGroup$LayoutParams r6 = r5.getLayoutParams()
                androidx.recyclerview.widget.RecyclerView$LayoutParams r6 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) r6
                if (r5 == r9) goto L44
                androidx.recyclerview.widget.RecyclerView$ViewHolder r7 = r6.mViewHolder
                boolean r7 = r7.isRemoved()
                if (r7 == 0) goto L2e
                goto L44
            L2e:
                androidx.recyclerview.widget.RecyclerView$ViewHolder r6 = r6.mViewHolder
                int r6 = r6.getLayoutPosition()
                int r7 = r8.mCurrentPosition
                int r6 = r6 - r7
                int r7 = r8.mItemDirection
                int r6 = r6 * r7
                if (r6 >= 0) goto L3d
                goto L44
            L3d:
                if (r6 >= r3) goto L44
                r4 = r5
                if (r6 != 0) goto L43
                goto L47
            L43:
                r3 = r6
            L44:
                int r2 = r2 + 1
                goto L11
            L47:
                if (r4 != 0) goto L4c
                r8.mCurrentPosition = r1
                goto L5a
            L4c:
                android.view.ViewGroup$LayoutParams r9 = r4.getLayoutParams()
                androidx.recyclerview.widget.RecyclerView$LayoutParams r9 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) r9
                androidx.recyclerview.widget.RecyclerView$ViewHolder r9 = r9.mViewHolder
                int r9 = r9.getLayoutPosition()
                r8.mCurrentPosition = r9
            L5a:
                return
            L5b:
                java.util.List r0 = r8.mScrapList
                int r0 = r0.size()
            L61:
                if (r2 >= r0) goto L97
                java.util.List r5 = r8.mScrapList
                java.lang.Object r5 = r5.get(r2)
                androidx.recyclerview.widget.RecyclerView$ViewHolder r5 = (androidx.recyclerview.widget.RecyclerView.ViewHolder) r5
                android.view.View r5 = r5.itemView
                android.view.ViewGroup$LayoutParams r6 = r5.getLayoutParams()
                androidx.recyclerview.widget.RecyclerView$LayoutParams r6 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) r6
                if (r5 == r9) goto L94
                androidx.recyclerview.widget.RecyclerView$ViewHolder r7 = r6.mViewHolder
                boolean r7 = r7.isRemoved()
                if (r7 == 0) goto L7e
                goto L94
            L7e:
                androidx.recyclerview.widget.RecyclerView$ViewHolder r6 = r6.mViewHolder
                int r6 = r6.getLayoutPosition()
                int r7 = r8.mCurrentPosition
                int r6 = r6 - r7
                int r7 = r8.mItemDirection
                int r6 = r6 * r7
                if (r6 >= 0) goto L8d
                goto L94
            L8d:
                if (r6 >= r3) goto L94
                r4 = r5
                if (r6 != 0) goto L93
                goto L97
            L93:
                r3 = r6
            L94:
                int r2 = r2 + 1
                goto L61
            L97:
                if (r4 != 0) goto L9c
                r8.mCurrentPosition = r1
                goto Laa
            L9c:
                android.view.ViewGroup$LayoutParams r9 = r4.getLayoutParams()
                androidx.recyclerview.widget.RecyclerView$LayoutParams r9 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) r9
                androidx.recyclerview.widget.RecyclerView$ViewHolder r9 = r9.mViewHolder
                int r9 = r9.getLayoutPosition()
                r8.mCurrentPosition = r9
            Laa:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.LayoutState.assignPositionFromScrapList(android.view.View):void");
        }

        public View next(MimeTokenStream mimeTokenStream) {
            List list = this.mScrapList;
            if (list == null) {
                View viewForPosition = mimeTokenStream.getViewForPosition(this.mCurrentPosition);
                this.mCurrentPosition += this.mItemDirection;
                return viewForPosition;
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = ((RecyclerView.ViewHolder) this.mScrapList.get(i)).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.mViewHolder.isRemoved() && this.mCurrentPosition == layoutParams.mViewHolder.getLayoutPosition()) {
                    assignPositionFromScrapList(view);
                    return view;
                }
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(16);
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
        this.mAnchorInfo = new AnchorInfo(0);
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

    public void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
        int i;
        int totalSpace = state.mTargetPosition != -1 ? this.mOrientationHelper.getTotalSpace() : 0;
        if (this.mLayoutState.mLayoutDirection == -1) {
            i = 0;
        } else {
            i = totalSpace;
            totalSpace = 0;
        }
        iArr[0] = totalSpace;
        iArr[1] = i;
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
    public final void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, CircularArray circularArray) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, state);
        collectPrefetchPositionsForLayoutState(state, this.mLayoutState, circularArray);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectInitialPrefetchPositions(int i, CircularArray circularArray) {
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
            circularArray.addPosition(i2, 0);
            i2 += i3;
        }
    }

    public void collectPrefetchPositionsForLayoutState(RecyclerView.State state, LayoutState layoutState, CircularArray circularArray) {
        int i = layoutState.mCurrentPosition;
        if (i < 0 || i >= state.getItemCount()) {
            return;
        }
        circularArray.addPosition(i, Math.max(0, layoutState.mScrollingOffset));
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
            LayoutState layoutState = new LayoutState(0);
            layoutState.mRecycle = true;
            layoutState.mExtraFillSpace = 0;
            layoutState.mNoRecycleSpace = 0;
            layoutState.mScrapList = null;
            this.mLayoutState = layoutState;
        }
    }

    public final int fill(MimeTokenStream mimeTokenStream, LayoutState layoutState, RecyclerView.State state, boolean z) {
        int i;
        int i2 = layoutState.mAvailable;
        int i3 = layoutState.mScrollingOffset;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                layoutState.mScrollingOffset = i3 + i2;
            }
            recycleByLayoutState(mimeTokenStream, layoutState);
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
            layoutChunk(mimeTokenStream, state, layoutState, layoutChunkResult);
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
                    recycleByLayoutState(mimeTokenStream, layoutState);
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
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z, true) : findOneVisibleChild(getChildCount() - 1, -1, z, true);
    }

    public final View findFirstVisibleChildClosestToStart(boolean z) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z, true) : findOneVisibleChild(0, getChildCount(), z, true);
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

    public final View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        ensureLayoutState();
        int i3 = z ? 24579 : 320;
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, 320) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, 320);
    }

    public View findReferenceChild(MimeTokenStream mimeTokenStream, RecyclerView.State state, boolean z, boolean z2) {
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

    public final int fixLayoutEndGap(int i, MimeTokenStream mimeTokenStream, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy$1(-endAfterPadding2, state, mimeTokenStream);
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    public final int fixLayoutStartGap(int i, MimeTokenStream mimeTokenStream, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy$1(startAfterPadding2, state, mimeTokenStream);
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

    public void layoutChunk(MimeTokenStream mimeTokenStream, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int i4;
        View next = layoutState.next(mimeTokenStream);
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
                addView(next);
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
        measureChildWithMargins(next);
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
            int i6 = layoutState.mLayoutDirection;
            i3 = layoutState.mOffset;
            int i7 = layoutChunkResult.mConsumed;
            if (i6 == -1) {
                int i8 = i3 - i7;
                i = i3;
                i3 = i8;
            } else {
                i = i7 + i3;
            }
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingTop;
            int i9 = layoutState.mLayoutDirection;
            int i10 = layoutState.mOffset;
            int i11 = layoutChunkResult.mConsumed;
            if (i9 == -1) {
                int i12 = i10 - i11;
                i4 = i10;
                i3 = paddingTop;
                i = decoratedMeasurementInOther;
                i2 = i12;
            } else {
                int i13 = i10 + i11;
                i = decoratedMeasurementInOther;
                i2 = i10;
                i3 = paddingTop;
                i4 = i13;
            }
        }
        RecyclerView.LayoutManager.layoutDecoratedWithMargins(next, i2, i3, i4, i);
        if (layoutParams.mViewHolder.isRemoved() || layoutParams.mViewHolder.isUpdated()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = next.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i, MimeTokenStream mimeTokenStream, RecyclerView.State state) {
        int convertFocusDirectionToLayoutDirection$1;
        resolveShouldLayoutReverse();
        if (getChildCount() != 0 && (convertFocusDirectionToLayoutDirection$1 = convertFocusDirectionToLayoutDirection$1(i)) != Integer.MIN_VALUE) {
            ensureLayoutState();
            updateLayoutState(convertFocusDirectionToLayoutDirection$1, (int) (this.mOrientationHelper.getTotalSpace() * 0.33333334f), false, state);
            LayoutState layoutState = this.mLayoutState;
            layoutState.mScrollingOffset = Integer.MIN_VALUE;
            layoutState.mRecycle = false;
            fill(mimeTokenStream, layoutState, state, true);
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
            View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
            accessibilityEvent.setFromIndex(findOneVisibleChild == null ? -1 : RecyclerView.LayoutManager.getPosition(findOneVisibleChild));
            View findOneVisibleChild2 = findOneVisibleChild(getChildCount() - 1, -1, false, true);
            accessibilityEvent.setToIndex(findOneVisibleChild2 != null ? RecyclerView.LayoutManager.getPosition(findOneVisibleChild2) : -1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfo(MimeTokenStream mimeTokenStream, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(mimeTokenStream, state, accessibilityNodeInfoCompat);
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
    public void onLayoutChildren(MimeTokenStream mimeTokenStream, RecyclerView.State state) {
        View findReferenceChild;
        int i;
        int i2;
        int i3;
        ?? r5;
        int i4;
        int i5;
        int fixLayoutEndGap;
        int i6;
        View findViewByPosition;
        int decoratedStart;
        int i7;
        int i8;
        int i9 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(mimeTokenStream);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && (i8 = savedState.mAnchorPosition) >= 0) {
            this.mPendingScrollPosition = i8;
        }
        ensureLayoutState();
        boolean z = false;
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        AnchorInfo anchorInfo = this.mAnchorInfo;
        if (!anchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            anchorInfo.reset();
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
            if (!state.mInPreLayout && (i = this.mPendingScrollPosition) != -1) {
                if (i < 0 || i >= state.getItemCount()) {
                    this.mPendingScrollPosition = -1;
                    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                } else {
                    int i10 = this.mPendingScrollPosition;
                    anchorInfo.mPosition = i10;
                    SavedState savedState2 = this.mPendingSavedState;
                    if (savedState2 != null && savedState2.mAnchorPosition >= 0) {
                        boolean z2 = savedState2.mAnchorLayoutFromEnd;
                        anchorInfo.mLayoutFromEnd = z2;
                        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
                        if (z2) {
                            anchorInfo.mCoordinate = roomOpenDelegate.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                        } else {
                            anchorInfo.mCoordinate = roomOpenDelegate.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
                        }
                    } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                        View findViewByPosition2 = findViewByPosition(i10);
                        if (findViewByPosition2 == null) {
                            if (getChildCount() > 0) {
                                anchorInfo.mLayoutFromEnd = (this.mPendingScrollPosition < RecyclerView.LayoutManager.getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                            }
                            anchorInfo.assignCoordinateFromPadding();
                        } else if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition2) > this.mOrientationHelper.getTotalSpace()) {
                            anchorInfo.assignCoordinateFromPadding();
                        } else {
                            int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(findViewByPosition2) - this.mOrientationHelper.getStartAfterPadding();
                            RoomOpenDelegate roomOpenDelegate2 = this.mOrientationHelper;
                            if (decoratedStart2 < 0) {
                                anchorInfo.mCoordinate = roomOpenDelegate2.getStartAfterPadding();
                                anchorInfo.mLayoutFromEnd = false;
                            } else if (roomOpenDelegate2.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition2) < 0) {
                                anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                                anchorInfo.mLayoutFromEnd = true;
                            } else {
                                boolean z3 = anchorInfo.mLayoutFromEnd;
                                RoomOpenDelegate roomOpenDelegate3 = this.mOrientationHelper;
                                anchorInfo.mCoordinate = z3 ? this.mOrientationHelper.getTotalSpaceChange() + roomOpenDelegate3.getDecoratedEnd(findViewByPosition2) : roomOpenDelegate3.getDecoratedStart(findViewByPosition2);
                            }
                        }
                    } else {
                        boolean z4 = this.mShouldReverseLayout;
                        anchorInfo.mLayoutFromEnd = z4;
                        RoomOpenDelegate roomOpenDelegate4 = this.mOrientationHelper;
                        if (z4) {
                            anchorInfo.mCoordinate = roomOpenDelegate4.getEndAfterPadding() - this.mPendingScrollPositionOffset;
                        } else {
                            anchorInfo.mCoordinate = roomOpenDelegate4.getStartAfterPadding() + this.mPendingScrollPositionOffset;
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
                        anchorInfo.assignFromViewAndKeepVisibleRect(focusedChild2, RecyclerView.LayoutManager.getPosition(focusedChild2));
                        anchorInfo.mValid = true;
                    }
                }
                boolean z5 = this.mLastStackFromEnd;
                boolean z6 = this.mStackFromEnd;
                if (z5 == z6 && (findReferenceChild = findReferenceChild(mimeTokenStream, state, anchorInfo.mLayoutFromEnd, z6)) != null) {
                    int position = RecyclerView.LayoutManager.getPosition(findReferenceChild);
                    boolean z7 = anchorInfo.mLayoutFromEnd;
                    RoomOpenDelegate roomOpenDelegate5 = anchorInfo.mOrientationHelper;
                    if (z7) {
                        anchorInfo.mCoordinate = anchorInfo.mOrientationHelper.getTotalSpaceChange() + roomOpenDelegate5.getDecoratedEnd(findReferenceChild);
                    } else {
                        anchorInfo.mCoordinate = roomOpenDelegate5.getDecoratedStart(findReferenceChild);
                    }
                    anchorInfo.mPosition = position;
                    if (!state.mInPreLayout && supportsPredictiveItemAnimations()) {
                        int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(findReferenceChild);
                        int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(findReferenceChild);
                        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                        boolean z8 = decoratedEnd <= startAfterPadding && decoratedStart3 < startAfterPadding;
                        boolean z9 = decoratedStart3 >= endAfterPadding && decoratedEnd > endAfterPadding;
                        if (z8 || z9) {
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
            anchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, RecyclerView.LayoutManager.getPosition(focusedChild));
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = layoutState.mLastScrollDelta >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int startAfterPadding2 = this.mOrientationHelper.getStartAfterPadding() + Math.max(0, iArr[0]);
        int endPadding = this.mOrientationHelper.getEndPadding() + Math.max(0, iArr[1]);
        if (state.mInPreLayout && (i6 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(i6)) != null) {
            boolean z10 = this.mShouldReverseLayout;
            RoomOpenDelegate roomOpenDelegate6 = this.mOrientationHelper;
            if (z10) {
                i7 = roomOpenDelegate6.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition);
                decoratedStart = this.mPendingScrollPositionOffset;
            } else {
                decoratedStart = roomOpenDelegate6.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                i7 = this.mPendingScrollPositionOffset;
            }
            int i11 = i7 - decoratedStart;
            if (i11 > 0) {
                startAfterPadding2 += i11;
            } else {
                endPadding -= i11;
            }
        }
        boolean z11 = anchorInfo.mLayoutFromEnd;
        boolean z12 = this.mShouldReverseLayout;
        if (!z11 ? !z12 : z12) {
            i9 = 1;
        }
        onAnchorReady(mimeTokenStream, state, anchorInfo, i9);
        detachAndScrapAttachedViews(mimeTokenStream);
        this.mLayoutState.mInfinite = this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
        this.mLayoutState.getClass();
        this.mLayoutState.mNoRecycleSpace = 0;
        boolean z13 = anchorInfo.mLayoutFromEnd;
        int i12 = anchorInfo.mPosition;
        if (z13) {
            updateLayoutStateToFillStart(i12, anchorInfo.mCoordinate);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mExtraFillSpace = startAfterPadding2;
            fill(mimeTokenStream, layoutState2, state, false);
            LayoutState layoutState3 = this.mLayoutState;
            i3 = layoutState3.mOffset;
            int i13 = layoutState3.mCurrentPosition;
            int i14 = layoutState3.mAvailable;
            if (i14 > 0) {
                endPadding += i14;
            }
            updateLayoutStateToFillEnd(anchorInfo.mPosition, anchorInfo.mCoordinate);
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mExtraFillSpace = endPadding;
            layoutState4.mCurrentPosition += layoutState4.mItemDirection;
            fill(mimeTokenStream, layoutState4, state, false);
            LayoutState layoutState5 = this.mLayoutState;
            i2 = layoutState5.mOffset;
            int i15 = layoutState5.mAvailable;
            if (i15 > 0) {
                updateLayoutStateToFillStart(i13, i3);
                LayoutState layoutState6 = this.mLayoutState;
                layoutState6.mExtraFillSpace = i15;
                fill(mimeTokenStream, layoutState6, state, false);
                i3 = this.mLayoutState.mOffset;
            }
        } else {
            updateLayoutStateToFillEnd(i12, anchorInfo.mCoordinate);
            LayoutState layoutState7 = this.mLayoutState;
            layoutState7.mExtraFillSpace = endPadding;
            fill(mimeTokenStream, layoutState7, state, false);
            LayoutState layoutState8 = this.mLayoutState;
            i2 = layoutState8.mOffset;
            int i16 = layoutState8.mCurrentPosition;
            int i17 = layoutState8.mAvailable;
            if (i17 > 0) {
                startAfterPadding2 += i17;
            }
            updateLayoutStateToFillStart(anchorInfo.mPosition, anchorInfo.mCoordinate);
            LayoutState layoutState9 = this.mLayoutState;
            layoutState9.mExtraFillSpace = startAfterPadding2;
            layoutState9.mCurrentPosition += layoutState9.mItemDirection;
            fill(mimeTokenStream, layoutState9, state, false);
            LayoutState layoutState10 = this.mLayoutState;
            int i18 = layoutState10.mOffset;
            int i19 = layoutState10.mAvailable;
            if (i19 > 0) {
                updateLayoutStateToFillEnd(i16, i2);
                LayoutState layoutState11 = this.mLayoutState;
                layoutState11.mExtraFillSpace = i19;
                fill(mimeTokenStream, layoutState11, state, false);
                i2 = this.mLayoutState.mOffset;
            }
            i3 = i18;
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap2 = fixLayoutEndGap(i2, mimeTokenStream, state, true);
                i4 = i3 + fixLayoutEndGap2;
                i5 = i2 + fixLayoutEndGap2;
                fixLayoutEndGap = fixLayoutStartGap(i4, mimeTokenStream, state, false);
            } else {
                int fixLayoutStartGap = fixLayoutStartGap(i3, mimeTokenStream, state, true);
                i4 = i3 + fixLayoutStartGap;
                i5 = i2 + fixLayoutStartGap;
                fixLayoutEndGap = fixLayoutEndGap(i5, mimeTokenStream, state, false);
            }
            i3 = i4 + fixLayoutEndGap;
            i2 = i5 + fixLayoutEndGap;
        }
        if (state.mRunPredictiveAnimations && getChildCount() != 0 && !state.mInPreLayout && supportsPredictiveItemAnimations()) {
            List list = (List) mimeTokenStream.bodyDescBuilder;
            int size = list.size();
            int position2 = RecyclerView.LayoutManager.getPosition(getChildAt(0));
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            while (i20 < size) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) list.get(i20);
                boolean isRemoved = viewHolder.isRemoved();
                View view = viewHolder.itemView;
                if (!isRemoved) {
                    boolean z14 = viewHolder.getLayoutPosition() < position2 ? true : z;
                    boolean z15 = this.mShouldReverseLayout;
                    RoomOpenDelegate roomOpenDelegate7 = this.mOrientationHelper;
                    if (z14 != z15) {
                        i21 += roomOpenDelegate7.getDecoratedMeasurement(view);
                    } else {
                        i22 += roomOpenDelegate7.getDecoratedMeasurement(view);
                    }
                }
                i20++;
                z = false;
            }
            this.mLayoutState.mScrapList = list;
            if (i21 > 0) {
                updateLayoutStateToFillStart(RecyclerView.LayoutManager.getPosition(getChildClosestToStart$1()), i3);
                LayoutState layoutState12 = this.mLayoutState;
                layoutState12.mExtraFillSpace = i21;
                r5 = 0;
                layoutState12.mAvailable = 0;
                layoutState12.assignPositionFromScrapList(null);
                fill(mimeTokenStream, this.mLayoutState, state, false);
            } else {
                r5 = 0;
            }
            if (i22 > 0) {
                updateLayoutStateToFillEnd(RecyclerView.LayoutManager.getPosition(getChildClosestToEnd$1()), i2);
                LayoutState layoutState13 = this.mLayoutState;
                layoutState13.mExtraFillSpace = i22;
                layoutState13.mAvailable = r5;
                layoutState13.assignPositionFromScrapList(null);
                fill(mimeTokenStream, this.mLayoutState, state, r5);
            }
            this.mLayoutState.mScrapList = null;
        }
        if (state.mInPreLayout) {
            anchorInfo.reset();
        } else {
            RoomOpenDelegate roomOpenDelegate8 = this.mOrientationHelper;
            roomOpenDelegate8.version = roomOpenDelegate8.getTotalSpace();
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

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public final void prepareForDrop(View view, View view2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = RecyclerView.LayoutManager.getPosition(view);
        int position2 = RecyclerView.LayoutManager.getPosition(view2);
        char c = position < position2 ? (char) 1 : (char) 65535;
        boolean z = this.mShouldReverseLayout;
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        if (z) {
            if (c == 1) {
                scrollToPositionWithOffset(position2, roomOpenDelegate.getEndAfterPadding() - (this.mOrientationHelper.getDecoratedMeasurement(view) + this.mOrientationHelper.getDecoratedStart(view2)));
                return;
            } else {
                scrollToPositionWithOffset(position2, roomOpenDelegate.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view2));
                return;
            }
        }
        if (c == 65535) {
            scrollToPositionWithOffset(position2, roomOpenDelegate.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, roomOpenDelegate.getDecoratedEnd(view2) - this.mOrientationHelper.getDecoratedMeasurement(view));
        }
    }

    public final void recycleByLayoutState(MimeTokenStream mimeTokenStream, LayoutState layoutState) {
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
                        recycleChildren(mimeTokenStream, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = childCount - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View childAt2 = getChildAt(i5);
                if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                    recycleChildren(mimeTokenStream, i4, i5);
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
                    recycleChildren(mimeTokenStream, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = childCount2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View childAt4 = getChildAt(i9);
            if (this.mOrientationHelper.getDecoratedEnd(childAt4) > i6 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt4) > i6) {
                recycleChildren(mimeTokenStream, i8, i9);
                return;
            }
        }
    }

    public final void recycleChildren(MimeTokenStream mimeTokenStream, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                removeAndRecycleViewAt(i, mimeTokenStream);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                removeAndRecycleViewAt(i3, mimeTokenStream);
            }
        }
    }

    public final void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public final int scrollBy$1(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (getChildCount() != 0 && i != 0) {
            ensureLayoutState();
            this.mLayoutState.mRecycle = true;
            int i2 = i > 0 ? 1 : -1;
            int abs = Math.abs(i);
            updateLayoutState(i2, abs, true, state);
            LayoutState layoutState = this.mLayoutState;
            int fill = fill(mimeTokenStream, layoutState, state, false) + layoutState.mScrollingOffset;
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
    public int scrollHorizontallyBy(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy$1(i, state, mimeTokenStream);
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
    public int scrollVerticallyBy(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy$1(i, state, mimeTokenStream);
    }

    public final void setOrientation(int i) {
        if (i != 0 && i != 1) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("invalid orientation:", i));
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
        int startAfterPadding;
        this.mLayoutState.mInfinite = this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
        this.mLayoutState.mLayoutDirection = i;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        LayoutState layoutState = this.mLayoutState;
        int i3 = z2 ? max2 : max;
        layoutState.mExtraFillSpace = i3;
        if (!z2) {
            max = max2;
        }
        layoutState.mNoRecycleSpace = max;
        if (z2) {
            layoutState.mExtraFillSpace = this.mOrientationHelper.getEndPadding() + i3;
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
        this.mAnchorInfo = new AnchorInfo(0);
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

    public void onAnchorReady(MimeTokenStream mimeTokenStream, RecyclerView.State state, AnchorInfo anchorInfo, int i) {
    }
}
