package com.fsck.k9.mailstore;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.fsck.k9.mailstore.LockableDatabase;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OutboxStateRepository$$ExternalSyntheticLambda3 implements LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ OutboxStateRepository$$ExternalSyntheticLambda3(long j, long j2, String str) {
        this.f$0 = j;
        this.f$1 = j2;
        this.f$2 = str;
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        int i = this.$r8$classId;
        long j = this.f$1;
        String str = this.f$2;
        long j2 = this.f$0;
        switch (i) {
            case 0:
                ContentValues contentValues = new ContentValues();
                contentValues.put("send_state", "error");
                contentValues.put("error_timestamp", Long.valueOf(j));
                contentValues.put("error", str);
                return Integer.valueOf(sQLiteDatabase.update("outbox_state", contentValues, "message_id = ?", new String[]{String.valueOf(j2)}));
            default:
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("folder_id", Long.valueOf(j2));
                contentValues2.put("name", str);
                contentValues2.put("value_integer", Long.valueOf(j));
                return Long.valueOf(sQLiteDatabase.insertWithOnConflict("folder_extra_values", null, contentValues2, 5));
        }
    }

    public /* synthetic */ OutboxStateRepository$$ExternalSyntheticLambda3(long j, String str, long j2) {
        this.f$0 = j;
        this.f$2 = str;
        this.f$1 = j2;
    }
}
