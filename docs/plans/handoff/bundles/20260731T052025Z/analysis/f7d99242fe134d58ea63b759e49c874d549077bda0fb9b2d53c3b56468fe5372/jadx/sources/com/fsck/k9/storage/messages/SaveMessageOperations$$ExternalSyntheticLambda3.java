package com.fsck.k9.storage.messages;

import android.database.sqlite.SQLiteDatabase;
import app.k9mail.legacy.mailstore.SaveMessageData;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SaveMessageOperations$$ExternalSyntheticLambda3 implements LockableDatabase.DbCallback {
    public final /* synthetic */ SaveMessageData f$0;
    public final /* synthetic */ CopyMessageOperations f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ String f$3;

    public /* synthetic */ SaveMessageOperations$$ExternalSyntheticLambda3(SaveMessageData saveMessageData, CopyMessageOperations copyMessageOperations, long j, String str) {
        this.f$0 = saveMessageData;
        this.f$1 = copyMessageOperations;
        this.f$2 = j;
        this.f$3 = str;
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        long saveMessage;
        SaveMessageData saveMessageData = this.f$0;
        MimeMessage mimeMessage = saveMessageData.message;
        CopyMessageOperations copyMessageOperations = this.f$1;
        LockableDatabase lockableDatabase = copyMessageOperations.lockableDatabase;
        long j = this.f$2;
        String str = this.f$3;
        Pair pair = (Pair) lockableDatabase.execute(false, new SaveMessageOperations$$ExternalSyntheticLambda0(0, j, str));
        if (pair != null) {
            saveMessage = ((Number) pair.first).longValue();
            Long l = (Long) pair.second;
            sQLiteDatabase.getClass();
            copyMessageOperations.replaceMessage(j, saveMessage, sQLiteDatabase, saveMessageData, l, str);
        } else {
            sQLiteDatabase.getClass();
            mimeMessage.getClass();
            String messageId = mimeMessage.getMessageId();
            LocalFolder.AnonymousClass8 anonymousClass8 = mimeMessage.mHeader;
            String[] header = anonymousClass8.getHeader("In-Reply-To");
            header.getClass();
            String str2 = (String) ArraysKt___ArraysKt.firstOrNull(header);
            String[] header2 = anonymousClass8.getHeader("References");
            header2.getClass();
            ThreadInfo doMessageThreading = Path.Companion.doMessageThreading(sQLiteDatabase, j, new ThreadHeaders(messageId, str2, (String) ArraysKt___ArraysKt.firstOrNull(header2)));
            saveMessage = copyMessageOperations.saveMessage(j, copyMessageOperations.saveMessageParts(sQLiteDatabase, mimeMessage), sQLiteDatabase, saveMessageData, doMessageThreading != null ? doMessageThreading.messageId : null, str);
            if ((doMessageThreading != null ? doMessageThreading.threadId : null) == null) {
                Path.Companion.createThreadEntry(sQLiteDatabase, saveMessage, doMessageThreading != null ? Long.valueOf(doMessageThreading.rootId) : null, doMessageThreading != null ? doMessageThreading.parentId : null);
            }
            CopyMessageOperations.createOrReplaceFulltextEntry(sQLiteDatabase, saveMessage, saveMessageData);
        }
        return Long.valueOf(saveMessage);
    }
}
