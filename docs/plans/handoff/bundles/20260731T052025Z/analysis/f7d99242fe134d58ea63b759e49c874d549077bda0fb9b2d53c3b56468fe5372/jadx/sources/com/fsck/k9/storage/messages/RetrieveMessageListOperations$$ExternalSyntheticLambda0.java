package com.fsck.k9.storage.messages;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.legacy.mailstore.MessageMapper;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import kotlin.collections.builders.ListBuilder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class RetrieveMessageListOperations$$ExternalSyntheticLambda0 implements LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ String[] f$2;
    public final /* synthetic */ MessageMapper f$3;

    public /* synthetic */ RetrieveMessageListOperations$$ExternalSyntheticLambda0(String str, String str2, String[] strArr, MessageMapper messageMapper, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
        this.f$1 = str2;
        this.f$2 = strArr;
        this.f$3 = messageMapper;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery;
        int i = this.$r8$classId;
        int i2 = 9;
        MessageMapper messageMapper = this.f$3;
        String[] strArr = this.f$2;
        String str = this.f$1;
        String str2 = this.f$0;
        switch (i) {
            case 0:
                rawQuery = sQLiteDatabase.rawQuery(ViewSizeResolver.CC.m("\nSELECT \n  messages.id AS id, \n  uid, \n  folder_id, \n  sender_list, \n  to_list, \n  cc_list, \n  date, \n  internal_date, \n  subject, \n  preview_type,\n  preview, \n  read, \n  flagged, \n  answered, \n  forwarded, \n  attachment_count, \n  root\nFROM messages\nJOIN threads ON (threads.message_id = messages.id)\nLEFT JOIN FOLDERS ON (folders.id = messages.folder_id)\nWHERE\n  (", str2, ")\n  AND empty = 0 AND deleted = 0\nORDER BY ", str, "\n                "), strArr);
                try {
                    rawQuery.getClass();
                    LocalFolder.AnonymousClass8 anonymousClass8 = new LocalFolder.AnonymousClass8(i2, rawQuery, false);
                    ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                    while (rawQuery.moveToNext()) {
                        Object map = messageMapper.map(anonymousClass8);
                        if (map != null) {
                            createListBuilder.add(map);
                        }
                    }
                    ListBuilder build = IntOffsetKt.build(createListBuilder);
                    rawQuery.close();
                    return build;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                    }
                }
            default:
                rawQuery = sQLiteDatabase.rawQuery(ViewSizeResolver.CC.m("\nSELECT \n  messages.id AS id, \n  uid, \n  folder_id, \n  sender_list, \n  to_list, \n  cc_list, \n  aggregated.date AS date, \n  aggregated.internal_date AS internal_date, \n  subject, \n  preview_type,\n  preview, \n  aggregated.read AS read, \n  aggregated.flagged AS flagged, \n  aggregated.answered AS answered, \n  aggregated.forwarded AS forwarded, \n  aggregated.attachment_count AS attachment_count, \n  root, \n  aggregated.thread_count AS thread_count\nFROM (\n  SELECT \n    threads.root AS thread_root,\n    MAX(date) AS date,\n    MAX(internal_date) AS internal_date,\n    MIN(read) AS read,\n    MAX(flagged) AS flagged,\n    MIN(answered) AS answered,\n    MIN(forwarded) AS forwarded,\n    SUM(attachment_count) AS attachment_count,\n    COUNT(threads.root) AS thread_count                        \n  FROM messages\n  JOIN threads ON (threads.message_id = messages.id)\n  JOIN folders ON (folders.id = messages.folder_id)\n  WHERE\n    threads.root IN (\n      SELECT threads.root \n      FROM messages\n      JOIN threads ON (threads.message_id = messages.id)\n      WHERE messages.empty = 0 AND messages.deleted = 0\n    )\n    AND (", str2, ")\n    AND messages.empty = 0 AND messages.deleted = 0\n  GROUP BY threads.root\n) aggregated\nJOIN threads ON (threads.root = aggregated.thread_root)\nJOIN messages ON (\n  messages.id = threads.message_id\n  AND messages.empty = 0 AND messages.deleted = 0\n  AND messages.date = aggregated.date\n)\nJOIN folders ON (folders.id = messages.folder_id)\nGROUP BY threads.root\nORDER BY ", str, "\n                "), strArr);
                try {
                    rawQuery.getClass();
                    LocalFolder.AnonymousClass8 anonymousClass82 = new LocalFolder.AnonymousClass8(i2, rawQuery, true);
                    ListBuilder createListBuilder2 = IntOffsetKt.createListBuilder();
                    while (rawQuery.moveToNext()) {
                        Object map2 = messageMapper.map(anonymousClass82);
                        if (map2 != null) {
                            createListBuilder2.add(map2);
                        }
                    }
                    ListBuilder build2 = IntOffsetKt.build(createListBuilder2);
                    rawQuery.close();
                    return build2;
                } finally {
                }
        }
    }
}
