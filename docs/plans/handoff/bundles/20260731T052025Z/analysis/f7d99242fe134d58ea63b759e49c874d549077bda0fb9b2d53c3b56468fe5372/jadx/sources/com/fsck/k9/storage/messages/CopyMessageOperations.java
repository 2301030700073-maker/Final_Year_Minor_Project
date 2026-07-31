package com.fsck.k9.storage.messages;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import app.k9mail.legacy.mailstore.SaveMessageData;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.filter.CountingOutputStream;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.DatabasePreviewType;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.SendState;
import com.fsck.k9.message.extractors.BasicPartInfoExtractor;
import com.google.zxing.BinaryBitmap;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Set;
import java.util.Stack;
import java.util.UUID;
import java.util.regex.Pattern;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import okio.PriorityQueue;
import org.apache.commons.io.IOUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CopyMessageOperations {
    public final AccountId accountId;
    public final BinaryBitmap attachmentFileManager;
    public final LockableDatabase lockableDatabase;

    public CopyMessageOperations(LockableDatabase lockableDatabase, BinaryBitmap binaryBitmap, Path.Companion companion, AccountId accountId, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider) {
        lockableDatabase.getClass();
        accountId.getClass();
        this.lockableDatabase = lockableDatabase;
        this.attachmentFileManager = binaryBitmap;
        this.accountId = accountId;
    }

    public static void addChildrenToStack(Stack stack, Part part, long j) {
        Body body = part.getBody();
        if (!(body instanceof Multipart)) {
            if (body instanceof MimeMessage) {
                stack.push(new PartContainer(Long.valueOf(j), (Part) body));
                return;
            }
            return;
        }
        Multipart multipart = (Multipart) body;
        int size = multipart.mParts.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            }
            MimeBodyPart bodyPart = multipart.getBodyPart(size);
            Long valueOf = Long.valueOf(j);
            bodyPart.getClass();
            stack.push(new PartContainer(valueOf, bodyPart));
        }
    }

    public static void createOrReplaceFulltextEntry(SQLiteDatabase sQLiteDatabase, long j, SaveMessageData saveMessageData) {
        String str = saveMessageData.textForSearchIndex;
        if (str == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("docid", Long.valueOf(j));
        contentValues.put("fulltext", str);
        sQLiteDatabase.replace("messages_fulltext", null, contentValues);
    }

    public static long decodeAndCountBytes(InputStream inputStream, String str, long j) {
        InputStream anonymousClass12;
        try {
            try {
                try {
                    if (!str.equals("base64")) {
                        if (str.equals("quoted-printable")) {
                            anonymousClass12 = new LocalStore.AnonymousClass12(inputStream);
                        }
                        CountingOutputStream countingOutputStream = new CountingOutputStream();
                        IOUtils.copy(inputStream, countingOutputStream);
                        long j2 = countingOutputStream.mCount;
                        countingOutputStream.close();
                        inputStream.close();
                        return j2;
                    }
                    anonymousClass12 = new LocalStore.AnonymousClass11(inputStream);
                    IOUtils.copy(inputStream, countingOutputStream);
                    long j22 = countingOutputStream.mCount;
                    countingOutputStream.close();
                    inputStream.close();
                    return j22;
                } finally {
                }
                CountingOutputStream countingOutputStream2 = new CountingOutputStream();
            } finally {
            }
            inputStream = anonymousClass12;
        } catch (IOException unused) {
            return j;
        }
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public static com.fsck.k9.storage.messages.DatabaseMessagePart readMessagePart(android.database.Cursor r23) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.storage.messages.CopyMessageOperations.readMessagePart(android.database.Cursor):com.fsck.k9.storage.messages.DatabaseMessagePart");
    }

    public ContentValues readMessageToContentValues(SQLiteDatabase sQLiteDatabase, long j, long j2, long j3) {
        Cursor query = sQLiteDatabase.query("messages", new String[]{"deleted", "subject", "date", "flags", "sender_list", "to_list", "cc_list", "bcc_list", "reply_to_list", "attachment_count", "internal_date", "message_id", "preview_type", "preview", "mime_type", "normalized_subject_hash", "empty", "read", "flagged", "answered", "forwarded", "encryption_type"}, "id = ?", new String[]{String.valueOf(j)}, null, null, null);
        try {
            if (!query.moveToNext()) {
                throw new IllegalStateException(("Message with ID " + j + " not found").toString());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("deleted", Integer.valueOf(query.getInt(0)));
            String str = null;
            contentValues.put("subject", query.isNull(1) ? null : query.getString(1));
            contentValues.put("date", Long.valueOf(query.getLong(2)));
            contentValues.put("flags", query.isNull(3) ? null : query.getString(3));
            contentValues.put("sender_list", query.isNull(4) ? null : query.getString(4));
            contentValues.put("to_list", query.isNull(5) ? null : query.getString(5));
            contentValues.put("cc_list", query.isNull(6) ? null : query.getString(6));
            contentValues.put("bcc_list", query.isNull(7) ? null : query.getString(7));
            contentValues.put("reply_to_list", query.isNull(8) ? null : query.getString(8));
            contentValues.put("attachment_count", Integer.valueOf(query.getInt(9)));
            contentValues.put("internal_date", Long.valueOf(query.getLong(10)));
            contentValues.put("message_id", query.isNull(11) ? null : query.getString(11));
            contentValues.put("preview_type", query.isNull(12) ? null : query.getString(12));
            contentValues.put("preview", query.isNull(13) ? null : query.getString(13));
            contentValues.put("mime_type", query.isNull(14) ? null : query.getString(14));
            contentValues.put("normalized_subject_hash", Long.valueOf(query.getLong(15)));
            contentValues.put("empty", Integer.valueOf(query.getInt(16)));
            contentValues.put("read", Integer.valueOf(query.getInt(17)));
            contentValues.put("flagged", Integer.valueOf(query.getInt(18)));
            contentValues.put("answered", Integer.valueOf(query.getInt(19)));
            contentValues.put("forwarded", Integer.valueOf(query.getInt(20)));
            if (!query.isNull(21)) {
                str = query.getString(21);
            }
            contentValues.put("encryption_type", str);
            query.close();
            contentValues.put("folder_id", Long.valueOf(j2));
            contentValues.put("uid", "K9LOCAL:" + UUID.randomUUID());
            contentValues.put("message_part_id", Long.valueOf(j3));
            contentValues.put("account_id", this.accountId.value.toString());
            return contentValues;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(query, th);
                throw th2;
            }
        }
    }

    public void replaceMessage(long j, long j2, SQLiteDatabase sQLiteDatabase, SaveMessageData saveMessageData, Long l, String str) {
        SQLiteDatabase sQLiteDatabase2;
        if (l != null) {
            long longValue = l.longValue();
            sQLiteDatabase2 = sQLiteDatabase;
            Cursor query = sQLiteDatabase2.query("message_parts", new String[]{"id"}, "root = ? AND data_location = 2", new String[]{String.valueOf(longValue)}, null, null, null);
            while (query.moveToNext()) {
                try {
                    this.attachmentFileManager.deleteFile(query.getLong(0));
                } finally {
                }
            }
            query.close();
            sQLiteDatabase2.delete("message_parts", "root = ?", new String[]{String.valueOf(longValue)});
        } else {
            sQLiteDatabase2 = sQLiteDatabase;
        }
        SQLiteDatabase sQLiteDatabase3 = sQLiteDatabase2;
        createOrReplaceFulltextEntry(sQLiteDatabase3, saveMessage(j, saveMessageParts(sQLiteDatabase2, saveMessageData.message), sQLiteDatabase3, saveMessageData, Long.valueOf(j2), str), saveMessageData);
    }

    public long saveMessage(long j, long j2, SQLiteDatabase sQLiteDatabase, SaveMessageData saveMessageData, Long l, String str) {
        MimeMessage mimeMessage = saveMessageData.message;
        int ordinal = saveMessageData.downloadState.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                mimeMessage.setFlag(Flag.X_DOWNLOADED_PARTIAL, true);
            } else {
                if (ordinal != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return 0L;
                }
                mimeMessage.setFlag(Flag.X_DOWNLOADED_FULL, true);
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("folder_id", Long.valueOf(j));
        contentValues.put("uid", str);
        contentValues.put("deleted", (Integer) 0);
        contentValues.put("empty", (Integer) 0);
        contentValues.put("message_part_id", Long.valueOf(j2));
        contentValues.put("date", Long.valueOf(saveMessageData.date));
        contentValues.put("internal_date", Long.valueOf(saveMessageData.internalDate));
        contentValues.put("subject", saveMessageData.subject);
        EnumSet enumSet = mimeMessage.mFlags;
        Set unmodifiableSet = DesugarCollections.unmodifiableSet(enumSet);
        unmodifiableSet.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : unmodifiableSet) {
            if (!FlagMessageOperationsKt.SPECIAL_FLAGS.contains((Flag) obj)) {
                arrayList.add(obj);
            }
        }
        contentValues.put("flags", CollectionsKt.joinToString$default(arrayList, ",", null, null, null, 62));
        contentValues.put("read", Integer.valueOf(enumSet.contains(Flag.SEEN) ? 1 : 0));
        contentValues.put("flagged", Integer.valueOf(enumSet.contains(Flag.FLAGGED) ? 1 : 0));
        contentValues.put("answered", Integer.valueOf(enumSet.contains(Flag.ANSWERED) ? 1 : 0));
        contentValues.put("forwarded", Integer.valueOf(enumSet.contains(Flag.FORWARDED) ? 1 : 0));
        Pattern pattern = Address.ATOM;
        contentValues.put("sender_list", K9MailLib.pack(mimeMessage.getFrom()));
        contentValues.put("to_list", K9MailLib.pack(mimeMessage.getRecipients(Message$RecipientType.TO)));
        contentValues.put("cc_list", K9MailLib.pack(mimeMessage.getRecipients(Message$RecipientType.CC)));
        contentValues.put("bcc_list", K9MailLib.pack(mimeMessage.getRecipients(Message$RecipientType.BCC)));
        contentValues.put("reply_to_list", K9MailLib.pack(mimeMessage.getReplyTo()));
        contentValues.put("attachment_count", Integer.valueOf(saveMessageData.attachmentCount));
        contentValues.put("message_id", mimeMessage.getMessageId());
        contentValues.put("mime_type", mimeMessage.getMimeType());
        contentValues.put("encryption_type", saveMessageData.encryptionType);
        PriorityQueue priorityQueue = saveMessageData.previewResult;
        int i = priorityQueue.size;
        if (i == 0) {
            throw null;
        }
        DatabasePreviewType.Companion.getClass();
        contentValues.put("preview_type", SendState.Companion.fromPreviewType(i).databaseValue);
        int i2 = priorityQueue.size;
        if (i2 != 2) {
            contentValues.putNull("preview");
        } else {
            if (i2 != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Preview is not available");
                return 0L;
            }
            contentValues.put("preview", (String) priorityQueue.array);
        }
        contentValues.put("account_id", this.accountId.value.toString());
        if (l == null) {
            return sQLiteDatabase.insert("messages", null, contentValues);
        }
        sQLiteDatabase.update("messages", contentValues, "id = ?", new String[]{String.valueOf(l.longValue())});
        return l.longValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long saveMessagePart(android.database.sqlite.SQLiteDatabase r10, com.fsck.k9.storage.messages.PartContainer r11, java.lang.Long r12, int r13) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.storage.messages.CopyMessageOperations.saveMessagePart(android.database.sqlite.SQLiteDatabase, com.fsck.k9.storage.messages.PartContainer, java.lang.Long, int):long");
    }

    public long saveMessageParts(SQLiteDatabase sQLiteDatabase, MimeMessage mimeMessage) {
        long saveMessagePart = saveMessagePart(sQLiteDatabase, new PartContainer(null, mimeMessage), null, 0);
        Stack stack = new Stack();
        addChildrenToStack(stack, mimeMessage, saveMessagePart);
        int i = 1;
        while (!stack.isEmpty()) {
            PartContainer partContainer = (PartContainer) stack.pop();
            partContainer.getClass();
            long saveMessagePart2 = saveMessagePart(sQLiteDatabase, partContainer, Long.valueOf(saveMessagePart), i);
            i++;
            addChildrenToStack(stack, partContainer.part, saveMessagePart2);
        }
        return saveMessagePart;
    }

    public long writeMessagePart(SQLiteDatabase sQLiteDatabase, DatabaseMessagePart databaseMessagePart, Long l, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(databaseMessagePart.type));
        contentValues.put("root", l);
        contentValues.put("parent", Long.valueOf(j));
        contentValues.put("seq", Integer.valueOf(databaseMessagePart.seq));
        contentValues.put("mime_type", databaseMessagePart.mimeType);
        contentValues.put("decoded_body_size", databaseMessagePart.decodedBodySize);
        contentValues.put("display_name", databaseMessagePart.displayName);
        contentValues.put("header", databaseMessagePart.header);
        contentValues.put("encoding", databaseMessagePart.encoding);
        contentValues.put("charset", databaseMessagePart.charset);
        int i = databaseMessagePart.dataLocation;
        contentValues.put("data_location", Integer.valueOf(i));
        contentValues.put("data", databaseMessagePart.data);
        contentValues.put("preamble", databaseMessagePart.preamble);
        contentValues.put("epilogue", databaseMessagePart.epilogue);
        contentValues.put("boundary", databaseMessagePart.boundary);
        contentValues.put("content_id", databaseMessagePart.contentId);
        contentValues.put("server_extra", databaseMessagePart.serverExtra);
        long insert = sQLiteDatabase.insert("message_parts", null, contentValues);
        if (i == 2) {
            long j2 = databaseMessagePart.id;
            BinaryBitmap binaryBitmap = this.attachmentFileManager;
            FilesKt.copyTo$default(binaryBitmap.getAttachmentFile(j2), binaryBitmap.getAttachmentFile(insert), 6);
        }
        return insert;
    }

    public CopyMessageOperations(LockableDatabase lockableDatabase, BinaryBitmap binaryBitmap, BasicPartInfoExtractor basicPartInfoExtractor, Path.Companion companion, AccountId accountId, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider) {
        lockableDatabase.getClass();
        accountId.getClass();
        this.lockableDatabase = lockableDatabase;
        this.attachmentFileManager = binaryBitmap;
        this.accountId = accountId;
    }
}
