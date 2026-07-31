package androidx.paging.compose;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.paging.AsyncPagingDataDiffer$presenter$1;
import androidx.paging.CombinedLoadStates;
import androidx.paging.ItemSnapshotList;
import androidx.paging.LoadStates;
import androidx.paging.PagingData;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyPagingItems {
    public final Flow flow;
    public final ParcelableSnapshotMutableState itemSnapshotList$delegate;
    public final ParcelableSnapshotMutableState loadState$delegate;
    public final AsyncPagingDataDiffer$presenter$1 pagingDataPresenter;

    public LazyPagingItems(Flow flow) {
        this.flow = flow;
        AsyncPagingDataDiffer$presenter$1 asyncPagingDataDiffer$presenter$1 = new AsyncPagingDataDiffer$presenter$1(this, UiDispatcher_androidKt.uiDispatcher, flow instanceof SharedFlow ? (PagingData) CollectionsKt.firstOrNull(((SharedFlow) flow).getReplayCache()) : null);
        this.pagingDataPresenter = asyncPagingDataDiffer$presenter$1;
        this.itemSnapshotList$delegate = Updater.mutableStateOf$default(asyncPagingDataDiffer$presenter$1.snapshot());
        CombinedLoadStates combinedLoadStates = (CombinedLoadStates) asyncPagingDataDiffer$presenter$1.loadStateFlow.$$delegate_0.getValue();
        if (combinedLoadStates == null) {
            LoadStates loadStates = LazyPagingItemsKt.InitialLoadStates;
            combinedLoadStates = new CombinedLoadStates(loadStates.refresh, loadStates.prepend, loadStates.append, loadStates, null);
        }
        this.loadState$delegate = Updater.mutableStateOf$default(combinedLoadStates);
    }

    public final int getItemCount() {
        return ((ItemSnapshotList) this.itemSnapshotList$delegate.getValue()).getSize();
    }
}
