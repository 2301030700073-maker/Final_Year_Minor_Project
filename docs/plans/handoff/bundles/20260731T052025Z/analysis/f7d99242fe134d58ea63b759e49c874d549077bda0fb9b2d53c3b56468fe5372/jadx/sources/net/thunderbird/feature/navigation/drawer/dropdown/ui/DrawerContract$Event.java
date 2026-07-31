package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface DrawerContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnAccountClick implements DrawerContract$Event {
        public final DisplayAccount account;

        public OnAccountClick(DisplayAccount displayAccount) {
            displayAccount.getClass();
            this.account = displayAccount;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnAccountClick) && Intrinsics.areEqual(this.account, ((OnAccountClick) obj).account);
        }

        public final int hashCode() {
            return this.account.hashCode();
        }

        public final String toString() {
            return "OnAccountClick(account=" + this.account + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnAccountSelectorClick implements DrawerContract$Event {
        public static final OnAccountSelectorClick INSTANCE = new OnAccountSelectorClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnAccountSelectorClick);
        }

        public final int hashCode() {
            return -911625792;
        }

        public final String toString() {
            return "OnAccountSelectorClick";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnAccountViewClick implements DrawerContract$Event {
        public final DisplayAccount account;

        public OnAccountViewClick(DisplayAccount displayAccount) {
            this.account = displayAccount;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnAccountViewClick) && this.account.equals(((OnAccountViewClick) obj).account);
        }

        public final int hashCode() {
            return this.account.hashCode();
        }

        public final String toString() {
            return "OnAccountViewClick(account=" + this.account + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnAddAccountClick implements DrawerContract$Event {
        public static final OnAddAccountClick INSTANCE = new OnAddAccountClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnAddAccountClick);
        }

        public final int hashCode() {
            return -1762334184;
        }

        public final String toString() {
            return "OnAddAccountClick";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnFolderClick implements DrawerContract$Event {
        public final DisplayFolder folder;

        public OnFolderClick(DisplayFolder displayFolder) {
            displayFolder.getClass();
            this.folder = displayFolder;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnFolderClick) && Intrinsics.areEqual(this.folder, ((OnFolderClick) obj).folder);
        }

        public final int hashCode() {
            return this.folder.hashCode();
        }

        public final String toString() {
            return "OnFolderClick(folder=" + this.folder + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnManageFoldersClick implements DrawerContract$Event {
        public static final OnManageFoldersClick INSTANCE = new OnManageFoldersClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnManageFoldersClick);
        }

        public final int hashCode() {
            return -429961268;
        }

        public final String toString() {
            return "OnManageFoldersClick";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnSettingsClick implements DrawerContract$Event {
        public static final OnSettingsClick INSTANCE = new OnSettingsClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSettingsClick);
        }

        public final int hashCode() {
            return 437276065;
        }

        public final String toString() {
            return "OnSettingsClick";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnSyncAccount implements DrawerContract$Event {
        public static final OnSyncAccount INSTANCE = new OnSyncAccount();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSyncAccount);
        }

        public final int hashCode() {
            return 279410830;
        }

        public final String toString() {
            return "OnSyncAccount";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnSyncAllAccounts implements DrawerContract$Event {
        public static final OnSyncAllAccounts INSTANCE = new OnSyncAllAccounts();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSyncAllAccounts);
        }

        public final int hashCode() {
            return 1602109064;
        }

        public final String toString() {
            return "OnSyncAllAccounts";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SelectAccount implements DrawerContract$Event {
        public final String accountId;

        public SelectAccount(String str) {
            this.accountId = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SelectAccount) && Intrinsics.areEqual(this.accountId, ((SelectAccount) obj).accountId);
        }

        public final int hashCode() {
            String str = this.accountId;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("SelectAccount(accountId=", this.accountId, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SelectFolder implements DrawerContract$Event {
        public final String folderId;

        public SelectFolder(String str) {
            this.folderId = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SelectFolder) && Intrinsics.areEqual(this.folderId, ((SelectFolder) obj).folderId);
        }

        public final int hashCode() {
            String str = this.folderId;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("SelectFolder(folderId=", this.folderId, ")");
        }
    }
}
