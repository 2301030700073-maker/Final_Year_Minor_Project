package com.fsck.k9.storage.messages;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.LinkedHashMap;
import java.util.UUID;
import kotlin.io.CloseableKt;
import net.thunderbird.feature.account.AccountId;
import okio.Path;
import org.slf4j.event.EventRecodingLogger;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CopyMessageOperations$$ExternalSyntheticLambda0 implements LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ CopyMessageOperations$$ExternalSyntheticLambda0(Object obj, long j, long j2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = j;
        this.f$2 = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.Closeable] */
    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        long j;
        long j2;
        String str;
        String str2;
        String str3;
        long insert;
        String str4;
        String str5;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                CopyMessageOperations copyMessageOperations = (CopyMessageOperations) obj;
                sQLiteDatabase.getClass();
                copyMessageOperations.getClass();
                long j3 = this.f$1;
                Cursor rawQuery = sQLiteDatabase.rawQuery("\nSELECT\n  message_parts.id,\n  message_parts.type,\n  message_parts.root,\n  message_parts.parent,\n  message_parts.seq,\n  message_parts.mime_type,\n  message_parts.decoded_body_size,\n  message_parts.display_name,\n  message_parts.header,\n  message_parts.encoding,\n  message_parts.charset,\n  message_parts.data_location,\n  message_parts.data,\n  message_parts.preamble,\n  message_parts.epilogue,\n  message_parts.boundary,\n  message_parts.content_id,\n  message_parts.server_extra\nFROM messages\nJOIN message_parts ON (message_parts.root = messages.message_part_id)\nWHERE messages.id = ?\nORDER BY message_parts.seq\n            ", new String[]{String.valueOf(j3)});
                try {
                    if (!rawQuery.moveToNext()) {
                        throw new IllegalStateException(("No message part found for message with ID " + j3).toString());
                    }
                    DatabaseMessagePart readMessagePart = CopyMessageOperations.readMessagePart(rawQuery);
                    long writeMessagePart = copyMessageOperations.writeMessagePart(sQLiteDatabase, readMessagePart, null, -1L);
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put(Long.valueOf(readMessagePart.id), Long.valueOf(writeMessagePart));
                    while (rawQuery.moveToNext()) {
                        DatabaseMessagePart readMessagePart2 = CopyMessageOperations.readMessagePart(rawQuery);
                        Long valueOf = Long.valueOf(readMessagePart2.id);
                        Long valueOf2 = Long.valueOf(writeMessagePart);
                        Long l = (Long) linkedHashMap.get(Long.valueOf(readMessagePart2.parent));
                        if (l == null) {
                            throw new IllegalStateException("parent ID not found");
                        }
                        linkedHashMap.put(valueOf, Long.valueOf(copyMessageOperations.writeMessagePart(sQLiteDatabase, readMessagePart2, valueOf2, l.longValue())));
                        copyMessageOperations = copyMessageOperations;
                    }
                    CopyMessageOperations copyMessageOperations2 = copyMessageOperations;
                    rawQuery.close();
                    ThreadHeaders messageThreadHeaders = Path.Companion.getMessageThreadHeaders(sQLiteDatabase, j3);
                    long j4 = this.f$2;
                    ThreadInfo doMessageThreading = Path.Companion.doMessageThreading(sQLiteDatabase, j4, messageThreadHeaders);
                    if ((doMessageThreading != null ? doMessageThreading.messageId : null) != null) {
                        j2 = doMessageThreading.messageId.longValue();
                        sQLiteDatabase.update("messages", copyMessageOperations2.readMessageToContentValues(sQLiteDatabase, j3, j4, writeMessagePart), "id = ?", new String[]{String.valueOf(j2)});
                        j = j3;
                    } else {
                        ContentValues readMessageToContentValues = copyMessageOperations2.readMessageToContentValues(sQLiteDatabase, j3, j4, writeMessagePart);
                        j = j3;
                        long insert2 = sQLiteDatabase.insert("messages", null, readMessageToContentValues);
                        if ((doMessageThreading != null ? doMessageThreading.threadId : null) == null) {
                            Path.Companion.createThreadEntry(sQLiteDatabase, insert2, doMessageThreading != null ? Long.valueOf(doMessageThreading.rootId) : null, doMessageThreading != null ? doMessageThreading.parentId : null);
                        }
                        j2 = insert2;
                    }
                    sQLiteDatabase.execSQL("INSERT OR REPLACE INTO messages_fulltext (docid, fulltext) SELECT ?, fulltext FROM messages_fulltext WHERE docid = ?", new String[]{String.valueOf(j2), String.valueOf(j)});
                    return Long.valueOf(j2);
                } finally {
                }
            default:
                EventRecodingLogger eventRecodingLogger = (EventRecodingLogger) obj;
                Object obj2 = eventRecodingLogger.logger;
                sQLiteDatabase.getClass();
                long j5 = this.f$1;
                ThreadHeaders messageThreadHeaders2 = Path.Companion.getMessageThreadHeaders(sQLiteDatabase, j5);
                long j6 = this.f$2;
                ThreadInfo doMessageThreading2 = Path.Companion.doMessageThreading(sQLiteDatabase, j6, messageThreadHeaders2);
                String str6 = "K9LOCAL:" + UUID.randomUUID();
                String str7 = "encryption_type";
                Cursor query = sQLiteDatabase.query("messages", new String[]{"subject", "date", "flags", "sender_list", "to_list", "cc_list", "bcc_list", "reply_to_list", "attachment_count", "internal_date", "message_id", "preview_type", "preview", "mime_type", "normalized_subject_hash", "read", "flagged", "answered", "forwarded", "message_part_id", "encryption_type"}, "id = ?", new String[]{String.valueOf(j5)}, null, null, null);
                try {
                    try {
                        if (!query.moveToFirst()) {
                            throw new IllegalStateException(("Couldn't find local message [ID: " + j5 + "]").toString());
                        }
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("uid", str6);
                        contentValues.put("folder_id", Long.valueOf(j6));
                        contentValues.put("deleted", (Integer) 0);
                        contentValues.put("empty", (Integer) 0);
                        contentValues.put("subject", Util.getStringOrNull(query, "subject"));
                        contentValues.put("date", Util.getLongOrNull(query, "date"));
                        contentValues.put("flags", Util.getStringOrNull(query, "flags"));
                        contentValues.put("sender_list", Util.getStringOrNull(query, "sender_list"));
                        contentValues.put("to_list", Util.getStringOrNull(query, "to_list"));
                        contentValues.put("cc_list", Util.getStringOrNull(query, "cc_list"));
                        contentValues.put("bcc_list", Util.getStringOrNull(query, "bcc_list"));
                        contentValues.put("reply_to_list", Util.getStringOrNull(query, "reply_to_list"));
                        contentValues.put("attachment_count", Util.getIntOrNull(query, "attachment_count"));
                        contentValues.put("internal_date", Util.getLongOrNull(query, "internal_date"));
                        contentValues.put("message_id", Util.getStringOrNull(query, "message_id"));
                        contentValues.put("preview_type", Util.getStringOrNull(query, "preview_type"));
                        contentValues.put("preview", Util.getStringOrNull(query, "preview"));
                        contentValues.put("mime_type", Util.getStringOrNull(query, "mime_type"));
                        contentValues.put("normalized_subject_hash", Util.getLongOrNull(query, "normalized_subject_hash"));
                        contentValues.put("read", Util.getIntOrNull(query, "read"));
                        contentValues.put("flagged", Util.getIntOrNull(query, "flagged"));
                        contentValues.put("answered", Util.getIntOrNull(query, "answered"));
                        contentValues.put("forwarded", Util.getIntOrNull(query, "forwarded"));
                        contentValues.put("message_part_id", Util.getLongOrNull(query, "message_part_id"));
                        contentValues.put(str7, Util.getStringOrNull(query, str7));
                        contentValues.put("account_id", ((AccountId) eventRecodingLogger.eventQueue).value.toString());
                        query.close();
                        Long l2 = doMessageThreading2 != null ? doMessageThreading2.messageId : null;
                        if (l2 != null) {
                            str = "bcc_list";
                            str2 = str7;
                            str3 = "messages";
                            sQLiteDatabase.update(str3, contentValues, "id = ?", new String[]{String.valueOf(l2.longValue())});
                            insert = l2.longValue();
                        } else {
                            str = "bcc_list";
                            str2 = str7;
                            str3 = "messages";
                            insert = sQLiteDatabase.insert(str3, null, contentValues);
                        }
                        long j7 = insert;
                        if ((doMessageThreading2 != null ? doMessageThreading2.threadId : null) == null) {
                            str4 = "to_list";
                            str5 = "cc_list";
                            Path.Companion.createThreadEntry(sQLiteDatabase, j7, doMessageThreading2 != null ? Long.valueOf(doMessageThreading2.rootId) : null, doMessageThreading2 != null ? doMessageThreading2.parentId : null);
                        } else {
                            str4 = "to_list";
                            str5 = "cc_list";
                        }
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("deleted", (Integer) 1);
                        contentValues2.put("empty", (Integer) 0);
                        contentValues2.put("read", (Integer) 1);
                        contentValues2.putNull("subject");
                        contentValues2.putNull("date");
                        contentValues2.putNull("flags");
                        contentValues2.putNull("sender_list");
                        contentValues2.putNull(str4);
                        contentValues2.putNull(str5);
                        contentValues2.putNull(str);
                        contentValues2.putNull("reply_to_list");
                        contentValues2.putNull("attachment_count");
                        contentValues2.putNull("internal_date");
                        contentValues2.put("preview_type", "none");
                        contentValues2.putNull("preview");
                        contentValues2.putNull("mime_type");
                        contentValues2.putNull("normalized_subject_hash");
                        contentValues2.putNull("flagged");
                        contentValues2.putNull("answered");
                        contentValues2.putNull("forwarded");
                        contentValues2.putNull("message_part_id");
                        contentValues2.putNull(str2);
                        sQLiteDatabase.update(str3, contentValues2, "id = ?", new String[]{String.valueOf(j5)});
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("docid", Long.valueOf(j7));
                        sQLiteDatabase.update("messages_fulltext", contentValues3, "docid = ?", new String[]{String.valueOf(j5)});
                        return Long.valueOf(j7);
                    } catch (Throwable th) {
                        th = th;
                        Throwable th2 = th;
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(str7, th2);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    str7 = query;
                }
        }
    }
}
