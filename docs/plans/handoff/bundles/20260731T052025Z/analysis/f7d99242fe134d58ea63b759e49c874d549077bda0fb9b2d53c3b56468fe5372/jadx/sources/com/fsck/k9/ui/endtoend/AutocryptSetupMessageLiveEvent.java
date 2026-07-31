package com.fsck.k9.ui.endtoend;

import com.fsck.k9.autocrypt.AutocryptTransferMessageCreator;
import com.fsck.k9.helper.SingleLiveEvent;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptSetupMessageLiveEvent extends SingleLiveEvent {
    public final CoroutineScope eventScope;
    public final AutocryptTransferMessageCreator messageCreator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutocryptSetupMessageLiveEvent(AutocryptTransferMessageCreator autocryptTransferMessageCreator) {
        super(0);
        ContextScope MainScope = JobKt.MainScope();
        this.messageCreator = autocryptTransferMessageCreator;
        this.eventScope = MainScope;
    }
}
