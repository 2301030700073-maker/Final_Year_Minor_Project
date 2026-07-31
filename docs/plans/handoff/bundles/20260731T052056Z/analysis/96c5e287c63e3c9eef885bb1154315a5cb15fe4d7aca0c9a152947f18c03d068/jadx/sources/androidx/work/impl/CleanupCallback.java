package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CleanupCallback extends RoomDatabase.Callback {
    @Override // androidx.room.RoomDatabase.Callback
    public final void onOpen(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        frameworkSQLiteDatabase.getClass();
        frameworkSQLiteDatabase.beginTransaction();
        try {
            frameworkSQLiteDatabase.execSQL("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + (System.currentTimeMillis() - 86400000) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
            frameworkSQLiteDatabase.setTransactionSuccessful();
        } finally {
            frameworkSQLiteDatabase.endTransaction();
        }
    }
}
