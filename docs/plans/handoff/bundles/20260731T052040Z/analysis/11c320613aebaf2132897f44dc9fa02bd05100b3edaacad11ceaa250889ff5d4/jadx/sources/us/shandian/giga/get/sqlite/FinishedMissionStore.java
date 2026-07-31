package us.shandian.giga.get.sqlite;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import j$.util.Objects;
import java.io.File;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import us.shandian.giga.get.DownloadMission;
import us.shandian.giga.get.FinishedMission;
import us.shandian.giga.get.Mission;
import us.shandian.giga.service.DownloadManagerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FinishedMissionStore extends SQLiteOpenHelper {
    public final DownloadManagerService context;

    public FinishedMissionStore(DownloadManagerService downloadManagerService) {
        super(downloadManagerService, "downloads.db", (SQLiteDatabase.CursorFactory) null, 4);
        this.context = downloadManagerService;
    }

    public final void addFinishedMission(DownloadMission downloadMission) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", downloadMission.source);
        contentValues.put("path", downloadMission.storage.getUri().toString());
        contentValues.put("bytes_downloaded", Long.valueOf(downloadMission.length));
        contentValues.put("timestamp", Long.valueOf(downloadMission.timestamp));
        contentValues.put("kind", String.valueOf(downloadMission.kind));
        getWritableDatabase().insert("finished_missions", null, contentValues);
    }

    public final void deleteMission(Mission mission) {
        Objects.requireNonNull(mission);
        String valueOf = String.valueOf(mission.timestamp);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (!(mission instanceof FinishedMission)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("DownloadMission");
        } else if (mission.storage.isInvalid()) {
            writableDatabase.delete("finished_missions", "timestamp = ?", new String[]{valueOf});
        } else {
            writableDatabase.delete("finished_missions", "timestamp = ? AND path = ?", new String[]{valueOf, mission.storage.getUri().toString()});
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE finished_missions (path TEXT NOT NULL, url TEXT NOT NULL, bytes_downloaded INTEGER NOT NULL, timestamp INTEGER NOT NULL, kind TEXT NOT NULL,  UNIQUE(timestamp, path));");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 2) {
            sQLiteDatabase.execSQL("ALTER TABLE download_missions ADD COLUMN kind TEXT;");
            i++;
        }
        if (i == 3) {
            sQLiteDatabase.execSQL("CREATE TABLE finished_missions (path TEXT NOT NULL, url TEXT NOT NULL, bytes_downloaded INTEGER NOT NULL, timestamp INTEGER NOT NULL, kind TEXT NOT NULL,  UNIQUE(timestamp, path));");
            Cursor query = sQLiteDatabase.query("download_missions", null, null, null, null, null, "timestamp");
            if (query.getCount() > 0) {
                sQLiteDatabase.beginTransaction();
                while (query.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("url", query.getString(query.getColumnIndexOrThrow("url")));
                    contentValues.put("bytes_downloaded", query.getString(query.getColumnIndexOrThrow("bytes_downloaded")));
                    contentValues.put("timestamp", Long.valueOf(query.getLong(query.getColumnIndexOrThrow("timestamp"))));
                    contentValues.put("kind", query.getString(query.getColumnIndexOrThrow("kind")));
                    contentValues.put("path", Uri.fromFile(new File(query.getString(query.getColumnIndexOrThrow("location")), query.getString(query.getColumnIndexOrThrow("name")))).toString());
                    sQLiteDatabase.insert("finished_missions", null, contentValues);
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            }
            query.close();
            sQLiteDatabase.execSQL("DROP TABLE download_missions");
        }
    }
}
