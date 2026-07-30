package com.android.launcher3.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes.dex */
public abstract class NoLocaleSQLiteHelper extends SQLiteOpenHelper {
    public NoLocaleSQLiteHelper(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        setOpenParams(new SQLiteDatabase.OpenParams.Builder().addOpenFlags(16).build());
    }
}
