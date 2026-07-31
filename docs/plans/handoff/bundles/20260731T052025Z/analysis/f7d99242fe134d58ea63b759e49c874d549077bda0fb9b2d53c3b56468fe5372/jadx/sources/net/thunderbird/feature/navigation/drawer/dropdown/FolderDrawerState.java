package net.thunderbird.feature.navigation.drawer.dropdown;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderDrawerState {
    public final String selectedAccountUuid;
    public final String selectedFolderId;

    public FolderDrawerState(String str, String str2) {
        this.selectedAccountUuid = str;
        this.selectedFolderId = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderDrawerState)) {
            return false;
        }
        FolderDrawerState folderDrawerState = (FolderDrawerState) obj;
        return Intrinsics.areEqual(this.selectedAccountUuid, folderDrawerState.selectedAccountUuid) && Intrinsics.areEqual(this.selectedFolderId, folderDrawerState.selectedFolderId);
    }

    public final int hashCode() {
        String str = this.selectedAccountUuid;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.selectedFolderId;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("FolderDrawerState(selectedAccountUuid=", this.selectedAccountUuid, ", selectedFolderId=", this.selectedFolderId, ")");
    }
}
