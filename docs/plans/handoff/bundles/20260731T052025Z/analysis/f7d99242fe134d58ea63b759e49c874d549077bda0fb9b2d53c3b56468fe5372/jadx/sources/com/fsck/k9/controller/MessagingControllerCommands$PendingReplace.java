package com.fsck.k9.controller;

import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalFolder$$ExternalSyntheticLambda1;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import java.util.Iterator;
import java.util.List;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingReplace extends MessagingControllerCommands$PendingCommand {
    public final long deleteMessageId;
    public final long folderId;
    public final long uploadMessageId;

    private MessagingControllerCommands$PendingReplace(long j, long j2, long j3) {
        this.folderId = j;
        this.uploadMessageId = j2;
        this.deleteMessageId = j3;
    }

    public static MessagingControllerCommands$PendingReplace create(long j, long j2, long j3) {
        return new MessagingControllerCommands$PendingReplace(j, j2, j3);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        ImapSync imapSync = messagingController.draftOperations;
        imapSync.getClass();
        legacyAccountDto.getClass();
        MessagingController messagingController2 = (MessagingController) imapSync.accountName;
        LocalStore localStoreOrThrow = messagingController2.getLocalStoreOrThrow(legacyAccountDto);
        LocalFolder localFolder = new LocalFolder(localStoreOrThrow, this.folderId);
        localFolder.open();
        Backend backend = messagingController2.getBackend(legacyAccountDto);
        long j = this.uploadMessageId;
        LocalMessage localMessage = (LocalMessage) localStoreOrThrow.database.execute(false, new LocalFolder$$ExternalSyntheticLambda1(localFolder, j));
        if (localMessage == null) {
            Log.w("Couldn't find local copy of message to upload [ID: %d]", Long.valueOf(j));
            return;
        }
        String str = localMessage.mUid;
        str.getClass();
        if (StringsKt__StringsJVMKt.startsWith(str, "K9LOCAL:", false)) {
            backend.getClass();
            String str2 = localFolder.serverId;
            Log.d("Uploading message [ID: %d] to remote folder '%s'", Long.valueOf(localMessage.databaseId), str2);
            FetchProfile fetchProfile = new FetchProfile();
            fetchProfile.add(FetchProfile.Item.BODY);
            localFolder.fetch(IntOffsetKt.listOf(localMessage), fetchProfile);
            str2.getClass();
            String uploadMessage = backend.uploadMessage(str2, localMessage);
            if (uploadMessage == null) {
                Log.w("Failed to get a server ID for the uploaded message. Removing local copy [ID: %d]", Long.valueOf(localMessage.databaseId));
                localMessage.destroy();
            } else {
                String str3 = localMessage.mUid;
                localMessage.setUid(uploadMessage);
                localFolder.changeUid(localMessage);
                Iterator it = messagingController2.listeners.iterator();
                while (it.hasNext()) {
                    ((SimpleMessagingListener) it.next()).messageUidChanged(legacyAccountDto, localFolder.databaseId, str3, localMessage.mUid);
                }
            }
        } else {
            Log.i("Message [ID: %d] to be uploaded already has a server ID set. Skipping upload.", Long.valueOf(j));
        }
        backend.getClass();
        long j2 = this.deleteMessageId;
        String str4 = (String) localFolder.localStore.database.execute(false, new LocalFolder.AnonymousClass6(localFolder, j2, 0));
        if (str4 == null) {
            Log.i("Couldn't find local copy of message [ID: %d] to be deleted. Skipping delete.", Long.valueOf(j2));
            return;
        }
        List listOf = IntOffsetKt.listOf(str4);
        String str5 = localFolder.serverId;
        str5.getClass();
        backend.deleteMessages(str5, listOf);
        MessagingController.destroyPlaceholderMessages(localFolder, listOf);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "replace";
    }
}
