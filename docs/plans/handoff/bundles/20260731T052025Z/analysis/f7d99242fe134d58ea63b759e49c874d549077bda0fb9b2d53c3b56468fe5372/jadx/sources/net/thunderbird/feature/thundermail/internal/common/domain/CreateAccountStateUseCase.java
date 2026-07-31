package net.thunderbird.feature.thundermail.internal.common.domain;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateAccountStateUseCase {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Failure {

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class AuthorizationStateMissing implements Failure {
            public static final AuthorizationStateMissing INSTANCE = new AuthorizationStateMissing();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AuthorizationStateMissing);
            }

            public final int hashCode() {
                return 1971299016;
            }

            public final String toString() {
                return "AuthorizationStateMissing";
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class IdTokenMissing implements Failure {
            public static final IdTokenMissing INSTANCE = new IdTokenMissing();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof IdTokenMissing);
            }

            public final int hashCode() {
                return 31647246;
            }

            public final String toString() {
                return "IdTokenMissing";
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class InvalidAuthorizationState implements Failure {
            public final JSONException error;

            public InvalidAuthorizationState(JSONException jSONException) {
                this.error = jSONException;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof InvalidAuthorizationState) && this.error.equals(((InvalidAuthorizationState) obj).error);
            }

            public final int hashCode() {
                return this.error.hashCode();
            }

            public final String toString() {
                return "InvalidAuthorizationState(error=" + this.error + ")";
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class MissingEmail implements Failure {
            public final String idToken;

            public MissingEmail(String str) {
                str.getClass();
                this.idToken = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof MissingEmail) && Intrinsics.areEqual(this.idToken, ((MissingEmail) obj).idToken);
            }

            public final int hashCode() {
                return this.idToken.hashCode();
            }

            public final String toString() {
                return CameraDevices$CC.m("MissingEmail(idToken=", this.idToken, ")");
            }
        }
    }

    public CreateAccountStateUseCase(AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository) {
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
    }
}
