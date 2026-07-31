package com.fsck.k9.mailstore;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import androidx.room.util.SchemaInfoUtilKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mailstore.LockableDatabase;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalStore$$ExternalSyntheticLambda1 implements LockableDatabase.DbCallback {
    public final /* synthetic */ String f$0;
    public final /* synthetic */ FolderType f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ LocalStore$$ExternalSyntheticLambda1(String str, FolderType folderType, int i, int i2) {
        this.f$0 = str;
        this.f$1 = folderType;
        this.f$2 = i;
        this.f$3 = i2;
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", this.f$0);
        contentValues.putNull("server_id");
        contentValues.put("local_only", (Integer) 1);
        contentValues.put("type", SchemaInfoUtilKt.toDatabaseFolderType(this.f$1));
        contentValues.put("visible_limit", Integer.valueOf(this.f$2));
        contentValues.put("more_messages", ViewSizeResolver.CC.getDatabaseName(this.f$3));
        contentValues.put("visible", Boolean.TRUE);
        return Long.valueOf(sQLiteDatabase.insert("folders", null, contentValues));
    }
}
