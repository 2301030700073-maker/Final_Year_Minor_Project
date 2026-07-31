package androidx.recyclerview.widget;

import androidx.paging.PagingDataAdapter$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import coil3.ImageLoader$Builder;
import okio.PriorityQueue;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NestedAdapterWrapper {
    public final RecyclerView.Adapter adapter;
    public final PagingDataAdapter$1 mAdapterObserver;
    public int mCachedItemCount;
    public final FragmentNewsBinding mCallback;
    public final StableIdStorage.StableIdLookup mStableIdLookup;
    public final ImageLoader$Builder mViewTypeLookup;

    public NestedAdapterWrapper(RecyclerView.Adapter adapter, FragmentNewsBinding fragmentNewsBinding, PriorityQueue priorityQueue, StableIdStorage.StableIdLookup stableIdLookup) {
        PagingDataAdapter$1 pagingDataAdapter$1 = new PagingDataAdapter$1(1, this);
        this.mAdapterObserver = pagingDataAdapter$1;
        this.adapter = adapter;
        this.mCallback = fragmentNewsBinding;
        this.mViewTypeLookup = new ImageLoader$Builder(priorityQueue, this);
        this.mStableIdLookup = stableIdLookup;
        this.mCachedItemCount = adapter.getItemCount();
        adapter.registerAdapterDataObserver(pagingDataAdapter$1);
    }
}
