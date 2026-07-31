package net.thunderbird.feature.mail.message.list.ui.component;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollEvent$ScrollToMessage {
    public final boolean animated;
    public final MessageItemUi message;

    public ScrollEvent$ScrollToMessage(MessageItemUi messageItemUi, boolean z) {
        messageItemUi.getClass();
        this.message = messageItemUi;
        this.animated = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScrollEvent$ScrollToMessage)) {
            return false;
        }
        ScrollEvent$ScrollToMessage scrollEvent$ScrollToMessage = (ScrollEvent$ScrollToMessage) obj;
        return Intrinsics.areEqual(this.message, scrollEvent$ScrollToMessage.message) && this.animated == scrollEvent$ScrollToMessage.animated;
    }

    public final int hashCode() {
        return (this.message.hashCode() * 31) + (this.animated ? 1231 : 1237);
    }

    public final String toString() {
        return "ScrollToMessage(message=" + this.message + ", animated=" + this.animated + ")";
    }
}
