package app.k9mail.feature.account.server.settings.ui.incoming;

import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.validation.input.NumberInputField;
import net.thunderbird.core.validation.input.StringInputField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IncomingServerSettingsContract$State {
    public final AuthenticationType authenticationType;
    public final String clientCertificateAlias;
    public final boolean imapAutodetectNamespaceEnabled;
    public final StringInputField imapPrefix;
    public final boolean imapSendClientInfo;
    public final boolean imapUseCompression;
    public final StringInputField password;
    public final NumberInputField port;
    public final IncomingProtocolType protocolType;
    public final ConnectionSecurity security;
    public final StringInputField server;
    public final StringInputField username;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public IncomingServerSettingsContract$State(net.thunderbird.core.validation.input.StringInputField r15, net.thunderbird.core.validation.input.StringInputField r16, int r17) {
        /*
            r14 = this;
            com.bumptech.glide.load.Option$1 r0 = app.k9mail.feature.account.common.domain.entity.IncomingProtocolType.Companion
            r0.getClass()
            app.k9mail.feature.account.common.domain.entity.IncomingProtocolType r2 = app.k9mail.feature.account.common.domain.entity.IncomingProtocolType.DEFAULT
            r1 = r17 & 2
            r3 = 7
            r4 = 0
            if (r1 == 0) goto L12
            net.thunderbird.core.validation.input.StringInputField r15 = new net.thunderbird.core.validation.input.StringInputField
            r15.<init>(r4, r3)
        L12:
            r0.getClass()
            r2.getClass()
            net.thunderbird.core.validation.input.NumberInputField r5 = new net.thunderbird.core.validation.input.NumberInputField
            r0.getClass()
            r2.getClass()
            app.k9mail.feature.account.common.domain.entity.ConnectionSecurity r0 = app.k9mail.feature.account.common.domain.entity.ConnectionSecurity.TLS
            long r6 = androidx.sqlite.SQLite.toDefaultPort(r2, r0)
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            r5.<init>(r1)
            r1 = r17 & 32
            if (r1 == 0) goto L38
            net.thunderbird.core.validation.input.StringInputField r1 = new net.thunderbird.core.validation.input.StringInputField
            r1.<init>(r4, r3)
            r7 = r1
            goto L3a
        L38:
            r7 = r16
        L3a:
            net.thunderbird.core.validation.input.StringInputField r8 = new net.thunderbird.core.validation.input.StringInputField
            r8.<init>(r4, r3)
            net.thunderbird.core.validation.input.StringInputField r11 = new net.thunderbird.core.validation.input.StringInputField
            r11.<init>(r4, r3)
            r12 = 1
            r13 = 1
            app.k9mail.feature.account.common.domain.entity.AuthenticationType r6 = app.k9mail.feature.account.common.domain.entity.AuthenticationType.PasswordCleartext
            r9 = 0
            r10 = 1
            r1 = r14
            r3 = r15
            r4 = r0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State.<init>(net.thunderbird.core.validation.input.StringInputField, net.thunderbird.core.validation.input.StringInputField, int):void");
    }

    public static IncomingServerSettingsContract$State copy$default(IncomingServerSettingsContract$State incomingServerSettingsContract$State, IncomingProtocolType incomingProtocolType, StringInputField stringInputField, ConnectionSecurity connectionSecurity, NumberInputField numberInputField, AuthenticationType authenticationType, StringInputField stringInputField2, StringInputField stringInputField3, String str, boolean z, StringInputField stringInputField4, boolean z2, boolean z3, int i) {
        if ((i & 1) != 0) {
            incomingProtocolType = incomingServerSettingsContract$State.protocolType;
        }
        IncomingProtocolType incomingProtocolType2 = incomingProtocolType;
        if ((i & 2) != 0) {
            stringInputField = incomingServerSettingsContract$State.server;
        }
        StringInputField stringInputField5 = stringInputField;
        ConnectionSecurity connectionSecurity2 = (i & 4) != 0 ? incomingServerSettingsContract$State.security : connectionSecurity;
        NumberInputField numberInputField2 = (i & 8) != 0 ? incomingServerSettingsContract$State.port : numberInputField;
        AuthenticationType authenticationType2 = (i & 16) != 0 ? incomingServerSettingsContract$State.authenticationType : authenticationType;
        StringInputField stringInputField6 = (i & 32) != 0 ? incomingServerSettingsContract$State.username : stringInputField2;
        StringInputField stringInputField7 = (i & 64) != 0 ? incomingServerSettingsContract$State.password : stringInputField3;
        String str2 = (i & 128) != 0 ? incomingServerSettingsContract$State.clientCertificateAlias : str;
        boolean z4 = (i & 256) != 0 ? incomingServerSettingsContract$State.imapAutodetectNamespaceEnabled : z;
        StringInputField stringInputField8 = (i & 512) != 0 ? incomingServerSettingsContract$State.imapPrefix : stringInputField4;
        boolean z5 = (i & 1024) != 0 ? incomingServerSettingsContract$State.imapUseCompression : z2;
        boolean z6 = (i & 2048) != 0 ? incomingServerSettingsContract$State.imapSendClientInfo : z3;
        incomingServerSettingsContract$State.getClass();
        incomingProtocolType2.getClass();
        stringInputField5.getClass();
        connectionSecurity2.getClass();
        numberInputField2.getClass();
        authenticationType2.getClass();
        stringInputField6.getClass();
        stringInputField7.getClass();
        stringInputField8.getClass();
        return new IncomingServerSettingsContract$State(incomingProtocolType2, stringInputField5, connectionSecurity2, numberInputField2, authenticationType2, stringInputField6, stringInputField7, str2, z4, stringInputField8, z5, z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IncomingServerSettingsContract$State)) {
            return false;
        }
        IncomingServerSettingsContract$State incomingServerSettingsContract$State = (IncomingServerSettingsContract$State) obj;
        return this.protocolType == incomingServerSettingsContract$State.protocolType && Intrinsics.areEqual(this.server, incomingServerSettingsContract$State.server) && this.security == incomingServerSettingsContract$State.security && Intrinsics.areEqual(this.port, incomingServerSettingsContract$State.port) && this.authenticationType == incomingServerSettingsContract$State.authenticationType && Intrinsics.areEqual(this.username, incomingServerSettingsContract$State.username) && Intrinsics.areEqual(this.password, incomingServerSettingsContract$State.password) && Intrinsics.areEqual(this.clientCertificateAlias, incomingServerSettingsContract$State.clientCertificateAlias) && this.imapAutodetectNamespaceEnabled == incomingServerSettingsContract$State.imapAutodetectNamespaceEnabled && Intrinsics.areEqual(this.imapPrefix, incomingServerSettingsContract$State.imapPrefix) && this.imapUseCompression == incomingServerSettingsContract$State.imapUseCompression && this.imapSendClientInfo == incomingServerSettingsContract$State.imapSendClientInfo;
    }

    public final int hashCode() {
        int hashCode = (this.password.hashCode() + ((this.username.hashCode() + ((this.authenticationType.hashCode() + ((this.port.hashCode() + ((this.security.hashCode() + ((this.server.hashCode() + (this.protocolType.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.clientCertificateAlias;
        return ((((this.imapPrefix.hashCode() + ((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + (this.imapAutodetectNamespaceEnabled ? 1231 : 1237)) * 31)) * 31) + (this.imapUseCompression ? 1231 : 1237)) * 31) + (this.imapSendClientInfo ? 1231 : 1237);
    }

    public final String toString() {
        return "State(protocolType=" + this.protocolType + ", server=" + this.server + ", security=" + this.security + ", port=" + this.port + ", authenticationType=" + this.authenticationType + ", username=" + this.username + ", password=" + this.password + ", clientCertificateAlias=" + this.clientCertificateAlias + ", imapAutodetectNamespaceEnabled=" + this.imapAutodetectNamespaceEnabled + ", imapPrefix=" + this.imapPrefix + ", imapUseCompression=" + this.imapUseCompression + ", imapSendClientInfo=" + this.imapSendClientInfo + ")";
    }

    public IncomingServerSettingsContract$State(IncomingProtocolType incomingProtocolType, StringInputField stringInputField, ConnectionSecurity connectionSecurity, NumberInputField numberInputField, AuthenticationType authenticationType, StringInputField stringInputField2, StringInputField stringInputField3, String str, boolean z, StringInputField stringInputField4, boolean z2, boolean z3) {
        incomingProtocolType.getClass();
        stringInputField.getClass();
        stringInputField2.getClass();
        this.protocolType = incomingProtocolType;
        this.server = stringInputField;
        this.security = connectionSecurity;
        this.port = numberInputField;
        this.authenticationType = authenticationType;
        this.username = stringInputField2;
        this.password = stringInputField3;
        this.clientCertificateAlias = str;
        this.imapAutodetectNamespaceEnabled = z;
        this.imapPrefix = stringInputField4;
        this.imapUseCompression = z2;
        this.imapSendClientInfo = z3;
    }
}
