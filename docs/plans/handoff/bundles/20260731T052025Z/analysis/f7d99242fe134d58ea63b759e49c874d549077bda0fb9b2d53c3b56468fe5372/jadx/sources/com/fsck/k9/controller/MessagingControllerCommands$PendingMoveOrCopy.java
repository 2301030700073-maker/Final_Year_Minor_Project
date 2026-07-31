package com.fsck.k9.controller;

import com.fsck.k9.controller.MessagingController;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.math.MathKt;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingControllerCommands$PendingMoveOrCopy extends MessagingControllerCommands$PendingCommand {
    public final long destFolderId;
    public final boolean isCopy;
    public final Map<String, String> newUidMap;
    public final long srcFolderId;
    public final List<String> uids;

    private MessagingControllerCommands$PendingMoveOrCopy(long j, long j2, boolean z, List<String> list, Map<String, String> map) {
        this.srcFolderId = j;
        this.destFolderId = j2;
        this.isCopy = z;
        this.uids = list;
        this.newUidMap = map;
    }

    public static MessagingControllerCommands$PendingMoveOrCopy create(long j, long j2, boolean z, Map<String, String> map) {
        MathKt.requireValidUids(map);
        return new MessagingControllerCommands$PendingMoveOrCopy(j, j2, z, null, map);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        messagingController.getClass();
        long j = this.srcFolderId;
        long j2 = this.destFolderId;
        MessagingController.MoveOrCopyFlavor moveOrCopyFlavor = this.isCopy ? MessagingController.MoveOrCopyFlavor.COPY : MessagingController.MoveOrCopyFlavor.MOVE;
        Map<String, String> map = this.newUidMap;
        messagingController.processPendingMoveOrCopy(legacyAccountDto, j, j2, map != null ? new ArrayList(map.keySet()) : this.uids, moveOrCopyFlavor, map);
    }

    @Override // com.fsck.k9.controller.MessagingControllerCommands$PendingCommand
    public String getCommandName() {
        return "move_or_copy";
    }
}
