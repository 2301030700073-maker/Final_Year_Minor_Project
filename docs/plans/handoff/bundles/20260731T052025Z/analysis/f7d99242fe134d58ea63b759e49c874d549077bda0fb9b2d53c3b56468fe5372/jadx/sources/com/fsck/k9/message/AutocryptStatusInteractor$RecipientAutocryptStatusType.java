package com.fsck.k9.message;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum AutocryptStatusInteractor$RecipientAutocryptStatusType {
    /* JADX INFO: Fake field, exist only in values array */
    NO_RECIPIENTS(false, false, false),
    UNAVAILABLE(false, false, false),
    DISCOURAGE_UNCONFIRMED(true, false, false),
    DISCOURAGE_CONFIRMED(true, true, false),
    AVAILABLE_UNCONFIRMED(true, false, false),
    AVAILABLE_CONFIRMED(true, true, false),
    RECOMMENDED_UNCONFIRMED(true, false, true),
    RECOMMENDED_CONFIRMED(true, true, true),
    ERROR(false, false, false);

    public final boolean canEncrypt;
    public final boolean isConfirmed;
    public final boolean isMutual;

    AutocryptStatusInteractor$RecipientAutocryptStatusType(boolean z, boolean z2, boolean z3) {
        this.canEncrypt = z;
        this.isConfirmed = z2;
        this.isMutual = z3;
    }
}
