package com.fsck.k9.ui.endtoend;

import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.SingleLiveEvent;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptSetupTransferLiveEvent extends SingleLiveEvent {
    public final CoroutineScope eventScope;
    public final MessagingController messagingController;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutocryptSetupTransferLiveEvent(MessagingController messagingController) {
        super(0);
        ContextScope MainScope = JobKt.MainScope();
        this.messagingController = messagingController;
        this.eventScope = MainScope;
    }
}
