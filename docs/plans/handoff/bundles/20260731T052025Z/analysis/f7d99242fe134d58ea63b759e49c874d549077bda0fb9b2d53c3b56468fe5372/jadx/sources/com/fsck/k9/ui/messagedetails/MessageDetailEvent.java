package com.fsck.k9.ui.messagedetails;

import android.app.PendingIntent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageDetailEvent {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SearchCryptoKeys implements MessageDetailEvent {
        public static final SearchCryptoKeys INSTANCE = new SearchCryptoKeys();
        public static final SearchCryptoKeys INSTANCE$1 = new SearchCryptoKeys();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ShowCryptoKeys implements MessageDetailEvent {
        public final PendingIntent pendingIntent;

        public ShowCryptoKeys(PendingIntent pendingIntent) {
            this.pendingIntent = pendingIntent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShowCryptoKeys) && this.pendingIntent.equals(((ShowCryptoKeys) obj).pendingIntent);
        }

        public final int hashCode() {
            return this.pendingIntent.hashCode();
        }

        public final String toString() {
            return "ShowCryptoKeys(pendingIntent=" + this.pendingIntent + ")";
        }
    }
}
