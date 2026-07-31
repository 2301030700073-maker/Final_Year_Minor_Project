package app.k9mail.feature.account.oauth.ui;

import android.content.Intent;
import app.k9mail.feature.account.common.domain.entity.AuthorizationState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountOAuthContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LaunchOAuth implements AccountOAuthContract$Effect {
        public final Intent intent;

        public LaunchOAuth(Intent intent) {
            this.intent = intent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LaunchOAuth) && this.intent.equals(((LaunchOAuth) obj).intent);
        }

        public final int hashCode() {
            return this.intent.hashCode();
        }

        public final String toString() {
            return "LaunchOAuth(intent=" + this.intent + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateBack implements AccountOAuthContract$Effect {
        public static final NavigateBack INSTANCE = new NavigateBack();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateNext implements AccountOAuthContract$Effect {
        public final AuthorizationState state;

        public NavigateNext(AuthorizationState authorizationState) {
            this.state = authorizationState;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NavigateNext) && this.state.equals(((NavigateNext) obj).state);
        }

        public final int hashCode() {
            return this.state.hashCode();
        }

        public final String toString() {
            return "NavigateNext(state=" + this.state + ")";
        }
    }
}
