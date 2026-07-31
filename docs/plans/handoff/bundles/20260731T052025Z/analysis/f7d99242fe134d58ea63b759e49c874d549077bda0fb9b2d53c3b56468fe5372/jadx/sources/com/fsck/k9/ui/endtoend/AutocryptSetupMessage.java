package com.fsck.k9.ui.endtoend;

import android.app.PendingIntent;
import com.fsck.k9.mail.internet.MimeMessage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptSetupMessage {
    public final MimeMessage setupMessage;
    public final PendingIntent showTransferCodePi;

    public AutocryptSetupMessage(MimeMessage mimeMessage, PendingIntent pendingIntent) {
        this.setupMessage = mimeMessage;
        this.showTransferCodePi = pendingIntent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AutocryptSetupMessage) {
            AutocryptSetupMessage autocryptSetupMessage = (AutocryptSetupMessage) obj;
            if (this.setupMessage == autocryptSetupMessage.setupMessage && this.showTransferCodePi.equals(autocryptSetupMessage.showTransferCodePi)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.showTransferCodePi.hashCode() + (this.setupMessage.hashCode() * 31);
    }

    public final String toString() {
        return "AutocryptSetupMessage(setupMessage=" + this.setupMessage + ", showTransferCodePi=" + this.showTransferCodePi + ")";
    }
}
