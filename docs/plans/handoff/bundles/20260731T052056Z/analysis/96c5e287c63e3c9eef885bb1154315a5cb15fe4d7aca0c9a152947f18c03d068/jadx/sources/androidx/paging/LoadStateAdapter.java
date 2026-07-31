package androidx.paging;

import android.view.ViewGroup;
import androidx.paging.LoadState;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LoadStateAdapter extends RecyclerView.Adapter {
    public final /* synthetic */ int $r8$classId;
    public Object loadState;

    public LoadStateAdapter() {
        this.$r8$classId = 0;
        this.loadState = new LoadState.NotLoading(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        switch (this.$r8$classId) {
            case 0:
                LoadState loadState = (LoadState) this.loadState;
                loadState.getClass();
                return ((loadState instanceof LoadState.Loading) || (loadState instanceof LoadState.Error)) ? 1 : 0;
            default:
                return ((List) this.loadState).size();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        switch (this.$r8$classId) {
            case 0:
                ((LoadState) this.loadState).getClass();
                return 0;
            default:
                return super.getItemViewType(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        onBindViewHolder(viewHolder, (LoadState) this.loadState);
    }

    public abstract void onBindViewHolder(RecyclerView.ViewHolder viewHolder, LoadState loadState);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return onCreateViewHolder(viewGroup, (LoadState) this.loadState);
    }

    public abstract RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, LoadState loadState);

    public void setLoadState(LoadState loadState) {
        loadState.getClass();
        if (Intrinsics.areEqual((LoadState) this.loadState, loadState)) {
            return;
        }
        LoadState loadState2 = (LoadState) this.loadState;
        loadState2.getClass();
        boolean z = (loadState2 instanceof LoadState.Loading) || (loadState2 instanceof LoadState.Error);
        boolean z2 = (loadState instanceof LoadState.Loading) || (loadState instanceof LoadState.Error);
        RecyclerView.AdapterDataObservable adapterDataObservable = this.mObservable;
        if (z && !z2) {
            adapterDataObservable.notifyItemRangeRemoved(0, 1);
        } else if (z2 && !z) {
            adapterDataObservable.notifyItemRangeInserted(0, 1);
        } else if (z && z2) {
            notifyItemChanged(0);
        }
        this.loadState = loadState;
    }

    public LoadStateAdapter(List list) {
        this.$r8$classId = 1;
        this.loadState = list;
    }
}
