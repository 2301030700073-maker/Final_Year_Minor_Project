package app.k9mail.feature.migration.qrcode.ui;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface QrCodeScannerContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CameraPermissionResult implements QrCodeScannerContract$Event {
        public final boolean success;

        public CameraPermissionResult(boolean z) {
            this.success = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CameraPermissionResult) && this.success == ((CameraPermissionResult) obj).success;
        }

        public final int hashCode() {
            return this.success ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("CameraPermissionResult(success=", ")", this.success);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DoneClicked implements QrCodeScannerContract$Event {
        public static final DoneClicked INSTANCE = new DoneClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DoneClicked);
        }

        public final int hashCode() {
            return -463900265;
        }

        public final String toString() {
            return "DoneClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class GoToSettingsClicked implements QrCodeScannerContract$Event {
        public static final GoToSettingsClicked INSTANCE = new GoToSettingsClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoToSettingsClicked);
        }

        public final int hashCode() {
            return -914504749;
        }

        public final String toString() {
            return "GoToSettingsClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ReturnedFromAppInfoScreen implements QrCodeScannerContract$Event {
        public static final ReturnedFromAppInfoScreen INSTANCE = new ReturnedFromAppInfoScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ReturnedFromAppInfoScreen);
        }

        public final int hashCode() {
            return 238574068;
        }

        public final String toString() {
            return "ReturnedFromAppInfoScreen";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StartScreen implements QrCodeScannerContract$Event {
        public static final StartScreen INSTANCE = new StartScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof StartScreen);
        }

        public final int hashCode() {
            return 390013632;
        }

        public final String toString() {
            return "StartScreen";
        }
    }
}
