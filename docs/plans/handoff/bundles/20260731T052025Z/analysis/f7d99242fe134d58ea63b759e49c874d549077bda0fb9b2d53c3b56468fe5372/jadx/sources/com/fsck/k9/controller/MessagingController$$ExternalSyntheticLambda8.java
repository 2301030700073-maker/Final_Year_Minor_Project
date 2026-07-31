package com.fsck.k9.controller;

import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessagingController$$ExternalSyntheticLambda8 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessagingController f$0;
    public final /* synthetic */ LegacyAccountDto f$1;

    public /* synthetic */ MessagingController$$ExternalSyntheticLambda8(MessagingController messagingController, LegacyAccountDto legacyAccountDto, int i) {
        this.$r8$classId = i;
        this.f$0 = messagingController;
        this.f$1 = legacyAccountDto;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        LegacyAccountDto legacyAccountDto = this.f$1;
        MessagingController messagingController = this.f$0;
        switch (i) {
            case 0:
                messagingController.refreshFolderListSynchronous(legacyAccountDto);
                break;
            case 1:
                messagingController.messageStoreManager.getMessageStore(legacyAccountDto).clearNewMessageState();
                break;
            default:
                try {
                    messagingController.messageStoreManager.getMessageStore(legacyAccountDto).compact();
                    break;
                } catch (Exception e) {
                    Log.e(e, "Failed to compact account %s", legacyAccountDto);
                    return;
                }
        }
    }
}
