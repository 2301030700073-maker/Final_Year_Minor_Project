package com.fsck.k9.mailstore;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.fsck.k9.mailstore.LockableDatabase;
import kotlin.Pair;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OutboxStateRepository$$ExternalSyntheticLambda1 implements LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ OutboxStateRepository$$ExternalSyntheticLambda1(int i, long j, long j2) {
        this.$r8$classId = i;
        this.f$0 = j;
        this.f$1 = j2;
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        int i = this.$r8$classId;
        long j = this.f$1;
        long j2 = this.f$0;
        switch (i) {
            case 0:
                ContentValues contentValues = new ContentValues();
                contentValues.put("send_state", "retries_exceeded");
                contentValues.put("error_timestamp", Long.valueOf(j));
                contentValues.putNull("error");
                return Integer.valueOf(sQLiteDatabase.update("outbox_state", contentValues, "message_id = ?", new String[]{String.valueOf(j2)}));
            case 1:
                Cursor query = sQLiteDatabase.query("messages", new String[]{"uid", "message_part_id"}, "folder_id = ? AND id = ?", new String[]{String.valueOf(j2), String.valueOf(j)}, null, null, null);
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(0);
                        string.getClass();
                        Pair pair = new Pair(string, Long.valueOf(query.getLong(1)));
                        query.close();
                        return pair;
                    }
                    throw new IllegalStateException(("Local message not found " + j2 + ":" + j).toString());
                } finally {
                }
            default:
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("last_updated", Long.valueOf(j));
                return Integer.valueOf(sQLiteDatabase.update("folders", contentValues2, "id = ?", new String[]{String.valueOf(j2)}));
        }
    }
}
