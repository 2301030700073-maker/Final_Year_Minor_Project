package net.thunderbird.feature.mail.message.list.domain;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.folder.api.FolderServerId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CreateArchiveFolderOutcome$Success {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Created implements CreateArchiveFolderOutcome$Success {
        public static final Created INSTANCE = new Created();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Created);
        }

        public final int hashCode() {
            return -1538119605;
        }

        public final String toString() {
            return "Created";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LocalFolderCreated implements CreateArchiveFolderOutcome$Success {
        public static final LocalFolderCreated INSTANCE = new LocalFolderCreated();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LocalFolderCreated);
        }

        public final int hashCode() {
            return 236872620;
        }

        public final String toString() {
            return "LocalFolderCreated";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SyncStarted implements CreateArchiveFolderOutcome$Success {
        public final String serverId;

        public SyncStarted(String str) {
            str.getClass();
            this.serverId = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SyncStarted) && Intrinsics.areEqual(this.serverId, ((SyncStarted) obj).serverId);
        }

        public final int hashCode() {
            return this.serverId.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("SyncStarted(serverId=", FolderServerId.m1035toStringimpl(this.serverId), ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdatingSpecialFolders implements CreateArchiveFolderOutcome$Success {
        public static final UpdatingSpecialFolders INSTANCE = new UpdatingSpecialFolders();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UpdatingSpecialFolders);
        }

        public final int hashCode() {
            return 458759151;
        }

        public final String toString() {
            return "UpdatingSpecialFolders";
        }
    }
}
