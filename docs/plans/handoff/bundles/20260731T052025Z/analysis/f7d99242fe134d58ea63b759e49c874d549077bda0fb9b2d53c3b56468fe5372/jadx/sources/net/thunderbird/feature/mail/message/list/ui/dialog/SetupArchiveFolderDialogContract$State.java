package net.thunderbird.feature.mail.message.list.ui.dialog;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import coil3.size.ViewSizeResolver;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SetupArchiveFolderDialogContract$State {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Closed implements SetupArchiveFolderDialogContract$State {
        public final boolean isDoNotShowDialogAgainChecked;

        public Closed(boolean z) {
            this.isDoNotShowDialogAgainChecked = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Closed) && this.isDoNotShowDialogAgainChecked == ((Closed) obj).isDoNotShowDialogAgainChecked;
        }

        public final int hashCode() {
            return this.isDoNotShowDialogAgainChecked ? 1231 : 1237;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State
        public final boolean isDoNotShowDialogAgainChecked() {
            return this.isDoNotShowDialogAgainChecked;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("Closed(isDoNotShowDialogAgainChecked=", ")", this.isDoNotShowDialogAgainChecked);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CreateArchiveFolder implements SetupArchiveFolderDialogContract$State {
        public final String errorMessage;
        public final String folderName;
        public final String syncingMessage;

        public CreateArchiveFolder(String str, String str2, String str3) {
            this.folderName = str;
            this.syncingMessage = str2;
            this.errorMessage = str3;
        }

        public static CreateArchiveFolder copy$default(CreateArchiveFolder createArchiveFolder, String str, String str2, String str3, int i) {
            if ((i & 1) != 0) {
                str = createArchiveFolder.folderName;
            }
            createArchiveFolder.getClass();
            if ((i & 8) != 0) {
                str3 = createArchiveFolder.errorMessage;
            }
            createArchiveFolder.getClass();
            str.getClass();
            return new CreateArchiveFolder(str, str2, str3);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CreateArchiveFolder)) {
                return false;
            }
            CreateArchiveFolder createArchiveFolder = (CreateArchiveFolder) obj;
            return this.folderName.equals(createArchiveFolder.folderName) && Intrinsics.areEqual(this.syncingMessage, createArchiveFolder.syncingMessage) && Intrinsics.areEqual(this.errorMessage, createArchiveFolder.errorMessage);
        }

        public final int hashCode() {
            int hashCode = ((this.folderName.hashCode() * 31) + 1237) * 31;
            String str = this.syncingMessage;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.errorMessage;
            return hashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State
        public final boolean isDoNotShowDialogAgainChecked() {
            return false;
        }

        public final String toString() {
            return CameraDevices$CC.m(Config.CC.m("CreateArchiveFolder(folderName=", this.folderName, ", isDoNotShowDialogAgainChecked=false, syncingMessage=", this.syncingMessage, ", errorMessage="), this.errorMessage, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EmailCantBeArchived implements SetupArchiveFolderDialogContract$State {
        public final boolean isDoNotShowDialogAgainChecked;

        public EmailCantBeArchived(boolean z) {
            this.isDoNotShowDialogAgainChecked = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EmailCantBeArchived) && this.isDoNotShowDialogAgainChecked == ((EmailCantBeArchived) obj).isDoNotShowDialogAgainChecked;
        }

        public final int hashCode() {
            return this.isDoNotShowDialogAgainChecked ? 1231 : 1237;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State
        public final boolean isDoNotShowDialogAgainChecked() {
            return this.isDoNotShowDialogAgainChecked;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("EmailCantBeArchived(isDoNotShowDialogAgainChecked=", ")", this.isDoNotShowDialogAgainChecked);
        }
    }

    boolean isDoNotShowDialogAgainChecked();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ChooseArchiveFolder implements SetupArchiveFolderDialogContract$State {
        public final String errorMessage;
        public final List folders;
        public final boolean isLoadingFolders;
        public final RemoteFolder selectedFolder;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ ChooseArchiveFolder(boolean r2, java.util.List r3, java.lang.String r4, int r5) {
            /*
                r1 = this;
                r0 = r5 & 4
                if (r0 == 0) goto L6
                kotlin.collections.EmptyList r3 = kotlin.collections.EmptyList.INSTANCE
            L6:
                java.lang.Object r0 = kotlin.collections.CollectionsKt.firstOrNull(r3)
                net.thunderbird.feature.mail.folder.api.RemoteFolder r0 = (net.thunderbird.feature.mail.folder.api.RemoteFolder) r0
                r5 = r5 & 16
                if (r5 == 0) goto L11
                r4 = 0
            L11:
                r1.<init>(r2, r3, r0, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State.ChooseArchiveFolder.<init>(boolean, java.util.List, java.lang.String, int):void");
        }

        public static ChooseArchiveFolder copy$default(ChooseArchiveFolder chooseArchiveFolder, RemoteFolder remoteFolder, String str, int i) {
            boolean z = chooseArchiveFolder.isLoadingFolders;
            chooseArchiveFolder.getClass();
            List list = chooseArchiveFolder.folders;
            if ((i & 8) != 0) {
                remoteFolder = chooseArchiveFolder.selectedFolder;
            }
            if ((i & 16) != 0) {
                str = chooseArchiveFolder.errorMessage;
            }
            chooseArchiveFolder.getClass();
            list.getClass();
            return new ChooseArchiveFolder(z, list, remoteFolder, str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChooseArchiveFolder)) {
                return false;
            }
            ChooseArchiveFolder chooseArchiveFolder = (ChooseArchiveFolder) obj;
            return this.isLoadingFolders == chooseArchiveFolder.isLoadingFolders && Intrinsics.areEqual(this.folders, chooseArchiveFolder.folders) && Intrinsics.areEqual(this.selectedFolder, chooseArchiveFolder.selectedFolder) && Intrinsics.areEqual(this.errorMessage, chooseArchiveFolder.errorMessage);
        }

        public final int hashCode() {
            int m = CameraDevices$CC.m(this.folders, (((this.isLoadingFolders ? 1231 : 1237) * 31) + 1237) * 31, 31);
            RemoteFolder remoteFolder = this.selectedFolder;
            int hashCode = (m + (remoteFolder == null ? 0 : remoteFolder.hashCode())) * 31;
            String str = this.errorMessage;
            return hashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State
        public final boolean isDoNotShowDialogAgainChecked() {
            return false;
        }

        public final String toString() {
            return "ChooseArchiveFolder(isLoadingFolders=" + this.isLoadingFolders + ", isDoNotShowDialogAgainChecked=false, folders=" + this.folders + ", selectedFolder=" + this.selectedFolder + ", errorMessage=" + this.errorMessage + ")";
        }

        public ChooseArchiveFolder(boolean z, List list, RemoteFolder remoteFolder, String str) {
            list.getClass();
            this.isLoadingFolders = z;
            this.folders = list;
            this.selectedFolder = remoteFolder;
            this.errorMessage = str;
        }
    }
}
