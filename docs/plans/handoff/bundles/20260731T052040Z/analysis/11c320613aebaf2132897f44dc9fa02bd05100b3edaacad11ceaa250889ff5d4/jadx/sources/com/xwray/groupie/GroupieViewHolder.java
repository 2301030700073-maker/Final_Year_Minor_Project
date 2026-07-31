package com.xwray.groupie;

import android.view.View;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class GroupieViewHolder extends RecyclerView.ViewHolder {
    public Item item;
    public final Preference.AnonymousClass1 onClickListener;
    public OnItemClickListener onItemClickListener;
    public OnItemLongClickListener onItemLongClickListener;
    public final AnonymousClass2 onLongClickListener;

    /* JADX WARN: Type inference failed for: r2v2, types: [com.xwray.groupie.GroupieViewHolder$2] */
    public GroupieViewHolder(View view) {
        super(view);
        this.onClickListener = new Preference.AnonymousClass1(this, 8);
        this.onLongClickListener = new View.OnLongClickListener() { // from class: com.xwray.groupie.GroupieViewHolder.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                GroupieViewHolder groupieViewHolder = GroupieViewHolder.this;
                if (groupieViewHolder.onItemLongClickListener == null || groupieViewHolder.getBindingAdapterPosition() == -1) {
                    return false;
                }
                return groupieViewHolder.onItemLongClickListener.onItemLongClick(groupieViewHolder.item, view2);
            }
        };
    }
}
