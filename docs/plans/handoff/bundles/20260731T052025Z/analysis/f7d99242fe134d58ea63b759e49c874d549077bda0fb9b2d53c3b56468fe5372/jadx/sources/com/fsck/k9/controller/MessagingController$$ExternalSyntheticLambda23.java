package com.fsck.k9.controller;

import com.fsck.k9.controller.MessagingController;
import java.util.ArrayList;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessagingController$$ExternalSyntheticLambda23 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessagingController f$0;
    public final /* synthetic */ LegacyAccountDto f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ ArrayList f$3;
    public final /* synthetic */ long f$4;

    public /* synthetic */ MessagingController$$ExternalSyntheticLambda23(MessagingController messagingController, LegacyAccountDto legacyAccountDto, long j, ArrayList arrayList, long j2, int i) {
        this.$r8$classId = i;
        this.f$0 = messagingController;
        this.f$1 = legacyAccountDto;
        this.f$2 = j;
        this.f$3 = arrayList;
        this.f$4 = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        ArrayList arrayList = this.f$3;
        switch (i) {
            case 0:
                this.f$0.moveOrCopyMessageSynchronous(this.f$1, this.f$2, this.f$3, this.f$4, MessagingController.MoveOrCopyFlavor.MOVE);
                break;
            case 1:
                this.f$0.moveOrCopyMessageSynchronous(this.f$1, this.f$2, this.f$3, this.f$4, MessagingController.MoveOrCopyFlavor.COPY);
                break;
            case 2:
                MessagingController messagingController = this.f$0;
                LegacyAccountDto legacyAccountDto = this.f$1;
                try {
                    messagingController.moveOrCopyMessageSynchronous(legacyAccountDto, this.f$2, messagingController.collectMessagesInThreads(legacyAccountDto, arrayList), this.f$4, MessagingController.MoveOrCopyFlavor.COPY);
                    break;
                } catch (MessagingException e) {
                    Log.e(e, "Exception while copying messages", new Object[0]);
                    return;
                }
            default:
                MessagingController messagingController2 = this.f$0;
                LegacyAccountDto legacyAccountDto2 = this.f$1;
                try {
                    messagingController2.moveOrCopyMessageSynchronous(legacyAccountDto2, this.f$2, messagingController2.collectMessagesInThreads(legacyAccountDto2, arrayList), this.f$4, MessagingController.MoveOrCopyFlavor.MOVE);
                    break;
                } catch (MessagingException e2) {
                    Log.e(e2, "Exception while moving messages", new Object[0]);
                }
        }
    }

    public /* synthetic */ MessagingController$$ExternalSyntheticLambda23(MessagingController messagingController, LegacyAccountDto legacyAccountDto, ArrayList arrayList, long j, long j2, int i) {
        this.$r8$classId = i;
        this.f$0 = messagingController;
        this.f$1 = legacyAccountDto;
        this.f$3 = arrayList;
        this.f$2 = j;
        this.f$4 = j2;
    }
}
