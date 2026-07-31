package app.k9mail.feature.settings.p000import.ui;

import kotlin.jvm.internal.Intrinsics;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.AuthorizationResponse;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthorizationResult {
    public final AuthorizationException exception;
    public final AuthorizationResponse response;

    public AuthorizationResult(AuthorizationResponse authorizationResponse, AuthorizationException authorizationException) {
        this.response = authorizationResponse;
        this.exception = authorizationException;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthorizationResult)) {
            return false;
        }
        AuthorizationResult authorizationResult = (AuthorizationResult) obj;
        return Intrinsics.areEqual(this.response, authorizationResult.response) && Intrinsics.areEqual(this.exception, authorizationResult.exception);
    }

    public final int hashCode() {
        AuthorizationResponse authorizationResponse = this.response;
        int hashCode = (authorizationResponse == null ? 0 : authorizationResponse.hashCode()) * 31;
        AuthorizationException authorizationException = this.exception;
        return hashCode + (authorizationException != null ? authorizationException.hashCode() : 0);
    }

    public final String toString() {
        return "AuthorizationResult(response=" + this.response + ", exception=" + this.exception + ")";
    }
}
