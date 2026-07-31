package net.thunderbird.feature.account.settings.impl.domain;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateDeletePolicy implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final String value;

        public UpdateDeletePolicy(String str) {
            str.getClass();
            this.value = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateDeletePolicy) && Intrinsics.areEqual(this.value, ((UpdateDeletePolicy) obj).value);
        }

        public final int hashCode() {
            return this.value.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("UpdateDeletePolicy(value=", this.value, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateExpungePolicy implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final String value;

        public UpdateExpungePolicy(String str) {
            str.getClass();
            this.value = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateExpungePolicy) && Intrinsics.areEqual(this.value, ((UpdateExpungePolicy) obj).value);
        }

        public final int hashCode() {
            return this.value.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("UpdateExpungePolicy(value=", this.value, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateFetchMessageUpTo implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final int value;

        public UpdateFetchMessageUpTo(int i) {
            this.value = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateFetchMessageUpTo) && this.value == ((UpdateFetchMessageUpTo) obj).value;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.value, "UpdateFetchMessageUpTo(value=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateFolderPollFrequency implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final int value;

        public UpdateFolderPollFrequency(int i) {
            this.value = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateFolderPollFrequency) && this.value == ((UpdateFolderPollFrequency) obj).value;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.value, "UpdateFolderPollFrequency(value=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateIdleRefreshMinutes implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final int value;

        public UpdateIdleRefreshMinutes(int i) {
            this.value = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateIdleRefreshMinutes) && this.value == ((UpdateIdleRefreshMinutes) obj).value;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.value, "UpdateIdleRefreshMinutes(value=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateLocalFolderSize implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final int value;

        public UpdateLocalFolderSize(int i) {
            this.value = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateLocalFolderSize) && this.value == ((UpdateLocalFolderSize) obj).value;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.value, "UpdateLocalFolderSize(value=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateMarkAsReadWhenDeleted implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final boolean value;

        public UpdateMarkAsReadWhenDeleted(boolean z) {
            this.value = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateMarkAsReadWhenDeleted) && this.value == ((UpdateMarkAsReadWhenDeleted) obj).value;
        }

        public final int hashCode() {
            return this.value ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("UpdateMarkAsReadWhenDeleted(value=", ")", this.value);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateMaxPushFolders implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final int value;

        public UpdateMaxPushFolders(int i) {
            this.value = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateMaxPushFolders) && this.value == ((UpdateMaxPushFolders) obj).value;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.value, "UpdateMaxPushFolders(value=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateSyncMessageFrom implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final int value;

        public UpdateSyncMessageFrom(int i) {
            this.value = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateSyncMessageFrom) && this.value == ((UpdateSyncMessageFrom) obj).value;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.value, "UpdateSyncMessageFrom(value=", ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateSyncServerDeletions implements AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand {
        public final boolean value;

        public UpdateSyncServerDeletions(boolean z) {
            this.value = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateSyncServerDeletions) && this.value == ((UpdateSyncServerDeletions) obj).value;
        }

        public final int hashCode() {
            return this.value ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("UpdateSyncServerDeletions(value=", ")", this.value);
        }
    }
}
