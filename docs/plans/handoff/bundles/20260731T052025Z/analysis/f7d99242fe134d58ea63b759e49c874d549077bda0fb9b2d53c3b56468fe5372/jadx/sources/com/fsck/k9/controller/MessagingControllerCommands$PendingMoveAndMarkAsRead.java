package com.fsck.k9.controller;

import com.fsck.k9.controller.MessagingController;
import java.util.ArrayList;
import java.util.Map;
import kotlin.math.MathKt;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingMoveAndMarkAsRead extends MessagingControllerCommands$PendingCommand {
    public final long destFolderId;
    public final Map<String, String> newUidMap;
    public final long srcFolderId;

    private MessagingControllerCommands$PendingMoveAndMarkAsRead(long j, long j2, Map<String, String> map) {
        this.srcFolderId = j;
        this.destFolderId = j2;
        this.newUidMap = map;
    }

    public static MessagingControllerCommands$PendingMoveAndMarkAsRead create(long j, long j2, Map<String, String> map) {
        MathKt.requireValidUids(map);
        return new MessagingControllerCommands$PendingMoveAndMarkAsRead(j, j2, map);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        messagingController.getClass();
        long j = this.srcFolderId;
        long j2 = this.destFolderId;
        Map<String, String> map = this.newUidMap;
        messagingController.processPendingMoveOrCopy(legacyAccountDto, j, j2, new ArrayList(map.keySet()), MessagingController.MoveOrCopyFlavor.MOVE_AND_MARK_AS_READ, map);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "move_and_mark_as_read";
    }
}
