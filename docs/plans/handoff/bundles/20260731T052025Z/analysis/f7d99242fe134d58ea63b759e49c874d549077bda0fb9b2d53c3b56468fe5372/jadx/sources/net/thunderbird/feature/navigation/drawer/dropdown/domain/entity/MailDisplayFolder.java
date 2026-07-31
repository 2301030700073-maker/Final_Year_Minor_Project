package net.thunderbird.feature.navigation.drawer.dropdown.domain.entity;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.folder.api.Folder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MailDisplayFolder implements DisplayFolder {
    public final String accountId;
    public final Folder folder;
    public final String id;
    public final boolean isInTopGroup;
    public final String pathDelimiter;
    public final int starredMessageCount;
    public final int unreadMessageCount;

    public MailDisplayFolder(String str, Folder folder, boolean z, int i, int i2, String str2) {
        str2.getClass();
        this.accountId = str;
        this.folder = folder;
        this.isInTopGroup = z;
        this.unreadMessageCount = i;
        this.starredMessageCount = i2;
        this.pathDelimiter = str2;
        str = str == null ? "" : str;
        this.id = str + "_" + folder.id;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MailDisplayFolder)) {
            return false;
        }
        MailDisplayFolder mailDisplayFolder = (MailDisplayFolder) obj;
        return Intrinsics.areEqual(this.accountId, mailDisplayFolder.accountId) && this.folder.equals(mailDisplayFolder.folder) && this.isInTopGroup == mailDisplayFolder.isInTopGroup && this.unreadMessageCount == mailDisplayFolder.unreadMessageCount && this.starredMessageCount == mailDisplayFolder.starredMessageCount && Intrinsics.areEqual(this.pathDelimiter, mailDisplayFolder.pathDelimiter);
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder
    public final String getId() {
        return this.id;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder
    public final String getPathDelimiter() {
        return this.pathDelimiter;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder
    public final int getStarredMessageCount() {
        return this.starredMessageCount;
    }

    @Override // net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder
    public final int getUnreadMessageCount() {
        return this.unreadMessageCount;
    }

    public final int hashCode() {
        String str = this.accountId;
        return this.pathDelimiter.hashCode() + ((((((((this.folder.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31) + (this.isInTopGroup ? 1231 : 1237)) * 31) + this.unreadMessageCount) * 31) + this.starredMessageCount) * 31);
    }

    public final String toString() {
        return "MailDisplayFolder(accountId=" + this.accountId + ", folder=" + this.folder + ", isInTopGroup=" + this.isInTopGroup + ", unreadMessageCount=" + this.unreadMessageCount + ", starredMessageCount=" + this.starredMessageCount + ", pathDelimiter=" + this.pathDelimiter + ")";
    }
}
