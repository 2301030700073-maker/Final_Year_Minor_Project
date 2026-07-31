package app.k9mail.feature.account.oauth.domain.entity;

import android.content.Intent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AuthorizationIntentResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NotSupported implements AuthorizationIntentResult {
        public static final NotSupported INSTANCE$1 = new NotSupported();
        public static final NotSupported INSTANCE = new NotSupported();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success implements AuthorizationIntentResult {
        public final Intent intent;

        public Success(Intent intent) {
            this.intent = intent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && this.intent.equals(((Success) obj).intent);
        }

        public final int hashCode() {
            return this.intent.hashCode();
        }

        public final String toString() {
            return "Success(intent=" + this.intent + ")";
        }
    }
}
