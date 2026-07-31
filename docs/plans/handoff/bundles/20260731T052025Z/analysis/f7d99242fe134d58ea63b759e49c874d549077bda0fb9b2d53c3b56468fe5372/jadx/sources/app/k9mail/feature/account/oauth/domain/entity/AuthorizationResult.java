package app.k9mail.feature.account.oauth.domain.entity;

import app.k9mail.feature.account.common.domain.entity.AuthorizationState;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AuthorizationResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Canceled implements AuthorizationResult {
        public static final Canceled INSTANCE$1 = new Canceled();
        public static final Canceled INSTANCE = new Canceled();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Failure implements AuthorizationResult {
        public final Exception error;

        public Failure(Exception exc) {
            exc.getClass();
            this.error = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Failure) && Intrinsics.areEqual(this.error, ((Failure) obj).error);
        }

        public final int hashCode() {
            return this.error.hashCode();
        }

        public final String toString() {
            return "Failure(error=" + this.error + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success implements AuthorizationResult {
        public final AuthorizationState state;

        public Success(AuthorizationState authorizationState) {
            this.state = authorizationState;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && this.state.equals(((Success) obj).state);
        }

        public final int hashCode() {
            return this.state.hashCode();
        }

        public final String toString() {
            return "Success(state=" + this.state + ")";
        }
    }
}
