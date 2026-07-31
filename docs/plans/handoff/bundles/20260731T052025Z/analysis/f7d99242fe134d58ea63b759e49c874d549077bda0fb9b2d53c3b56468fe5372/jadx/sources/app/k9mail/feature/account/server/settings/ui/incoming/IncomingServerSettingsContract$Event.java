package app.k9mail.feature.account.server.settings.ui.incoming;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface IncomingServerSettingsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AuthenticationTypeChanged implements IncomingServerSettingsContract$Event {
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
    public final class ClientCertificateChanged implements IncomingServerSettingsContract$Event {
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
    public final class ImapAutoDetectNamespaceChanged implements IncomingServerSettingsContract$Event {
        public final boolean enabled;

        public ImapAutoDetectNamespaceChanged(boolean z) {
            this.enabled = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImapAutoDetectNamespaceChanged) && this.enabled == ((ImapAutoDetectNamespaceChanged) obj).enabled;
        }

        public final int hashCode() {
            return this.enabled ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("ImapAutoDetectNamespaceChanged(enabled=", ")", this.enabled);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImapPrefixChanged implements IncomingServerSettingsContract$Event {
        public final String imapPrefix;

        public ImapPrefixChanged(String str) {
            str.getClass();
            this.imapPrefix = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImapPrefixChanged) && Intrinsics.areEqual(this.imapPrefix, ((ImapPrefixChanged) obj).imapPrefix);
        }

        public final int hashCode() {
            return this.imapPrefix.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("ImapPrefixChanged(imapPrefix=", this.imapPrefix, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImapSendClientInfoChanged implements IncomingServerSettingsContract$Event {
        public final boolean sendClientInfo;

        public ImapSendClientInfoChanged(boolean z) {
            this.sendClientInfo = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImapSendClientInfoChanged) && this.sendClientInfo == ((ImapSendClientInfoChanged) obj).sendClientInfo;
        }

        public final int hashCode() {
            return this.sendClientInfo ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("ImapSendClientInfoChanged(sendClientInfo=", ")", this.sendClientInfo);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImapUseCompressionChanged implements IncomingServerSettingsContract$Event {
        public final boolean useCompression;

        public ImapUseCompressionChanged(boolean z) {
            this.useCompression = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImapUseCompressionChanged) && this.useCompression == ((ImapUseCompressionChanged) obj).useCompression;
        }

        public final int hashCode() {
            return this.useCompression ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("ImapUseCompressionChanged(useCompression=", ")", this.useCompression);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadAccountState implements IncomingServerSettingsContract$Event {
        public static final LoadAccountState INSTANCE = new LoadAccountState();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadAccountState);
        }

        public final int hashCode() {
            return 848663051;
        }

        public final String toString() {
            return "LoadAccountState";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements IncomingServerSettingsContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return -810012192;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnNextClicked implements IncomingServerSettingsContract$Event {
        public static final OnNextClicked INSTANCE = new OnNextClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNextClicked);
        }

        public final int hashCode() {
            return 1813907028;
        }

        public final String toString() {
            return "OnNextClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PasswordChanged implements IncomingServerSettingsContract$Event {
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
    public final class PortChanged implements IncomingServerSettingsContract$Event {
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
    public final class ProtocolTypeChanged implements IncomingServerSettingsContract$Event {
        public final IncomingProtocolType protocolType;

        public ProtocolTypeChanged(IncomingProtocolType incomingProtocolType) {
            incomingProtocolType.getClass();
            this.protocolType = incomingProtocolType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProtocolTypeChanged) && this.protocolType == ((ProtocolTypeChanged) obj).protocolType;
        }

        public final int hashCode() {
            return this.protocolType.hashCode();
        }

        public final String toString() {
            return "ProtocolTypeChanged(protocolType=" + this.protocolType + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SecurityChanged implements IncomingServerSettingsContract$Event {
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
    public final class ServerChanged implements IncomingServerSettingsContract$Event {
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
    public final class UsernameChanged implements IncomingServerSettingsContract$Event {
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
