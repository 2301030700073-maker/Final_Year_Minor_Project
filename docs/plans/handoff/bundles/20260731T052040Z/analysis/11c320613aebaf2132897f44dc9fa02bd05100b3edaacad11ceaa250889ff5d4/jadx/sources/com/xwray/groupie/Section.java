package com.xwray.groupie;

import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.DiffUtil;
import androidx.sqlite.SQLite;
import com.xwray.groupie.viewbinding.BindableItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import okhttp3.ConnectionPool;
import okhttp3.Headers;
import org.schabi.newpipe.info_list.StreamSegmentItem;
import org.schabi.newpipe.local.subscription.item.ImportSubscriptionsHintPlaceholderItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Section implements Group, GroupDataObserver {
    public final ArrayList children;
    public final Group header;
    public boolean hideWhenEmpty;
    public boolean isHeaderAndFooterVisible;
    public boolean isPlaceholderVisible;
    public final ConnectionPool listUpdateCallback;
    public final Headers.Builder observable;
    public ImportSubscriptionsHintPlaceholderItem placeholder;

    public Section(BindableItem bindableItem, List list) {
        this.observable = new Headers.Builder(1);
        ArrayList arrayList = new ArrayList();
        this.children = arrayList;
        this.hideWhenEmpty = false;
        this.isHeaderAndFooterVisible = true;
        this.isPlaceholderVisible = false;
        this.listUpdateCallback = new ConnectionPool(this, 12);
        this.header = bindableItem;
        if (bindableItem != null) {
            bindableItem.parentDataObserver = this;
        }
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Group) it.next()).registerGroupDataObserver(this);
        }
        int itemCountWithoutFooter = getItemCountWithoutFooter();
        arrayList.addAll(list);
        notifyItemRangeInserted(itemCountWithoutFooter, SQLite.getItemCount(list));
        refreshEmptyState();
    }

    public final void clear() {
        ArrayList arrayList = this.children;
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        if (arrayList2.isEmpty()) {
            return;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((Group) it.next()).unregisterGroupDataObserver(this);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Group group = (Group) it2.next();
            int itemCountBeforeGroup = getItemCountBeforeGroup(group);
            arrayList.remove(group);
            this.observable.onItemRangeRemoved(this, itemCountBeforeGroup, group.getItemCount());
        }
        refreshEmptyState();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    public final Group getGroup(int i) {
        if (getHeaderCount() > 0 && i == 0) {
            return this.header;
        }
        int headerCount = i - getHeaderCount();
        ?? r0 = this.isPlaceholderVisible;
        if (r0 > 0 && headerCount == 0) {
            return this.placeholder;
        }
        int i2 = headerCount - (r0 == true ? 1 : 0);
        ArrayList arrayList = this.children;
        if (i2 != arrayList.size()) {
            return (Group) arrayList.get(i2);
        }
        StringBuilder m179m = Modifier.CC.m179m("Wanted group at position ", i2, " but there are only ");
        m179m.append(getGroupCount());
        m179m.append(" groups");
        throw new IndexOutOfBoundsException(m179m.toString());
    }

    public final int getGroupCount() {
        return this.children.size() + getHeaderCount() + (this.isPlaceholderVisible ? 1 : 0);
    }

    public final int getHeaderCount() {
        return (this.header == null || !this.isHeaderAndFooterVisible) ? 0 : 1;
    }

    public final int getHeaderItemCount() {
        if (getHeaderCount() == 0) {
            return 0;
        }
        return this.header.getItemCount();
    }

    @Override // com.xwray.groupie.Group
    public final Item getItem(int i) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < getGroupCount()) {
            Group group = getGroup(i2);
            int itemCount = group.getItemCount() + i3;
            if (itemCount > i) {
                return group.getItem(i - i3);
            }
            i2++;
            i3 = itemCount;
        }
        StringBuilder m179m = Modifier.CC.m179m("Wanted item at ", i, " but there are only ");
        m179m.append(getItemCount());
        m179m.append(" items");
        throw new IndexOutOfBoundsException(m179m.toString());
    }

    @Override // com.xwray.groupie.Group
    public final int getItemCount() {
        int i = 0;
        for (int i2 = 0; i2 < getGroupCount(); i2++) {
            i += getGroup(i2).getItemCount();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public final int getItemCountBeforeGroup(Group group) {
        int headerCount;
        if (getHeaderCount() <= 0 || group != this.header) {
            headerCount = getHeaderCount();
            ?? r2 = this.isPlaceholderVisible;
            if (r2 <= 0 || group != this.placeholder) {
                int i = headerCount + (r2 == true ? 1 : 0);
                ArrayList arrayList = this.children;
                int indexOf = arrayList.indexOf(group);
                if (indexOf >= 0) {
                    headerCount = i + indexOf;
                } else {
                    arrayList.size();
                    headerCount = -1;
                }
            }
        } else {
            headerCount = 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < headerCount; i3++) {
            i2 += getGroup(i3).getItemCount();
        }
        return i2;
    }

    public final int getItemCountWithoutFooter() {
        boolean z = this.isPlaceholderVisible;
        return getHeaderItemCount() + (z ? (!z || this.placeholder == null) ? 0 : 1 : SQLite.getItemCount(this.children));
    }

    @Override // com.xwray.groupie.Group
    public final int getPosition(StreamSegmentItem streamSegmentItem) {
        int i = 0;
        for (int i2 = 0; i2 < getGroupCount(); i2++) {
            Group group = getGroup(i2);
            int position = group.getPosition(streamSegmentItem);
            if (position >= 0) {
                return position + i;
            }
            i += group.getItemCount();
        }
        return -1;
    }

    public final void notifyItemRangeInserted(int i, int i2) {
        this.observable.onItemRangeInserted(this, i, i2);
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemChanged(Group group, int i, Integer num) {
        int itemCountBeforeGroup = getItemCountBeforeGroup(group) + i;
        ArrayList arrayList = this.observable.namesAndValues;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((GroupDataObserver) arrayList.get(size)).onItemChanged(this, itemCountBeforeGroup, num);
        }
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemMoved(Group group, int i, int i2) {
        int itemCountBeforeGroup = getItemCountBeforeGroup(group);
        this.observable.onItemMoved(this, i + itemCountBeforeGroup, itemCountBeforeGroup + i2);
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemRangeChanged(Group group, int i, int i2, Object obj) {
        this.observable.onItemRangeChanged(this, getItemCountBeforeGroup(group) + i, i2, obj);
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemRangeInserted(Section section, int i, int i2) {
        this.observable.onItemRangeInserted(this, getItemCountBeforeGroup(section) + i, i2);
        refreshEmptyState();
    }

    @Override // com.xwray.groupie.GroupDataObserver
    public final void onItemRangeRemoved(Section section, int i, int i2) {
        this.observable.onItemRangeRemoved(this, getItemCountBeforeGroup(section) + i, i2);
        refreshEmptyState();
    }

    public final void refreshEmptyState() {
        ArrayList arrayList = this.children;
        boolean isEmpty = arrayList.isEmpty();
        Headers.Builder builder = this.observable;
        if (!isEmpty && SQLite.getItemCount(arrayList) != 0) {
            if (this.isPlaceholderVisible && this.placeholder != null) {
                this.isPlaceholderVisible = false;
                int headerItemCount = getHeaderItemCount();
                this.placeholder.getClass();
                builder.onItemRangeRemoved(this, headerItemCount, 1);
            }
            if (this.isHeaderAndFooterVisible) {
                return;
            }
            this.isHeaderAndFooterVisible = true;
            notifyItemRangeInserted(0, getHeaderItemCount());
            notifyItemRangeInserted(getItemCountWithoutFooter(), 0);
            return;
        }
        if (this.hideWhenEmpty) {
            if (this.isHeaderAndFooterVisible || this.isPlaceholderVisible) {
                int headerItemCount2 = getHeaderItemCount();
                int i = (!this.isPlaceholderVisible || this.placeholder == null) ? 0 : 1;
                this.isHeaderAndFooterVisible = false;
                this.isPlaceholderVisible = false;
                builder.onItemRangeRemoved(this, 0, i + headerItemCount2);
                return;
            }
            return;
        }
        if (!this.isPlaceholderVisible && this.placeholder != null) {
            this.isPlaceholderVisible = true;
            int headerItemCount3 = getHeaderItemCount();
            this.placeholder.getClass();
            notifyItemRangeInserted(headerItemCount3, 1);
        }
        if (this.isHeaderAndFooterVisible) {
            return;
        }
        this.isHeaderAndFooterVisible = true;
        notifyItemRangeInserted(0, getHeaderItemCount());
        notifyItemRangeInserted(getItemCountWithoutFooter(), 0);
    }

    @Override // com.xwray.groupie.Group
    public final void registerGroupDataObserver(GroupDataObserver groupDataObserver) {
        Headers.Builder builder = this.observable;
        synchronized (builder.namesAndValues) {
            try {
                if (builder.namesAndValues.contains(groupDataObserver)) {
                    throw new IllegalStateException("Observer " + groupDataObserver + " is already registered.");
                }
                builder.namesAndValues.add(groupDataObserver);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.xwray.groupie.Group
    public final void unregisterGroupDataObserver(GroupDataObserver groupDataObserver) {
        Headers.Builder builder = this.observable;
        synchronized (builder.namesAndValues) {
            builder.namesAndValues.remove(builder.namesAndValues.indexOf(groupDataObserver));
        }
    }

    public final void update(Collection collection, boolean z) {
        ArrayList arrayList = this.children;
        DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffCallback(new ArrayList(arrayList), collection), z);
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
        calculateDiff.dispatchUpdatesTo(this.listUpdateCallback);
        refreshEmptyState();
    }

    public Section() {
        this(null, new ArrayList());
    }
}
