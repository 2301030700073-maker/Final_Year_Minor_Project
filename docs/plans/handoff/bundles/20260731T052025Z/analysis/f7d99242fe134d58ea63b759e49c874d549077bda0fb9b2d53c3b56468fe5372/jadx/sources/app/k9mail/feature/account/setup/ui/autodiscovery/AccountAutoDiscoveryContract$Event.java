package app.k9mail.feature.account.setup.ui.autodiscovery;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.feature.account.oauth.domain.entity.OAuthResult;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountAutoDiscoveryContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EmailAddressChanged implements AccountAutoDiscoveryContract$Event {
        public final String emailAddress;

        public EmailAddressChanged(String str) {
            str.getClass();
            this.emailAddress = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EmailAddressChanged) && Intrinsics.areEqual(this.emailAddress, ((EmailAddressChanged) obj).emailAddress);
        }

        public final int hashCode() {
            return this.emailAddress.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("EmailAddressChanged(emailAddress=", this.emailAddress, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements AccountAutoDiscoveryContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return 221495750;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnEditConfigurationClicked implements AccountAutoDiscoveryContract$Event {
        public static final OnEditConfigurationClicked INSTANCE = new OnEditConfigurationClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnEditConfigurationClicked);
        }

        public final int hashCode() {
            return -19827531;
        }

        public final String toString() {
            return "OnEditConfigurationClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnNextClicked implements AccountAutoDiscoveryContract$Event {
        public static final OnNextClicked INSTANCE = new OnNextClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNextClicked);
        }

        public final int hashCode() {
            return -1449552326;
        }

        public final String toString() {
            return "OnNextClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnOAuthResult implements AccountAutoDiscoveryContract$Event {
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnRetryClicked implements AccountAutoDiscoveryContract$Event {
        public static final OnRetryClicked INSTANCE = new OnRetryClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnRetryClicked);
        }

        public final int hashCode() {
            return 616605849;
        }

        public final String toString() {
            return "OnRetryClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PasswordChanged implements AccountAutoDiscoveryContract$Event {
        public final String password;

        public PasswordChanged(String str) {
            str.getClass();
            this.password = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PasswordChanged) && Intrinsics.areEqual(this.password, ((PasswordChanged) obj).password);
        }

        public final int hashCode() {
            return this.password.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("PasswordChanged(password=", this.password, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ResultApprovalChanged implements AccountAutoDiscoveryContract$Event {
        public final boolean confirmed;

        public ResultApprovalChanged(boolean z) {
            this.confirmed = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ResultApprovalChanged) && this.confirmed == ((ResultApprovalChanged) obj).confirmed;
        }

        public final int hashCode() {
            return this.confirmed ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("ResultApprovalChanged(confirmed=", ")", this.confirmed);
        }
    }
}
