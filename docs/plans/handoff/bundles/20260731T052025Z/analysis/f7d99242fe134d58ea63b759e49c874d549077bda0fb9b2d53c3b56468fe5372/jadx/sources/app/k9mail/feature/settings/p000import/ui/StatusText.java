package app.k9mail.feature.settings.p000import.ui;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StatusText {
    public static final /* synthetic */ StatusText[] $VALUES;
    public static final StatusText HIDDEN;
    public static final StatusText IMPORTING_PROGRESS;
    public static final StatusText IMPORT_FAILURE;
    public static final StatusText IMPORT_PARTIAL_FAILURE;
    public static final StatusText IMPORT_READ_FAILURE;
    public static final StatusText IMPORT_SUCCESS;
    public static final StatusText IMPORT_SUCCESS_AUTHORIZATION_REQUIRED;
    public static final StatusText IMPORT_SUCCESS_PASSWORD_AND_AUTHORIZATION_REQUIRED;
    public static final StatusText IMPORT_SUCCESS_PASSWORD_REQUIRED;

    static {
        StatusText statusText = new StatusText("HIDDEN", 0);
        HIDDEN = statusText;
        StatusText statusText2 = new StatusText("IMPORTING_PROGRESS", 1);
        IMPORTING_PROGRESS = statusText2;
        StatusText statusText3 = new StatusText("IMPORT_SUCCESS", 2);
        IMPORT_SUCCESS = statusText3;
        StatusText statusText4 = new StatusText("IMPORT_SUCCESS_PASSWORD_REQUIRED", 3);
        IMPORT_SUCCESS_PASSWORD_REQUIRED = statusText4;
        StatusText statusText5 = new StatusText("IMPORT_SUCCESS_AUTHORIZATION_REQUIRED", 4);
        IMPORT_SUCCESS_AUTHORIZATION_REQUIRED = statusText5;
        StatusText statusText6 = new StatusText("IMPORT_SUCCESS_PASSWORD_AND_AUTHORIZATION_REQUIRED", 5);
        IMPORT_SUCCESS_PASSWORD_AND_AUTHORIZATION_REQUIRED = statusText6;
        StatusText statusText7 = new StatusText("IMPORT_READ_FAILURE", 6);
        IMPORT_READ_FAILURE = statusText7;
        StatusText statusText8 = new StatusText("IMPORT_PARTIAL_FAILURE", 7);
        IMPORT_PARTIAL_FAILURE = statusText8;
        StatusText statusText9 = new StatusText("IMPORT_FAILURE", 8);
        IMPORT_FAILURE = statusText9;
        $VALUES = new StatusText[]{statusText, statusText2, statusText3, statusText4, statusText5, statusText6, statusText7, statusText8, statusText9};
    }

    public static StatusText valueOf(String str) {
        return (StatusText) Enum.valueOf(StatusText.class, str);
    }

    public static StatusText[] values() {
        return (StatusText[]) $VALUES.clone();
    }
}
