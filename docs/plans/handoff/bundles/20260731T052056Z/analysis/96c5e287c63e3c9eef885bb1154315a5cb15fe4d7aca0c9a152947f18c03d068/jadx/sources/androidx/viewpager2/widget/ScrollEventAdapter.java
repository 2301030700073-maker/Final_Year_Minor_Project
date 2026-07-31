package androidx.viewpager2.widget;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import org.wikipedia.main.MainFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {
    public int mAdapterState;
    public MainFragment.PageChangeCallback mCallback;
    public boolean mDataSetChangeHappened;
    public boolean mDispatchSelected;
    public int mDragStartPosition;
    public final LinearLayoutManager mLayoutManager;
    public final ViewPager2.RecyclerViewImpl mRecyclerView;
    public boolean mScrollHappened;
    public int mScrollState;
    public final ScrollEventValues mScrollValues;
    public int mTarget;
    public final ViewPager2 mViewPager;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ScrollEventValues {
        public float mOffset;
        public int mOffsetPx;
        public int mPosition;
    }

    public ScrollEventAdapter(ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        ViewPager2.RecyclerViewImpl recyclerViewImpl = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerViewImpl;
        this.mLayoutManager = (LinearLayoutManager) recyclerViewImpl.getLayoutManager();
        this.mScrollValues = new ScrollEventValues();
        resetState();
    }

    public final void dispatchStateChanged(int i) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
        MainFragment.PageChangeCallback pageChangeCallback = this.mCallback;
        if (pageChangeCallback != null) {
            pageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
        MainFragment.PageChangeCallback pageChangeCallback;
        MainFragment.PageChangeCallback pageChangeCallback2;
        int i2 = this.mAdapterState;
        if (!(i2 == 1 && this.mScrollState == 1) && i == 1) {
            this.mAdapterState = 1;
            int i3 = this.mTarget;
            if (i3 != -1) {
                this.mDragStartPosition = i3;
                this.mTarget = -1;
            } else if (this.mDragStartPosition == -1) {
                this.mDragStartPosition = this.mLayoutManager.findFirstVisibleItemPosition();
            }
            dispatchStateChanged(1);
            return;
        }
        if ((i2 == 1 || i2 == 4) && i == 2) {
            if (this.mScrollHappened) {
                dispatchStateChanged(2);
                this.mDispatchSelected = true;
                return;
            }
            return;
        }
        ScrollEventValues scrollEventValues = this.mScrollValues;
        if ((i2 == 1 || i2 == 4) && i == 0) {
            updateScrollEventValues();
            if (!this.mScrollHappened) {
                int i4 = scrollEventValues.mPosition;
                if (i4 != -1 && (pageChangeCallback2 = this.mCallback) != null) {
                    pageChangeCallback2.onPageScrolled(i4, RecyclerView.DECELERATION_RATE, 0);
                }
            } else if (scrollEventValues.mOffsetPx == 0) {
                int i5 = this.mDragStartPosition;
                int i6 = scrollEventValues.mPosition;
                if (i5 != i6 && (pageChangeCallback = this.mCallback) != null) {
                    pageChangeCallback.onPageSelected(i6);
                }
            }
            dispatchStateChanged(0);
            resetState();
        }
        if (this.mAdapterState == 2 && i == 0 && this.mDataSetChangeHappened) {
            updateScrollEventValues();
            if (scrollEventValues.mOffsetPx == 0) {
                int i7 = this.mTarget;
                int i8 = scrollEventValues.mPosition;
                if (i7 != i8) {
                    if (i8 == -1) {
                        i8 = 0;
                    }
                    MainFragment.PageChangeCallback pageChangeCallback3 = this.mCallback;
                    if (pageChangeCallback3 != null) {
                        pageChangeCallback3.onPageSelected(i8);
                    }
                }
                dispatchStateChanged(0);
                resetState();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
    
        if ((r7 < 0) == (r5.mViewPager.mLayoutManager.mRecyclerView.getLayoutDirection() == 1)) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onScrolled(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            r5 = this;
            r6 = 1
            r5.mScrollHappened = r6
            r5.updateScrollEventValues()
            boolean r0 = r5.mDispatchSelected
            r1 = -1
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r2 = r5.mScrollValues
            r3 = 0
            if (r0 == 0) goto L42
            r5.mDispatchSelected = r3
            if (r8 > 0) goto L2a
            if (r8 != 0) goto L32
            if (r7 >= 0) goto L18
            r7 = r6
            goto L19
        L18:
            r7 = r3
        L19:
            androidx.viewpager2.widget.ViewPager2 r8 = r5.mViewPager
            androidx.viewpager2.widget.ViewPager2$LinearLayoutManagerImpl r8 = r8.mLayoutManager
            androidx.recyclerview.widget.RecyclerView r8 = r8.mRecyclerView
            int r8 = r8.getLayoutDirection()
            if (r8 != r6) goto L27
            r8 = r6
            goto L28
        L27:
            r8 = r3
        L28:
            if (r7 != r8) goto L32
        L2a:
            int r7 = r2.mOffsetPx
            if (r7 == 0) goto L32
            int r7 = r2.mPosition
            int r7 = r7 + r6
            goto L34
        L32:
            int r7 = r2.mPosition
        L34:
            r5.mTarget = r7
            int r8 = r5.mDragStartPosition
            if (r8 == r7) goto L52
            org.wikipedia.main.MainFragment$PageChangeCallback r8 = r5.mCallback
            if (r8 == 0) goto L52
            r8.onPageSelected(r7)
            goto L52
        L42:
            int r7 = r5.mAdapterState
            if (r7 != 0) goto L52
            int r7 = r2.mPosition
            if (r7 != r1) goto L4b
            r7 = r3
        L4b:
            org.wikipedia.main.MainFragment$PageChangeCallback r8 = r5.mCallback
            if (r8 == 0) goto L52
            r8.onPageSelected(r7)
        L52:
            int r7 = r2.mPosition
            if (r7 != r1) goto L57
            r7 = r3
        L57:
            float r8 = r2.mOffset
            int r0 = r2.mOffsetPx
            org.wikipedia.main.MainFragment$PageChangeCallback r4 = r5.mCallback
            if (r4 == 0) goto L62
            r4.onPageScrolled(r7, r8, r0)
        L62:
            int r7 = r2.mPosition
            int r8 = r5.mTarget
            if (r7 == r8) goto L6a
            if (r8 != r1) goto L78
        L6a:
            int r7 = r2.mOffsetPx
            if (r7 != 0) goto L78
            int r7 = r5.mScrollState
            if (r7 == r6) goto L78
            r5.dispatchStateChanged(r3)
            r5.resetState()
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    public final void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        scrollEventValues.mPosition = -1;
        scrollEventValues.mOffset = RecyclerView.DECELERATION_RATE;
        scrollEventValues.mOffsetPx = 0;
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mDataSetChangeHappened = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0131, code lost:
    
        if (r4[r12 - 1][1] >= r5) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0138, code lost:
    
        if (r0.getChildCount() <= 1) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateScrollEventValues() {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.updateScrollEventValues():void");
    }
}
