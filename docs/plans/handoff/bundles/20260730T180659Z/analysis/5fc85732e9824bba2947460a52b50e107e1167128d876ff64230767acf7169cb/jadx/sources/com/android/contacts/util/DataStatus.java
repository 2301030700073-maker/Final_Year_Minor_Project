package com.android.contacts.util;

import android.database.Cursor;

/* loaded from: classes.dex */
public class DataStatus {
    public DataStatus(Cursor cursor) {
        fromCursor(cursor);
    }

    private void fromCursor(Cursor cursor) {
        getInt(cursor, "mode", -1);
        getString(cursor, "status");
        getLong(cursor, "status_ts", -1L);
        getString(cursor, "status_res_package");
        getInt(cursor, "status_icon", -1);
        getInt(cursor, "status_label", -1);
    }

    private static String getString(Cursor cursor, String str) {
        return cursor.getString(cursor.getColumnIndex(str));
    }

    private static int getInt(Cursor cursor, String str, int i) {
        int columnIndex = cursor.getColumnIndex(str);
        return cursor.isNull(columnIndex) ? i : cursor.getInt(columnIndex);
    }

    private static long getLong(Cursor cursor, String str, long j) {
        int columnIndex = cursor.getColumnIndex(str);
        return cursor.isNull(columnIndex) ? j : cursor.getLong(columnIndex);
    }
}
