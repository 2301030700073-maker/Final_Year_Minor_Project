package com.fsck.k9.controller;

import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.ArrayList;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessagingController$$ExternalSyntheticLambda9 implements MessagingController.MessageActor {
    public final /* synthetic */ MessagingController f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ MessagingController$$ExternalSyntheticLambda9(MessagingController messagingController, boolean z) {
        this.f$0 = messagingController;
        this.f$1 = z;
    }

    @Override // com.fsck.k9.controller.MessagingController.MessageActor
    public final void act(LegacyAccountDto legacyAccountDto, LocalFolder localFolder, ArrayList arrayList) {
        MessagingController.suppressMessages(legacyAccountDto, arrayList);
        MessagingController messagingController = this.f$0;
        messagingController.putBackground("deleteMessages", new MessagingController$$ExternalSyntheticLambda12(messagingController, legacyAccountDto, localFolder, arrayList, this.f$1, 2));
    }
}
