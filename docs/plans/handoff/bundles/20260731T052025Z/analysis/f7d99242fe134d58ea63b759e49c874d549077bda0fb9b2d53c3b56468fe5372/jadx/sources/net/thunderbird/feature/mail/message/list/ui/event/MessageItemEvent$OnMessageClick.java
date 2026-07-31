package net.thunderbird.feature.mail.message.list.ui.event;

import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemEvent$OnMessageClick implements MessageListEvent {
    public final MessageItemUi message;

    public MessageItemEvent$OnMessageClick(MessageItemUi messageItemUi) {
        this.message = messageItemUi;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessageItemEvent$OnMessageClick) && this.message.equals(((MessageItemEvent$OnMessageClick) obj).message);
    }

    public final int hashCode() {
        return this.message.hashCode();
    }

    public final String toString() {
        return "OnMessageClick(message=" + this.message + ")";
    }
}
