package app.k9mail.feature.settings.p000import.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum ImportStatus {
    NOT_AVAILABLE(false, false),
    NOT_SELECTED(false, false),
    IMPORT_SUCCESS(true, false),
    IMPORT_SUCCESS_PASSWORD_REQUIRED(true, true),
    IMPORT_SUCCESS_AUTHORIZATION_REQUIRED(true, true),
    IMPORT_FAILURE(false, false);

    public final boolean isActionRequired;
    public final boolean isSuccess;

    ImportStatus(boolean z, boolean z2) {
        this.isSuccess = z;
        this.isActionRequired = z2;
    }
}
