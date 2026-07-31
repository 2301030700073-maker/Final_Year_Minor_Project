package app.k9mail.feature.settings.p000import.ui;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CloseButtonLabel {
    public static final /* synthetic */ CloseButtonLabel[] $VALUES;
    public static final CloseButtonLabel LATER;
    public static final CloseButtonLabel OK;

    static {
        CloseButtonLabel closeButtonLabel = new CloseButtonLabel("OK", 0);
        OK = closeButtonLabel;
        CloseButtonLabel closeButtonLabel2 = new CloseButtonLabel("LATER", 1);
        LATER = closeButtonLabel2;
        $VALUES = new CloseButtonLabel[]{closeButtonLabel, closeButtonLabel2};
    }

    public static CloseButtonLabel valueOf(String str) {
        return (CloseButtonLabel) Enum.valueOf(CloseButtonLabel.class, str);
    }

    public static CloseButtonLabel[] values() {
        return (CloseButtonLabel[]) $VALUES.clone();
    }
}
