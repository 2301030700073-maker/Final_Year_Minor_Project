package com.android.contacts.model.dataitem;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class RelationDataItem extends DataItem {
    RelationDataItem(ContentValues contentValues) {
        super(contentValues);
    }

    public String getName() {
        return getContentValues().getAsString("data1");
    }

    public String getLabel() {
        return getContentValues().getAsString("data3");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.contacts.model.dataitem.DataItem, com.android.contacts.Collapser.Collapsible
    public boolean shouldCollapseWith(DataItem dataItem, Context context) {
        if (!(dataItem instanceof RelationDataItem) || this.mKind == null || dataItem.getDataKind() == null) {
            return false;
        }
        RelationDataItem relationDataItem = (RelationDataItem) dataItem;
        if (!TextUtils.equals(getName(), relationDataItem.getName())) {
            return false;
        }
        if (!hasKindTypeColumn(this.mKind) || !relationDataItem.hasKindTypeColumn(relationDataItem.getDataKind())) {
            return hasKindTypeColumn(this.mKind) == relationDataItem.hasKindTypeColumn(relationDataItem.getDataKind());
        }
        if (getKindTypeColumn(this.mKind) != relationDataItem.getKindTypeColumn(relationDataItem.getDataKind())) {
            return false;
        }
        return getKindTypeColumn(this.mKind) != 0 || TextUtils.equals(getLabel(), relationDataItem.getLabel());
    }
}
