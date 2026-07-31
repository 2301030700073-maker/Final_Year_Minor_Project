package net.thunderbird.feature.mail.message.list.ui.event;

import net.thunderbird.feature.mail.message.list.ui.state.Folder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderEvent$FolderLoaded implements MessageListEvent {
    public final Folder folder;

    public FolderEvent$FolderLoaded(Folder folder) {
        this.folder = folder;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FolderEvent$FolderLoaded) && this.folder.equals(((FolderEvent$FolderLoaded) obj).folder);
    }

    public final int hashCode() {
        return this.folder.hashCode();
    }

    public final String toString() {
        return "FolderLoaded(folder=" + this.folder + ")";
    }
}
