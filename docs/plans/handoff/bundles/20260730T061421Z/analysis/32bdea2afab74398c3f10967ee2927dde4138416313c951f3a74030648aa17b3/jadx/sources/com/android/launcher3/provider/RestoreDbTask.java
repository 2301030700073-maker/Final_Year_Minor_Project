package com.android.launcher3.provider;

import android.app.backup.BackupManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseLongArray;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.AppWidgetsRestoredReceiver;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.GridBackupTable;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.IntArray;
import java.io.InvalidObjectException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class RestoreDbTask {
    public static boolean isPending(Context context) {
        return Utilities.getPrefs(context).getBoolean("restore_task_pending", false);
    }

    public static boolean performRestore(Context context, LauncherProvider.DatabaseHelper databaseHelper, BackupManager backupManager) {
        SQLiteDatabase writableDatabase = databaseHelper.getWritableDatabase();
        try {
            LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = new LauncherDbUtils$SQLiteTransaction(writableDatabase);
            try {
                RestoreDbTask restoreDbTask = new RestoreDbTask();
                restoreDbTask.backupWorkspace(context, writableDatabase);
                restoreDbTask.sanitizeDB(databaseHelper, writableDatabase, backupManager);
                restoreDbTask.restoreAppWidgetIdsIfExists(context);
                launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
                launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                return true;
            } finally {
            }
        } catch (Exception e) {
            FileLog.e("RestoreDbTask", "Failed to verify db", e);
            return false;
        }
    }

    public static void setPending(Context context, boolean z) {
        FileLog.d("RestoreDbTask", "Restore data received through full backup " + z);
        context.getApplicationContext().getSharedPreferences("com.android.launcher3.prefs", 0).edit().putBoolean("restore_task_pending", z).commit();
    }

    public final void backupWorkspace(Context context, SQLiteDatabase sQLiteDatabase) {
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        int i = idp.numHotseatIcons;
        int i2 = idp.numColumns;
        int i3 = idp.numRows;
        GridBackupTable.copyTable(sQLiteDatabase, "favorites", "favorites_bakup", getDefaultProfileId(sQLiteDatabase));
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", (Integer) (-1));
        contentValues.put("rank", Integer.valueOf(sQLiteDatabase.getVersion()));
        contentValues.put("spanX", Integer.valueOf(i2));
        contentValues.put("spanY", Integer.valueOf(i3));
        contentValues.put("screen", Integer.valueOf(i));
        contentValues.put("options", (Integer) 1);
        sQLiteDatabase.insert("favorites_bakup", null, contentValues);
    }

    public long getDefaultProfileId(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info (favorites)", null);
        try {
            int columnIndex = rawQuery.getColumnIndex("name");
            while (rawQuery.moveToNext()) {
                if ("profileId".equals(rawQuery.getString(columnIndex))) {
                    long j = rawQuery.getLong(rawQuery.getColumnIndex("dflt_value"));
                    rawQuery.close();
                    return j;
                }
            }
            throw new InvalidObjectException("Table does not have a profile id column");
        } catch (Throwable th) {
            if (rawQuery != null) {
                try {
                    rawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public void migrateProfileId(SQLiteDatabase sQLiteDatabase, long j, long j2) {
        FileLog.d("RestoreDbTask", "Changing profile user id from " + j + " to " + j2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("profileId", Long.valueOf(j2));
        sQLiteDatabase.update("favorites", contentValues, "profileId = ?", new String[]{Long.toString(j)});
    }

    public final void restoreAppWidgetIdsIfExists(Context context) {
        SharedPreferences prefs = Utilities.getPrefs(context);
        if (prefs.contains("appwidget_old_ids") && prefs.contains("appwidget_ids")) {
            AppWidgetsRestoredReceiver.restoreAppWidgetIds(context, IntArray.fromConcatString(prefs.getString("appwidget_old_ids", "")).toArray(), IntArray.fromConcatString(prefs.getString("appwidget_ids", "")).toArray());
        } else {
            FileLog.d("RestoreDbTask", "No app widget ids to restore.");
        }
        prefs.edit().remove("appwidget_old_ids").remove("appwidget_ids").apply();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void restoreWorkspace(android.content.Context r9, android.database.sqlite.SQLiteDatabase r10, com.android.launcher3.LauncherProvider.DatabaseHelper r11, android.app.backup.BackupManager r12) {
        /*
            r8 = this;
            com.android.launcher3.InvariantDeviceProfile r0 = com.android.launcher3.LauncherAppState.getIDP(r9)
            com.android.launcher3.model.GridBackupTable r7 = new com.android.launcher3.model.GridBackupTable
            int r4 = r0.numHotseatIcons
            int r5 = r0.numColumns
            int r6 = r0.numRows
            r1 = r7
            r2 = r9
            r3 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            long r0 = r8.getDefaultProfileId(r10)
            android.database.sqlite.SQLiteDatabase r2 = r7.mDb
            java.lang.String r3 = "favorites_bakup"
            boolean r2 = b.l.W.tableExists(r2, r3)
            if (r2 == 0) goto L49
            int r2 = r7.loadDBProperties()
            r4 = 1
            if (r2 != r4) goto L49
            int r2 = r7.mOldHotseatSize
            int r5 = r7.mRestoredHotseatSize
            if (r2 != r5) goto L49
            int r2 = r7.mOldGridX
            int r5 = r7.mRestoredGridX
            if (r2 != r5) goto L49
            int r2 = r7.mOldGridY
            int r5 = r7.mRestoredGridY
            if (r2 == r5) goto L3a
            goto L49
        L3a:
            android.database.sqlite.SQLiteDatabase r2 = r7.mDb
            java.lang.String r5 = "favorites"
            com.android.launcher3.model.GridBackupTable.copyTable(r2, r3, r5, r0)
            java.lang.String r0 = "GridBackupTable"
            java.lang.String r1 = "Backup restored"
            android.util.Log.d(r0, r1)
            goto L4a
        L49:
            r4 = 0
        L4a:
            if (r4 == 0) goto L61
            int r11 = r8.sanitizeDB(r11, r10, r12)
            com.android.launcher3.LauncherAppState r12 = com.android.launcher3.LauncherAppState.getInstance(r9)
            com.android.launcher3.LauncherModel r12 = r12.mModel
            r12.forceReload()
            r8.restoreAppWidgetIdsIfExists(r9)
            if (r11 != 0) goto L61
            b.l.W.dropTable(r10, r3)
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.provider.RestoreDbTask.restoreWorkspace(android.content.Context, android.database.sqlite.SQLiteDatabase, com.android.launcher3.LauncherProvider$DatabaseHelper, android.app.backup.BackupManager):void");
    }

    public final int sanitizeDB(LauncherProvider.DatabaseHelper databaseHelper, SQLiteDatabase sQLiteDatabase, BackupManager backupManager) {
        UserHandle userHandle;
        int i;
        long defaultUserSerial = databaseHelper.getDefaultUserSerial();
        long defaultProfileId = getDefaultProfileId(sQLiteDatabase);
        LongSparseArray longSparseArray = new LongSparseArray();
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT profileId from favorites WHERE profileId != ? GROUP BY profileId", new String[]{Long.toString(defaultProfileId)});
        while (true) {
            try {
                userHandle = null;
                if (!rawQuery.moveToNext()) {
                    break;
                }
                longSparseArray.put(rawQuery.getLong(rawQuery.getColumnIndex("profileId")), null);
            } catch (Throwable th) {
                if (rawQuery == null) {
                    throw th;
                }
                try {
                    rawQuery.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        }
        rawQuery.close();
        LongSparseArray longSparseArray2 = new LongSparseArray(longSparseArray.size() + 1);
        longSparseArray2.put(defaultProfileId, Long.valueOf(defaultUserSerial));
        int size = longSparseArray.size() - 1;
        while (size >= 0) {
            long keyAt = longSparseArray.keyAt(size);
            if (Utilities.ATLEAST_Q) {
                userHandle = backupManager.getUserForAncestralSerialNumber(keyAt);
            }
            if (userHandle != null) {
                longSparseArray2.put(keyAt, Long.valueOf(((UserCache) UserCache.INSTANCE.b(databaseHelper.mContext)).getSerialNumberForUser(userHandle)));
            }
            size--;
            userHandle = null;
        }
        int size2 = longSparseArray2.size();
        String[] strArr = new String[size2];
        strArr[0] = Long.toString(defaultProfileId);
        for (int i2 = size2 - 1; i2 >= 1; i2--) {
            strArr[i2] = Long.toString(longSparseArray2.keyAt(i2));
        }
        String[] strArr2 = new String[size2];
        Arrays.fill(strArr2, "?");
        StringBuilder f = a.f("profileId NOT IN (");
        f.append(TextUtils.join(", ", Arrays.asList(strArr2)));
        f.append(")");
        int delete = sQLiteDatabase.delete("favorites", f.toString(), strArr);
        FileLog.d("RestoreDbTask", delete + " items from unrestored user(s) were deleted");
        boolean isPropertyEnabled = Utilities.isPropertyEnabled("KeepAllIcons");
        ContentValues contentValues = new ContentValues();
        contentValues.put("restored", Integer.valueOf((isPropertyEnabled ? 8 : 0) | 1));
        sQLiteDatabase.update("favorites", contentValues, null, null);
        contentValues.put("restored", Integer.valueOf((isPropertyEnabled ? 8 : 0) | 7));
        sQLiteDatabase.update("favorites", contentValues, "itemType = ?", new String[]{Integer.toString(4)});
        SparseLongArray sparseLongArray = new SparseLongArray(longSparseArray2.size());
        int i3 = 0;
        int size3 = longSparseArray2.size() - 1;
        while (size3 >= 0) {
            long keyAt2 = longSparseArray2.keyAt(size3);
            int i4 = size3;
            long longValue = ((Long) longSparseArray2.valueAt(size3)).longValue();
            if (keyAt2 != longValue) {
                if (longSparseArray2.indexOfKey(longValue) >= 0) {
                    sparseLongArray.put(i3, longValue);
                    i3++;
                    longValue -= Long.MIN_VALUE;
                }
                i = i4;
                migrateProfileId(sQLiteDatabase, keyAt2, longValue);
                i3 = i3;
            } else {
                i = i4;
            }
            size3 = i - 1;
        }
        for (int size4 = sparseLongArray.size() - 1; size4 >= 0; size4--) {
            long valueAt = sparseLongArray.valueAt(size4);
            migrateProfileId(sQLiteDatabase, valueAt - Long.MIN_VALUE, valueAt);
        }
        if (defaultUserSerial != defaultProfileId) {
            sQLiteDatabase.execSQL("ALTER TABLE favorites RENAME TO favorites_old;");
            LauncherSettings$Favorites.addTableToDb(sQLiteDatabase, defaultUserSerial, false, "favorites");
            sQLiteDatabase.execSQL("INSERT INTO favorites SELECT * FROM favorites_old;");
            W.dropTable(sQLiteDatabase, "favorites_old");
        }
        return delete;
    }
}
