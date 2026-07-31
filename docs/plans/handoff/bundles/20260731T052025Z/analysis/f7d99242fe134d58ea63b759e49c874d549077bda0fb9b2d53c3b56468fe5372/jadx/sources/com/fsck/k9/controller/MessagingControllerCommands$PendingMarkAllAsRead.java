package com.fsck.k9.controller;

import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.Iterator;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingMarkAllAsRead extends MessagingControllerCommands$PendingCommand {
    public final long folderId;

    private MessagingControllerCommands$PendingMarkAllAsRead(long j) {
        this.folderId = j;
    }

    public static MessagingControllerCommands$PendingMarkAllAsRead create(long j) {
        return new MessagingControllerCommands$PendingMarkAllAsRead(j);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        messagingController.getClass();
        LocalFolder localFolder = new LocalFolder(messagingController.localStoreProvider.getInstance(legacyAccountDto), this.folderId);
        localFolder.open();
        String str = localFolder.serverId;
        Log.i("Marking all messages in %s:%s as read", legacyAccountDto, str);
        for (MimeMessage mimeMessage : localFolder.getMessages(false)) {
            Flag flag = Flag.SEEN;
            if (!mimeMessage.mFlags.contains(flag)) {
                mimeMessage.setFlag(flag, true);
            }
        }
        Iterator it = messagingController.listeners.iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).folderStatusChanged(legacyAccountDto);
        }
        Backend backend = messagingController.getBackend(legacyAccountDto);
        if (backend.getSupportsFlags()) {
            backend.markAllAsRead(str);
        }
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "mark_all_as_read";
    }
}
