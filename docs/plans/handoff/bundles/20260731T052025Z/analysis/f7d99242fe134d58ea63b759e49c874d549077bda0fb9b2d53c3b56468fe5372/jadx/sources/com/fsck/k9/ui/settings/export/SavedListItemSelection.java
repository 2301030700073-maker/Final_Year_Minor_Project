package com.fsck.k9.ui.settings.export;

import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SavedListItemSelection {
    public final boolean includeGeneralSettings;
    public final Set selectedAccountUuids;

    public SavedListItemSelection(Set set, boolean z) {
        this.includeGeneralSettings = z;
        this.selectedAccountUuids = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SavedListItemSelection)) {
            return false;
        }
        SavedListItemSelection savedListItemSelection = (SavedListItemSelection) obj;
        return this.includeGeneralSettings == savedListItemSelection.includeGeneralSettings && this.selectedAccountUuids.equals(savedListItemSelection.selectedAccountUuids);
    }

    public final int hashCode() {
        return this.selectedAccountUuids.hashCode() + ((this.includeGeneralSettings ? 1231 : 1237) * 31);
    }

    public final String toString() {
        return "SavedListItemSelection(includeGeneralSettings=" + this.includeGeneralSettings + ", selectedAccountUuids=" + this.selectedAccountUuids + ")";
    }
}
