package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface DrawerContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CloseDrawer implements DrawerContract$Effect {
        public static final CloseDrawer INSTANCE = new CloseDrawer();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseDrawer);
        }

        public final int hashCode() {
            return -1199205155;
        }

        public final String toString() {
            return "CloseDrawer";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenAccount implements DrawerContract$Effect {
        public final String accountId;

        public OpenAccount(String str) {
            str.getClass();
            this.accountId = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenAccount) && Intrinsics.areEqual(this.accountId, ((OpenAccount) obj).accountId);
        }

        public final int hashCode() {
            return this.accountId.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OpenAccount(accountId=", this.accountId, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenAddAccount implements DrawerContract$Effect {
        public static final OpenAddAccount INSTANCE = new OpenAddAccount();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenAddAccount);
        }

        public final int hashCode() {
            return -587897886;
        }

        public final String toString() {
            return "OpenAddAccount";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenFolder implements DrawerContract$Effect {
        public final String accountId;
        public final long folderId;

        public OpenFolder(long j, String str) {
            str.getClass();
            this.accountId = str;
            this.folderId = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OpenFolder)) {
                return false;
            }
            OpenFolder openFolder = (OpenFolder) obj;
            return Intrinsics.areEqual(this.accountId, openFolder.accountId) && this.folderId == openFolder.folderId;
        }

        public final int hashCode() {
            int hashCode = this.accountId.hashCode() * 31;
            long j = this.folderId;
            return hashCode + ((int) (j ^ (j >>> 32)));
        }

        public final String toString() {
            return "OpenFolder(accountId=" + this.accountId + ", folderId=" + this.folderId + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenManageFolders implements DrawerContract$Effect {
        public static final OpenManageFolders INSTANCE = new OpenManageFolders();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenManageFolders);
        }

        public final int hashCode() {
            return 1058312010;
        }

        public final String toString() {
            return "OpenManageFolders";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenSettings implements DrawerContract$Effect {
        public static final OpenSettings INSTANCE = new OpenSettings();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenSettings);
        }

        public final int hashCode() {
            return 539405113;
        }

        public final String toString() {
            return "OpenSettings";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenUnifiedFolder implements DrawerContract$Effect {
        public static final OpenUnifiedFolder INSTANCE = new OpenUnifiedFolder();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenUnifiedFolder);
        }

        public final int hashCode() {
            return 165995338;
        }

        public final String toString() {
            return "OpenUnifiedFolder";
        }
    }
}
