package app.k9mail.feature.migration.qrcode.payload;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver;
import java.util.List;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodeData {
    public final List accounts;
    public final Misc misc;
    public final int version;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Account {
        public final IncomingServer incomingServer;
        public final List outgoingServers;

        public Account(IncomingServer incomingServer, ListBuilder listBuilder) {
            listBuilder.getClass();
            this.incomingServer = incomingServer;
            this.outgoingServers = listBuilder;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Account)) {
                return false;
            }
            Account account = (Account) obj;
            return this.incomingServer.equals(account.incomingServer) && Intrinsics.areEqual(this.outgoingServers, account.outgoingServers);
        }

        public final int hashCode() {
            return this.outgoingServers.hashCode() + (this.incomingServer.hashCode() * 31);
        }

        public final String toString() {
            return "Account(incomingServer=" + this.incomingServer + ", outgoingServers=" + this.outgoingServers + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Identity {
        public final String displayName;
        public final String emailAddress;

        public Identity(String str, String str2) {
            this.emailAddress = str;
            this.displayName = str2;
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
            return ViewSizeResolver.CC.m("Identity(emailAddress=", this.emailAddress, ", displayName=", this.displayName, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IncomingServer {
        public final String accountName;
        public final int authenticationType;
        public final int connectionSecurity;
        public final String hostname;
        public final String password;
        public final int port;
        public final int protocol;
        public final String username;

        public IncomingServer(int i, String str, int i2, int i3, int i4, String str2, String str3, String str4) {
            this.protocol = i;
            this.hostname = str;
            this.port = i2;
            this.connectionSecurity = i3;
            this.authenticationType = i4;
            this.username = str2;
            this.accountName = str3;
            this.password = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IncomingServer)) {
                return false;
            }
            IncomingServer incomingServer = (IncomingServer) obj;
            return this.protocol == incomingServer.protocol && this.hostname.equals(incomingServer.hostname) && this.port == incomingServer.port && this.connectionSecurity == incomingServer.connectionSecurity && this.authenticationType == incomingServer.authenticationType && this.username.equals(incomingServer.username) && Intrinsics.areEqual(this.accountName, incomingServer.accountName) && Intrinsics.areEqual(this.password, incomingServer.password);
        }

        public final int hashCode() {
            int m = Modifier.CC.m((((((Modifier.CC.m(this.protocol * 31, this.hostname, 31) + this.port) * 31) + this.connectionSecurity) * 31) + this.authenticationType) * 31, this.username, 31);
            String str = this.accountName;
            int hashCode = (m + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.password;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("IncomingServer(protocol=");
            sb.append(this.protocol);
            sb.append(", hostname=");
            sb.append(this.hostname);
            sb.append(", port=");
            Modifier.CC.m(sb, this.port, ", connectionSecurity=", this.connectionSecurity, ", authenticationType=");
            sb.append(this.authenticationType);
            sb.append(", username=");
            sb.append(this.username);
            sb.append(", accountName=");
            sb.append(this.accountName);
            sb.append(", password=");
            sb.append(this.password);
            sb.append(")");
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Misc {
        public final int sequenceEnd;
        public final int sequenceNumber;

        public Misc(int i, int i2) {
            this.sequenceNumber = i;
            this.sequenceEnd = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Misc)) {
                return false;
            }
            Misc misc = (Misc) obj;
            return this.sequenceNumber == misc.sequenceNumber && this.sequenceEnd == misc.sequenceEnd;
        }

        public final int hashCode() {
            return (this.sequenceNumber * 31) + this.sequenceEnd;
        }

        public final String toString() {
            return Config.CC.m("Misc(sequenceNumber=", this.sequenceNumber, ", sequenceEnd=", this.sequenceEnd, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OutgoingServer {
        public final int authenticationType;
        public final int connectionSecurity;
        public final String hostname;
        public final List identities;
        public final String password;
        public final int port;
        public final int protocol;
        public final String username;

        public OutgoingServer(int i, String str, int i2, int i3, int i4, String str2, String str3, ListBuilder listBuilder) {
            listBuilder.getClass();
            this.protocol = i;
            this.hostname = str;
            this.port = i2;
            this.connectionSecurity = i3;
            this.authenticationType = i4;
            this.username = str2;
            this.password = str3;
            this.identities = listBuilder;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OutgoingServer)) {
                return false;
            }
            OutgoingServer outgoingServer = (OutgoingServer) obj;
            return this.protocol == outgoingServer.protocol && this.hostname.equals(outgoingServer.hostname) && this.port == outgoingServer.port && this.connectionSecurity == outgoingServer.connectionSecurity && this.authenticationType == outgoingServer.authenticationType && this.username.equals(outgoingServer.username) && Intrinsics.areEqual(this.password, outgoingServer.password) && Intrinsics.areEqual(this.identities, outgoingServer.identities);
        }

        public final int hashCode() {
            int m = Modifier.CC.m((((((Modifier.CC.m(this.protocol * 31, this.hostname, 31) + this.port) * 31) + this.connectionSecurity) * 31) + this.authenticationType) * 31, this.username, 31);
            String str = this.password;
            return this.identities.hashCode() + ((m + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OutgoingServer(protocol=");
            sb.append(this.protocol);
            sb.append(", hostname=");
            sb.append(this.hostname);
            sb.append(", port=");
            Modifier.CC.m(sb, this.port, ", connectionSecurity=", this.connectionSecurity, ", authenticationType=");
            sb.append(this.authenticationType);
            sb.append(", username=");
            sb.append(this.username);
            sb.append(", password=");
            sb.append(this.password);
            sb.append(", identities=");
            sb.append(this.identities);
            sb.append(")");
            return sb.toString();
        }
    }

    public QrCodeData(int i, Misc misc, ListBuilder listBuilder) {
        listBuilder.getClass();
        this.version = i;
        this.misc = misc;
        this.accounts = listBuilder;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QrCodeData)) {
            return false;
        }
        QrCodeData qrCodeData = (QrCodeData) obj;
        return this.version == qrCodeData.version && this.misc.equals(qrCodeData.misc) && Intrinsics.areEqual(this.accounts, qrCodeData.accounts);
    }

    public final int hashCode() {
        return this.accounts.hashCode() + ((this.misc.hashCode() + (this.version * 31)) * 31);
    }

    public final String toString() {
        return "QrCodeData(version=" + this.version + ", misc=" + this.misc + ", accounts=" + this.accounts + ")";
    }
}
