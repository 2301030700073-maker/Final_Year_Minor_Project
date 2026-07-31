package org.apache.james.mime4j.stream;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.CircularArray;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import org.apache.james.mime4j.codec.DecodeMonitor;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeTokenStream {
    public final Object bodyDescBuilder;
    public final Object config;
    public Object currentStateMachine;
    public Object entities;
    public final Object fieldBuilder;
    public Object monitor;
    public int recursionMode;
    public int state;

    public MimeTokenStream(MimeConfig mimeConfig) {
        this.entities = new ArrayDeque();
        this.state = 14;
        this.recursionMode = 1;
        this.config = mimeConfig;
        this.fieldBuilder = new DefaultFieldBuilder(mimeConfig.maxHeaderLen);
        this.monitor = DecodeMonitor.SILENT;
        this.bodyDescBuilder = new FallbackBodyDescriptorBuilder(null, null);
    }

    public void addViewHolderToRecycledViewPool(RecyclerView.ViewHolder viewHolder, boolean z) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(viewHolder);
        View view = viewHolder.itemView;
        RecyclerView recyclerView = (RecyclerView) this.currentStateMachine;
        RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = recyclerView.mAccessibilityDelegate;
        if (recyclerViewAccessibilityDelegate != null) {
            AccessibilityDelegateCompat itemDelegate = recyclerViewAccessibilityDelegate.getItemDelegate();
            ViewCompat.setAccessibilityDelegate(view, itemDelegate instanceof RecyclerViewAccessibilityDelegate.ItemDelegate ? (AccessibilityDelegateCompat) ((RecyclerViewAccessibilityDelegate.ItemDelegate) itemDelegate).mOriginalItemDelegates.remove(view) : null);
        }
        if (z) {
            ArrayList arrayList = recyclerView.mRecyclerListeners;
            if (arrayList.size() > 0) {
                arrayList.get(0).getClass();
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return;
            }
            RecyclerView.Adapter adapter = recyclerView.mAdapter;
            if (adapter != null) {
                adapter.onViewRecycled(viewHolder);
            }
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.removeViewHolder(viewHolder);
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + viewHolder);
            }
        }
        viewHolder.mBindingAdapter = null;
        viewHolder.mOwnerRecyclerView = null;
        RecyclerView.RecycledViewPool recycledViewPool = getRecycledViewPool();
        recycledViewPool.getClass();
        int i = viewHolder.mItemViewType;
        ArrayList arrayList2 = recycledViewPool.getScrapDataForType(i).mScrapHeap;
        if (((RecyclerView.RecycledViewPool.ScrapData) recycledViewPool.mScrap.get(i)).mMaxScrap <= arrayList2.size()) {
            Validate.callPoolingContainerOnRelease(view);
        } else if (RecyclerView.sDebugAssertionsEnabled && arrayList2.contains(viewHolder)) {
            UriKt$$ExternalSyntheticBUOutline0.m("this scrap item already exists");
        } else {
            viewHolder.resetInternal();
            arrayList2.add(viewHolder);
        }
    }

    public int convertPreLayoutPositionToPostLayout(int i) {
        RecyclerView recyclerView = (RecyclerView) this.currentStateMachine;
        RecyclerView.State state = recyclerView.mState;
        if (i >= 0 && i < state.getItemCount()) {
            return !state.mInPreLayout ? i : recyclerView.mAdapterHelper.findPositionOffset(i, 0);
        }
        StringBuilder m30m = CameraDevices$CC.m30m(i, "invalid position ", ". State item count is ");
        m30m.append(state.getItemCount());
        m30m.append(recyclerView.exceptionLabel());
        throw new IndexOutOfBoundsException(m30m.toString());
    }

    public RecyclerView.RecycledViewPool getRecycledViewPool() {
        if (((RecyclerView.RecycledViewPool) this.entities) == null) {
            RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
            recycledViewPool.mScrap = new SparseArray();
            recycledViewPool.mAttachCountForClearing = 0;
            recycledViewPool.mAttachedAdaptersForPoolingContainer = Collections.newSetFromMap(new IdentityHashMap());
            this.entities = recycledViewPool;
            maybeSendPoolingContainerAttach();
        }
        return (RecyclerView.RecycledViewPool) this.entities;
    }

    public View getViewForPosition(int i) {
        return tryGetViewHolderForPositionByDeadline(i, Long.MAX_VALUE).itemView;
    }

    public void maybeSendPoolingContainerAttach() {
        RecyclerView recyclerView;
        RecyclerView.Adapter adapter;
        RecyclerView.RecycledViewPool recycledViewPool = (RecyclerView.RecycledViewPool) this.entities;
        if (recycledViewPool == null || (adapter = (recyclerView = (RecyclerView) this.currentStateMachine).mAdapter) == null || !recyclerView.mIsAttached) {
            return;
        }
        recycledViewPool.mAttachedAdaptersForPoolingContainer.add(adapter);
    }

    public void poolingContainerDetach(RecyclerView.Adapter adapter, boolean z) {
        RecyclerView.RecycledViewPool recycledViewPool = (RecyclerView.RecycledViewPool) this.entities;
        if (recycledViewPool != null) {
            SparseArray sparseArray = recycledViewPool.mScrap;
            Set set = recycledViewPool.mAttachedAdaptersForPoolingContainer;
            set.remove(adapter);
            if (set.size() != 0 || z) {
                return;
            }
            for (int i = 0; i < sparseArray.size(); i++) {
                ArrayList arrayList = ((RecyclerView.RecycledViewPool.ScrapData) sparseArray.get(sparseArray.keyAt(i))).mScrapHeap;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    Validate.callPoolingContainerOnRelease(((RecyclerView.ViewHolder) arrayList.get(i2)).itemView);
                }
            }
        }
    }

    public void recycleAndClearCachedViews() {
        ArrayList arrayList = (ArrayList) this.fieldBuilder;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            recycleCachedViewAt(size);
        }
        arrayList.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            CircularArray circularArray = ((RecyclerView) this.currentStateMachine).mPrefetchRegistry;
            int[] iArr = (int[]) circularArray.elements;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            circularArray.capacityBitmask = 0;
        }
    }

    public void recycleCachedViewAt(int i) {
        ArrayList arrayList = (ArrayList) this.fieldBuilder;
        if (RecyclerView.sVerboseLoggingEnabled) {
            CameraDevices$CC.m32m(i, "Recycling cached view at index ", "RecyclerView");
        }
        RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) arrayList.get(i);
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + viewHolder);
        }
        addViewHolderToRecycledViewPool(viewHolder, true);
        arrayList.remove(i);
    }

    public void recycleView(View view) {
        RecyclerView recyclerView = (RecyclerView) this.currentStateMachine;
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isTmpDetached()) {
            recyclerView.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.mScrapContainer.unscrapView(childViewHolderInt);
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.mFlags &= -33;
        }
        recycleViewHolderInternal(childViewHolderInt);
        if (recyclerView.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
            return;
        }
        recyclerView.mItemAnimator.endAnimation(childViewHolderInt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e0, code lost:
    
        r7 = r7 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void recycleViewHolderInternal(androidx.recyclerview.widget.RecyclerView.ViewHolder r13) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.stream.MimeTokenStream.recycleViewHolderInternal(androidx.recyclerview.widget.RecyclerView$ViewHolder):void");
    }

    public void scrapView(View view) {
        RecyclerView.ItemAnimator itemAnimator;
        RecyclerView recyclerView = (RecyclerView) this.currentStateMachine;
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if ((childViewHolderInt.mFlags & 12) == 0 && childViewHolderInt.isUpdated() && (itemAnimator = recyclerView.mItemAnimator) != null) {
            DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) itemAnimator;
            if (childViewHolderInt.getUnmodifiedPayloads().isEmpty() && defaultItemAnimator.mSupportsChangeAnimations && !childViewHolderInt.isInvalid()) {
                if (((ArrayList) this.monitor) == null) {
                    this.monitor = new ArrayList();
                }
                childViewHolderInt.mScrapContainer = this;
                childViewHolderInt.mInChangeScrap = true;
                ((ArrayList) this.monitor).add(childViewHolderInt);
                return;
            }
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !recyclerView.mAdapter.mHasStableIds) {
            UriKt$$ExternalSyntheticBUOutline0.m("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.".concat(recyclerView.exceptionLabel()));
            return;
        }
        childViewHolderInt.mScrapContainer = this;
        childViewHolderInt.mInChangeScrap = false;
        ((ArrayList) this.config).add(childViewHolderInt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:180:0x04f5, code lost:
    
        if ((r10 + r8) >= r31) goto L257;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0642  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0662 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x064c  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0551  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x05cb  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0639  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.recyclerview.widget.RecyclerView.ViewHolder tryGetViewHolderForPositionByDeadline(int r30, long r31) {
        /*
            Method dump skipped, instructions count: 1677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.stream.MimeTokenStream.tryGetViewHolderForPositionByDeadline(int, long):androidx.recyclerview.widget.RecyclerView$ViewHolder");
    }

    public void unscrapView(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder.mInChangeScrap) {
            ((ArrayList) this.monitor).remove(viewHolder);
        } else {
            ((ArrayList) this.config).remove(viewHolder);
        }
        viewHolder.mScrapContainer = null;
        viewHolder.mInChangeScrap = false;
        viewHolder.mFlags &= -33;
    }

    public void updateViewCacheSize() {
        ArrayList arrayList = (ArrayList) this.fieldBuilder;
        RecyclerView.LayoutManager layoutManager = ((RecyclerView) this.currentStateMachine).mLayout;
        this.recursionMode = this.state + (layoutManager != null ? layoutManager.mPrefetchMaxCountObserved : 0);
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.recursionMode; size--) {
            recycleCachedViewAt(size);
        }
    }

    public MimeTokenStream(RecyclerView recyclerView) {
        this.currentStateMachine = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.config = arrayList;
        this.monitor = null;
        this.fieldBuilder = new ArrayList();
        this.bodyDescBuilder = DesugarCollections.unmodifiableList(arrayList);
        this.state = 2;
        this.recursionMode = 2;
    }
}
