package com.android.contacts.model.dataitem;

import android.content.ContentValues;

/* loaded from: classes.dex */
public class SipAddressDataItem extends DataItem {
    SipAddressDataItem(ContentValues contentValues) {
        super(contentValues);
    }

    public String getSipAddress() {
        return getContentValues().getAsString("data1");
    }

    public String getLabel() {
        return getContentValues().getAsString("data3");
    }
}
