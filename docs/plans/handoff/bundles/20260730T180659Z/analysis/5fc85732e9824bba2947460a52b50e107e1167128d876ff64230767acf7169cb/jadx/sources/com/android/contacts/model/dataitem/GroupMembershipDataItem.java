package com.android.contacts.model.dataitem;

import android.content.ContentValues;

/* loaded from: classes.dex */
public class GroupMembershipDataItem extends DataItem {
    GroupMembershipDataItem(ContentValues contentValues) {
        super(contentValues);
    }

    public Long getGroupRowId() {
        return getContentValues().getAsLong("data1");
    }
}
