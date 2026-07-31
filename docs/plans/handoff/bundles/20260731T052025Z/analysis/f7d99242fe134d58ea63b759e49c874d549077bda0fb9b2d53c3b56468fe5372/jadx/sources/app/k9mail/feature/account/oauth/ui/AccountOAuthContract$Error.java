package app.k9mail.feature.account.oauth.ui;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountOAuthContract$Error {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Canceled implements AccountOAuthContract$Error {
        public static final Canceled INSTANCE$1 = new Canceled();
        public static final Canceled INSTANCE = new Canceled();
        public static final Canceled INSTANCE$2 = new Canceled();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Unknown implements AccountOAuthContract$Error {
        public final Exception error;

        public Unknown(Exception exc) {
            exc.getClass();
            this.error = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Unknown) && Intrinsics.areEqual(this.error, ((Unknown) obj).error);
        }

        public final int hashCode() {
            return this.error.hashCode();
        }

        public final String toString() {
            return "Unknown(error=" + this.error + ")";
        }
    }
}
