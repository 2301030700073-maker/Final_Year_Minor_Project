package com.fsck.k9.ui.messagelist;

import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListInfo {
    public final boolean hasMoreMessages;
    public final List messageListItems;

    public MessageListInfo(List list, boolean z) {
        this.messageListItems = list;
        this.hasMoreMessages = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListInfo)) {
            return false;
        }
        MessageListInfo messageListInfo = (MessageListInfo) obj;
        return this.messageListItems.equals(messageListInfo.messageListItems) && this.hasMoreMessages == messageListInfo.hasMoreMessages;
    }

    public final int hashCode() {
        return (this.messageListItems.hashCode() * 31) + (this.hasMoreMessages ? 1231 : 1237);
    }

    public final String toString() {
        return "MessageListInfo(messageListItems=" + this.messageListItems + ", hasMoreMessages=" + this.hasMoreMessages + ")";
    }
}
