package com.fsck.k9.controller;

import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MessagingControllerCommands$PendingCommand {
    public long databaseId;

    public abstract void execute(MessagingController messagingController, LegacyAccountDto legacyAccountDto);

    public abstract String getCommandName();
}
