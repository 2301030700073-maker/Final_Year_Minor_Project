package app.k9mail.feature.account.server.validation.ui;

import app.k9mail.feature.account.oauth.domain.entity.OAuthResult;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ServerValidationContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements ServerValidationContract$Event {
        public static final OnBackClicked INSTANCE$1 = new OnBackClicked();
        public static final OnBackClicked INSTANCE = new OnBackClicked();
        public static final OnBackClicked INSTANCE$2 = new OnBackClicked();
        public static final OnBackClicked INSTANCE$3 = new OnBackClicked();
        public static final OnBackClicked INSTANCE$4 = new OnBackClicked();
        public static final OnBackClicked INSTANCE$5 = new OnBackClicked();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnOAuthResult implements ServerValidationContract$Event {
        public final OAuthResult result;

        public OnOAuthResult(OAuthResult oAuthResult) {
            oAuthResult.getClass();
            this.result = oAuthResult;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnOAuthResult) && Intrinsics.areEqual(this.result, ((OnOAuthResult) obj).result);
        }

        public final int hashCode() {
            return this.result.hashCode();
        }

        public final String toString() {
            return "OnOAuthResult(result=" + this.result + ")";
        }
    }
}
