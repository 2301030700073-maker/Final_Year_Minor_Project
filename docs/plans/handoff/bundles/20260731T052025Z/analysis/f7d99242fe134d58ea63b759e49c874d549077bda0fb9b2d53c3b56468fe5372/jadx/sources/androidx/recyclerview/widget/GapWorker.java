package androidx.recyclerview.widget;

import android.os.Trace;
import androidx.collection.CircularArray;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.stream.MimeTokenStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GapWorker implements Runnable {
    public static final ThreadLocal sGapWorker = new ThreadLocal();
    public static final ViewPager.AnonymousClass1 sTaskComparator = new ViewPager.AnonymousClass1(5);
    public long mFrameIntervalNs;
    public long mPostTimeNs;
    public final ArrayList mRecyclerViews = new ArrayList();
    public final ArrayList mTasks = new ArrayList();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Task {
        public int distanceToItem;
        public boolean neededNextFrame;
        public int position;
        public RecyclerView view;
        public int viewVelocity;
    }

    public static RecyclerView.ViewHolder prefetchPositionWithDeadline(RecyclerView recyclerView, int i, long j) {
        int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < unfilteredChildCount; i2++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return null;
            }
        }
        MimeTokenStream mimeTokenStream = recyclerView.mRecycler;
        if (j == Long.MAX_VALUE) {
            try {
                if (TraceCompat.isEnabled()) {
                    Trace.beginSection("RV Prefetch forced - needed next frame");
                }
            } catch (Throwable th) {
                recyclerView.onExitLayoutOrScroll(false);
                Trace.endSection();
                throw th;
            }
        }
        recyclerView.onEnterLayoutOrScroll();
        RecyclerView.ViewHolder tryGetViewHolderForPositionByDeadline = mimeTokenStream.tryGetViewHolderForPositionByDeadline(i, j);
        if (tryGetViewHolderForPositionByDeadline != null) {
            if (!tryGetViewHolderForPositionByDeadline.isBound() || tryGetViewHolderForPositionByDeadline.isInvalid()) {
                mimeTokenStream.addViewHolderToRecycledViewPool(tryGetViewHolderForPositionByDeadline, false);
            } else {
                mimeTokenStream.recycleView(tryGetViewHolderForPositionByDeadline.itemView);
            }
        }
        recyclerView.onExitLayoutOrScroll(false);
        Trace.endSection();
        return tryGetViewHolderForPositionByDeadline;
    }

    public final void postFromTraversal(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.mIsAttached) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.mRecyclerViews.contains(recyclerView)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("attempting to post unregistered view!");
                return;
            } else if (this.mPostTimeNs == 0) {
                this.mPostTimeNs = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        CircularArray circularArray = recyclerView.mPrefetchRegistry;
        circularArray.head = i;
        circularArray.tail = i2;
    }

    public final void prefetch(long j) {
        Task task;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        Task task2;
        ArrayList arrayList = this.mRecyclerViews;
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i2);
            int windowVisibility = recyclerView3.getWindowVisibility();
            CircularArray circularArray = recyclerView3.mPrefetchRegistry;
            if (windowVisibility == 0) {
                circularArray.collectPrefetchPositionsFromView(recyclerView3, false);
                i += circularArray.capacityBitmask;
            }
        }
        ArrayList arrayList2 = this.mTasks;
        arrayList2.ensureCapacity(i);
        int i3 = 0;
        int i4 = 0;
        while (i3 < size) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i3);
            if (recyclerView4.getWindowVisibility() == 0) {
                CircularArray circularArray2 = recyclerView4.mPrefetchRegistry;
                int abs = Math.abs(circularArray2.tail) + Math.abs(circularArray2.head);
                int i5 = z ? 1 : 0;
                while (i5 < circularArray2.capacityBitmask * 2) {
                    if (i4 >= arrayList2.size()) {
                        task2 = new Task();
                        arrayList2.add(task2);
                    } else {
                        task2 = (Task) arrayList2.get(i4);
                    }
                    int[] iArr = (int[]) circularArray2.elements;
                    int i6 = iArr[i5 + 1];
                    if (i6 <= abs) {
                        z = true;
                    }
                    task2.neededNextFrame = z;
                    task2.viewVelocity = abs;
                    task2.distanceToItem = i6;
                    task2.view = recyclerView4;
                    task2.position = iArr[i5];
                    i4++;
                    i5 += 2;
                    z = false;
                }
            }
            i3++;
            z = false;
        }
        Collections.sort(arrayList2, sTaskComparator);
        for (int i7 = 0; i7 < arrayList2.size() && (recyclerView = (task = (Task) arrayList2.get(i7)).view) != null; i7++) {
            RecyclerView.ViewHolder prefetchPositionWithDeadline = prefetchPositionWithDeadline(recyclerView, task.position, task.neededNextFrame ? Long.MAX_VALUE : j);
            if (prefetchPositionWithDeadline != null && prefetchPositionWithDeadline.mNestedRecyclerView != null && prefetchPositionWithDeadline.isBound() && !prefetchPositionWithDeadline.isInvalid() && (recyclerView2 = (RecyclerView) prefetchPositionWithDeadline.mNestedRecyclerView.get()) != null) {
                if (recyclerView2.mDataSetHasChangedAfterLayout && recyclerView2.mChildHelper.getUnfilteredChildCount() != 0) {
                    MimeTokenStream mimeTokenStream = recyclerView2.mRecycler;
                    RecyclerView.ItemAnimator itemAnimator = recyclerView2.mItemAnimator;
                    if (itemAnimator != null) {
                        itemAnimator.endAnimations();
                    }
                    RecyclerView.LayoutManager layoutManager = recyclerView2.mLayout;
                    if (layoutManager != null) {
                        layoutManager.removeAndRecycleAllViews(mimeTokenStream);
                        recyclerView2.mLayout.removeAndRecycleScrapInt(mimeTokenStream);
                    }
                    ((ArrayList) mimeTokenStream.config).clear();
                    mimeTokenStream.recycleAndClearCachedViews();
                }
                CircularArray circularArray3 = recyclerView2.mPrefetchRegistry;
                circularArray3.collectPrefetchPositionsFromView(recyclerView2, true);
                if (circularArray3.capacityBitmask != 0) {
                    try {
                        Trace.beginSection(j == Long.MAX_VALUE ? "RV Nested Prefetch" : "RV Nested Prefetch forced - needed next frame");
                        RecyclerView.State state = recyclerView2.mState;
                        RecyclerView.Adapter adapter = recyclerView2.mAdapter;
                        state.mLayoutStep = 1;
                        state.mItemCount = adapter.getItemCount();
                        state.mInPreLayout = false;
                        state.mTrackOldChangeHolders = false;
                        state.mIsMeasuring = false;
                        for (int i8 = 0; i8 < circularArray3.capacityBitmask * 2; i8 += 2) {
                            prefetchPositionWithDeadline(recyclerView2, ((int[]) circularArray3.elements)[i8], j);
                        }
                    } finally {
                        Trace.endSection();
                    }
                }
            }
            task.neededNextFrame = false;
            task.viewVelocity = 0;
            task.distanceToItem = 0;
            task.view = null;
            task.position = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.mRecyclerViews;
        try {
            Trace.beginSection("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    prefetch(TimeUnit.MILLISECONDS.toNanos(j) + this.mFrameIntervalNs);
                }
            }
        } finally {
            this.mPostTimeNs = 0L;
            Trace.endSection();
        }
    }
}
