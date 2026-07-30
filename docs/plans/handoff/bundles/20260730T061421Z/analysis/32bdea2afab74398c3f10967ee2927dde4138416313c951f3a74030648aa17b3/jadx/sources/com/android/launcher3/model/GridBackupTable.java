package com.android.launcher3.model;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Process;
import android.util.Log;
import b.l.W;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.pm.UserCache;

/* loaded from: classes.dex */
public class GridBackupTable {
    public final Context mContext;
    public final SQLiteDatabase mDb;
    public final int mOldGridX;
    public final int mOldGridY;
    public final int mOldHotseatSize;
    public int mRestoredGridX;
    public int mRestoredGridY;
    public int mRestoredHotseatSize;

    public GridBackupTable(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2, int i3) {
        this.mContext = context;
        this.mDb = sQLiteDatabase;
        this.mOldHotseatSize = i;
        this.mOldGridX = i2;
        this.mOldGridY = i3;
    }

    public static void copyTable(SQLiteDatabase sQLiteDatabase, String str, String str2, long j) {
        W.dropTable(sQLiteDatabase, str2);
        LauncherSettings$Favorites.addTableToDb(sQLiteDatabase, j, false, str2);
        sQLiteDatabase.execSQL("INSERT INTO " + str2 + " SELECT * FROM " + str + " where _id > -1");
    }

    public boolean backupOrRestoreAsNeeded() {
        if (W.tableExists(this.mDb, "favorites_bakup")) {
            return restoreIfBackupExists("favorites");
        }
        if (LauncherSettings$Settings.call(this.mContext.getContentResolver(), "get_empty_db_flag").getBoolean("value", false)) {
            return false;
        }
        copyTable(this.mDb, "favorites", "favorites_bakup", ((UserCache) UserCache.INSTANCE.b(this.mContext)).getSerialNumberForUser(Process.myUserHandle()));
        encodeDBProperties(0);
        return false;
    }

    public final void encodeDBProperties(int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", (Integer) (-1));
        contentValues.put("rank", Integer.valueOf(this.mDb.getVersion()));
        contentValues.put("spanX", Integer.valueOf(this.mOldGridX));
        contentValues.put("spanY", Integer.valueOf(this.mOldGridY));
        contentValues.put("screen", Integer.valueOf(this.mOldHotseatSize));
        contentValues.put("options", Integer.valueOf(i));
        this.mDb.insert("favorites_bakup", null, contentValues);
    }

    public int loadDBProperties() {
        boolean z;
        Cursor query = this.mDb.query("favorites_bakup", new String[]{"rank", "spanX", "spanY", "screen", "options"}, "_id=-1", null, null, null, null);
        try {
            if (!query.moveToNext()) {
                Log.e("GridBackupTable", "Meta data not found in backup table");
                query.close();
                return 0;
            }
            int version = this.mDb.getVersion();
            int i = query.getInt(0);
            if (version != i) {
                Log.e("GridBackupTable", String.format("Launcher.db version mismatch, expecting %d but %d was found", Integer.valueOf(version), Integer.valueOf(i)));
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                query.close();
                return 0;
            }
            this.mRestoredGridX = query.getInt(1);
            this.mRestoredGridY = query.getInt(2);
            this.mRestoredHotseatSize = query.getInt(3);
            int i2 = (query.getInt(4) & 1) == 0 ? 2 : 1;
            query.close();
            return i2;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final boolean restoreIfBackupExists(String str) {
        if (loadDBProperties() != 2) {
            return false;
        }
        copyTable(this.mDb, "favorites_bakup", str, ((UserCache) UserCache.INSTANCE.b(this.mContext)).getSerialNumberForUser(Process.myUserHandle()));
        Log.d("GridBackupTable", "Backup table found");
        return true;
    }
}
