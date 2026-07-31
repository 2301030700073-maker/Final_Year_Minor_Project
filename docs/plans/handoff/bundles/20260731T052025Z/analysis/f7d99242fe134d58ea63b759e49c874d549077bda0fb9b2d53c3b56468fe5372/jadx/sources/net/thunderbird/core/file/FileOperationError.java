package net.thunderbird.core.file;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.eygraber.uri.Uri;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface FileOperationError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ReadFailed implements FileOperationError {
        public final String message;
        public final Uri uri;

        public ReadFailed(Uri uri, String str) {
            uri.getClass();
            this.uri = uri;
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReadFailed)) {
                return false;
            }
            ReadFailed readFailed = (ReadFailed) obj;
            return Intrinsics.areEqual(this.uri, readFailed.uri) && Intrinsics.areEqual(this.message, readFailed.message);
        }

        public final int hashCode() {
            int hashCode = this.uri.hashCode() * 31;
            String str = this.message;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "ReadFailed(uri=" + this.uri + ", message=" + this.message + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Unavailable implements FileOperationError {
        public final String message;
        public final Uri uri;

        public Unavailable(Uri uri, String str) {
            uri.getClass();
            this.uri = uri;
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Unavailable)) {
                return false;
            }
            Unavailable unavailable = (Unavailable) obj;
            return Intrinsics.areEqual(this.uri, unavailable.uri) && this.message.equals(unavailable.message);
        }

        public final int hashCode() {
            return this.message.hashCode() + (this.uri.hashCode() * 31);
        }

        public final String toString() {
            return "Unavailable(uri=" + this.uri + ", message=" + this.message + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Unknown implements FileOperationError {
        public final String message;

        public Unknown(String str) {
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Unknown) && Intrinsics.areEqual(this.message, ((Unknown) obj).message);
        }

        public final int hashCode() {
            String str = this.message;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("Unknown(message=", this.message, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class WriteFailed implements FileOperationError {
        public final String message;
        public final Uri uri;

        public WriteFailed(Uri uri, String str) {
            uri.getClass();
            this.uri = uri;
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WriteFailed)) {
                return false;
            }
            WriteFailed writeFailed = (WriteFailed) obj;
            return Intrinsics.areEqual(this.uri, writeFailed.uri) && Intrinsics.areEqual(this.message, writeFailed.message);
        }

        public final int hashCode() {
            int hashCode = this.uri.hashCode() * 31;
            String str = this.message;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "WriteFailed(uri=" + this.uri + ", message=" + this.message + ")";
        }
    }
}
