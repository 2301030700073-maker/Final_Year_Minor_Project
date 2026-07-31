package com.fsck.k9.controller;

import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingExpunge extends MessagingControllerCommands$PendingCommand {
    public final long folderId;

    private MessagingControllerCommands$PendingExpunge(long j) {
        this.folderId = j;
    }

    public static MessagingControllerCommands$PendingExpunge create(long j) {
        return new MessagingControllerCommands$PendingExpunge(j);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        messagingController.getBackend(legacyAccountDto).expunge(messagingController.getFolderServerId(legacyAccountDto, this.folderId));
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "expunge";
    }
}
