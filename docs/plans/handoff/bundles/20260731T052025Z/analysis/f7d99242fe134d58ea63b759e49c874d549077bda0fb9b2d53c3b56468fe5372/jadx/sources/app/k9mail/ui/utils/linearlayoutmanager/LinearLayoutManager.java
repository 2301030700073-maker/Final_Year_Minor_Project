package app.k9mail.ui.utils.linearlayoutmanager;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.collection.CircularArray;
import androidx.fragment.app.FragmentState;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider;
import androidx.room.RoomOpenDelegate;
import java.util.List;
import org.apache.james.mime4j.stream.MimeTokenStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class LinearLayoutManager extends LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView$SmoothScroller$ScrollVectorProvider {
    public final LinearLayoutManager.AnchorInfo mAnchorInfo;
    public final LinearLayoutManager.LayoutChunkResult mLayoutChunkResult;
    public LinearLayoutManager.LayoutState mLayoutState;
    public final int mOrientation;
    public final RoomOpenDelegate mOrientationHelper;
    public final int[] mReusableIntPair;
    public boolean mScrolledToTop;
    public boolean mShouldReverseLayout = false;
    public int mPendingScrollPosition = -1;
    public int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    public SavedState mPendingSavedState = null;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(21);
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

    public LinearLayoutManager() {
        this.mOrientation = 1;
        LinearLayoutManager.AnchorInfo anchorInfo = new LinearLayoutManager.AnchorInfo(1);
        anchorInfo.reset();
        this.mAnchorInfo = anchorInfo;
        this.mLayoutChunkResult = new LinearLayoutManager.LayoutChunkResult();
        this.mReusableIntPair = new int[2];
        this.mScrolledToTop = false;
        assertNotInLayoutOrScroll(null);
        if (1 != this.mOrientation || this.mOrientationHelper == null) {
            RoomOpenDelegate createOrientationHelper = RoomOpenDelegate.createOrientationHelper(this, 1);
            this.mOrientationHelper = createOrientationHelper;
            anchorInfo.mOrientationHelper = createOrientationHelper;
            this.mOrientation = 1;
            requestLayout();
        }
        assertNotInLayoutOrScroll(null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public final void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
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
        updateLayoutState$1(i > 0 ? 1 : -1, Math.abs(i), true, state);
        LinearLayoutManager.LayoutState layoutState = this.mLayoutState;
        int i3 = layoutState.mCurrentPosition;
        if (i3 < 0 || i3 >= state.getItemCount()) {
            return;
        }
        circularArray.addPosition(i3, Math.max(0, layoutState.mScrollingOffset));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectInitialPrefetchPositions(int i, CircularArray circularArray) {
        int i2;
        boolean z;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || (i2 = savedState.mAnchorPosition) < 0) {
            resolveShouldLayoutReverse$2();
            boolean z2 = this.mShouldReverseLayout;
            i2 = this.mPendingScrollPosition;
            if (i2 == -1) {
                i2 = z2 ? i - 1 : 0;
            }
            z = z2;
        } else {
            z = savedState.mAnchorLayoutFromEnd;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < 2 && i2 >= 0 && i2 < i; i4++) {
            circularArray.addPosition(i2, 0);
            i2 += i3;
        }
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
        ensureLayoutState();
        View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart();
        View findFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd();
        if (getChildCount() == 0 || state.getItemCount() == 0 || findFirstVisibleChildClosestToStart == null || findFirstVisibleChildClosestToEnd == null) {
            return 0;
        }
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        return Math.min(roomOpenDelegate.getTotalSpace(), roomOpenDelegate.getDecoratedEnd(findFirstVisibleChildClosestToEnd) - roomOpenDelegate.getDecoratedStart(findFirstVisibleChildClosestToStart));
    }

    public final int computeScrollOffset$2(RecyclerView.State state) {
        if (getChildCount() != 0) {
            ensureLayoutState();
            View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart();
            View findFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd();
            boolean z = this.mShouldReverseLayout;
            if (getChildCount() != 0 && state.getItemCount() != 0 && findFirstVisibleChildClosestToStart != null && findFirstVisibleChildClosestToEnd != null) {
                int max = z ? Math.max(0, (state.getItemCount() - Math.max(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart), RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd))) - 1) : Math.max(0, Math.min(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart), RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd)));
                RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
                return Math.round((max * (Math.abs(roomOpenDelegate.getDecoratedEnd(findFirstVisibleChildClosestToEnd) - roomOpenDelegate.getDecoratedStart(findFirstVisibleChildClosestToStart)) / (Math.abs(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart) - RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd)) + 1))) + (roomOpenDelegate.getStartAfterPadding() - roomOpenDelegate.getDecoratedStart(findFirstVisibleChildClosestToStart)));
            }
        }
        return 0;
    }

    public final int computeScrollRange$2(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart();
        View findFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd();
        if (getChildCount() == 0 || state.getItemCount() == 0 || findFirstVisibleChildClosestToStart == null || findFirstVisibleChildClosestToEnd == null) {
            return 0;
        }
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        return (int) (((roomOpenDelegate.getDecoratedEnd(findFirstVisibleChildClosestToEnd) - roomOpenDelegate.getDecoratedStart(findFirstVisibleChildClosestToStart)) / (Math.abs(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart) - RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd)) + 1)) * state.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        View childAt = getChildAt(0);
        int i2 = (i < (childAt != null ? RecyclerView.LayoutManager.getPosition(childAt) : 0)) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
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

    public final void ensureLayoutState() {
        if (this.mLayoutState == null) {
            LinearLayoutManager.LayoutState layoutState = new LinearLayoutManager.LayoutState(1);
            layoutState.mRecycle = true;
            layoutState.mExtraFillSpace = 0;
            layoutState.mNoRecycleSpace = 0;
            layoutState.mScrapList = null;
            this.mLayoutState = layoutState;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0141, code lost:
    
        if (r20.mInPreLayout == false) goto L77;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int fill(org.apache.james.mime4j.stream.MimeTokenStream r18, androidx.recyclerview.widget.LinearLayoutManager.LayoutState r19, androidx.recyclerview.widget.RecyclerView.State r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.ui.utils.linearlayoutmanager.LinearLayoutManager.fill(org.apache.james.mime4j.stream.MimeTokenStream, androidx.recyclerview.widget.LinearLayoutManager$LayoutState, androidx.recyclerview.widget.RecyclerView$State, boolean):int");
    }

    public final View findFirstVisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), false, true) : findOneVisibleChild(getChildCount() - 1, -1, false, true);
    }

    public final View findFirstVisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, false, true) : findOneVisibleChild(0, getChildCount(), false, true);
    }

    public final View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        int i3;
        int i4;
        ensureLayoutState();
        if (Integer.compare(i2, i) == 0) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i)) < this.mOrientationHelper.getStartAfterPadding()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.mOrientation == 0 ? ((LayoutManager) this).mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4) : ((LayoutManager) this).mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4);
    }

    public final View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        ensureLayoutState();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        return this.mOrientation == 0 ? ((LayoutManager) this).mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4) : ((LayoutManager) this).mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View findViewByPosition(int i) {
        View childAt;
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        View childAt2 = getChildAt(0);
        int position = i - (childAt2 != null ? RecyclerView.LayoutManager.getPosition(childAt2) : 0);
        return (position < 0 || position >= childCount || (childAt = getChildAt(position)) == null || RecyclerView.LayoutManager.getPosition(childAt) != i) ? super.findViewByPosition(i) : childAt;
    }

    public final int fixLayoutEndGap$1(int i, MimeTokenStream mimeTokenStream, RecyclerView.State state, boolean z) {
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

    public final int fixLayoutStartGap$1(int i, MimeTokenStream mimeTokenStream, RecyclerView.State state, boolean z) {
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
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public final View getChildClosestToEnd$2() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    public final View getChildClosestToStart$2() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x002f, code lost:
    
        if (r5 == 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0033, code lost:
    
        if (r5 == 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x003f, code lost:
    
        if (r4.mRecyclerView.getLayoutDirection() != 1) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x004b, code lost:
    
        if (r4.mRecyclerView.getLayoutDirection() != 1) goto L23;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onFocusSearchFailed(android.view.View r5, int r6, org.apache.james.mime4j.stream.MimeTokenStream r7, androidx.recyclerview.widget.RecyclerView.State r8) {
        /*
            r4 = this;
            r4.resolveShouldLayoutReverse$2()
            int r5 = r4.getChildCount()
            if (r5 != 0) goto Lb
            goto Lad
        Lb:
            int r5 = r4.mOrientation
            r0 = 1
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = -1
            if (r6 == r0) goto L42
            r3 = 2
            if (r6 == r3) goto L36
            r3 = 17
            if (r6 == r3) goto L33
            r3 = 33
            if (r6 == r3) goto L2f
            r3 = 66
            if (r6 == r3) goto L2c
            r3 = 130(0x82, float:1.82E-43)
            if (r6 == r3) goto L28
        L26:
            r5 = r1
            goto L4e
        L28:
            if (r5 != r0) goto L26
        L2a:
            r5 = r0
            goto L4e
        L2c:
            if (r5 != 0) goto L26
            goto L2a
        L2f:
            if (r5 != r0) goto L26
        L31:
            r5 = r2
            goto L4e
        L33:
            if (r5 != 0) goto L26
        L35:
            goto L31
        L36:
            if (r5 != r0) goto L39
            goto L2a
        L39:
            androidx.recyclerview.widget.RecyclerView r5 = r4.mRecyclerView
            int r5 = r5.getLayoutDirection()
            if (r5 != r0) goto L2a
            goto L31
        L42:
            if (r5 != r0) goto L45
            goto L35
        L45:
            androidx.recyclerview.widget.RecyclerView r5 = r4.mRecyclerView
            int r5 = r5.getLayoutDirection()
            if (r5 != r0) goto L31
            goto L2a
        L4e:
            if (r5 != r1) goto L51
            goto Lad
        L51:
            r4.ensureLayoutState()
            androidx.room.RoomOpenDelegate r6 = r4.mOrientationHelper
            int r6 = r6.getTotalSpace()
            float r6 = (float) r6
            r3 = 1051372203(0x3eaaaaab, float:0.33333334)
            float r6 = r6 * r3
            int r6 = (int) r6
            r3 = 0
            r4.updateLayoutState$1(r5, r6, r3, r8)
            androidx.recyclerview.widget.LinearLayoutManager$LayoutState r6 = r4.mLayoutState
            r6.mScrollingOffset = r1
            r6.mRecycle = r3
            r4.fill(r7, r6, r8, r0)
            boolean r6 = r4.mShouldReverseLayout
            if (r5 != r2) goto L86
            if (r6 == 0) goto L7d
            int r6 = r4.getChildCount()
            int r6 = r6 - r0
            android.view.View r6 = r4.findOnePartiallyOrCompletelyInvisibleChild(r6, r2)
            goto L9a
        L7d:
            int r6 = r4.getChildCount()
            android.view.View r6 = r4.findOnePartiallyOrCompletelyInvisibleChild(r3, r6)
            goto L9a
        L86:
            if (r6 == 0) goto L91
            int r6 = r4.getChildCount()
            android.view.View r6 = r4.findOnePartiallyOrCompletelyInvisibleChild(r3, r6)
            goto L9a
        L91:
            int r6 = r4.getChildCount()
            int r6 = r6 - r0
            android.view.View r6 = r4.findOnePartiallyOrCompletelyInvisibleChild(r6, r2)
        L9a:
            if (r5 != r2) goto La1
            android.view.View r4 = r4.getChildClosestToStart$2()
            goto La5
        La1:
            android.view.View r4 = r4.getChildClosestToEnd$2()
        La5:
            boolean r5 = r4.hasFocusable()
            if (r5 == 0) goto Laf
            if (r6 != 0) goto Lae
        Lad:
            r4 = 0
        Lae:
            return r4
        Laf:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.ui.utils.linearlayoutmanager.LinearLayoutManager.onFocusSearchFailed(android.view.View, int, org.apache.james.mime4j.stream.MimeTokenStream, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager, app.k9mail.ui.utils.linearlayoutmanager.LinearLayoutManager] */
    /* JADX WARN: Type inference failed for: r3v102 */
    /* JADX WARN: Type inference failed for: r3v105 */
    /* JADX WARN: Type inference failed for: r3v48 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(MimeTokenStream mimeTokenStream, RecyclerView.State state) {
        boolean z;
        View view;
        int i;
        View childAt;
        ?? r3;
        int i2;
        int i3;
        LinearLayoutManager.AnchorInfo anchorInfo;
        ?? r5;
        List list;
        int i4;
        int i5;
        int fixLayoutEndGap$1;
        int i6;
        View findViewByPosition;
        int decoratedStart;
        int i7;
        int i8;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(mimeTokenStream);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && (i8 = savedState.mAnchorPosition) >= 0) {
            this.mPendingScrollPosition = i8;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse$2();
        View focusedChild = getFocusedChild();
        LinearLayoutManager.AnchorInfo anchorInfo2 = this.mAnchorInfo;
        boolean z2 = anchorInfo2.mValid;
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        if (z2 && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) {
            if (focusedChild != null && (roomOpenDelegate.getDecoratedStart(focusedChild) >= roomOpenDelegate.getEndAfterPadding() || roomOpenDelegate.getDecoratedEnd(focusedChild) <= roomOpenDelegate.getStartAfterPadding())) {
                anchorInfo2.assignFromViewAndKeepVisibleRect(focusedChild, RecyclerView.LayoutManager.getPosition(focusedChild));
            }
            r3 = 1;
        } else {
            anchorInfo2.reset();
            anchorInfo2.mLayoutFromEnd = this.mShouldReverseLayout;
            if (!state.mInPreLayout && (i = this.mPendingScrollPosition) != -1) {
                if (i < 0 || i >= state.getItemCount()) {
                    this.mPendingScrollPosition = -1;
                    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                } else {
                    int i9 = this.mPendingScrollPosition;
                    anchorInfo2.mPosition = i9;
                    SavedState savedState2 = this.mPendingSavedState;
                    if (savedState2 != null && savedState2.mAnchorPosition >= 0) {
                        boolean z3 = savedState2.mAnchorLayoutFromEnd;
                        anchorInfo2.mLayoutFromEnd = z3;
                        if (z3) {
                            anchorInfo2.mCoordinate = roomOpenDelegate.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                        } else {
                            anchorInfo2.mCoordinate = roomOpenDelegate.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
                        }
                    } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                        View findViewByPosition2 = findViewByPosition(i9);
                        if (findViewByPosition2 == null) {
                            if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                                anchorInfo2.mLayoutFromEnd = (this.mPendingScrollPosition < RecyclerView.LayoutManager.getPosition(childAt)) == this.mShouldReverseLayout;
                            }
                            anchorInfo2.assignCoordinateFromPadding();
                        } else if (roomOpenDelegate.getDecoratedMeasurement(findViewByPosition2) > roomOpenDelegate.getTotalSpace()) {
                            anchorInfo2.assignCoordinateFromPadding();
                        } else if (roomOpenDelegate.getDecoratedStart(findViewByPosition2) - roomOpenDelegate.getStartAfterPadding() < 0) {
                            anchorInfo2.mCoordinate = roomOpenDelegate.getStartAfterPadding();
                            anchorInfo2.mLayoutFromEnd = false;
                        } else if (roomOpenDelegate.getEndAfterPadding() - roomOpenDelegate.getDecoratedEnd(findViewByPosition2) < 0) {
                            anchorInfo2.mCoordinate = roomOpenDelegate.getEndAfterPadding();
                            anchorInfo2.mLayoutFromEnd = true;
                        } else {
                            anchorInfo2.mCoordinate = anchorInfo2.mLayoutFromEnd ? roomOpenDelegate.getTotalSpaceChange() + roomOpenDelegate.getDecoratedEnd(findViewByPosition2) : roomOpenDelegate.getDecoratedStart(findViewByPosition2);
                        }
                    } else {
                        boolean z4 = this.mShouldReverseLayout;
                        anchorInfo2.mLayoutFromEnd = z4;
                        if (z4) {
                            anchorInfo2.mCoordinate = roomOpenDelegate.getEndAfterPadding() - this.mPendingScrollPositionOffset;
                        } else {
                            anchorInfo2.mCoordinate = roomOpenDelegate.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                        }
                    }
                    z = true;
                    anchorInfo2.mValid = z;
                    r3 = z;
                }
            }
            if (getChildCount() != 0) {
                View focusedChild2 = getFocusedChild();
                if (focusedChild2 != null) {
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) focusedChild2.getLayoutParams();
                    if (!layoutParams.mViewHolder.isRemoved() && layoutParams.mViewHolder.getLayoutPosition() >= 0 && layoutParams.mViewHolder.getLayoutPosition() < state.getItemCount()) {
                        anchorInfo2.assignFromViewAndKeepVisibleRect(focusedChild2, RecyclerView.LayoutManager.getPosition(focusedChild2));
                        z = true;
                        anchorInfo2.mValid = z;
                        r3 = z;
                    }
                }
                if (state.mInPreLayout || !this.mScrolledToTop) {
                    boolean z5 = anchorInfo2.mLayoutFromEnd;
                    ensureLayoutState();
                    int childCount = getChildCount();
                    int itemCount = state.getItemCount();
                    int startAfterPadding = roomOpenDelegate.getStartAfterPadding();
                    int endAfterPadding = roomOpenDelegate.getEndAfterPadding();
                    int i10 = 0;
                    View view2 = null;
                    View view3 = null;
                    View view4 = null;
                    while (true) {
                        if (i10 != childCount) {
                            view = getChildAt(i10);
                            if (view != null) {
                                int position = RecyclerView.LayoutManager.getPosition(view);
                                int decoratedStart2 = roomOpenDelegate.getDecoratedStart(view);
                                int decoratedEnd = roomOpenDelegate.getDecoratedEnd(view);
                                if (position >= 0 && position < itemCount) {
                                    if (!((RecyclerView.LayoutParams) view.getLayoutParams()).mViewHolder.isRemoved()) {
                                        boolean z6 = decoratedEnd <= startAfterPadding && decoratedStart2 < startAfterPadding;
                                        boolean z7 = decoratedStart2 >= endAfterPadding && decoratedEnd > endAfterPadding;
                                        if (!z6 && !z7) {
                                            break;
                                        }
                                        if (z5) {
                                            if (!z7) {
                                                if (view2 != null) {
                                                }
                                                view2 = view;
                                            }
                                            view3 = view;
                                        } else {
                                            if (!z6) {
                                                if (view2 != null) {
                                                }
                                                view2 = view;
                                            }
                                            view3 = view;
                                        }
                                    } else if (view4 == null) {
                                        view4 = view;
                                    }
                                }
                            }
                            i10++;
                        } else {
                            view = view2 != null ? view2 : view3 != null ? view3 : view4;
                        }
                    }
                    if (view != null) {
                        int position2 = RecyclerView.LayoutManager.getPosition(view);
                        boolean z8 = anchorInfo2.mLayoutFromEnd;
                        RoomOpenDelegate roomOpenDelegate2 = anchorInfo2.mOrientationHelper;
                        if (z8) {
                            anchorInfo2.mCoordinate = anchorInfo2.mOrientationHelper.getTotalSpaceChange() + roomOpenDelegate2.getDecoratedEnd(view);
                        } else {
                            anchorInfo2.mCoordinate = roomOpenDelegate2.getDecoratedStart(view);
                        }
                        anchorInfo2.mPosition = position2;
                        if (!state.mInPreLayout && supportsPredictiveItemAnimations()) {
                            int decoratedStart3 = roomOpenDelegate.getDecoratedStart(view);
                            int decoratedEnd2 = roomOpenDelegate.getDecoratedEnd(view);
                            int startAfterPadding2 = roomOpenDelegate.getStartAfterPadding();
                            int endAfterPadding2 = roomOpenDelegate.getEndAfterPadding();
                            boolean z9 = decoratedEnd2 <= startAfterPadding2 && decoratedStart3 < startAfterPadding2;
                            boolean z10 = decoratedStart3 >= endAfterPadding2 && decoratedEnd2 > endAfterPadding2;
                            if (z9 || z10) {
                                if (anchorInfo2.mLayoutFromEnd) {
                                    startAfterPadding2 = endAfterPadding2;
                                }
                                anchorInfo2.mCoordinate = startAfterPadding2;
                            }
                        }
                        z = true;
                        anchorInfo2.mValid = z;
                        r3 = z;
                    }
                } else {
                    anchorInfo2.mLayoutFromEnd = false;
                    anchorInfo2.mPosition = 0;
                    anchorInfo2.mValid = true;
                    anchorInfo2.assignCoordinateFromPadding();
                    z = true;
                    anchorInfo2.mValid = z;
                    r3 = z;
                }
            }
            anchorInfo2.assignCoordinateFromPadding();
            anchorInfo2.mPosition = 0;
            z = true;
            anchorInfo2.mValid = z;
            r3 = z;
        }
        LinearLayoutManager.LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = layoutState.mLastScrollDelta >= 0 ? r3 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[r3] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int startAfterPadding3 = roomOpenDelegate.getStartAfterPadding() + Math.max(0, iArr[0]);
        int endPadding = roomOpenDelegate.getEndPadding() + Math.max(0, iArr[r3]);
        if (state.mInPreLayout && (i6 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(i6)) != null) {
            if (this.mShouldReverseLayout) {
                i7 = roomOpenDelegate.getEndAfterPadding() - roomOpenDelegate.getDecoratedEnd(findViewByPosition);
                decoratedStart = this.mPendingScrollPositionOffset;
            } else {
                decoratedStart = roomOpenDelegate.getDecoratedStart(findViewByPosition) - roomOpenDelegate.getStartAfterPadding();
                i7 = this.mPendingScrollPositionOffset;
            }
            int i11 = i7 - decoratedStart;
            if (i11 > 0) {
                startAfterPadding3 += i11;
            } else {
                endPadding -= i11;
            }
        }
        detachAndScrapAttachedViews(mimeTokenStream);
        this.mLayoutState.mInfinite = roomOpenDelegate.getMode() == 0 && roomOpenDelegate.getEnd() == 0;
        this.mLayoutState.getClass();
        this.mLayoutState.mNoRecycleSpace = 0;
        boolean z11 = anchorInfo2.mLayoutFromEnd;
        int i12 = anchorInfo2.mPosition;
        if (z11) {
            updateLayoutStateToFillStart$1(i12, anchorInfo2.mCoordinate);
            LinearLayoutManager.LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mExtraFillSpace = startAfterPadding3;
            fill(mimeTokenStream, layoutState2, state, false);
            LinearLayoutManager.LayoutState layoutState3 = this.mLayoutState;
            i3 = layoutState3.mOffset;
            int i13 = layoutState3.mCurrentPosition;
            int i14 = layoutState3.mAvailable;
            if (i14 > 0) {
                endPadding += i14;
            }
            updateLayoutStateToFillEnd$1(anchorInfo2.mPosition, anchorInfo2.mCoordinate);
            LinearLayoutManager.LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mExtraFillSpace = endPadding;
            layoutState4.mCurrentPosition += layoutState4.mItemDirection;
            fill(mimeTokenStream, layoutState4, state, false);
            LinearLayoutManager.LayoutState layoutState5 = this.mLayoutState;
            i2 = layoutState5.mOffset;
            int i15 = layoutState5.mAvailable;
            if (i15 > 0) {
                updateLayoutStateToFillStart$1(i13, i3);
                LinearLayoutManager.LayoutState layoutState6 = this.mLayoutState;
                layoutState6.mExtraFillSpace = i15;
                fill(mimeTokenStream, layoutState6, state, false);
                i3 = this.mLayoutState.mOffset;
            }
        } else {
            updateLayoutStateToFillEnd$1(i12, anchorInfo2.mCoordinate);
            LinearLayoutManager.LayoutState layoutState7 = this.mLayoutState;
            layoutState7.mExtraFillSpace = endPadding;
            fill(mimeTokenStream, layoutState7, state, false);
            LinearLayoutManager.LayoutState layoutState8 = this.mLayoutState;
            i2 = layoutState8.mOffset;
            int i16 = layoutState8.mCurrentPosition;
            int i17 = layoutState8.mAvailable;
            if (i17 > 0) {
                startAfterPadding3 += i17;
            }
            updateLayoutStateToFillStart$1(anchorInfo2.mPosition, anchorInfo2.mCoordinate);
            LinearLayoutManager.LayoutState layoutState9 = this.mLayoutState;
            layoutState9.mExtraFillSpace = startAfterPadding3;
            layoutState9.mCurrentPosition += layoutState9.mItemDirection;
            fill(mimeTokenStream, layoutState9, state, false);
            LinearLayoutManager.LayoutState layoutState10 = this.mLayoutState;
            int i18 = layoutState10.mOffset;
            int i19 = layoutState10.mAvailable;
            if (i19 > 0) {
                updateLayoutStateToFillEnd$1(i16, i2);
                LinearLayoutManager.LayoutState layoutState11 = this.mLayoutState;
                layoutState11.mExtraFillSpace = i19;
                fill(mimeTokenStream, layoutState11, state, false);
                i2 = this.mLayoutState.mOffset;
            }
            i3 = i18;
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout) {
                int fixLayoutEndGap$12 = fixLayoutEndGap$1(i2, mimeTokenStream, state, true);
                i4 = i3 + fixLayoutEndGap$12;
                i5 = i2 + fixLayoutEndGap$12;
                fixLayoutEndGap$1 = fixLayoutStartGap$1(i4, mimeTokenStream, state, false);
            } else {
                int fixLayoutStartGap$1 = fixLayoutStartGap$1(i3, mimeTokenStream, state, true);
                i4 = i3 + fixLayoutStartGap$1;
                i5 = i2 + fixLayoutStartGap$1;
                fixLayoutEndGap$1 = fixLayoutEndGap$1(i5, mimeTokenStream, state, false);
            }
            i3 = i4 + fixLayoutEndGap$1;
            i2 = i5 + fixLayoutEndGap$1;
        }
        if (!state.mRunPredictiveAnimations || getChildCount() == 0 || state.mInPreLayout || !supportsPredictiveItemAnimations()) {
            anchorInfo = anchorInfo2;
        } else {
            List list2 = (List) mimeTokenStream.bodyDescBuilder;
            int size = list2.size();
            View childAt2 = getChildAt(0);
            int position3 = childAt2 != null ? RecyclerView.LayoutManager.getPosition(childAt2) : 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            while (i20 < size) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) list2.get(i20);
                int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                View view5 = viewHolder.itemView;
                LinearLayoutManager.AnchorInfo anchorInfo3 = anchorInfo2;
                if (bindingAdapterPosition != -1) {
                    if ((viewHolder.getLayoutPosition() < position3) != this.mShouldReverseLayout) {
                        i21 += roomOpenDelegate.getDecoratedMeasurement(view5);
                    } else {
                        i22 += roomOpenDelegate.getDecoratedMeasurement(view5);
                    }
                }
                i20++;
                anchorInfo2 = anchorInfo3;
            }
            anchorInfo = anchorInfo2;
            this.mLayoutState.mScrapList = list2;
            if (i21 > 0) {
                updateLayoutStateToFillStart$1(RecyclerView.LayoutManager.getPosition(getChildClosestToStart$2()), i3);
                LinearLayoutManager.LayoutState layoutState12 = this.mLayoutState;
                layoutState12.mExtraFillSpace = i21;
                r5 = 0;
                layoutState12.mAvailable = 0;
                layoutState12.assignPositionFromScrapList(null);
                fill(mimeTokenStream, this.mLayoutState, state, false);
            } else {
                r5 = 0;
            }
            if (i22 > 0) {
                updateLayoutStateToFillEnd$1(RecyclerView.LayoutManager.getPosition(getChildClosestToEnd$2()), i2);
                LinearLayoutManager.LayoutState layoutState13 = this.mLayoutState;
                layoutState13.mExtraFillSpace = i22;
                layoutState13.mAvailable = r5;
                list = null;
                layoutState13.assignPositionFromScrapList(null);
                fill(mimeTokenStream, this.mLayoutState, state, r5);
            } else {
                list = null;
            }
            this.mLayoutState.mScrapList = list;
        }
        if (state.mInPreLayout) {
            anchorInfo.reset();
        } else {
            roomOpenDelegate.version = roomOpenDelegate.getTotalSpace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.reset();
        updateScrolledToTop();
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
        boolean z = this.mShouldReverseLayout;
        savedState3.mAnchorLayoutFromEnd = z;
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        if (z) {
            View childClosestToEnd$2 = getChildClosestToEnd$2();
            savedState3.mAnchorOffset = roomOpenDelegate.getEndAfterPadding() - roomOpenDelegate.getDecoratedEnd(childClosestToEnd$2);
            savedState3.mAnchorPosition = RecyclerView.LayoutManager.getPosition(childClosestToEnd$2);
            return savedState3;
        }
        View childClosestToStart$2 = getChildClosestToStart$2();
        savedState3.mAnchorPosition = RecyclerView.LayoutManager.getPosition(childClosestToStart$2);
        savedState3.mAnchorOffset = roomOpenDelegate.getDecoratedStart(childClosestToStart$2) - roomOpenDelegate.getStartAfterPadding();
        return savedState3;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public final void prepareForDrop(View view, View view2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse$2();
        int position = RecyclerView.LayoutManager.getPosition(view);
        int position2 = RecyclerView.LayoutManager.getPosition(view2);
        char c = position < position2 ? (char) 1 : (char) 65535;
        boolean z = this.mShouldReverseLayout;
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        if (z) {
            if (c == 1) {
                scrollToPositionWithOffset(position2, roomOpenDelegate.getEndAfterPadding() - (roomOpenDelegate.getDecoratedMeasurement(view) + roomOpenDelegate.getDecoratedStart(view2)));
                return;
            } else {
                scrollToPositionWithOffset(position2, roomOpenDelegate.getEndAfterPadding() - roomOpenDelegate.getDecoratedEnd(view2));
                return;
            }
        }
        if (c == 65535) {
            scrollToPositionWithOffset(position2, roomOpenDelegate.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, roomOpenDelegate.getDecoratedEnd(view2) - roomOpenDelegate.getDecoratedMeasurement(view));
        }
    }

    public final void recycleByLayoutState(MimeTokenStream mimeTokenStream, LinearLayoutManager.LayoutState layoutState) {
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        int i = layoutState.mScrollingOffset;
        int i2 = layoutState.mNoRecycleSpace;
        int i3 = layoutState.mLayoutDirection;
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        if (i3 == -1) {
            int childCount = getChildCount();
            if (i < 0) {
                return;
            }
            int end = (roomOpenDelegate.getEnd() - i) + i2;
            if (this.mShouldReverseLayout) {
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (roomOpenDelegate.getDecoratedStart(childAt) < end || roomOpenDelegate.getTransformedStartWithDecoration(childAt) < end) {
                        recycleChildren$1(mimeTokenStream, 0, i4);
                        return;
                    }
                }
                return;
            }
            int i5 = childCount - 1;
            for (int i6 = i5; i6 >= 0; i6--) {
                View childAt2 = getChildAt(i6);
                if (roomOpenDelegate.getDecoratedStart(childAt2) < end || roomOpenDelegate.getTransformedStartWithDecoration(childAt2) < end) {
                    recycleChildren$1(mimeTokenStream, i5, i6);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i7 = i - i2;
        int childCount2 = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i8 = 0; i8 < childCount2; i8++) {
                View childAt3 = getChildAt(i8);
                if (roomOpenDelegate.getDecoratedEnd(childAt3) > i7 || roomOpenDelegate.getTransformedEndWithDecoration(childAt3) > i7) {
                    recycleChildren$1(mimeTokenStream, 0, i8);
                    return;
                }
            }
            return;
        }
        int i9 = childCount2 - 1;
        for (int i10 = i9; i10 >= 0; i10--) {
            View childAt4 = getChildAt(i10);
            if (roomOpenDelegate.getDecoratedEnd(childAt4) > i7 || roomOpenDelegate.getTransformedEndWithDecoration(childAt4) > i7) {
                recycleChildren$1(mimeTokenStream, i9, i10);
                return;
            }
        }
    }

    public final void recycleChildren$1(MimeTokenStream mimeTokenStream, int i, int i2) {
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

    public final void resolveShouldLayoutReverse$2() {
        if (this.mOrientation == 1 || this.mRecyclerView.getLayoutDirection() != 1) {
            this.mShouldReverseLayout = false;
        } else {
            this.mShouldReverseLayout = true;
        }
    }

    public final int scrollBy$1(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        updateLayoutState$1(i2, abs, true, state);
        LinearLayoutManager.LayoutState layoutState = this.mLayoutState;
        int fill = fill(mimeTokenStream, layoutState, state, false) + layoutState.mScrollingOffset;
        if (fill < 0) {
            updateScrolledToTop();
            return 0;
        }
        if (abs > fill) {
            i = i2 * fill;
        }
        this.mOrientationHelper.offsetChildren(-i);
        this.mLayoutState.mLastScrollDelta = i;
        updateScrolledToTop();
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
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
    public final int scrollVerticallyBy(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy$1(i, state, mimeTokenStream);
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

    public final void updateLayoutState$1(int i, int i2, boolean z, RecyclerView.State state) {
        int startAfterPadding;
        LinearLayoutManager.LayoutState layoutState = this.mLayoutState;
        RoomOpenDelegate roomOpenDelegate = this.mOrientationHelper;
        layoutState.mInfinite = roomOpenDelegate.getMode() == 0 && roomOpenDelegate.getEnd() == 0;
        this.mLayoutState.mLayoutDirection = i;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        LinearLayoutManager.LayoutState layoutState2 = this.mLayoutState;
        int i3 = z2 ? max2 : max;
        layoutState2.mExtraFillSpace = i3;
        if (!z2) {
            max = max2;
        }
        layoutState2.mNoRecycleSpace = max;
        if (z2) {
            layoutState2.mExtraFillSpace = roomOpenDelegate.getEndPadding() + i3;
            View childClosestToEnd$2 = getChildClosestToEnd$2();
            LinearLayoutManager.LayoutState layoutState3 = this.mLayoutState;
            layoutState3.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            int position = RecyclerView.LayoutManager.getPosition(childClosestToEnd$2);
            LinearLayoutManager.LayoutState layoutState4 = this.mLayoutState;
            layoutState3.mCurrentPosition = position + layoutState4.mItemDirection;
            layoutState4.mOffset = roomOpenDelegate.getDecoratedEnd(childClosestToEnd$2);
            startAfterPadding = roomOpenDelegate.getDecoratedEnd(childClosestToEnd$2) - roomOpenDelegate.getEndAfterPadding();
        } else {
            View childClosestToStart$2 = getChildClosestToStart$2();
            LinearLayoutManager.LayoutState layoutState5 = this.mLayoutState;
            layoutState5.mExtraFillSpace = roomOpenDelegate.getStartAfterPadding() + layoutState5.mExtraFillSpace;
            LinearLayoutManager.LayoutState layoutState6 = this.mLayoutState;
            layoutState6.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            int position2 = RecyclerView.LayoutManager.getPosition(childClosestToStart$2);
            LinearLayoutManager.LayoutState layoutState7 = this.mLayoutState;
            layoutState6.mCurrentPosition = position2 + layoutState7.mItemDirection;
            layoutState7.mOffset = roomOpenDelegate.getDecoratedStart(childClosestToStart$2);
            startAfterPadding = (-roomOpenDelegate.getDecoratedStart(childClosestToStart$2)) + roomOpenDelegate.getStartAfterPadding();
        }
        LinearLayoutManager.LayoutState layoutState8 = this.mLayoutState;
        layoutState8.mAvailable = i2;
        if (z) {
            layoutState8.mAvailable = i2 - startAfterPadding;
        }
        layoutState8.mScrollingOffset = startAfterPadding;
    }

    public final void updateLayoutStateToFillEnd$1(int i, int i2) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - i2;
        LinearLayoutManager.LayoutState layoutState = this.mLayoutState;
        layoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        layoutState.mCurrentPosition = i;
        layoutState.mLayoutDirection = 1;
        layoutState.mOffset = i2;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    public final void updateLayoutStateToFillStart$1(int i, int i2) {
        this.mLayoutState.mAvailable = i2 - this.mOrientationHelper.getStartAfterPadding();
        LinearLayoutManager.LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = i;
        layoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        layoutState.mLayoutDirection = -1;
        layoutState.mOffset = i2;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        if (r3.getStartAfterPadding() == r3.getDecoratedStart(r2)) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateScrolledToTop() {
        /*
            r5 = this;
            int r0 = r5.getChildCount()
            r1 = 1
            if (r0 != 0) goto L8
            goto L24
        L8:
            r0 = 0
            android.view.View r2 = r5.getChildAt(r0)
            if (r2 != 0) goto L11
        Lf:
            r1 = r0
            goto L24
        L11:
            int r3 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r2)
            if (r3 == 0) goto L18
            goto Lf
        L18:
            androidx.room.RoomOpenDelegate r3 = r5.mOrientationHelper
            int r4 = r3.getStartAfterPadding()
            int r2 = r3.getDecoratedStart(r2)
            if (r4 != r2) goto Lf
        L24:
            r5.mScrolledToTop = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.ui.utils.linearlayoutmanager.LinearLayoutManager.updateScrolledToTop():void");
    }
}
