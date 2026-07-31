package com.fsck.k9.ui.messagelist;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageSortOverride {
    public final boolean isRead;
    public final boolean isStarred;

    public MessageSortOverride(boolean z, boolean z2) {
        this.isRead = z;
        this.isStarred = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageSortOverride)) {
            return false;
        }
        MessageSortOverride messageSortOverride = (MessageSortOverride) obj;
        return this.isRead == messageSortOverride.isRead && this.isStarred == messageSortOverride.isStarred;
    }

    public final int hashCode() {
        return ((this.isRead ? 1231 : 1237) * 31) + (this.isStarred ? 1231 : 1237);
    }

    public final String toString() {
        return "MessageSortOverride(isRead=" + this.isRead + ", isStarred=" + this.isStarred + ")";
    }
}
