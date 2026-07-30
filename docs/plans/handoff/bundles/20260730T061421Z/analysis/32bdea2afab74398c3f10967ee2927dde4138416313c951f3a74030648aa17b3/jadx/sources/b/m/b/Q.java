package b.m.b;

import android.os.Trace;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$Adapter$StateRestorationPolicy;

/* loaded from: classes.dex */
public abstract class Q {
    public final S mObservable = new S();
    public boolean mHasStableIds = false;
    public RecyclerView$Adapter$StateRestorationPolicy mStateRestorationPolicy = RecyclerView$Adapter$StateRestorationPolicy.ALLOW;

    public final w0 createViewHolder(ViewGroup viewGroup, int i) {
        try {
            Trace.beginSection(RecyclerView.TRACE_CREATE_VIEW_TAG);
            w0 onCreateViewHolder = onCreateViewHolder(viewGroup, i);
            if (onCreateViewHolder.itemView.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            onCreateViewHolder.mItemViewType = i;
            return onCreateViewHolder;
        } finally {
            Trace.endSection();
        }
    }

    public abstract int getItemCount();

    public long getItemId(int i) {
        return -1L;
    }

    public int getItemViewType(int i) {
        return 0;
    }

    public abstract void onBindViewHolder(w0 w0Var, int i);

    public abstract w0 onCreateViewHolder(ViewGroup viewGroup, int i);

    public boolean onFailedToRecycleView(w0 w0Var) {
        return false;
    }

    public void onViewRecycled(w0 w0Var) {
    }
}
