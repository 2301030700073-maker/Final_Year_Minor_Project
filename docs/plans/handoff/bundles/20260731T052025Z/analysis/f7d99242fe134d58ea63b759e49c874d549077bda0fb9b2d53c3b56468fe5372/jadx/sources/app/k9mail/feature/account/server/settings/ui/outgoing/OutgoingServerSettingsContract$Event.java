package app.k9mail.feature.account.server.settings.ui.outgoing;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface OutgoingServerSettingsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AuthenticationTypeChanged implements OutgoingServerSettingsContract$Event {
        public final AuthenticationType authenticationType;

        public AuthenticationTypeChanged(AuthenticationType authenticationType) {
            authenticationType.getClass();
            this.authenticationType = authenticationType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AuthenticationTypeChanged) && this.authenticationType == ((AuthenticationTypeChanged) obj).authenticationType;
        }

        public final int hashCode() {
            return this.authenticationType.hashCode();
        }

        public final String toString() {
            return "AuthenticationTypeChanged(authenticationType=" + this.authenticationType + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ClientCertificateChanged implements OutgoingServerSettingsContract$Event {
        public final String clientCertificateAlias;

        public ClientCertificateChanged(String str) {
            this.clientCertificateAlias = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ClientCertificateChanged) && Intrinsics.areEqual(this.clientCertificateAlias, ((ClientCertificateChanged) obj).clientCertificateAlias);
        }

        public final int hashCode() {
            String str = this.clientCertificateAlias;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("ClientCertificateChanged(clientCertificateAlias=", this.clientCertificateAlias, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadAccountState implements OutgoingServerSettingsContract$Event {
        public static final LoadAccountState INSTANCE = new LoadAccountState();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadAccountState);
        }

        public final int hashCode() {
            return 1040137035;
        }

        public final String toString() {
            return "LoadAccountState";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements OutgoingServerSettingsContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return 445714592;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnNextClicked implements OutgoingServerSettingsContract$Event {
        public static final OnNextClicked INSTANCE = new OnNextClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNextClicked);
        }

        public final int hashCode() {
            return -1225333484;
        }

        public final String toString() {
            return "OnNextClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PasswordChanged implements OutgoingServerSettingsContract$Event {
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
    public final class PortChanged implements OutgoingServerSettingsContract$Event {
        public final Long port;

        public PortChanged(Long l) {
            this.port = l;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PortChanged) && Intrinsics.areEqual(this.port, ((PortChanged) obj).port);
        }

        public final int hashCode() {
            Long l = this.port;
            if (l == null) {
                return 0;
            }
            return l.hashCode();
        }

        public final String toString() {
            return "PortChanged(port=" + this.port + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SecurityChanged implements OutgoingServerSettingsContract$Event {
        public final ConnectionSecurity security;

        public SecurityChanged(ConnectionSecurity connectionSecurity) {
            connectionSecurity.getClass();
            this.security = connectionSecurity;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SecurityChanged) && this.security == ((SecurityChanged) obj).security;
        }

        public final int hashCode() {
            return this.security.hashCode();
        }

        public final String toString() {
            return "SecurityChanged(security=" + this.security + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ServerChanged implements OutgoingServerSettingsContract$Event {
        public final String server;

        public ServerChanged(String str) {
            str.getClass();
            this.server = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ServerChanged) && Intrinsics.areEqual(this.server, ((ServerChanged) obj).server);
        }

        public final int hashCode() {
            return this.server.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("ServerChanged(server=", this.server, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UsernameChanged implements OutgoingServerSettingsContract$Event {
        public final String username;

        public UsernameChanged(String str) {
            str.getClass();
            this.username = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UsernameChanged) && Intrinsics.areEqual(this.username, ((UsernameChanged) obj).username);
        }

        public final int hashCode() {
            return this.username.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("UsernameChanged(username=", this.username, ")");
        }
    }
}
