package net.thunderbird.feature.account.settings.impl.domain;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSettingsDomainContract$AccountSettingError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NotFound implements AccountSettingsDomainContract$AccountSettingError {
        public final String message;

        public NotFound(String str) {
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotFound) && this.message.equals(((NotFound) obj).message);
        }

        public final int hashCode() {
            return this.message.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("NotFound(message=", this.message, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StorageError implements AccountSettingsDomainContract$AccountSettingError {
        public final String message;

        public StorageError(String str) {
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StorageError) && this.message.equals(((StorageError) obj).message);
        }

        public final int hashCode() {
            return this.message.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("StorageError(message=", this.message, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnsupportedFormat implements AccountSettingsDomainContract$AccountSettingError {
        public final String message;

        public UnsupportedFormat(String str) {
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnsupportedFormat) && this.message.equals(((UnsupportedFormat) obj).message);
        }

        public final int hashCode() {
            return this.message.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("UnsupportedFormat(message=", this.message, ")");
        }
    }
}
