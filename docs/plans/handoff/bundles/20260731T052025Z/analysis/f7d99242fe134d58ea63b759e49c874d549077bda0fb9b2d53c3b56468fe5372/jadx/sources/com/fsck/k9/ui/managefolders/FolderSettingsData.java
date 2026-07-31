package com.fsck.k9.ui.managefolders;

import net.thunderbird.feature.mail.folder.api.Folder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderSettingsData extends FolderSettingsResult {
    public final FolderSettingsDataStore dataStore;
    public final Folder folder;

    public FolderSettingsData(Folder folder, FolderSettingsDataStore folderSettingsDataStore) {
        this.folder = folder;
        this.dataStore = folderSettingsDataStore;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FolderSettingsData) {
            FolderSettingsData folderSettingsData = (FolderSettingsData) obj;
            return this.folder.equals(folderSettingsData.folder) && this.dataStore == folderSettingsData.dataStore;
        }
        return false;
    }

    public final int hashCode() {
        return this.dataStore.hashCode() + (this.folder.hashCode() * 31);
    }

    public final String toString() {
        return "FolderSettingsData(folder=" + this.folder + ", dataStore=" + this.dataStore + ")";
    }
}
