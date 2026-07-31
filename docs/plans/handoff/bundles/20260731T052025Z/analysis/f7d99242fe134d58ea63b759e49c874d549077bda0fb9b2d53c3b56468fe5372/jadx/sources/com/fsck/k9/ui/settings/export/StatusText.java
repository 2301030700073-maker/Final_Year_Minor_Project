package com.fsck.k9.ui.settings.export;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StatusText {
    public static final /* synthetic */ StatusText[] $VALUES;
    public static final StatusText EXPORT_FAILURE;
    public static final StatusText EXPORT_SUCCESS;
    public static final StatusText HIDDEN;
    public static final StatusText PROGRESS;

    static {
        StatusText statusText = new StatusText("HIDDEN", 0);
        HIDDEN = statusText;
        StatusText statusText2 = new StatusText("PROGRESS", 1);
        PROGRESS = statusText2;
        StatusText statusText3 = new StatusText("EXPORT_SUCCESS", 2);
        EXPORT_SUCCESS = statusText3;
        StatusText statusText4 = new StatusText("EXPORT_FAILURE", 3);
        EXPORT_FAILURE = statusText4;
        $VALUES = new StatusText[]{statusText, statusText2, statusText3, statusText4};
    }

    public static StatusText valueOf(String str) {
        return (StatusText) Enum.valueOf(StatusText.class, str);
    }

    public static StatusText[] values() {
        return (StatusText[]) $VALUES.clone();
    }
}
