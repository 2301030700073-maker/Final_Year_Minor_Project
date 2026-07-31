package app.k9mail.feature.migration.qrcode.ui;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodeScannerContract$UiPermissionState {
    public static final /* synthetic */ QrCodeScannerContract$UiPermissionState[] $VALUES;
    public static final QrCodeScannerContract$UiPermissionState Denied;
    public static final QrCodeScannerContract$UiPermissionState Granted;
    public static final QrCodeScannerContract$UiPermissionState Unknown;
    public static final QrCodeScannerContract$UiPermissionState Waiting;

    static {
        QrCodeScannerContract$UiPermissionState qrCodeScannerContract$UiPermissionState = new QrCodeScannerContract$UiPermissionState("Unknown", 0);
        Unknown = qrCodeScannerContract$UiPermissionState;
        QrCodeScannerContract$UiPermissionState qrCodeScannerContract$UiPermissionState2 = new QrCodeScannerContract$UiPermissionState("Granted", 1);
        Granted = qrCodeScannerContract$UiPermissionState2;
        QrCodeScannerContract$UiPermissionState qrCodeScannerContract$UiPermissionState3 = new QrCodeScannerContract$UiPermissionState("Denied", 2);
        Denied = qrCodeScannerContract$UiPermissionState3;
        QrCodeScannerContract$UiPermissionState qrCodeScannerContract$UiPermissionState4 = new QrCodeScannerContract$UiPermissionState("Waiting", 3);
        Waiting = qrCodeScannerContract$UiPermissionState4;
        $VALUES = new QrCodeScannerContract$UiPermissionState[]{qrCodeScannerContract$UiPermissionState, qrCodeScannerContract$UiPermissionState2, qrCodeScannerContract$UiPermissionState3, qrCodeScannerContract$UiPermissionState4};
    }

    public static QrCodeScannerContract$UiPermissionState valueOf(String str) {
        return (QrCodeScannerContract$UiPermissionState) Enum.valueOf(QrCodeScannerContract$UiPermissionState.class, str);
    }

    public static QrCodeScannerContract$UiPermissionState[] values() {
        return (QrCodeScannerContract$UiPermissionState[]) $VALUES.clone();
    }
}
