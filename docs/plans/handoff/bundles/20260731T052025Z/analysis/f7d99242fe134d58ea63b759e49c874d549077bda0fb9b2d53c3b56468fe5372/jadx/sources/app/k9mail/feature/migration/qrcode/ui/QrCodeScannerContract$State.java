package app.k9mail.feature.migration.qrcode.ui;

import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$DisplayText;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodeScannerContract$State {
    public final QrCodeScannerContract$UiPermissionState cameraPermissionState;
    public final QrCodeScannerContract$DisplayText displayText;

    public QrCodeScannerContract$State(QrCodeScannerContract$UiPermissionState qrCodeScannerContract$UiPermissionState, QrCodeScannerContract$DisplayText qrCodeScannerContract$DisplayText) {
        qrCodeScannerContract$UiPermissionState.getClass();
        qrCodeScannerContract$DisplayText.getClass();
        this.cameraPermissionState = qrCodeScannerContract$UiPermissionState;
        this.displayText = qrCodeScannerContract$DisplayText;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$DisplayText] */
    public static QrCodeScannerContract$State copy$default(QrCodeScannerContract$State qrCodeScannerContract$State, QrCodeScannerContract$UiPermissionState qrCodeScannerContract$UiPermissionState, QrCodeScannerContract$DisplayText.ProgressText progressText, int i) {
        if ((i & 1) != 0) {
            qrCodeScannerContract$UiPermissionState = qrCodeScannerContract$State.cameraPermissionState;
        }
        QrCodeScannerContract$DisplayText.ProgressText progressText2 = progressText;
        if ((i & 2) != 0) {
            progressText2 = qrCodeScannerContract$State.displayText;
        }
        qrCodeScannerContract$State.getClass();
        qrCodeScannerContract$UiPermissionState.getClass();
        progressText2.getClass();
        return new QrCodeScannerContract$State(qrCodeScannerContract$UiPermissionState, progressText2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QrCodeScannerContract$State)) {
            return false;
        }
        QrCodeScannerContract$State qrCodeScannerContract$State = (QrCodeScannerContract$State) obj;
        return this.cameraPermissionState == qrCodeScannerContract$State.cameraPermissionState && Intrinsics.areEqual(this.displayText, qrCodeScannerContract$State.displayText);
    }

    public final int hashCode() {
        return this.displayText.hashCode() + (this.cameraPermissionState.hashCode() * 31);
    }

    public final String toString() {
        return "State(cameraPermissionState=" + this.cameraPermissionState + ", displayText=" + this.displayText + ")";
    }
}
