package com.fsck.k9.ui.endtoend;

import android.app.PendingIntent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AutocryptSetupTransferResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Failure extends AutocryptSetupTransferResult {
        public final Exception exception;

        public Failure(Exception exc) {
            this.exception = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Failure) && this.exception.equals(((Failure) obj).exception);
        }

        public final int hashCode() {
            return this.exception.hashCode();
        }

        public final String toString() {
            return "Failure(exception=" + this.exception + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success extends AutocryptSetupTransferResult {
        public final PendingIntent showTransferCodePi;

        public Success(PendingIntent pendingIntent) {
            this.showTransferCodePi = pendingIntent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && this.showTransferCodePi.equals(((Success) obj).showTransferCodePi);
        }

        public final int hashCode() {
            return this.showTransferCodePi.hashCode();
        }

        public final String toString() {
            return "Success(showTransferCodePi=" + this.showTransferCodePi + ")";
        }
    }
}
