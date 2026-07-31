package androidx.recyclerview.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class PagerSnapHelper extends RecyclerView.OnFlingListener {
    public OrientationHelper$1 mHorizontalHelper;
    public RecyclerView mRecyclerView;
    public final SnapHelper$1 mScrollListener = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.SnapHelper$1
        public boolean mScrolled = false;

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (i == 0 && this.mScrolled) {
                this.mScrolled = false;
                PagerSnapHelper.this.snapToTargetExistingView();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.mScrolled = true;
        }
    };
    public OrientationHelper$1 mVerticalHelper;

    public static int distanceToCenter(View view, RoomOpenDelegate roomOpenDelegate) {
        return ((roomOpenDelegate.getDecoratedMeasurement(view) / 2) + roomOpenDelegate.getDecoratedStart(view)) - ((roomOpenDelegate.getTotalSpace() / 2) + roomOpenDelegate.getStartAfterPadding());
    }

    public static View findCenterView(RecyclerView.LayoutManager layoutManager, RoomOpenDelegate roomOpenDelegate) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int totalSpace = (roomOpenDelegate.getTotalSpace() / 2) + roomOpenDelegate.getStartAfterPadding();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = layoutManager.getChildAt(i2);
            int abs = Math.abs(((roomOpenDelegate.getDecoratedMeasurement(childAt) / 2) + roomOpenDelegate.getDecoratedStart(childAt)) - totalSpace);
            if (abs < i) {
                view = childAt;
                i = abs;
            }
        }
        return view;
    }

    public final void attachToRecyclerView(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        SnapHelper$1 snapHelper$1 = this.mScrollListener;
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.mScrollListeners;
            if (arrayList != null) {
                arrayList.remove(snapHelper$1);
            }
            this.mRecyclerView.setOnFlingListener(null);
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("An instance of OnFlingListener already set.");
                return;
            }
            this.mRecyclerView.addOnScrollListener(snapHelper$1);
            this.mRecyclerView.setOnFlingListener(this);
            new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
            snapToTargetExistingView();
        }
    }

    public final int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = distanceToCenter(view, getHorizontalHelper(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = distanceToCenter(view, getVerticalHelper(layoutManager));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return findCenterView(layoutManager, getVerticalHelper(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return findCenterView(layoutManager, getHorizontalHelper(layoutManager));
        }
        return null;
    }

    public final RoomOpenDelegate getHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper$1 orientationHelper$1 = this.mHorizontalHelper;
        if (orientationHelper$1 != null && ((RecyclerView.LayoutManager) orientationHelper$1.identityHash) == layoutManager) {
            return orientationHelper$1;
        }
        OrientationHelper$1 orientationHelper$12 = new OrientationHelper$1(layoutManager, 0);
        this.mHorizontalHelper = orientationHelper$12;
        return orientationHelper$12;
    }

    public final RoomOpenDelegate getVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper$1 orientationHelper$1 = this.mVerticalHelper;
        if (orientationHelper$1 != null && ((RecyclerView.LayoutManager) orientationHelper$1.identityHash) == layoutManager) {
            return orientationHelper$1;
        }
        OrientationHelper$1 orientationHelper$12 = new OrientationHelper$1(layoutManager, 1);
        this.mVerticalHelper = orientationHelper$12;
        return orientationHelper$12;
    }

    public final void snapToTargetExistingView() {
        RecyclerView.LayoutManager layoutManager;
        View findSnapView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (findSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] calculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, findSnapView);
        int i = calculateDistanceToFinalSnap[0];
        if (i == 0 && calculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy$1(i, calculateDistanceToFinalSnap[1], false);
    }
}
