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
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.fragment.app.FragmentState;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider;
import androidx.room.RoomOpenDelegate;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.List;
import org.apache.james.mime4j.stream.MimeTokenStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {
    public static final Rect TEMP_RECT = new Rect();
    public final int mAlignItems;
    public final AnchorInfo mAnchorInfo;
    public final Context mContext;
    public int mDirtyPosition;
    public int mFlexDirection;
    public final LocalFolder.AnonymousClass9 mFlexLinesResult;
    public int mFlexWrap;
    public boolean mFromBottomToTop;
    public boolean mIsRtl;
    public int mLastHeight;
    public int mLastWidth;
    public LayoutState mLayoutState;
    public RoomOpenDelegate mOrientationHelper;
    public View mParent;
    public SavedState mPendingSavedState;
    public int mPendingScrollPosition;
    public int mPendingScrollPositionOffset;
    public MimeTokenStream mRecycler;
    public RecyclerView.State mState;
    public RoomOpenDelegate mSubOrientationHelper;
    public final SparseArray mViewCache;
    public final int mMaxLine = -1;
    public List mFlexLines = new ArrayList();
    public final LocalStore.AnonymousClass7 mFlexboxHelper = new LocalStore.AnonymousClass7(this);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

        public static void access$1600(AnchorInfo anchorInfo) {
            FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
            if (!flexboxLayoutManager.isMainAxisDirectionHorizontal() && flexboxLayoutManager.mIsRtl) {
                anchorInfo.mCoordinate = anchorInfo.mLayoutFromEnd ? flexboxLayoutManager.mOrientationHelper.getEndAfterPadding() : flexboxLayoutManager.mWidth - flexboxLayoutManager.mOrientationHelper.getStartAfterPadding();
                return;
            }
            boolean z = anchorInfo.mLayoutFromEnd;
            RoomOpenDelegate roomOpenDelegate = flexboxLayoutManager.mOrientationHelper;
            anchorInfo.mCoordinate = z ? roomOpenDelegate.getEndAfterPadding() : roomOpenDelegate.getStartAfterPadding();
        }

        public static void access$800(AnchorInfo anchorInfo) {
            anchorInfo.mPosition = -1;
            anchorInfo.mFlexLinePosition = -1;
            anchorInfo.mCoordinate = Integer.MIN_VALUE;
            anchorInfo.mValid = false;
            anchorInfo.mAssignedFromSavedState = false;
            FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
            boolean isMainAxisDirectionHorizontal = flexboxLayoutManager.isMainAxisDirectionHorizontal();
            int i = flexboxLayoutManager.mFlexWrap;
            if (isMainAxisDirectionHorizontal) {
                if (i == 0) {
                    anchorInfo.mLayoutFromEnd = flexboxLayoutManager.mFlexDirection == 1;
                    return;
                } else {
                    anchorInfo.mLayoutFromEnd = i == 2;
                    return;
                }
            }
            if (i == 0) {
                anchorInfo.mLayoutFromEnd = flexboxLayoutManager.mFlexDirection == 3;
            } else {
                anchorInfo.mLayoutFromEnd = i == 2;
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
            return CameraDevices$CC.m(sb, this.mAssignedFromSavedState, '}');
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LayoutParams extends RecyclerView.LayoutParams implements Parcelable {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new FragmentState.AnonymousClass1(27);
        public int mAlignSelf;
        public float mFlexBasisPercent;
        public float mFlexGrow;
        public float mFlexShrink;
        public int mMaxHeight;
        public int mMaxWidth;
        public int mMinHeight;
        public int mMinWidth;
        public boolean mWrapBefore;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            return CameraDevices$CC.m(sb, this.mLayoutDirection, '}');
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(28);
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
            return CameraDevices$CC.m(sb, this.mAnchorOffset, '}');
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        AnchorInfo anchorInfo = new AnchorInfo();
        this.mAnchorInfo = anchorInfo;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLastWidth = Integer.MIN_VALUE;
        this.mLastHeight = Integer.MIN_VALUE;
        this.mViewCache = new SparseArray();
        this.mDirtyPosition = -1;
        this.mFlexLinesResult = new LocalFolder.AnonymousClass9();
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
        setFlexWrap();
        if (this.mAlignItems != 4) {
            removeAllViews();
            this.mFlexLines.clear();
            AnchorInfo.access$800(anchorInfo);
            anchorInfo.mPerpendicularCoordinate = 0;
            this.mAlignItems = 4;
            requestLayout();
        }
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
        return computeScrollExtent$3(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset$3(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange$3(state);
    }

    public final int computeScrollExtent$3(RecyclerView.State state) {
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

    public final int computeScrollOffset$3(RecyclerView.State state) {
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
        int i = ((int[]) this.mFlexboxHelper.val$folder)[position];
        if (i == 0 || i == -1) {
            return 0;
        }
        return Math.round((i * (abs / ((r3[position2] - i) + 1))) + (this.mOrientationHelper.getStartAfterPadding() - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild)));
    }

    public final int computeScrollRange$3(RecyclerView.State state) {
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
        return isMainAxisDirectionHorizontal() ? new PointF(0.0f, i2) : new PointF(i2, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent$3(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset$3(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange$3(state);
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

    public final int fill(MimeTokenStream mimeTokenStream, RecyclerView.State state, LayoutState layoutState) {
        int i;
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Rect rect;
        int i8;
        int i9;
        Rect rect2;
        int i10;
        boolean z2;
        int i11;
        int i12;
        Rect rect3;
        int i13;
        int i14 = layoutState.mScrollingOffset;
        if (i14 != Integer.MIN_VALUE) {
            int i15 = layoutState.mAvailable;
            if (i15 < 0) {
                layoutState.mScrollingOffset = i14 + i15;
            }
            recycleByLayoutState(mimeTokenStream, layoutState);
        }
        int i16 = layoutState.mAvailable;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i17 = i16;
        int i18 = 0;
        while (true) {
            if (i17 <= 0 && !this.mLayoutState.mInfinite) {
                break;
            }
            List list = this.mFlexLines;
            int i19 = layoutState.mPosition;
            if (i19 < 0 || i19 >= state.getItemCount() || (i = layoutState.mFlexLinePosition) < 0 || i >= list.size()) {
                break;
            }
            FlexLine flexLine = (FlexLine) this.mFlexLines.get(layoutState.mFlexLinePosition);
            layoutState.mPosition = flexLine.mFirstIndex;
            boolean isMainAxisDirectionHorizontal2 = isMainAxisDirectionHorizontal();
            AnchorInfo anchorInfo = this.mAnchorInfo;
            Rect rect4 = TEMP_RECT;
            LocalStore.AnonymousClass7 anonymousClass7 = this.mFlexboxHelper;
            if (isMainAxisDirectionHorizontal2) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int i20 = this.mWidth;
                int i21 = layoutState.mOffset;
                if (layoutState.mLayoutDirection == -1) {
                    i21 -= flexLine.mCrossSize;
                }
                int i22 = i21;
                int i23 = layoutState.mPosition;
                float f = anchorInfo.mPerpendicularCoordinate;
                float f2 = paddingLeft - f;
                float f3 = (i20 - paddingRight) - f;
                float max = Math.max(0.0f, 0.0f);
                int i24 = flexLine.mItemCount;
                i2 = i16;
                int i25 = i23;
                int i26 = 0;
                while (i25 < i23 + i24) {
                    int i27 = i23;
                    View flexItemAt = getFlexItemAt(i25);
                    if (flexItemAt == null) {
                        i13 = i27;
                        z2 = isMainAxisDirectionHorizontal;
                        i11 = i24;
                        i12 = i25;
                        rect3 = rect4;
                    } else {
                        z2 = isMainAxisDirectionHorizontal;
                        if (layoutState.mLayoutDirection == 1) {
                            calculateItemDecorationsForChild(rect4, flexItemAt);
                            addView(flexItemAt);
                        } else {
                            calculateItemDecorationsForChild(rect4, flexItemAt);
                            addViewInt(flexItemAt, i26, false);
                            i26++;
                        }
                        int i28 = i26;
                        float f4 = f3;
                        long j = ((long[]) anonymousClass7.val$messages)[i25];
                        int i29 = (int) j;
                        int i30 = (int) (j >> 32);
                        if (shouldMeasureChild(flexItemAt, i29, i30, (LayoutParams) flexItemAt.getLayoutParams())) {
                            flexItemAt.measure(i29, i30);
                        }
                        float f5 = f2 + ((ViewGroup.MarginLayoutParams) r6).leftMargin + ((RecyclerView.LayoutParams) flexItemAt.getLayoutParams()).mDecorInsets.left;
                        float f6 = f4 - (((ViewGroup.MarginLayoutParams) r6).rightMargin + ((RecyclerView.LayoutParams) flexItemAt.getLayoutParams()).mDecorInsets.right);
                        int i31 = i22 + ((RecyclerView.LayoutParams) flexItemAt.getLayoutParams()).mDecorInsets.top;
                        boolean z3 = this.mIsRtl;
                        i11 = i24;
                        LocalStore.AnonymousClass7 anonymousClass72 = this.mFlexboxHelper;
                        if (z3) {
                            i12 = i25;
                            rect3 = rect4;
                            i13 = i27;
                            anonymousClass72.layoutSingleChildHorizontal(flexItemAt, flexLine, Math.round(f6) - flexItemAt.getMeasuredWidth(), i31, Math.round(f6), flexItemAt.getMeasuredHeight() + i31);
                        } else {
                            i12 = i25;
                            rect3 = rect4;
                            i13 = i27;
                            anonymousClass72.layoutSingleChildHorizontal(flexItemAt, flexLine, Math.round(f5), i31, flexItemAt.getMeasuredWidth() + Math.round(f5), flexItemAt.getMeasuredHeight() + i31);
                        }
                        float measuredWidth = flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) r6).rightMargin + ((RecyclerView.LayoutParams) flexItemAt.getLayoutParams()).mDecorInsets.right + max + f5;
                        f3 = f6 - (((flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) r6).leftMargin) + ((RecyclerView.LayoutParams) flexItemAt.getLayoutParams()).mDecorInsets.left) + max);
                        f2 = measuredWidth;
                        i26 = i28;
                    }
                    i25 = i12 + 1;
                    isMainAxisDirectionHorizontal = z2;
                    i24 = i11;
                    i23 = i13;
                    rect4 = rect3;
                }
                z = isMainAxisDirectionHorizontal;
                layoutState.mFlexLinePosition += this.mLayoutState.mLayoutDirection;
                i6 = flexLine.mCrossSize;
                i5 = i17;
            } else {
                i2 = i16;
                z = isMainAxisDirectionHorizontal;
                Rect rect5 = rect4;
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int i32 = this.mHeight;
                int i33 = layoutState.mOffset;
                if (layoutState.mLayoutDirection == -1) {
                    int i34 = flexLine.mCrossSize;
                    i4 = i33 + i34;
                    i3 = i33 - i34;
                } else {
                    i3 = i33;
                    i4 = i3;
                }
                int i35 = layoutState.mPosition;
                float f7 = i32 - paddingBottom;
                float f8 = anchorInfo.mPerpendicularCoordinate;
                float f9 = paddingTop - f8;
                float f10 = f7 - f8;
                float max2 = Math.max(0.0f, 0.0f);
                int i36 = flexLine.mItemCount;
                float f11 = f10;
                int i37 = i35;
                float f12 = f9;
                int i38 = 0;
                while (i37 < i35 + i36) {
                    int i39 = i35;
                    View flexItemAt2 = getFlexItemAt(i37);
                    if (flexItemAt2 == null) {
                        i7 = i17;
                        i8 = i36;
                        i9 = i39;
                        rect2 = rect5;
                        i10 = i37;
                    } else {
                        float f13 = f12;
                        i7 = i17;
                        long j2 = ((long[]) anonymousClass7.val$messages)[i37];
                        int i40 = (int) j2;
                        int i41 = (int) (j2 >> 32);
                        if (shouldMeasureChild(flexItemAt2, i40, i41, (LayoutParams) flexItemAt2.getLayoutParams())) {
                            flexItemAt2.measure(i40, i41);
                        }
                        float f14 = f13 + ((ViewGroup.MarginLayoutParams) r7).topMargin + ((RecyclerView.LayoutParams) flexItemAt2.getLayoutParams()).mDecorInsets.top;
                        float f15 = f11 - (((ViewGroup.MarginLayoutParams) r7).rightMargin + ((RecyclerView.LayoutParams) flexItemAt2.getLayoutParams()).mDecorInsets.bottom);
                        if (layoutState.mLayoutDirection == 1) {
                            rect = rect5;
                            calculateItemDecorationsForChild(rect, flexItemAt2);
                            addView(flexItemAt2);
                        } else {
                            rect = rect5;
                            calculateItemDecorationsForChild(rect, flexItemAt2);
                            addViewInt(flexItemAt2, i38, false);
                            i38++;
                        }
                        int i42 = i3 + ((RecyclerView.LayoutParams) flexItemAt2.getLayoutParams()).mDecorInsets.left;
                        int i43 = i4 - ((RecyclerView.LayoutParams) flexItemAt2.getLayoutParams()).mDecorInsets.right;
                        Rect rect6 = rect;
                        boolean z4 = this.mIsRtl;
                        boolean z5 = this.mFromBottomToTop;
                        i8 = i36;
                        LocalStore.AnonymousClass7 anonymousClass73 = this.mFlexboxHelper;
                        if (!z4) {
                            i9 = i39;
                            rect2 = rect6;
                            i10 = i37;
                            if (z5) {
                                anonymousClass73.layoutSingleChildVertical(flexItemAt2, flexLine, z4, i42, Math.round(f15) - flexItemAt2.getMeasuredHeight(), flexItemAt2.getMeasuredWidth() + i42, Math.round(f15));
                            } else {
                                anonymousClass73.layoutSingleChildVertical(flexItemAt2, flexLine, z4, i42, Math.round(f14), flexItemAt2.getMeasuredWidth() + i42, flexItemAt2.getMeasuredHeight() + Math.round(f14));
                            }
                        } else if (z5) {
                            i9 = i39;
                            rect2 = rect6;
                            i10 = i37;
                            anonymousClass73.layoutSingleChildVertical(flexItemAt2, flexLine, z4, i43 - flexItemAt2.getMeasuredWidth(), Math.round(f15) - flexItemAt2.getMeasuredHeight(), i43, Math.round(f15));
                        } else {
                            i9 = i39;
                            rect2 = rect6;
                            i10 = i37;
                            anonymousClass73.layoutSingleChildVertical(flexItemAt2, flexLine, z4, i43 - flexItemAt2.getMeasuredWidth(), Math.round(f14), i43, flexItemAt2.getMeasuredHeight() + Math.round(f14));
                        }
                        f11 = f15 - (((flexItemAt2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) r7).bottomMargin) + ((RecyclerView.LayoutParams) flexItemAt2.getLayoutParams()).mDecorInsets.top) + max2);
                        f12 = flexItemAt2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) r7).topMargin + ((RecyclerView.LayoutParams) flexItemAt2.getLayoutParams()).mDecorInsets.bottom + max2 + f14;
                    }
                    i37 = i10 + 1;
                    i17 = i7;
                    i36 = i8;
                    i35 = i9;
                    rect5 = rect2;
                }
                i5 = i17;
                layoutState.mFlexLinePosition += this.mLayoutState.mLayoutDirection;
                i6 = flexLine.mCrossSize;
            }
            i18 += i6;
            if (z || !this.mIsRtl) {
                layoutState.mOffset += flexLine.mCrossSize * layoutState.mLayoutDirection;
            } else {
                layoutState.mOffset -= flexLine.mCrossSize * layoutState.mLayoutDirection;
            }
            i17 = i5 - flexLine.mCrossSize;
            i16 = i2;
            isMainAxisDirectionHorizontal = z;
        }
        int i44 = i16;
        int i45 = layoutState.mAvailable - i18;
        layoutState.mAvailable = i45;
        int i46 = layoutState.mScrollingOffset;
        if (i46 != Integer.MIN_VALUE) {
            int i47 = i46 + i18;
            layoutState.mScrollingOffset = i47;
            if (i45 < 0) {
                layoutState.mScrollingOffset = i47 + i45;
            }
            recycleByLayoutState(mimeTokenStream, layoutState);
        }
        return i44 - layoutState.mAvailable;
    }

    public final View findFirstReferenceChild(int i) {
        View findReferenceChild = findReferenceChild(0, getChildCount(), i);
        if (findReferenceChild == null) {
            return null;
        }
        int i2 = ((int[]) this.mFlexboxHelper.val$folder)[RecyclerView.LayoutManager.getPosition(findReferenceChild)];
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
        return findLastReferenceViewInLine(findReferenceChild, (FlexLine) this.mFlexLines.get(((int[]) this.mFlexboxHelper.val$folder)[RecyclerView.LayoutManager.getPosition(findReferenceChild)]));
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

    public final int fixLayoutEndGap$2(int i, MimeTokenStream mimeTokenStream, RecyclerView.State state, boolean z) {
        int i2;
        int endAfterPadding;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            i2 = -handleScrollingMainOrientation(-endAfterPadding2, state, mimeTokenStream);
        } else {
            int startAfterPadding = i - this.mOrientationHelper.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i2 = handleScrollingMainOrientation(startAfterPadding, state, mimeTokenStream);
        }
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    public final int fixLayoutStartGap$2(int i, MimeTokenStream mimeTokenStream, RecyclerView.State state, boolean z) {
        int i2;
        int startAfterPadding;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            i2 = -handleScrollingMainOrientation(startAfterPadding2, state, mimeTokenStream);
        } else {
            int endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i;
            if (endAfterPadding <= 0) {
                return 0;
            }
            i2 = handleScrollingMainOrientation(-endAfterPadding, state, mimeTokenStream);
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
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        layoutParams.mFlexGrow = 0.0f;
        layoutParams.mFlexShrink = 1.0f;
        layoutParams.mAlignSelf = -1;
        layoutParams.mFlexBasisPercent = -1.0f;
        layoutParams.mMaxWidth = 16777215;
        layoutParams.mMaxHeight = 16777215;
        return layoutParams;
    }

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

    public final View getFlexItemAt(int i) {
        View view = (View) this.mViewCache.get(i);
        return view != null ? view : this.mRecycler.getViewForPosition(i);
    }

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

    /* JADX WARN: Removed duplicated region for block: B:46:0x01e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int handleScrollingMainOrientation(int r21, androidx.recyclerview.widget.RecyclerView.State r22, org.apache.james.mime4j.stream.MimeTokenStream r23) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.handleScrollingMainOrientation(int, androidx.recyclerview.widget.RecyclerView$State, org.apache.james.mime4j.stream.MimeTokenStream):int");
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
    public final void onLayoutChildren(MimeTokenStream mimeTokenStream, RecyclerView.State state) {
        int i;
        View childAt;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        int i4;
        int i5;
        LocalFolder.AnonymousClass9 anonymousClass9;
        int i6;
        this.mRecycler = mimeTokenStream;
        this.mState = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.mInPreLayout) {
            return;
        }
        int layoutDirection = this.mRecyclerView.getLayoutDirection();
        int i7 = this.mFlexDirection;
        if (i7 == 0) {
            this.mIsRtl = layoutDirection == 1;
            this.mFromBottomToTop = this.mFlexWrap == 2;
        } else if (i7 == 1) {
            this.mIsRtl = layoutDirection != 1;
            this.mFromBottomToTop = this.mFlexWrap == 2;
        } else if (i7 == 2) {
            boolean z3 = layoutDirection == 1;
            this.mIsRtl = z3;
            if (this.mFlexWrap == 2) {
                this.mIsRtl = !z3;
            }
            this.mFromBottomToTop = false;
        } else if (i7 != 3) {
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
        LocalStore.AnonymousClass7 anonymousClass7 = this.mFlexboxHelper;
        anonymousClass7.ensureMeasureSpecCache(itemCount);
        anonymousClass7.ensureMeasuredSizeCache(itemCount);
        anonymousClass7.ensureIndexToFlexLine(itemCount);
        this.mLayoutState.mShouldRecycle = false;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && (i6 = savedState.mAnchorPosition) >= 0 && i6 < itemCount) {
            this.mPendingScrollPosition = i6;
        }
        AnchorInfo anchorInfo = this.mAnchorInfo;
        if (!anchorInfo.mValid || this.mPendingScrollPosition != -1 || savedState != null) {
            AnchorInfo.access$800(anchorInfo);
            SavedState savedState2 = this.mPendingSavedState;
            if (!state.mInPreLayout && (i = this.mPendingScrollPosition) != -1) {
                if (i < 0 || i >= state.getItemCount()) {
                    this.mPendingScrollPosition = -1;
                    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                } else {
                    int i8 = this.mPendingScrollPosition;
                    anchorInfo.mPosition = i8;
                    anchorInfo.mFlexLinePosition = ((int[]) anonymousClass7.val$folder)[i8];
                    SavedState savedState3 = this.mPendingSavedState;
                    if (savedState3 != null) {
                        int itemCount2 = state.getItemCount();
                        int i9 = savedState3.mAnchorPosition;
                        if (i9 >= 0 && i9 < itemCount2) {
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
                            AnchorInfo.access$1600(anchorInfo);
                        } else if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                            AnchorInfo.access$1600(anchorInfo);
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
                    int[] iArr = (int[]) flexboxLayoutManager.mFlexboxHelper.val$folder;
                    if (position == -1) {
                        position = 0;
                    }
                    int i10 = iArr[position];
                    if (i10 == -1) {
                        i10 = 0;
                    }
                    anchorInfo.mFlexLinePosition = i10;
                    int size = flexboxLayoutManager.mFlexLines.size();
                    int i11 = anchorInfo.mFlexLinePosition;
                    if (size > i11) {
                        anchorInfo.mPosition = ((FlexLine) flexboxLayoutManager.mFlexLines.get(i11)).mFirstIndex;
                    }
                    anchorInfo.mValid = true;
                }
            }
            AnchorInfo.access$1600(anchorInfo);
            anchorInfo.mPosition = 0;
            anchorInfo.mFlexLinePosition = 0;
            anchorInfo.mValid = true;
        }
        detachAndScrapAttachedViews(mimeTokenStream);
        if (anchorInfo.mLayoutFromEnd) {
            updateLayoutStateToFillStart(anchorInfo, false, true);
        } else {
            updateLayoutStateToFillEnd(anchorInfo, false, true);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mWidth, this.mWidthMode);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.mHeight, this.mHeightMode);
        int i12 = this.mWidth;
        int i13 = this.mHeight;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        Context context = this.mContext;
        if (isMainAxisDirectionHorizontal) {
            int i14 = this.mLastWidth;
            z = (i14 == Integer.MIN_VALUE || i14 == i12) ? false : true;
            LayoutState layoutState2 = this.mLayoutState;
            i2 = layoutState2.mInfinite ? context.getResources().getDisplayMetrics().heightPixels : layoutState2.mAvailable;
        } else {
            int i15 = this.mLastHeight;
            z = (i15 == Integer.MIN_VALUE || i15 == i13) ? false : true;
            LayoutState layoutState3 = this.mLayoutState;
            i2 = layoutState3.mInfinite ? context.getResources().getDisplayMetrics().widthPixels : layoutState3.mAvailable;
        }
        int i16 = i2;
        this.mLastWidth = i12;
        this.mLastHeight = i13;
        int i17 = this.mDirtyPosition;
        LocalFolder.AnonymousClass9 anonymousClass92 = this.mFlexLinesResult;
        if (i17 != -1 || (this.mPendingScrollPosition == -1 && !z)) {
            int i18 = anchorInfo.mPosition;
            if (i17 != -1) {
                i18 = Math.min(i17, i18);
            }
            anonymousClass92.val$messages = null;
            boolean isMainAxisDirectionHorizontal2 = isMainAxisDirectionHorizontal();
            List list = this.mFlexLines;
            if (!isMainAxisDirectionHorizontal2) {
                i3 = i18;
                if (list.size() > 0) {
                    anonymousClass7.clearFlexLines(i3, this.mFlexLines);
                    this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec2, i16, i3, anchorInfo.mPosition, this.mFlexLines);
                } else {
                    anonymousClass7.ensureIndexToFlexLine(itemCount);
                    this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec2, i16, 0, -1, this.mFlexLines);
                    makeMeasureSpec2 = makeMeasureSpec2;
                }
            } else if (list.size() > 0) {
                anonymousClass7.clearFlexLines(i18, this.mFlexLines);
                int i19 = i18;
                this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec, i16, i19, anchorInfo.mPosition, this.mFlexLines);
                i3 = i19;
            } else {
                i3 = i18;
                anonymousClass7.ensureIndexToFlexLine(itemCount);
                this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec, i16, 0, -1, this.mFlexLines);
            }
            this.mFlexLines = anonymousClass92.val$messages;
            anonymousClass7.determineMainSize(makeMeasureSpec, makeMeasureSpec2, i3);
            anonymousClass7.stretchViews(i3);
        } else if (!anchorInfo.mLayoutFromEnd) {
            this.mFlexLines.clear();
            anonymousClass92.val$messages = null;
            boolean isMainAxisDirectionHorizontal3 = isMainAxisDirectionHorizontal();
            int i20 = anchorInfo.mPosition;
            LocalStore.AnonymousClass7 anonymousClass72 = this.mFlexboxHelper;
            LocalFolder.AnonymousClass9 anonymousClass93 = this.mFlexLinesResult;
            if (isMainAxisDirectionHorizontal3) {
                anonymousClass9 = anonymousClass92;
                anonymousClass72.calculateFlexLines(anonymousClass93, makeMeasureSpec, i16, 0, i20, this.mFlexLines);
            } else {
                anonymousClass9 = anonymousClass92;
                anonymousClass72.calculateFlexLines(anonymousClass93, makeMeasureSpec2, i16, 0, i20, this.mFlexLines);
            }
            this.mFlexLines = anonymousClass9.val$messages;
            anonymousClass7.determineMainSize(makeMeasureSpec, makeMeasureSpec2, 0);
            anonymousClass7.stretchViews(0);
            int i21 = ((int[]) anonymousClass7.val$folder)[anchorInfo.mPosition];
            anchorInfo.mFlexLinePosition = i21;
            this.mLayoutState.mFlexLinePosition = i21;
        }
        fill(mimeTokenStream, state, this.mLayoutState);
        boolean z6 = anchorInfo.mLayoutFromEnd;
        LayoutState layoutState4 = this.mLayoutState;
        if (z6) {
            i5 = layoutState4.mOffset;
            z2 = true;
            updateLayoutStateToFillEnd(anchorInfo, true, false);
            fill(mimeTokenStream, state, this.mLayoutState);
            i4 = this.mLayoutState.mOffset;
        } else {
            z2 = true;
            i4 = layoutState4.mOffset;
            updateLayoutStateToFillStart(anchorInfo, true, false);
            fill(mimeTokenStream, state, this.mLayoutState);
            i5 = this.mLayoutState.mOffset;
        }
        if (getChildCount() > 0) {
            if (anchorInfo.mLayoutFromEnd) {
                fixLayoutStartGap$2(fixLayoutEndGap$2(i4, mimeTokenStream, state, z2) + i5, mimeTokenStream, state, false);
            } else {
                fixLayoutEndGap$2(fixLayoutStartGap$2(i5, mimeTokenStream, state, z2) + i4, mimeTokenStream, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mDirtyPosition = -1;
        AnchorInfo.access$800(this.mAnchorInfo);
        this.mViewCache.clear();
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
    /* JADX WARN: Removed duplicated region for block: B:36:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0104 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void recycleByLayoutState(org.apache.james.mime4j.stream.MimeTokenStream r10, com.google.android.flexbox.FlexboxLayoutManager.LayoutState r11) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.recycleByLayoutState(org.apache.james.mime4j.stream.MimeTokenStream, com.google.android.flexbox.FlexboxLayoutManager$LayoutState):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (!isMainAxisDirectionHorizontal() || this.mFlexWrap == 0) {
            int handleScrollingMainOrientation = handleScrollingMainOrientation(i, state, mimeTokenStream);
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
    public final int scrollVerticallyBy(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (isMainAxisDirectionHorizontal() || (this.mFlexWrap == 0 && !isMainAxisDirectionHorizontal())) {
            int handleScrollingMainOrientation = handleScrollingMainOrientation(i, state, mimeTokenStream);
            this.mViewCache.clear();
            return handleScrollingMainOrientation;
        }
        int handleScrollingSubOrientation = handleScrollingSubOrientation(i);
        this.mAnchorInfo.mPerpendicularCoordinate += handleScrollingSubOrientation;
        this.mSubOrientationHelper.offsetChildren(-handleScrollingSubOrientation);
        return handleScrollingSubOrientation;
    }

    public final void setFlexDirection(int i) {
        if (this.mFlexDirection != i) {
            removeAllViews();
            this.mFlexDirection = i;
            this.mOrientationHelper = null;
            this.mSubOrientationHelper = null;
            this.mFlexLines.clear();
            AnchorInfo anchorInfo = this.mAnchorInfo;
            AnchorInfo.access$800(anchorInfo);
            anchorInfo.mPerpendicularCoordinate = 0;
            requestLayout();
        }
    }

    public final void setFlexWrap() {
        int i = this.mFlexWrap;
        if (i != 1) {
            if (i == 0) {
                removeAllViews();
                this.mFlexLines.clear();
                AnchorInfo anchorInfo = this.mAnchorInfo;
                AnchorInfo.access$800(anchorInfo);
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
        LocalStore.AnonymousClass7 anonymousClass7 = this.mFlexboxHelper;
        anonymousClass7.ensureMeasureSpecCache(childCount);
        anonymousClass7.ensureMeasuredSizeCache(childCount);
        anonymousClass7.ensureIndexToFlexLine(childCount);
        if (i >= ((int[]) anonymousClass7.val$folder).length) {
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

    public FlexboxLayoutManager(Context context) {
        AnchorInfo anchorInfo = new AnchorInfo();
        this.mAnchorInfo = anchorInfo;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLastWidth = Integer.MIN_VALUE;
        this.mLastHeight = Integer.MIN_VALUE;
        this.mViewCache = new SparseArray();
        this.mDirtyPosition = -1;
        this.mFlexLinesResult = new LocalFolder.AnonymousClass9();
        setFlexDirection(0);
        setFlexWrap();
        if (this.mAlignItems != 4) {
            removeAllViews();
            this.mFlexLines.clear();
            AnchorInfo.access$800(anchorInfo);
            anchorInfo.mPerpendicularCoordinate = 0;
            this.mAlignItems = 4;
            requestLayout();
        }
        this.mContext = context;
    }
}
