package com.fsck.k9.storage.messages;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.fsck.k9.mailstore.LockableDatabase;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UpdateFolderOperations$$ExternalSyntheticLambda6 implements LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ boolean f$2;

    public /* synthetic */ UpdateFolderOperations$$ExternalSyntheticLambda6(long j, String str, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = j;
        this.f$1 = str;
        this.f$2 = z;
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        int i = this.$r8$classId;
        boolean z = this.f$2;
        String str = this.f$1;
        long j = this.f$0;
        switch (i) {
            case 0:
                ContentValues contentValues = new ContentValues();
                contentValues.put(str, Boolean.valueOf(z));
                return Integer.valueOf(sQLiteDatabase.update("folders", contentValues, "id = ?", new String[]{String.valueOf(j)}));
            default:
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("new_message", Integer.valueOf(z ? 1 : 0));
                return Integer.valueOf(sQLiteDatabase.update("messages", contentValues2, "folder_id = ? AND uid = ?", new String[]{String.valueOf(j), str}));
        }
    }
}
