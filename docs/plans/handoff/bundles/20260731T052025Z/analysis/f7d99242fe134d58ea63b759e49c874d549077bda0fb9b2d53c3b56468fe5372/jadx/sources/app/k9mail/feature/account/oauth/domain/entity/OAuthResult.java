package app.k9mail.feature.account.oauth.domain.entity;

import app.k9mail.feature.account.common.domain.entity.AuthorizationState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface OAuthResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Failure implements OAuthResult {
        public static final Failure INSTANCE = new Failure();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success implements OAuthResult {
        public final AuthorizationState authorizationState;

        public Success(AuthorizationState authorizationState) {
            this.authorizationState = authorizationState;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && this.authorizationState.equals(((Success) obj).authorizationState);
        }

        public final int hashCode() {
            return this.authorizationState.hashCode();
        }

        public final String toString() {
            return "Success(authorizationState=" + this.authorizationState + ")";
        }
    }
}
