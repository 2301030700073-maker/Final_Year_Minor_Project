package com.fsck.k9.preferences;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.jcraft.jzlib.Adler32;
import java.util.HashMap;
import java.util.regex.Pattern;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.storage.InMemoryStorage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9StoragePersister {
    public final Context context;
    public final Logger logger;
    public final Adler32 migrationHelper = new Adler32(19);

    public K9StoragePersister(Context context, Logger logger) {
        this.context = context;
        this.logger = logger;
    }

    public final InMemoryStorage loadValues() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        SyncDebugWorker$$ExternalSyntheticLambda0 syncDebugWorker$$ExternalSyntheticLambda0 = new SyncDebugWorker$$ExternalSyntheticLambda0(21);
        Logger logger = this.logger;
        logger.info(null, null, syncDebugWorker$$ExternalSyntheticLambda0);
        try {
            SQLiteDatabase openDB = openDB();
            try {
                InMemoryStorage inMemoryStorage = new InMemoryStorage(readAllValues(openDB), logger);
                openDB.close();
                logger.info(null, null, new K9StorageEditor$$ExternalSyntheticLambda3(1, SystemClock.elapsedRealtime(), elapsedRealtime));
                return inMemoryStorage;
            } finally {
            }
        } catch (Throwable th) {
            logger.info(null, null, new K9StorageEditor$$ExternalSyntheticLambda3(1, SystemClock.elapsedRealtime(), elapsedRealtime));
            throw th;
        }
    }

    public final SQLiteDatabase openDB() {
        SQLiteDatabase openOrCreateDatabase = this.context.openOrCreateDatabase("preferences_storage", 0, null);
        openOrCreateDatabase.beginTransaction();
        try {
            if (openOrCreateDatabase.getVersion() > 30) {
                throw new AssertionError("Database downgrades are not supported. Please fix the database 'preferences_storage' manually or clear app data.");
            }
            if (openOrCreateDatabase.getVersion() < 1) {
                this.logger.info(null, null, new SyncDebugWorker$$ExternalSyntheticLambda0(22));
                openOrCreateDatabase.execSQL("DROP TABLE IF EXISTS preferences_storage");
                openOrCreateDatabase.execSQL("CREATE TABLE preferences_storage (primkey TEXT PRIMARY KEY ON CONFLICT REPLACE, value TEXT)");
                openOrCreateDatabase.setVersion(30);
            } else {
                DBUtil.upgradeDatabase(openOrCreateDatabase, this.migrationHelper);
            }
            openOrCreateDatabase.setVersion(30);
            openOrCreateDatabase.setTransactionSuccessful();
            openOrCreateDatabase.endTransaction();
            if (openOrCreateDatabase.getVersion() == 30) {
                return openOrCreateDatabase;
            }
            DBUtil$$ExternalSyntheticBUOutline0.m("Storage database upgrade failed!");
            return null;
        } catch (Throwable th) {
            openOrCreateDatabase.endTransaction();
            throw th;
        }
    }

    public final HashMap readAllValues(SQLiteDatabase sQLiteDatabase) {
        HashMap hashMap = new HashMap();
        Cursor cursor = null;
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT primkey, value FROM preferences_storage", null);
            while (rawQuery.moveToNext()) {
                try {
                    String string = rawQuery.getString(0);
                    String string2 = rawQuery.getString(1);
                    this.logger.debug(null, null, new Regex$$ExternalSyntheticLambda1(24, string, string2));
                    hashMap.put(string, string2);
                } catch (Throwable th) {
                    th = th;
                    cursor = rawQuery;
                    Utility.closeQuietly(cursor);
                    throw th;
                }
            }
            Pattern pattern = Utility.RESPONSE_PATTERN;
            rawQuery.close();
            return hashMap;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
