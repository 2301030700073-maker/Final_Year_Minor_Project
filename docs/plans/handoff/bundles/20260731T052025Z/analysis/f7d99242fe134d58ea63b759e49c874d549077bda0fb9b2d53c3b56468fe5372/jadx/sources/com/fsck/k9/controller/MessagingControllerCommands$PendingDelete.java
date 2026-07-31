package com.fsck.k9.controller;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.Iterator;
import java.util.List;
import kotlin.math.MathKt;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingDelete extends MessagingControllerCommands$PendingCommand {
    public final long folderId;
    public final List<String> uids;

    private MessagingControllerCommands$PendingDelete(long j, List<String> list) {
        this.folderId = j;
        this.uids = list;
    }

    public static MessagingControllerCommands$PendingDelete create(long j, List<String> list) {
        if (list == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
            return null;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            MathKt.requireNotLocalUid(it.next());
        }
        return new MessagingControllerCommands$PendingDelete(j, list);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        messagingController.getClass();
        long j = this.folderId;
        List<String> list = this.uids;
        messagingController.getBackend(legacyAccountDto).deleteMessages(messagingController.getFolderServerId(legacyAccountDto, j), list);
        LocalFolder localFolder = new LocalFolder(messagingController.localStoreProvider.getInstance(legacyAccountDto), j);
        localFolder.open();
        MessagingController.destroyPlaceholderMessages(localFolder, list);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "delete";
    }
}
