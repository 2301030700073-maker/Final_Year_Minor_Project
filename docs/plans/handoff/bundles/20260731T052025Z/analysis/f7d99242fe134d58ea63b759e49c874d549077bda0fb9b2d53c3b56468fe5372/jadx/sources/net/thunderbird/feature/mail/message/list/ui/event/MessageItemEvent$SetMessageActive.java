package net.thunderbird.feature.mail.message.list.ui.event;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemEvent$SetMessageActive implements MessageListEvent {
    public final MessageItemUi message;

    public MessageItemEvent$SetMessageActive(MessageItemUi messageItemUi) {
        this.message = messageItemUi;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessageItemEvent$SetMessageActive) && Intrinsics.areEqual(this.message, ((MessageItemEvent$SetMessageActive) obj).message);
    }

    public final int hashCode() {
        MessageItemUi messageItemUi = this.message;
        if (messageItemUi == null) {
            return 0;
        }
        return messageItemUi.hashCode();
    }

    public final String toString() {
        return "SetMessageActive(message=" + this.message + ")";
    }
}
