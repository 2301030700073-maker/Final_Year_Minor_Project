package com.xwray.groupie;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.compose.ui.Modifier;
import androidx.core.app.NotificationCompat$Style;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import us.shandian.giga.ui.fragment.MissionsFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class GroupAdapter extends RecyclerView.Adapter implements GroupDataObserver {
    public final AsyncDiffUtil asyncDiffUtil;
    public final ConnectionPool diffUtilCallbacks;
    public Item lastItemForViewTypeLookup;
    public OnItemClickListener onItemClickListener;
    public OnItemLongClickListener onItemLongClickListener;
    public final AnonymousClass2 spanSizeLookup;
    public final ArrayList groups = new ArrayList();
    public int spanCount = 1;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.xwray.groupie.GroupAdapter$2, reason: invalid class name */
    public final class AnonymousClass2 extends NotificationCompat$Style {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass2(Object obj, int i) {
            super(4);
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // androidx.core.app.NotificationCompat$Style
        public final int getSpanSize(int i) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    GroupAdapter groupAdapter = (GroupAdapter) obj;
                    try {
                        return SQLite.getItem(i, groupAdapter.groups).getSpanSize(groupAdapter.spanCount);
                    } catch (IndexOutOfBoundsException unused) {
                        return groupAdapter.spanCount;
                    }
                default:
                    int itemViewType = ((MissionsFragment) obj).mAdapter.getItemViewType(i);
                    return (itemViewType == 1 || itemViewType == 2) ? 2 : 1;
            }
        }
    }

    public GroupAdapter() {
        ConnectionPool connectionPool = new ConnectionPool(this, 11);
        this.diffUtilCallbacks = connectionPool;
        this.asyncDiffUtil = new AsyncDiffUtil(connectionPool);
        this.spanSizeLookup = new AnonymousClass2(this, 0);
    }

    public final void add(Group group) {
        if (group == null) {
            Node$$ExternalSyntheticBUOutline0.m811m("Group cannot be null");
            return;
        }
        ArrayList arrayList = this.groups;
        int itemCount = SQLite.getItemCount(arrayList);
        group.registerGroupDataObserver(this);
        arrayList.add(group);
        notifyItemRangeInserted(itemCount, group.getItemCount());
    }

    public final void addAll(Collection collection) {
        if (collection.contains(null)) {
            Node$$ExternalSyntheticBUOutline0.m811m("List of groups can't contain null!");
            return;
        }
        ArrayList arrayList = this.groups;
        int itemCount = SQLite.getItemCount(arrayList);
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            Group group = (Group) it.next();
            i += group.getItemCount();
            group.registerGroupDataObserver(this);
        }
        arrayList.addAll(collection);
        notifyItemRangeInserted(itemCount, i);
    }

    public final void clear() {
        ArrayList arrayList = this.groups;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Group) it.next()).unregisterGroupDataObserver(this);
        }
        arrayList.clear();
        notifyDataSetChanged();
    }

    public final int getAdapterPosition(Group group) {
        ArrayList arrayList = this.groups;
        int indexOf = arrayList.indexOf(group);
        if (indexOf == -1) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < indexOf; i2++) {
            i += ((Group) arrayList.get(i2)).getItemCount();
        }
        return i;
    }

    public final Group getGroupAtAdapterPosition(int i) {
        Iterator it = this.groups.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Group group = (Group) it.next();
            if (i - i2 < group.getItemCount()) {
                return group;
            }
            i2 += group.getItemCount();
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Requested position ", i, " in group adapter but there are only ", i2, " items");
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return SQLite.getItemCount(this.groups);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return SQLite.getItem(i, this.groups).getId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        Item item = SQLite.getItem(i, this.groups);
        this.lastItemForViewTypeLookup = item;
        if (item != null) {
            return item.getLayout();
        }
        Node$$ExternalSyntheticBUOutline0.m811m(Modifier.CC.m(i, "Invalid position "));
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        GroupieViewHolder groupieViewHolder = (GroupieViewHolder) viewHolder;
        Item item = SQLite.getItem(i, this.groups);
        OnItemClickListener onItemClickListener = this.onItemClickListener;
        OnItemLongClickListener onItemLongClickListener = this.onItemLongClickListener;
        item.getClass();
        groupieViewHolder.item = item;
        if (onItemClickListener != null) {
            groupieViewHolder.itemView.setOnClickListener(groupieViewHolder.onClickListener);
            groupieViewHolder.onItemClickListener = onItemClickListener;
        }
        if (onItemLongClickListener != null && item.isLongClickable()) {
            groupieViewHolder.itemView.setOnLongClickListener(groupieViewHolder.onLongClickListener);
            groupieViewHolder.onItemLongClickListener = onItemLongClickListener;
        }
        item.bind(groupieViewHolder, i, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Item item;
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        Item item2 = this.lastItemForViewTypeLookup;
        if (item2 == null || item2.getLayout() != i) {
            int i2 = 0;
            while (true) {
                ArrayList arrayList = this.groups;
                if (i2 >= SQLite.getItemCount(arrayList)) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Modifier.CC.m(i, "Could not find model for view type: "));
                    return null;
                }
                Item item3 = SQLite.getItem(i2, arrayList);
                if (item3.getLayout() == i) {
                    item = item3;
                    break;
                }
                i2++;
            }
        } else {
            item = this.lastItemForViewTypeLookup;
        }
        return item.createViewHolder(from.inflate(item.getLayout(), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        ((GroupieViewHolder) viewHolder).item.getClass();
        return true;
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemChanged(Group group, int i, Integer num) {
        notifyItemChanged(getAdapterPosition(group) + i, num);
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemMoved(Group group, int i, int i2) {
        int adapterPosition = getAdapterPosition(group);
        notifyItemMoved(i + adapterPosition, adapterPosition + i2);
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemRangeChanged(Group group, int i, int i2, Object obj) {
        notifyItemRangeChanged(getAdapterPosition(group) + i, i2, obj);
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemRangeInserted(Section section, int i, int i2) {
        notifyItemRangeInserted(getAdapterPosition(section) + i, i2);
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemRangeRemoved(Section section, int i, int i2) {
        notifyItemRangeRemoved(getAdapterPosition(section) + i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        GroupieViewHolder groupieViewHolder = (GroupieViewHolder) viewHolder;
        super.onViewAttachedToWindow(groupieViewHolder);
        groupieViewHolder.item.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        GroupieViewHolder groupieViewHolder = (GroupieViewHolder) viewHolder;
        super.onViewDetachedFromWindow(groupieViewHolder);
        groupieViewHolder.item.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        GroupieViewHolder groupieViewHolder = (GroupieViewHolder) viewHolder;
        groupieViewHolder.item.unbind(groupieViewHolder);
    }

    public final void setNewGroups(Collection collection) {
        ArrayList arrayList = this.groups;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Group) it.next()).unregisterGroupDataObserver(this);
        }
        arrayList.clear();
        arrayList.addAll(collection);
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            ((Group) it2.next()).registerGroupDataObserver(this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
    }
}
