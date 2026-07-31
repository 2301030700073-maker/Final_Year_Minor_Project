package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.feature.navigation.drawer.api.NavigationDrawerExternalContract$DrawerConfig;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawerContract$State {
    public final ImmutableList accounts;
    public final NavigationDrawerExternalContract$DrawerConfig config;
    public final ImmutableList folders;
    public final boolean isLoading;
    public final DisplayTreeFolder rootFolder;
    public final String selectedAccountId;
    public final DisplayFolder selectedFolder;
    public final String selectedFolderId;
    public final boolean showAccountSelection;
    public final boolean showAccountSelector;

    public DrawerContract$State(NavigationDrawerExternalContract$DrawerConfig navigationDrawerExternalContract$DrawerConfig, boolean z, ImmutableList immutableList, String str, DisplayTreeFolder displayTreeFolder, ImmutableList immutableList2, String str2, DisplayFolder displayFolder, boolean z2, boolean z3) {
        immutableList.getClass();
        immutableList2.getClass();
        this.config = navigationDrawerExternalContract$DrawerConfig;
        this.showAccountSelector = z;
        this.accounts = immutableList;
        this.selectedAccountId = str;
        this.rootFolder = displayTreeFolder;
        this.folders = immutableList2;
        this.selectedFolderId = str2;
        this.selectedFolder = displayFolder;
        this.showAccountSelection = z2;
        this.isLoading = z3;
    }

    public static DrawerContract$State copy$default(DrawerContract$State drawerContract$State, NavigationDrawerExternalContract$DrawerConfig navigationDrawerExternalContract$DrawerConfig, boolean z, ImmutableList immutableList, String str, DisplayTreeFolder displayTreeFolder, ImmutableList immutableList2, String str2, DisplayFolder displayFolder, boolean z2, boolean z3, int i) {
        if ((i & 1) != 0) {
            navigationDrawerExternalContract$DrawerConfig = drawerContract$State.config;
        }
        NavigationDrawerExternalContract$DrawerConfig navigationDrawerExternalContract$DrawerConfig2 = navigationDrawerExternalContract$DrawerConfig;
        if ((i & 2) != 0) {
            z = drawerContract$State.showAccountSelector;
        }
        boolean z4 = z;
        if ((i & 4) != 0) {
            immutableList = drawerContract$State.accounts;
        }
        ImmutableList immutableList3 = immutableList;
        if ((i & 8) != 0) {
            str = drawerContract$State.selectedAccountId;
        }
        String str3 = str;
        DisplayTreeFolder displayTreeFolder2 = (i & 16) != 0 ? drawerContract$State.rootFolder : displayTreeFolder;
        ImmutableList immutableList4 = (i & 32) != 0 ? drawerContract$State.folders : immutableList2;
        String str4 = (i & 64) != 0 ? drawerContract$State.selectedFolderId : str2;
        DisplayFolder displayFolder2 = (i & 128) != 0 ? drawerContract$State.selectedFolder : displayFolder;
        boolean z5 = (i & 256) != 0 ? drawerContract$State.showAccountSelection : z2;
        boolean z6 = (i & 512) != 0 ? drawerContract$State.isLoading : z3;
        drawerContract$State.getClass();
        navigationDrawerExternalContract$DrawerConfig2.getClass();
        immutableList3.getClass();
        immutableList4.getClass();
        return new DrawerContract$State(navigationDrawerExternalContract$DrawerConfig2, z4, immutableList3, str3, displayTreeFolder2, immutableList4, str4, displayFolder2, z5, z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DrawerContract$State)) {
            return false;
        }
        DrawerContract$State drawerContract$State = (DrawerContract$State) obj;
        return this.config.equals(drawerContract$State.config) && this.showAccountSelector == drawerContract$State.showAccountSelector && Intrinsics.areEqual(this.accounts, drawerContract$State.accounts) && Intrinsics.areEqual(this.selectedAccountId, drawerContract$State.selectedAccountId) && this.rootFolder.equals(drawerContract$State.rootFolder) && Intrinsics.areEqual(this.folders, drawerContract$State.folders) && Intrinsics.areEqual(this.selectedFolderId, drawerContract$State.selectedFolderId) && Intrinsics.areEqual(this.selectedFolder, drawerContract$State.selectedFolder) && this.showAccountSelection == drawerContract$State.showAccountSelection && this.isLoading == drawerContract$State.isLoading;
    }

    public final int hashCode() {
        int hashCode = (this.accounts.hashCode() + (((this.config.hashCode() * 31) + (this.showAccountSelector ? 1231 : 1237)) * 31)) * 31;
        String str = this.selectedAccountId;
        int hashCode2 = (this.folders.hashCode() + ((this.rootFolder.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31;
        String str2 = this.selectedFolderId;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        DisplayFolder displayFolder = this.selectedFolder;
        return ((((hashCode3 + (displayFolder != null ? displayFolder.hashCode() : 0)) * 31) + (this.showAccountSelection ? 1231 : 1237)) * 31) + (this.isLoading ? 1231 : 1237);
    }

    public final String toString() {
        return "State(config=" + this.config + ", showAccountSelector=" + this.showAccountSelector + ", accounts=" + this.accounts + ", selectedAccountId=" + this.selectedAccountId + ", rootFolder=" + this.rootFolder + ", folders=" + this.folders + ", selectedFolderId=" + this.selectedFolderId + ", selectedFolder=" + this.selectedFolder + ", showAccountSelection=" + this.showAccountSelection + ", isLoading=" + this.isLoading + ")";
    }
}
