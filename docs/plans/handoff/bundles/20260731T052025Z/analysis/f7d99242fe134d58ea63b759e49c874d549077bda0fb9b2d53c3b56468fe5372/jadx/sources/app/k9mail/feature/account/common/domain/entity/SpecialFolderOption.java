package app.k9mail.feature.account.common.domain.entity;

import coil3.size.ViewSizeResolver;
import com.fsck.k9.mail.folders.RemoteFolder;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SpecialFolderOption {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class None implements SpecialFolderOption {
        public final boolean isAutomatic;

        public None(boolean z) {
            this.isAutomatic = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof None) && this.isAutomatic == ((None) obj).isAutomatic;
        }

        public final int hashCode() {
            return this.isAutomatic ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("None(isAutomatic=", ")", this.isAutomatic);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Regular implements SpecialFolderOption {
        public final RemoteFolder remoteFolder;

        public Regular(RemoteFolder remoteFolder) {
            remoteFolder.getClass();
            this.remoteFolder = remoteFolder;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Regular) && Intrinsics.areEqual(this.remoteFolder, ((Regular) obj).remoteFolder);
        }

        public final int hashCode() {
            return this.remoteFolder.hashCode();
        }

        public final String toString() {
            return "Regular(remoteFolder=" + this.remoteFolder + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Special implements SpecialFolderOption {
        public final boolean isAutomatic;
        public final RemoteFolder remoteFolder;

        public Special(boolean z, RemoteFolder remoteFolder) {
            remoteFolder.getClass();
            this.isAutomatic = z;
            this.remoteFolder = remoteFolder;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Special)) {
                return false;
            }
            Special special = (Special) obj;
            return this.isAutomatic == special.isAutomatic && Intrinsics.areEqual(this.remoteFolder, special.remoteFolder);
        }

        public final int hashCode() {
            return this.remoteFolder.hashCode() + ((this.isAutomatic ? 1231 : 1237) * 31);
        }

        public final String toString() {
            return "Special(isAutomatic=" + this.isAutomatic + ", remoteFolder=" + this.remoteFolder + ")";
        }
    }
}
