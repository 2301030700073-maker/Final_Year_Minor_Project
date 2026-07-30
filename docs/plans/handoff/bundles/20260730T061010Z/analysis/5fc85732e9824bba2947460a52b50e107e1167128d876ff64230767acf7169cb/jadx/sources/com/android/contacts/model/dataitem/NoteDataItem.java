package com.android.contacts.model.dataitem;

import android.content.ContentValues;

/* loaded from: classes.dex */
public class NoteDataItem extends DataItem {
    NoteDataItem(ContentValues contentValues) {
        super(contentValues);
    }

    public String getNote() {
        return getContentValues().getAsString("data1");
    }
}
