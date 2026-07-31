package com.xwray.groupie;

import androidx.recyclerview.widget.DiffUtil;
import androidx.sqlite.SQLite;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DiffCallback extends DiffUtil {
    public final int newBodyItemCount;
    public final Collection newGroups;
    public final int oldBodyItemCount;
    public final ArrayList oldGroups;

    public DiffCallback(ArrayList arrayList, Collection collection) {
        this.oldBodyItemCount = SQLite.getItemCount(arrayList);
        this.newBodyItemCount = SQLite.getItemCount(collection);
        this.oldGroups = arrayList;
        this.newGroups = collection;
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final boolean areContentsTheSame(int i, int i2) {
        return SQLite.getItem(i2, this.newGroups).equals(SQLite.getItem(i, this.oldGroups));
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final boolean areItemsTheSame(int i, int i2) {
        Item item = SQLite.getItem(i, this.oldGroups);
        Item item2 = SQLite.getItem(i2, this.newGroups);
        return item2.getLayout() == item.getLayout() && item2.getId() == item.getId();
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final Object getChangePayload(int i, int i2) {
        Item item = SQLite.getItem(i, this.oldGroups);
        SQLite.getItem(i2, this.newGroups);
        item.getClass();
        return null;
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final int getNewListSize() {
        return this.newBodyItemCount;
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final int getOldListSize() {
        return this.oldBodyItemCount;
    }
}
