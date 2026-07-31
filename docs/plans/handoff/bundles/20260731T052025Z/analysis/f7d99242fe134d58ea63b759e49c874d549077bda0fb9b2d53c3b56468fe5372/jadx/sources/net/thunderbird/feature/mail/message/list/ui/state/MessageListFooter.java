package net.thunderbird.feature.mail.message.list.ui.state;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListFooter {
    public final boolean showFooter;
    public final String text;

    public MessageListFooter(String str, boolean z) {
        this.showFooter = z;
        this.text = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListFooter)) {
            return false;
        }
        MessageListFooter messageListFooter = (MessageListFooter) obj;
        return this.showFooter == messageListFooter.showFooter && this.text.equals(messageListFooter.text);
    }

    public final int hashCode() {
        return this.text.hashCode() + ((this.showFooter ? 1231 : 1237) * 31);
    }

    public final String toString() {
        return "MessageListFooter(showFooter=" + this.showFooter + ", text=" + this.text + ")";
    }
}
