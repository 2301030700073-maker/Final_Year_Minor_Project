package app.k9mail.feature.migration.qrcode.ui;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface QrCodeScannerContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Cancel implements QrCodeScannerContract$Effect {
        public static final Cancel INSTANCE = new Cancel();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Cancel);
        }

        public final int hashCode() {
            return -1178210979;
        }

        public final String toString() {
            return "Cancel";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class GoToAppInfoScreen implements QrCodeScannerContract$Effect {
        public static final GoToAppInfoScreen INSTANCE = new GoToAppInfoScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoToAppInfoScreen);
        }

        public final int hashCode() {
            return 923950133;
        }

        public final String toString() {
            return "GoToAppInfoScreen";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RequestCameraPermission implements QrCodeScannerContract$Effect {
        public static final RequestCameraPermission INSTANCE = new RequestCameraPermission();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RequestCameraPermission);
        }

        public final int hashCode() {
            return 964507392;
        }

        public final String toString() {
            return "RequestCameraPermission";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ReturnResult implements QrCodeScannerContract$Effect {
        public final Uri contentUri;

        public ReturnResult(Uri uri) {
            uri.getClass();
            this.contentUri = uri;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ReturnResult) && Intrinsics.areEqual(this.contentUri, ((ReturnResult) obj).contentUri);
        }

        public final int hashCode() {
            return this.contentUri.hashCode();
        }

        public final String toString() {
            return "ReturnResult(contentUri=" + this.contentUri + ")";
        }
    }
}
