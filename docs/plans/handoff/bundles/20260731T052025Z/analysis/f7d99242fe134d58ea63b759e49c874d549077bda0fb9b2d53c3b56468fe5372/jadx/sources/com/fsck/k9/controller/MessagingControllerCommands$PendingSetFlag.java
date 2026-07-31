package com.fsck.k9.controller;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.List;
import kotlin.math.MathKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.Flag;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingSetFlag extends MessagingControllerCommands$PendingCommand {
    public final Flag flag;
    public final long folderId;
    public final boolean newState;
    public final List<String> uids;

    private MessagingControllerCommands$PendingSetFlag(long j, boolean z, Flag flag, List<String> list) {
        this.folderId = j;
        this.newState = z;
        this.flag = flag;
        this.uids = list;
    }

    public static MessagingControllerCommands$PendingSetFlag create(long j, boolean z, Flag flag, List<String> list) {
        if (flag == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
            return null;
        }
        if (list == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
            return null;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            MathKt.requireNotLocalUid(it.next());
        }
        return new MessagingControllerCommands$PendingSetFlag(j, z, flag, list);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        messagingController.getBackend(legacyAccountDto).setFlag(messagingController.getFolderServerId(legacyAccountDto, this.folderId), this.uids, this.flag, this.newState);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "set_flag";
    }
}
