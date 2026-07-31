package net.thunderbird.feature.mail.message.list.ui.component.config;

import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageConversationCounterBadgeColor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageSublineLeadingIndicator {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AttachmentIcon implements MessageSublineLeadingIndicator {
        public static final AttachmentIcon INSTANCE = new AttachmentIcon();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AttachmentIcon);
        }

        public final int hashCode() {
            return -950785817;
        }

        public final String toString() {
            return "AttachmentIcon";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ConversationCounterBadge implements MessageSublineLeadingIndicator {
        public final MessageConversationCounterBadgeColor color;
        public final int count;

        public ConversationCounterBadge(int i, MessageConversationCounterBadgeColor messageConversationCounterBadgeColor) {
            this.count = i;
            this.color = messageConversationCounterBadgeColor;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConversationCounterBadge)) {
                return false;
            }
            ConversationCounterBadge conversationCounterBadge = (ConversationCounterBadge) obj;
            return this.count == conversationCounterBadge.count && this.color.equals(conversationCounterBadge.color);
        }

        public final int hashCode() {
            return this.color.hashCode() + (this.count * 31);
        }

        public final String toString() {
            return "ConversationCounterBadge(count=" + this.count + ", color=" + this.color + ")";
        }
    }
}
