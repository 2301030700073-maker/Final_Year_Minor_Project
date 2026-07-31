package app.k9mail.legacy.message.controller;

import androidx.camera.core.impl.Config;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageCounts {
    public final int starred;
    public final int unread;

    public MessageCounts(int i, int i2) {
        this.unread = i;
        this.starred = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageCounts)) {
            return false;
        }
        MessageCounts messageCounts = (MessageCounts) obj;
        return this.unread == messageCounts.unread && this.starred == messageCounts.starred;
    }

    public final int hashCode() {
        return (this.unread * 31) + this.starred;
    }

    public final String toString() {
        return Config.CC.m("MessageCounts(unread=", this.unread, ", starred=", this.starred, ")");
    }
}
