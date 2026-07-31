package net.thunderbird.feature.mail.message.list.ui.event;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemEvent$ToggleSelectMessages implements MessageListEvent {
    public final List messages;

    public MessageItemEvent$ToggleSelectMessages(MessageItemUi messageItemUi) {
        this.messages = IntOffsetKt.listOf(messageItemUi);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessageItemEvent$ToggleSelectMessages) && Intrinsics.areEqual(this.messages, ((MessageItemEvent$ToggleSelectMessages) obj).messages);
    }

    public final int hashCode() {
        return this.messages.hashCode();
    }

    public final String toString() {
        return "ToggleSelectMessages(messages=" + this.messages + ")";
    }
}
