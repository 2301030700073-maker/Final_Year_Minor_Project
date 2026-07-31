package app.k9mail.feature.migration.qrcode.ui;

import androidx.camera.core.impl.Config;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface QrCodeScannerContract$DisplayText {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class HelpText implements QrCodeScannerContract$DisplayText {
        public static final HelpText INSTANCE = new HelpText();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof HelpText);
        }

        public final int hashCode() {
            return 1798647719;
        }

        public final String toString() {
            return "HelpText";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ProgressText implements QrCodeScannerContract$DisplayText {
        public final int scannedCount;
        public final int totalCount;

        public ProgressText(int i, int i2) {
            this.scannedCount = i;
            this.totalCount = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProgressText)) {
                return false;
            }
            ProgressText progressText = (ProgressText) obj;
            return this.scannedCount == progressText.scannedCount && this.totalCount == progressText.totalCount;
        }

        public final int hashCode() {
            return (this.scannedCount * 31) + this.totalCount;
        }

        public final String toString() {
            return Config.CC.m("ProgressText(scannedCount=", this.scannedCount, ", totalCount=", this.totalCount, ")");
        }
    }
}
