package com.fsck.k9.message;

import android.app.PendingIntent;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptStatusInteractor$RecipientAutocryptStatus {
    public final PendingIntent intent;
    public final AutocryptStatusInteractor$RecipientAutocryptStatusType type;

    public AutocryptStatusInteractor$RecipientAutocryptStatus(AutocryptStatusInteractor$RecipientAutocryptStatusType autocryptStatusInteractor$RecipientAutocryptStatusType, PendingIntent pendingIntent) {
        this.type = autocryptStatusInteractor$RecipientAutocryptStatusType;
        this.intent = pendingIntent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocryptStatusInteractor$RecipientAutocryptStatus)) {
            return false;
        }
        AutocryptStatusInteractor$RecipientAutocryptStatus autocryptStatusInteractor$RecipientAutocryptStatus = (AutocryptStatusInteractor$RecipientAutocryptStatus) obj;
        return this.type == autocryptStatusInteractor$RecipientAutocryptStatus.type && Intrinsics.areEqual(this.intent, autocryptStatusInteractor$RecipientAutocryptStatus.intent);
    }

    public final int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        PendingIntent pendingIntent = this.intent;
        return hashCode + (pendingIntent == null ? 0 : pendingIntent.hashCode());
    }

    public final String toString() {
        return "RecipientAutocryptStatus(type=" + this.type + ", intent=" + this.intent + ")";
    }
}
