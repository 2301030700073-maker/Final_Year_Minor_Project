package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {
    public int mAdapterState;
    public CompositeOnPageChangeCallback mCallback;
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        CompositeOnPageChangeCallback compositeOnPageChangeCallback = this.mCallback;
        if (compositeOnPageChangeCallback != null) {
            compositeOnPageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrollStateChanged(int i) {
        CompositeOnPageChangeCallback compositeOnPageChangeCallback;
        CompositeOnPageChangeCallback compositeOnPageChangeCallback2;
        int i2 = this.mAdapterState;
        if (!(i2 == 1 && this.mScrollState == 1) && i == 1) {
            this.mAdapterState = 1;
            int i3 = this.mTarget;
            if (i3 != -1) {
                this.mDragStartPosition = i3;
                this.mTarget = -1;
            } else if (this.mDragStartPosition == -1) {
                LinearLayoutManager linearLayoutManager = this.mLayoutManager;
                View findOneVisibleChild = linearLayoutManager.findOneVisibleChild(0, linearLayoutManager.getChildCount(), false, true);
                this.mDragStartPosition = findOneVisibleChild != null ? RecyclerView.LayoutManager.getPosition(findOneVisibleChild) : -1;
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
                if (i4 != -1 && (compositeOnPageChangeCallback2 = this.mCallback) != null) {
                    compositeOnPageChangeCallback2.onPageScrolled(i4, 0.0f, 0);
                }
            } else if (scrollEventValues.mOffsetPx == 0) {
                int i5 = this.mDragStartPosition;
                int i6 = scrollEventValues.mPosition;
                if (i5 != i6 && (compositeOnPageChangeCallback = this.mCallback) != null) {
                    compositeOnPageChangeCallback.onPageSelected(i6);
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
                    CompositeOnPageChangeCallback compositeOnPageChangeCallback3 = this.mCallback;
                    if (compositeOnPageChangeCallback3 != null) {
                        compositeOnPageChangeCallback3.onPageSelected(i8);
                    }
                }
                dispatchStateChanged(0);
                resetState();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
    
        if ((r7 < 0) == r5.mViewPager.isRtl()) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
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
            if (r0 == 0) goto L39
            r5.mDispatchSelected = r3
            if (r8 > 0) goto L21
            if (r8 != 0) goto L29
            if (r7 >= 0) goto L18
            r7 = r6
            goto L19
        L18:
            r7 = r3
        L19:
            androidx.viewpager2.widget.ViewPager2 r8 = r5.mViewPager
            boolean r8 = r8.isRtl()
            if (r7 != r8) goto L29
        L21:
            int r7 = r2.mOffsetPx
            if (r7 == 0) goto L29
            int r7 = r2.mPosition
            int r7 = r7 + r6
            goto L2b
        L29:
            int r7 = r2.mPosition
        L2b:
            r5.mTarget = r7
            int r8 = r5.mDragStartPosition
            if (r8 == r7) goto L49
            androidx.viewpager2.widget.CompositeOnPageChangeCallback r8 = r5.mCallback
            if (r8 == 0) goto L49
            r8.onPageSelected(r7)
            goto L49
        L39:
            int r7 = r5.mAdapterState
            if (r7 != 0) goto L49
            int r7 = r2.mPosition
            if (r7 != r1) goto L42
            r7 = r3
        L42:
            androidx.viewpager2.widget.CompositeOnPageChangeCallback r8 = r5.mCallback
            if (r8 == 0) goto L49
            r8.onPageSelected(r7)
        L49:
            int r7 = r2.mPosition
            if (r7 != r1) goto L4e
            r7 = r3
        L4e:
            float r8 = r2.mOffset
            int r0 = r2.mOffsetPx
            androidx.viewpager2.widget.CompositeOnPageChangeCallback r4 = r5.mCallback
            if (r4 == 0) goto L59
            r4.onPageScrolled(r7, r8, r0)
        L59:
            int r7 = r2.mPosition
            int r8 = r5.mTarget
            if (r7 == r8) goto L61
            if (r8 != r1) goto L6f
        L61:
            int r7 = r2.mOffsetPx
            if (r7 != 0) goto L6f
            int r7 = r5.mScrollState
            if (r7 == r6) goto L6f
            r5.dispatchStateChanged(r3)
            r5.resetState()
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    public final void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        scrollEventValues.mPosition = -1;
        scrollEventValues.mOffset = 0.0f;
        scrollEventValues.mOffsetPx = 0;
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mDataSetChangeHappened = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0142, code lost:
    
        r12 = r0.getChildCount();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0146, code lost:
    
        if (r2 >= r12) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0150, code lost:
    
        if (androidx.viewpager2.widget.AnimateLayoutChangeDetector.hasRunningChangingLayoutTransition(r0.getChildAt(r2)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0152, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0155, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015b, code lost:
    
        r12 = java.util.Locale.US;
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(androidx.camera.camera2.pipe.CameraDevices$CC.m("Page can only be offset by a positive amount, not by ", r5.mOffsetPx));
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0168, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0139, code lost:
    
        if (r4[r12 - 1][1] >= r6) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0140, code lost:
    
        if (r0.getChildCount() <= 1) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateScrollEventValues() {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.updateScrollEventValues():void");
    }
}
