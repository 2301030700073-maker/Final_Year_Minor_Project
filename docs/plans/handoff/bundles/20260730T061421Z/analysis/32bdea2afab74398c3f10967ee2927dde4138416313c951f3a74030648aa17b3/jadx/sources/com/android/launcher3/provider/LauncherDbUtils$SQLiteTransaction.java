package com.android.launcher3.provider;

import android.database.sqlite.SQLiteDatabase;
import android.os.Binder;

/* loaded from: classes.dex */
public class LauncherDbUtils$SQLiteTransaction extends Binder implements AutoCloseable {
    public final SQLiteDatabase mDb;

    public LauncherDbUtils$SQLiteTransaction(SQLiteDatabase sQLiteDatabase) {
        this.mDb = sQLiteDatabase;
        sQLiteDatabase.beginTransaction();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mDb.endTransaction();
    }
}
