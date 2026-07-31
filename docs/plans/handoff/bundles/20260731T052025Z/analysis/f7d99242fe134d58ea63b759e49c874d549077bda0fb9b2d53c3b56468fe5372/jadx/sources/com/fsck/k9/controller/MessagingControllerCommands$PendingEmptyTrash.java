package com.fsck.k9.controller;

import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalStore;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingEmptyTrash extends MessagingControllerCommands$PendingCommand {
    public static MessagingControllerCommands$PendingEmptyTrash create() {
        return new MessagingControllerCommands$PendingEmptyTrash();
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        boolean z;
        messagingController.getClass();
        synchronized (legacyAccountDto) {
            z = legacyAccountDto.trashFolderId != null;
        }
        if (z) {
            long longValue = legacyAccountDto.getTrashFolderId().longValue();
            LocalStore localStoreProvider = messagingController.localStoreProvider.getInstance(legacyAccountDto);
            LocalFolder localFolder = new LocalFolder(localStoreProvider, longValue);
            localFolder.open();
            messagingController.getBackend(legacyAccountDto).deleteAllMessages(localFolder.serverId);
            localStoreProvider.database.execute(false, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(9, localFolder, "empty = 0 AND deleted = 1"));
            messagingController.putBackground("compact:" + legacyAccountDto, new MessagingController$$ExternalSyntheticLambda8(messagingController, legacyAccountDto, 2));
        }
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "empty_trash";
    }
}
