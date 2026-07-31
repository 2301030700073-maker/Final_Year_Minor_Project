package com.fsck.k9.message;

import android.content.Intent;
import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SimpleMessageBuilder extends MessageBuilder {
    @Override // com.fsck.k9.message.MessageBuilder
    public final void buildMessageInternal() {
        try {
            queueMessageBuildSuccess(build());
        } catch (MessagingException e) {
            queueMessageBuildException(e);
        }
    }

    @Override // com.fsck.k9.message.MessageBuilder
    public final void buildMessageOnActivityResult(Intent intent) {
        throw new UnsupportedOperationException();
    }
}
