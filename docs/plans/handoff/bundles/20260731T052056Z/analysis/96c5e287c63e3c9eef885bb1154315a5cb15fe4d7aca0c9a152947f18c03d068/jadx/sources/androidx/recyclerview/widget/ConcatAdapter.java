package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.compose.animation.core.Animation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import com.google.android.material.expandable.ExpandableWidgetHelper;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConcatAdapter extends RecyclerView.Adapter {
    public final FragmentNewsBinding mController;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Config {
        public static final Config DEFAULT = new Config(StableIdMode.NO_STABLE_IDS);
        public final StableIdMode stableIdMode;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class StableIdMode {
            private static final /* synthetic */ StableIdMode[] $VALUES;
            public static final StableIdMode ISOLATED_STABLE_IDS;
            public static final StableIdMode NO_STABLE_IDS;
            public static final StableIdMode SHARED_STABLE_IDS;

            static {
                StableIdMode stableIdMode = new StableIdMode("NO_STABLE_IDS", 0);
                NO_STABLE_IDS = stableIdMode;
                StableIdMode stableIdMode2 = new StableIdMode("ISOLATED_STABLE_IDS", 1);
                ISOLATED_STABLE_IDS = stableIdMode2;
                StableIdMode stableIdMode3 = new StableIdMode("SHARED_STABLE_IDS", 2);
                SHARED_STABLE_IDS = stableIdMode3;
                $VALUES = new StableIdMode[]{stableIdMode, stableIdMode2, stableIdMode3};
            }

            public static StableIdMode valueOf(String str) {
                return (StableIdMode) Enum.valueOf(StableIdMode.class, str);
            }

            public static StableIdMode[] values() {
                return (StableIdMode[]) $VALUES.clone();
            }
        }

        public Config(StableIdMode stableIdMode) {
            this.stableIdMode = stableIdMode;
        }
    }

    public ConcatAdapter(RecyclerView.Adapter... adapterArr) {
        Config config = Config.DEFAULT;
        List asList = Arrays.asList(adapterArr);
        this.mController = new FragmentNewsBinding(this);
        Iterator it = asList.iterator();
        while (it.hasNext()) {
            addAdapter((RecyclerView.Adapter) it.next());
        }
        setHasStableIds(((Config.StableIdMode) this.mController.toolbar) != Config.StableIdMode.NO_STABLE_IDS);
    }

    public final void addAdapter(RecyclerView.Adapter adapter) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        fragmentNewsBinding.addAdapter(((ArrayList) fragmentNewsBinding.newsStoryItemsRecyclerview).size(), adapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int findRelativeAdapterPositionIn(RecyclerView.Adapter adapter, RecyclerView.ViewHolder viewHolder, int i) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) ((IdentityHashMap) fragmentNewsBinding.headerImageView).get(viewHolder);
        if (nestedAdapterWrapper == null) {
            return -1;
        }
        RecyclerView.Adapter adapter2 = nestedAdapterWrapper.adapter;
        int countItemsBefore = i - fragmentNewsBinding.countItemsBefore(nestedAdapterWrapper);
        int itemCount = adapter2.getItemCount();
        if (countItemsBefore >= 0 && countItemsBefore < itemCount) {
            return adapter2.findRelativeAdapterPositionIn(adapter, viewHolder, countItemsBefore);
        }
        StringBuilder m = Animation.CC.m(countItemsBefore, itemCount, "Detected inconsistent adapter updates. The local position of the view holder maps to ", " which is out of bounds for the adapter with size ", ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:");
        m.append(viewHolder);
        m.append("adapter:");
        m.append(adapter);
        throw new IllegalStateException(m.toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        Iterator it = ((ArrayList) this.mController.newsStoryItemsRecyclerview).iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((NestedAdapterWrapper) it.next()).mCachedItemCount;
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        ExpandableWidgetHelper findWrapperAndLocalPosition = fragmentNewsBinding.findWrapperAndLocalPosition(i);
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) findWrapperAndLocalPosition.widget;
        long localToGlobal = nestedAdapterWrapper.mStableIdLookup.localToGlobal(nestedAdapterWrapper.adapter.getItemId(findWrapperAndLocalPosition.expandedComponentIdHint));
        findWrapperAndLocalPosition.expanded = false;
        findWrapperAndLocalPosition.widget = null;
        findWrapperAndLocalPosition.expandedComponentIdHint = -1;
        fragmentNewsBinding.storyTextView = findWrapperAndLocalPosition;
        return localToGlobal;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        int i2;
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        ExpandableWidgetHelper findWrapperAndLocalPosition = fragmentNewsBinding.findWrapperAndLocalPosition(i);
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) findWrapperAndLocalPosition.widget;
        int i3 = findWrapperAndLocalPosition.expandedComponentIdHint;
        ImageLoader$Builder imageLoader$Builder = nestedAdapterWrapper.mViewTypeLookup;
        int itemViewType = nestedAdapterWrapper.adapter.getItemViewType(i3);
        SparseIntArray sparseIntArray = (SparseIntArray) imageLoader$Builder.application;
        int indexOfKey = sparseIntArray.indexOfKey(itemViewType);
        if (indexOfKey > -1) {
            i2 = sparseIntArray.valueAt(indexOfKey);
        } else {
            PriorityQueue priorityQueue = (PriorityQueue) imageLoader$Builder.extras;
            NestedAdapterWrapper nestedAdapterWrapper2 = (NestedAdapterWrapper) imageLoader$Builder.componentRegistry;
            int i4 = priorityQueue.size;
            priorityQueue.size = i4 + 1;
            ((SparseArray) priorityQueue.array).put(i4, nestedAdapterWrapper2);
            sparseIntArray.put(itemViewType, i4);
            ((SparseIntArray) imageLoader$Builder.defaults).put(i4, itemViewType);
            i2 = i4;
        }
        findWrapperAndLocalPosition.expanded = false;
        findWrapperAndLocalPosition.widget = null;
        findWrapperAndLocalPosition.expandedComponentIdHint = -1;
        fragmentNewsBinding.storyTextView = findWrapperAndLocalPosition;
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        ArrayList arrayList = (ArrayList) fragmentNewsBinding.gradientView;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((WeakReference) it.next()).get() == recyclerView) {
                return;
            }
        }
        arrayList.add(new WeakReference(recyclerView));
        Iterator it2 = ((ArrayList) fragmentNewsBinding.newsStoryItemsRecyclerview).iterator();
        while (it2.hasNext()) {
            ((NestedAdapterWrapper) it2.next()).adapter.onAttachedToRecyclerView(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        ExpandableWidgetHelper findWrapperAndLocalPosition = fragmentNewsBinding.findWrapperAndLocalPosition(i);
        ((IdentityHashMap) fragmentNewsBinding.headerImageView).put(viewHolder, (NestedAdapterWrapper) findWrapperAndLocalPosition.widget);
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) findWrapperAndLocalPosition.widget;
        nestedAdapterWrapper.adapter.bindViewHolder(viewHolder, findWrapperAndLocalPosition.expandedComponentIdHint);
        findWrapperAndLocalPosition.expanded = false;
        findWrapperAndLocalPosition.widget = null;
        findWrapperAndLocalPosition.expandedComponentIdHint = -1;
        fragmentNewsBinding.storyTextView = findWrapperAndLocalPosition;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        int i2;
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) ((SparseArray) ((PriorityQueue) this.mController.appBarLayout).array).get(i);
        if (nestedAdapterWrapper == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Cannot find the wrapper for global view type "));
            return null;
        }
        ImageLoader$Builder imageLoader$Builder = nestedAdapterWrapper.mViewTypeLookup;
        SparseIntArray sparseIntArray = (SparseIntArray) imageLoader$Builder.defaults;
        int indexOfKey = sparseIntArray.indexOfKey(i);
        if (indexOfKey >= 0) {
            i2 = sparseIntArray.valueAt(indexOfKey);
        } else {
            Gson$$ExternalSyntheticBUOutline0.m(Animation.CC.m20m(i, "requested global type ", " does not belong to the adapter:"), ((NestedAdapterWrapper) imageLoader$Builder.componentRegistry).adapter);
            i2 = 0;
        }
        return nestedAdapterWrapper.adapter.onCreateViewHolder(viewGroup, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        ArrayList arrayList = (ArrayList) fragmentNewsBinding.gradientView;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            WeakReference weakReference = (WeakReference) arrayList.get(size);
            if (weakReference.get() == null) {
                arrayList.remove(size);
            } else if (weakReference.get() == recyclerView) {
                arrayList.remove(size);
                break;
            }
            size--;
        }
        Iterator it = ((ArrayList) fragmentNewsBinding.newsStoryItemsRecyclerview).iterator();
        while (it.hasNext()) {
            ((NestedAdapterWrapper) it.next()).adapter.onDetachedFromRecyclerView(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        IdentityHashMap identityHashMap = (IdentityHashMap) fragmentNewsBinding.headerImageView;
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) identityHashMap.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m$1("Cannot find wrapper for ", viewHolder, ", seems like it is not bound by this adapter: ", fragmentNewsBinding);
            return false;
        }
        boolean onFailedToRecycleView = nestedAdapterWrapper.adapter.onFailedToRecycleView(viewHolder);
        identityHashMap.remove(viewHolder);
        return onFailedToRecycleView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        this.mController.getWrapper(viewHolder).adapter.onViewAttachedToWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        this.mController.getWrapper(viewHolder).adapter.onViewDetachedFromWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        IdentityHashMap identityHashMap = (IdentityHashMap) fragmentNewsBinding.headerImageView;
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) identityHashMap.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m$1("Cannot find wrapper for ", viewHolder, ", seems like it is not bound by this adapter: ", fragmentNewsBinding);
        } else {
            nestedAdapterWrapper.adapter.onViewRecycled(viewHolder);
            identityHashMap.remove(viewHolder);
        }
    }

    public final void removeAdapter(RecyclerView.Adapter adapter) {
        FragmentNewsBinding fragmentNewsBinding = this.mController;
        ArrayList arrayList = (ArrayList) fragmentNewsBinding.newsStoryItemsRecyclerview;
        int indexOfWrapper = fragmentNewsBinding.indexOfWrapper(adapter);
        if (indexOfWrapper == -1) {
            return;
        }
        NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) arrayList.get(indexOfWrapper);
        int countItemsBefore = fragmentNewsBinding.countItemsBefore(nestedAdapterWrapper);
        arrayList.remove(indexOfWrapper);
        ((ConcatAdapter) fragmentNewsBinding.rootView).mObservable.notifyItemRangeRemoved(countItemsBefore, nestedAdapterWrapper.mCachedItemCount);
        Iterator it = ((ArrayList) fragmentNewsBinding.gradientView).iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = (RecyclerView) ((WeakReference) it.next()).get();
            if (recyclerView != null) {
                adapter.onDetachedFromRecyclerView(recyclerView);
            }
        }
        nestedAdapterWrapper.adapter.unregisterAdapterDataObserver(nestedAdapterWrapper.mAdapterObserver);
        ImageLoader$Builder imageLoader$Builder = nestedAdapterWrapper.mViewTypeLookup;
        PriorityQueue priorityQueue = (PriorityQueue) imageLoader$Builder.extras;
        NestedAdapterWrapper nestedAdapterWrapper2 = (NestedAdapterWrapper) imageLoader$Builder.componentRegistry;
        SparseArray sparseArray = (SparseArray) priorityQueue.array;
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            if (((NestedAdapterWrapper) sparseArray.valueAt(size)) == nestedAdapterWrapper2) {
                sparseArray.removeAt(size);
            }
        }
        fragmentNewsBinding.calculateAndUpdateStateRestorationPolicy();
    }

    public final void addAdapter(int i, RecyclerView.Adapter adapter) {
        this.mController.addAdapter(i, adapter);
    }
}
