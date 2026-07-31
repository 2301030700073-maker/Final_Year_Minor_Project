package com.mikepenz.fastadapter.items;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractItem {
    public long identifier = -1;
    public boolean isEnabled = true;
    public boolean isSelected;

    public void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        list.getClass();
        viewHolder.itemView.setSelected(this.isSelected);
    }

    public View createView(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(getLayoutRes(), viewGroup, false);
        inflate.getClass();
        return inflate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        AbstractItem abstractItem = obj instanceof AbstractItem ? (AbstractItem) obj : null;
        return abstractItem != null && getIdentifier() == abstractItem.getIdentifier();
    }

    public long getIdentifier() {
        return this.identifier;
    }

    public abstract int getLayoutRes();

    public abstract int getType();

    public abstract RecyclerView.ViewHolder getViewHolder(View view);

    public final int hashCode() {
        long identifier = getIdentifier();
        return (int) (identifier ^ (identifier >>> 32));
    }

    public void setIdentifier(long j) {
        this.identifier = j;
    }
}
