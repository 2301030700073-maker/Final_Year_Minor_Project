package com.fsck.k9.mailstore;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import app.k9mail.legacy.mailstore.FolderMapper;
import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.regex.Pattern;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalFolder$$ExternalSyntheticLambda1 implements FolderMapper, LockableDatabase.DbCallback {
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ LocalFolder$$ExternalSyntheticLambda1(DefaultDisplayFolderRepository defaultDisplayFolderRepository, LegacyAccountDto legacyAccountDto, long j) {
        this.f$0 = legacyAccountDto;
        this.f$1 = j;
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        LocalFolder localFolder = (LocalFolder) this.f$0;
        localFolder.open();
        LocalStore localStore = localFolder.localStore;
        GeneralSettingsManager generalSettingsManager = localFolder.generalSettingsManager;
        long j = this.f$1;
        LocalMessage localMessage = new LocalMessage(localStore, j, localFolder, generalSettingsManager);
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header FROM messages LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN threads ON (threads.message_id = messages.id) WHERE messages.id = ? AND folder_id = ?", new String[]{Long.toString(j), Long.toString(localFolder.databaseId)});
        try {
            if (!rawQuery.moveToNext()) {
                Pattern pattern = Utility.RESPONSE_PATTERN;
                rawQuery.close();
                return null;
            }
            localMessage.populateFromGetMessageCursor(rawQuery);
            Pattern pattern2 = Utility.RESPONSE_PATTERN;
            rawQuery.close();
            return localMessage;
        } catch (Throwable th) {
            Utility.closeQuietly(rawQuery);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c7, code lost:
    
        if (r15 != r0.longValue()) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d5  */
    @Override // app.k9mail.legacy.mailstore.FolderMapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object map(okhttp3.ConnectionPool r20) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LocalFolder$$ExternalSyntheticLambda1.map(okhttp3.ConnectionPool):java.lang.Object");
    }

    public /* synthetic */ LocalFolder$$ExternalSyntheticLambda1(LocalFolder localFolder, long j) {
        this.f$0 = localFolder;
        this.f$1 = j;
    }
}
