package com.fsck.k9.controller;

import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingAppend extends MessagingControllerCommands$PendingCommand {
    public final long folderId;
    public final String uid;

    private MessagingControllerCommands$PendingAppend(long j, String str) {
        this.folderId = j;
        this.uid = str;
    }

    public static MessagingControllerCommands$PendingAppend create(long j, String str) {
        if (str != null) {
            return new MessagingControllerCommands$PendingAppend(j, str);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
        return null;
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        CopyOnWriteArraySet copyOnWriteArraySet = messagingController.listeners;
        LocalStore localStoreProvider = messagingController.localStoreProvider.getInstance(legacyAccountDto);
        long j = this.folderId;
        LocalFolder localFolder = new LocalFolder(localStoreProvider, j);
        localFolder.open();
        String str = localFolder.serverId;
        LocalMessage message = localFolder.getMessage(this.uid);
        if (message == null) {
            return;
        }
        String str2 = message.mUid;
        messagingController.localMessageUidPrefixProvider.getClass();
        if (str2.startsWith("K9LOCAL:")) {
            Backend backend = messagingController.getBackend(legacyAccountDto);
            Flag flag = Flag.X_REMOTE_COPY_STARTED;
            if (message.mFlags.contains(flag)) {
                Log.w("Local message with uid %s has flag %s  already set, checking for remote message with same message id", message.mUid, flag);
                String findByMessageId = backend.findByMessageId(str, message.getMessageId());
                if (findByMessageId != null) {
                    Log.w("Local message has flag %s already set, and there is a remote message with uid %s, assuming message was already copied and aborting this copy", flag, findByMessageId);
                    String str3 = message.mUid;
                    message.setUid(findByMessageId);
                    localFolder.changeUid(message);
                    Iterator it = copyOnWriteArraySet.iterator();
                    while (it.hasNext()) {
                        ((SimpleMessagingListener) it.next()).messageUidChanged(legacyAccountDto, j, str3, message.mUid);
                    }
                    return;
                }
                Log.w("No remote message with message-id found, proceeding with append", new Object[0]);
            }
            FetchProfile fetchProfile = new FetchProfile();
            fetchProfile.add(FetchProfile.Item.BODY);
            localFolder.fetch(Collections.singletonList(message), fetchProfile);
            String str4 = message.mUid;
            message.setFlag(flag, true);
            String uploadMessage = backend.uploadMessage(str, message);
            if (uploadMessage == null) {
                localStoreProvider.database.execute(true, new LocalFolder.AnonymousClass9(Collections.singletonList(message)));
                return;
            }
            message.setUid(uploadMessage);
            localFolder.changeUid(message);
            Iterator it2 = copyOnWriteArraySet.iterator();
            while (it2.hasNext()) {
                ((SimpleMessagingListener) it2.next()).messageUidChanged(legacyAccountDto, j, str4, message.mUid);
            }
        }
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "append";
    }
}
