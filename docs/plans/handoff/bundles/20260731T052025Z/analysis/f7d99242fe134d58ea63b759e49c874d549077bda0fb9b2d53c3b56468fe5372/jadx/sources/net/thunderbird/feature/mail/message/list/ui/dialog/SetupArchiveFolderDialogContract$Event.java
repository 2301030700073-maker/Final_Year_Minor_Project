package net.thunderbird.feature.mail.message.list.ui.dialog;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SetupArchiveFolderDialogContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MoveNext implements SetupArchiveFolderDialogContract$Event {
        public static final MoveNext INSTANCE = new MoveNext();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MoveNext);
        }

        public final int hashCode() {
            return -847127519;
        }

        public final String toString() {
            return "MoveNext";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnCreateFolderClicked implements SetupArchiveFolderDialogContract$Event {
        public final String newFolderName;

        public OnCreateFolderClicked(String str) {
            str.getClass();
            this.newFolderName = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnCreateFolderClicked) && Intrinsics.areEqual(this.newFolderName, ((OnCreateFolderClicked) obj).newFolderName);
        }

        public final int hashCode() {
            return this.newFolderName.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OnCreateFolderClicked(newFolderName=", this.newFolderName, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnDismissClicked implements SetupArchiveFolderDialogContract$Event {
        public static final OnDismissClicked INSTANCE = new OnDismissClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDismissClicked);
        }

        public final int hashCode() {
            return -827985223;
        }

        public final String toString() {
            return "OnDismissClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnDoNotShowDialogAgainChanged implements SetupArchiveFolderDialogContract$Event {
        public final boolean isChecked;

        public OnDoNotShowDialogAgainChanged(boolean z) {
            this.isChecked = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnDoNotShowDialogAgainChanged) && this.isChecked == ((OnDoNotShowDialogAgainChanged) obj).isChecked;
        }

        public final int hashCode() {
            return this.isChecked ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("OnDoNotShowDialogAgainChanged(isChecked=", ")", this.isChecked);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnDoneClicked implements SetupArchiveFolderDialogContract$Event {
        public static final OnDoneClicked INSTANCE = new OnDoneClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDoneClicked);
        }

        public final int hashCode() {
            return -162360503;
        }

        public final String toString() {
            return "OnDoneClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnFolderSelected implements SetupArchiveFolderDialogContract$Event {
        public final RemoteFolder folder;

        public OnFolderSelected(RemoteFolder remoteFolder) {
            remoteFolder.getClass();
            this.folder = remoteFolder;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnFolderSelected) && Intrinsics.areEqual(this.folder, ((OnFolderSelected) obj).folder);
        }

        public final int hashCode() {
            return this.folder.hashCode();
        }

        public final String toString() {
            return "OnFolderSelected(folder=" + this.folder + ")";
        }
    }
}
