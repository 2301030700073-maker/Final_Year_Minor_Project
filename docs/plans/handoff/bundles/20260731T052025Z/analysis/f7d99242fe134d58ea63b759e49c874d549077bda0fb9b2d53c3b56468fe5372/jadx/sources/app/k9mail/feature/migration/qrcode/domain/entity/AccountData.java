package app.k9mail.feature.migration.qrcode.domain.entity;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.DeletePolicy;
import net.thunderbird.core.common.mail.EmailAddress;
import net.thunderbird.core.common.net.Hostname;
import net.thunderbird.core.common.net.Port;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountData {
    public final ArrayList accounts;
    public final int sequenceEnd;
    public final int sequenceNumber;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Account {
        public final String accountName;
        public final DeletePolicy deletePolicy;
        public final IncomingServer incomingServer;
        public final ArrayList outgoingServerGroups;

        public Account(String str, DeletePolicy deletePolicy, IncomingServer incomingServer, ArrayList arrayList) {
            this.accountName = str;
            this.deletePolicy = deletePolicy;
            this.incomingServer = incomingServer;
            this.outgoingServerGroups = arrayList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Account)) {
                return false;
            }
            Account account = (Account) obj;
            return this.accountName.equals(account.accountName) && this.deletePolicy == account.deletePolicy && this.incomingServer.equals(account.incomingServer) && this.outgoingServerGroups.equals(account.outgoingServerGroups);
        }

        public final int hashCode() {
            return this.outgoingServerGroups.hashCode() + ((this.incomingServer.hashCode() + ((this.deletePolicy.hashCode() + (this.accountName.hashCode() * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "Account(accountName=" + this.accountName + ", deletePolicy=" + this.deletePolicy + ", incomingServer=" + this.incomingServer + ", outgoingServerGroups=" + this.outgoingServerGroups + ")";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AuthenticationType {
        public static final /* synthetic */ AuthenticationType[] $VALUES;
        public static final AuthenticationType None;
        public static final AuthenticationType OAuth2;
        public static final AuthenticationType PasswordCleartext;
        public static final AuthenticationType PasswordEncrypted;
        public static final AuthenticationType TlsCertificate;

        static {
            AuthenticationType authenticationType = new AuthenticationType("None", 0);
            None = authenticationType;
            AuthenticationType authenticationType2 = new AuthenticationType("PasswordCleartext", 1);
            PasswordCleartext = authenticationType2;
            AuthenticationType authenticationType3 = new AuthenticationType("PasswordEncrypted", 2);
            PasswordEncrypted = authenticationType3;
            AuthenticationType authenticationType4 = new AuthenticationType("TlsCertificate", 3);
            TlsCertificate = authenticationType4;
            AuthenticationType authenticationType5 = new AuthenticationType("OAuth2", 4);
            OAuth2 = authenticationType5;
            $VALUES = new AuthenticationType[]{authenticationType, authenticationType2, authenticationType3, authenticationType4, authenticationType5};
        }

        public static AuthenticationType valueOf(String str) {
            return (AuthenticationType) Enum.valueOf(AuthenticationType.class, str);
        }

        public static AuthenticationType[] values() {
            return (AuthenticationType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ConnectionSecurity {
        public static final /* synthetic */ ConnectionSecurity[] $VALUES;
        public static final ConnectionSecurity AlwaysStartTls;
        public static final ConnectionSecurity Plain;
        public static final ConnectionSecurity Tls;

        static {
            ConnectionSecurity connectionSecurity = new ConnectionSecurity("Plain", 0);
            Plain = connectionSecurity;
            ConnectionSecurity connectionSecurity2 = new ConnectionSecurity("AlwaysStartTls", 1);
            AlwaysStartTls = connectionSecurity2;
            ConnectionSecurity connectionSecurity3 = new ConnectionSecurity("Tls", 2);
            Tls = connectionSecurity3;
            $VALUES = new ConnectionSecurity[]{connectionSecurity, connectionSecurity2, connectionSecurity3};
        }

        public static ConnectionSecurity valueOf(String str) {
            return (ConnectionSecurity) Enum.valueOf(ConnectionSecurity.class, str);
        }

        public static ConnectionSecurity[] values() {
            return (ConnectionSecurity[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Identity {
        public final String displayName;
        public final EmailAddress emailAddress;

        public Identity(String str, EmailAddress emailAddress) {
            this.emailAddress = emailAddress;
            this.displayName = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Identity)) {
                return false;
            }
            Identity identity = (Identity) obj;
            return this.emailAddress.equals(identity.emailAddress) && this.displayName.equals(identity.displayName);
        }

        public final int hashCode() {
            return this.displayName.hashCode() + (this.emailAddress.hashCode() * 31);
        }

        public final String toString() {
            return "Identity(emailAddress=" + this.emailAddress + ", displayName=" + this.displayName + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IncomingServer {
        public final AuthenticationType authenticationType;
        public final ConnectionSecurity connectionSecurity;
        public final String hostname;
        public final String password;
        public final int port;
        public final IncomingServerProtocol protocol;
        public final String username;

        public IncomingServer(IncomingServerProtocol incomingServerProtocol, String str, int i, ConnectionSecurity connectionSecurity, AuthenticationType authenticationType, String str2, String str3) {
            this.protocol = incomingServerProtocol;
            this.hostname = str;
            this.port = i;
            this.connectionSecurity = connectionSecurity;
            this.authenticationType = authenticationType;
            this.username = str2;
            this.password = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IncomingServer)) {
                return false;
            }
            IncomingServer incomingServer = (IncomingServer) obj;
            return this.protocol == incomingServer.protocol && this.hostname.equals(incomingServer.hostname) && this.port == incomingServer.port && this.connectionSecurity == incomingServer.connectionSecurity && this.authenticationType == incomingServer.authenticationType && this.username.equals(incomingServer.username) && Intrinsics.areEqual(this.password, incomingServer.password);
        }

        public final int hashCode() {
            int m = Modifier.CC.m((this.authenticationType.hashCode() + ((this.connectionSecurity.hashCode() + ((Modifier.CC.m(this.protocol.hashCode() * 31, this.hostname, 31) + this.port) * 31)) * 31)) * 31, this.username, 31);
            String str = this.password;
            return m + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            String m1027toStringimpl = Hostname.m1027toStringimpl(this.hostname);
            String m1028toStringimpl = Port.m1028toStringimpl(this.port);
            StringBuilder sb = new StringBuilder("IncomingServer(protocol=");
            sb.append(this.protocol);
            sb.append(", hostname=");
            sb.append(m1027toStringimpl);
            sb.append(", port=");
            sb.append(m1028toStringimpl);
            sb.append(", connectionSecurity=");
            sb.append(this.connectionSecurity);
            sb.append(", authenticationType=");
            sb.append(this.authenticationType);
            sb.append(", username=");
            sb.append(this.username);
            sb.append(", password=");
            return CameraDevices$CC.m(sb, this.password, ")");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IncomingServerProtocol {
        public static final /* synthetic */ IncomingServerProtocol[] $VALUES;
        public static final IncomingServerProtocol Imap;
        public static final IncomingServerProtocol Pop3;

        static {
            IncomingServerProtocol incomingServerProtocol = new IncomingServerProtocol("Imap", 0);
            Imap = incomingServerProtocol;
            IncomingServerProtocol incomingServerProtocol2 = new IncomingServerProtocol("Pop3", 1);
            Pop3 = incomingServerProtocol2;
            $VALUES = new IncomingServerProtocol[]{incomingServerProtocol, incomingServerProtocol2};
        }

        public static IncomingServerProtocol valueOf(String str) {
            return (IncomingServerProtocol) Enum.valueOf(IncomingServerProtocol.class, str);
        }

        public static IncomingServerProtocol[] values() {
            return (IncomingServerProtocol[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OutgoingServer {
        public final AuthenticationType authenticationType;
        public final ConnectionSecurity connectionSecurity;
        public final String hostname;
        public final String password;
        public final int port;
        public final String username;

        public OutgoingServer(String str, int i, ConnectionSecurity connectionSecurity, AuthenticationType authenticationType, String str2, String str3) {
            this.hostname = str;
            this.port = i;
            this.connectionSecurity = connectionSecurity;
            this.authenticationType = authenticationType;
            this.username = str2;
            this.password = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OutgoingServer)) {
                return false;
            }
            OutgoingServer outgoingServer = (OutgoingServer) obj;
            return this.hostname.equals(outgoingServer.hostname) && this.port == outgoingServer.port && this.connectionSecurity == outgoingServer.connectionSecurity && this.authenticationType == outgoingServer.authenticationType && this.username.equals(outgoingServer.username) && Intrinsics.areEqual(this.password, outgoingServer.password);
        }

        public final int hashCode() {
            int m = Modifier.CC.m((this.authenticationType.hashCode() + ((this.connectionSecurity.hashCode() + ((Modifier.CC.m(OutgoingServerProtocol.Smtp.hashCode() * 31, this.hostname, 31) + this.port) * 31)) * 31)) * 31, this.username, 31);
            String str = this.password;
            return m + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            String m1027toStringimpl = Hostname.m1027toStringimpl(this.hostname);
            String m1028toStringimpl = Port.m1028toStringimpl(this.port);
            StringBuilder sb = new StringBuilder("OutgoingServer(protocol=");
            sb.append(OutgoingServerProtocol.Smtp);
            sb.append(", hostname=");
            sb.append(m1027toStringimpl);
            sb.append(", port=");
            sb.append(m1028toStringimpl);
            sb.append(", connectionSecurity=");
            sb.append(this.connectionSecurity);
            sb.append(", authenticationType=");
            sb.append(this.authenticationType);
            sb.append(", username=");
            sb.append(this.username);
            sb.append(", password=");
            return CameraDevices$CC.m(sb, this.password, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OutgoingServerGroup {
        public final ArrayList identities;
        public final OutgoingServer outgoingServer;

        public OutgoingServerGroup(OutgoingServer outgoingServer, ArrayList arrayList) {
            this.outgoingServer = outgoingServer;
            this.identities = arrayList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OutgoingServerGroup)) {
                return false;
            }
            OutgoingServerGroup outgoingServerGroup = (OutgoingServerGroup) obj;
            return this.outgoingServer.equals(outgoingServerGroup.outgoingServer) && this.identities.equals(outgoingServerGroup.identities);
        }

        public final int hashCode() {
            return this.identities.hashCode() + (this.outgoingServer.hashCode() * 31);
        }

        public final String toString() {
            return "OutgoingServerGroup(outgoingServer=" + this.outgoingServer + ", identities=" + this.identities + ")";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OutgoingServerProtocol {
        public static final /* synthetic */ OutgoingServerProtocol[] $VALUES;
        public static final OutgoingServerProtocol Smtp;

        static {
            OutgoingServerProtocol outgoingServerProtocol = new OutgoingServerProtocol("Smtp", 0);
            Smtp = outgoingServerProtocol;
            $VALUES = new OutgoingServerProtocol[]{outgoingServerProtocol};
        }

        public static OutgoingServerProtocol valueOf(String str) {
            return (OutgoingServerProtocol) Enum.valueOf(OutgoingServerProtocol.class, str);
        }

        public static OutgoingServerProtocol[] values() {
            return (OutgoingServerProtocol[]) $VALUES.clone();
        }
    }

    public AccountData(ArrayList arrayList, int i, int i2) {
        this.sequenceNumber = i;
        this.sequenceEnd = i2;
        this.accounts = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountData)) {
            return false;
        }
        AccountData accountData = (AccountData) obj;
        return this.sequenceNumber == accountData.sequenceNumber && this.sequenceEnd == accountData.sequenceEnd && this.accounts.equals(accountData.accounts);
    }

    public final int hashCode() {
        return this.accounts.hashCode() + (((this.sequenceNumber * 31) + this.sequenceEnd) * 31);
    }

    public final String toString() {
        StringBuilder m91m = Config.CC.m91m("AccountData(sequenceNumber=", this.sequenceNumber, ", sequenceEnd=", this.sequenceEnd, ", accounts=");
        m91m.append(this.accounts);
        m91m.append(")");
        return m91m.toString();
    }
}
