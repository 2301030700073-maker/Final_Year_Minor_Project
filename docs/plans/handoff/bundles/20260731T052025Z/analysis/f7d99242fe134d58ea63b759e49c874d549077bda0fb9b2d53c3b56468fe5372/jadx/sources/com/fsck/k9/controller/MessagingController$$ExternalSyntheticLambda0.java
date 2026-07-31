package com.fsck.k9.controller;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.helper.MutableBoolean;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.storage.messages.K9MessageStore;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessagingController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessagingController f$0;
    public final /* synthetic */ LegacyAccountDto f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ MessagingController$$ExternalSyntheticLambda0(MessagingController messagingController, LegacyAccountDto legacyAccountDto, long j, int i) {
        this.$r8$classId = i;
        this.f$0 = messagingController;
        this.f$1 = legacyAccountDto;
        this.f$2 = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        long j = this.f$2;
        LegacyAccountDto legacyAccountDto = this.f$1;
        MessagingController messagingController = this.f$0;
        switch (i) {
            case 0:
                MessagingController messagingController2 = this.f$0;
                MessageStoreManager messageStoreManager = messagingController2.messageStoreManager;
                LegacyAccountDto legacyAccountDto2 = this.f$1;
                ListenableMessageStore messageStore = messageStoreManager.getMessageStore(legacyAccountDto2);
                UriKt$$ExternalSyntheticBUOutline0 uriKt$$ExternalSyntheticBUOutline0 = new UriKt$$ExternalSyntheticBUOutline0(29);
                K9MessageStore k9MessageStore = (K9MessageStore) messageStore.messageStore.val$folders;
                final long j2 = this.f$2;
                Integer num = (Integer) k9MessageStore.getFolder(j2, uriKt$$ExternalSyntheticBUOutline0);
                if (num != null) {
                    if (num.intValue() > 0) {
                        final int displayCount = legacyAccountDto2.getDisplayCount() + num.intValue();
                        ((K9MessageStore) messageStore.messageStore.val$folders).updateFolderOperations.lockableDatabase.execute(false, new LockableDatabase.DbCallback() { // from class: com.fsck.k9.storage.messages.UpdateFolderOperations$$ExternalSyntheticLambda2
                            @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
                            public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("visible_limit", Integer.valueOf(displayCount));
                                return Integer.valueOf(sQLiteDatabase.update("folders", contentValues, "id = ?", new String[]{String.valueOf(j2)}));
                            }
                        });
                    }
                    messagingController2.synchronizeMailboxSynchronous(legacyAccountDto2, j2, false, null, new MutableBoolean());
                    break;
                } else {
                    Log.v("loadMoreMessages(%s, %d): Folder not found", legacyAccountDto2, Long.valueOf(j2));
                    break;
                }
            case 1:
                messagingController.getClass();
                try {
                    LocalFolder localFolder = new LocalFolder(messagingController.localStoreProvider.getInstance(legacyAccountDto), j);
                    localFolder.open();
                    localFolder.clearAllMessages();
                    break;
                } catch (Exception e) {
                    Log.e(e, "clearFolder failed", new Object[0]);
                    return;
                }
            default:
                messagingController.queuePendingCommand(legacyAccountDto, MessagingControllerCommands$PendingExpunge.create(j));
                messagingController.processPendingCommands(legacyAccountDto);
                break;
        }
    }
}
