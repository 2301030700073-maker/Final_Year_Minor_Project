package com.xwray.groupie;

import android.view.View;
import androidx.compose.ui.Modifier;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.schabi.newpipe.info_list.StreamSegmentItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Item implements Group {
    public static final AtomicLong ID_COUNTER = new AtomicLong(0);
    public final long id;
    public GroupDataObserver parentDataObserver;

    public Item() {
        long decrementAndGet = ID_COUNTER.decrementAndGet();
        new HashMap();
        this.id = decrementAndGet;
    }

    public abstract void bind(GroupieViewHolder groupieViewHolder);

    public void bind(GroupieViewHolder groupieViewHolder, int i, List list) {
        bind(groupieViewHolder);
    }

    public GroupieViewHolder createViewHolder(View view) {
        return new GroupieViewHolder(view);
    }

    public int getDragDirs() {
        return 0;
    }

    public long getId() {
        return this.id;
    }

    @Override // com.xwray.groupie.Group
    public final Item getItem(int i) {
        if (i == 0) {
            return this;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m("Wanted item at position ", i, " but an Item is a Group of size 1"));
        return null;
    }

    @Override // com.xwray.groupie.Group
    public final int getItemCount() {
        return 1;
    }

    public abstract int getLayout();

    @Override // com.xwray.groupie.Group
    public final int getPosition(StreamSegmentItem streamSegmentItem) {
        return this == streamSegmentItem ? 0 : -1;
    }

    public boolean isLongClickable() {
        return true;
    }

    @Override // com.xwray.groupie.Group
    public final void registerGroupDataObserver(GroupDataObserver groupDataObserver) {
        this.parentDataObserver = groupDataObserver;
    }

    public void unbind(GroupieViewHolder groupieViewHolder) {
        if (groupieViewHolder.onItemClickListener != null) {
            groupieViewHolder.item.getClass();
            groupieViewHolder.itemView.setOnClickListener(null);
        }
        if (groupieViewHolder.onItemLongClickListener != null && groupieViewHolder.item.isLongClickable()) {
            groupieViewHolder.itemView.setOnLongClickListener(null);
        }
        groupieViewHolder.item = null;
        groupieViewHolder.onItemClickListener = null;
        groupieViewHolder.onItemLongClickListener = null;
    }

    @Override // com.xwray.groupie.Group
    public final void unregisterGroupDataObserver(GroupDataObserver groupDataObserver) {
        this.parentDataObserver = null;
    }

    public int getSpanSize(int i) {
        return i;
    }
}
