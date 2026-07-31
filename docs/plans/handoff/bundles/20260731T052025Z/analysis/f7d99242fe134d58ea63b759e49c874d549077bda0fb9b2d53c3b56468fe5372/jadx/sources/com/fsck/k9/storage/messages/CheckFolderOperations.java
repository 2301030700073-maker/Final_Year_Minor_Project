package com.fsck.k9.storage.messages;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.ArrayList;
import kotlin.io.ByteStreamsKt;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import org.jsoup.internal.SoftPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CheckFolderOperations {
    public final LockableDatabase lockableDatabase;

    public CheckFolderOperations(LockableDatabase lockableDatabase, int i) {
        switch (i) {
            case 1:
                lockableDatabase.getClass();
                this.lockableDatabase = lockableDatabase;
                break;
            case 2:
                lockableDatabase.getClass();
                this.lockableDatabase = lockableDatabase;
                break;
            case 3:
                lockableDatabase.getClass();
                this.lockableDatabase = lockableDatabase;
                break;
            case 4:
                lockableDatabase.getClass();
                this.lockableDatabase = lockableDatabase;
                break;
            case 5:
                lockableDatabase.getClass();
                this.lockableDatabase = lockableDatabase;
                break;
            case 6:
                lockableDatabase.getClass();
                this.lockableDatabase = lockableDatabase;
                break;
            default:
                lockableDatabase.getClass();
                this.lockableDatabase = lockableDatabase;
                break;
        }
    }

    public int getMessageCount(String str, SearchConditionTreeNode searchConditionTreeNode) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        ByteStreamsKt.buildWhereClause(searchConditionTreeNode, sb, arrayList);
        SoftPool softPool = new SoftPool(1, sb.toString(), arrayList);
        String m = CameraDevices$CC.m("AND (", (String) softPool.threadLocalStack, ")");
        String[] strArr = (String[]) ((ArrayList) softPool.initializer).toArray(new String[0]);
        if (strArr == null) {
            strArr = new String[0];
        }
        Object execute = this.lockableDatabase.execute(false, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(14, ViewSizeResolver.CC.m("\nSELECT COUNT(messages.id)\nFROM messages\nJOIN folders ON (folders.id = messages.folder_id)\nWHERE (messages.empty = 0 AND messages.deleted = 0 AND ", str, ") ", m, "\n            "), strArr));
        execute.getClass();
        return ((Number) execute).intValue();
    }

    public void setBoolean(final long j, final String str, final String str2, final boolean z) {
        this.lockableDatabase.execute(false, new LockableDatabase.DbCallback() { // from class: com.fsck.k9.storage.messages.FlagMessageOperations$$ExternalSyntheticLambda3
            @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
            public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(str2, Integer.valueOf(z ? 1 : 0));
                return Integer.valueOf(sQLiteDatabase.update("messages", contentValues, "folder_id = ? AND uid = ?", new String[]{String.valueOf(j), str}));
            }
        });
    }
}
