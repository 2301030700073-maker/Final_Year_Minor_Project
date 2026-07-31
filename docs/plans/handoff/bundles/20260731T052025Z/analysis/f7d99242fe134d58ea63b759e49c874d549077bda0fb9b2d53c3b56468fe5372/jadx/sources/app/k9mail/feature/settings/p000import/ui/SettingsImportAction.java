package app.k9mail.feature.settings.p000import.ui;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImportAction {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ SettingsImportAction[] $VALUES;
    public static final Companion Companion;
    public static final SettingsImportAction Overview;
    public static final SettingsImportAction ScanQrCode;
    public final String bundleValue;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
    }

    static {
        SettingsImportAction settingsImportAction = new SettingsImportAction(0, "Overview", "overview");
        Overview = settingsImportAction;
        SettingsImportAction settingsImportAction2 = new SettingsImportAction(1, "ScanQrCode", "scan_qr_code");
        ScanQrCode = settingsImportAction2;
        SettingsImportAction[] settingsImportActionArr = {settingsImportAction, settingsImportAction2};
        $VALUES = settingsImportActionArr;
        $ENTRIES = new EnumEntriesList(settingsImportActionArr);
        Companion = new Companion();
    }

    public SettingsImportAction(int i, String str, String str2) {
        this.bundleValue = str2;
    }

    public static SettingsImportAction valueOf(String str) {
        return (SettingsImportAction) Enum.valueOf(SettingsImportAction.class, str);
    }

    public static SettingsImportAction[] values() {
        return (SettingsImportAction[]) $VALUES.clone();
    }
}
