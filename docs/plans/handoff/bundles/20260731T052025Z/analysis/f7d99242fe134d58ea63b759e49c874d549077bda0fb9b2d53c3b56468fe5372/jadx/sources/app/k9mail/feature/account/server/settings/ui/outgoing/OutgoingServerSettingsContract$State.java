package app.k9mail.feature.account.server.settings.ui.outgoing;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.validation.input.NumberInputField;
import net.thunderbird.core.validation.input.StringInputField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutgoingServerSettingsContract$State {
    public final AuthenticationType authenticationType;
    public final String clientCertificateAlias;
    public final StringInputField password;
    public final NumberInputField port;
    public final ConnectionSecurity security;
    public final StringInputField server;
    public final StringInputField username;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public OutgoingServerSettingsContract$State(net.thunderbird.core.validation.input.StringInputField r12, net.thunderbird.core.validation.input.StringInputField r13, net.thunderbird.core.validation.input.StringInputField r14, int r15) {
        /*
            r11 = this;
            r0 = r15 & 1
            r1 = 7
            r2 = 0
            if (r0 == 0) goto Lb
            net.thunderbird.core.validation.input.StringInputField r12 = new net.thunderbird.core.validation.input.StringInputField
            r12.<init>(r2, r1)
        Lb:
            r4 = r12
            com.bumptech.glide.GlideBuilder$1 r12 = app.k9mail.feature.account.common.domain.entity.ConnectionSecurity.Companion
            r12.getClass()
            net.thunderbird.core.validation.input.NumberInputField r6 = new net.thunderbird.core.validation.input.NumberInputField
            r12.getClass()
            app.k9mail.feature.account.common.domain.entity.ConnectionSecurity r5 = app.k9mail.feature.account.common.domain.entity.ConnectionSecurity.DEFAULT
            long r7 = org.jsoup.helper.Validate.toSmtpDefaultPort(r5)
            java.lang.Long r12 = java.lang.Long.valueOf(r7)
            r6.<init>(r12)
            r12 = r15 & 16
            if (r12 == 0) goto L2c
            net.thunderbird.core.validation.input.StringInputField r13 = new net.thunderbird.core.validation.input.StringInputField
            r13.<init>(r2, r1)
        L2c:
            r8 = r13
            r12 = r15 & 32
            if (r12 == 0) goto L36
            net.thunderbird.core.validation.input.StringInputField r14 = new net.thunderbird.core.validation.input.StringInputField
            r14.<init>(r2, r1)
        L36:
            r9 = r14
            app.k9mail.feature.account.common.domain.entity.AuthenticationType r7 = app.k9mail.feature.account.common.domain.entity.AuthenticationType.PasswordCleartext
            r10 = 0
            r3 = r11
            r3.<init>(r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State.<init>(net.thunderbird.core.validation.input.StringInputField, net.thunderbird.core.validation.input.StringInputField, net.thunderbird.core.validation.input.StringInputField, int):void");
    }

    public static OutgoingServerSettingsContract$State copy$default(OutgoingServerSettingsContract$State outgoingServerSettingsContract$State, StringInputField stringInputField, ConnectionSecurity connectionSecurity, NumberInputField numberInputField, AuthenticationType authenticationType, StringInputField stringInputField2, StringInputField stringInputField3, String str, int i) {
        if ((i & 1) != 0) {
            stringInputField = outgoingServerSettingsContract$State.server;
        }
        StringInputField stringInputField4 = stringInputField;
        if ((i & 2) != 0) {
            connectionSecurity = outgoingServerSettingsContract$State.security;
        }
        ConnectionSecurity connectionSecurity2 = connectionSecurity;
        if ((i & 4) != 0) {
            numberInputField = outgoingServerSettingsContract$State.port;
        }
        NumberInputField numberInputField2 = numberInputField;
        if ((i & 8) != 0) {
            authenticationType = outgoingServerSettingsContract$State.authenticationType;
        }
        AuthenticationType authenticationType2 = authenticationType;
        if ((i & 16) != 0) {
            stringInputField2 = outgoingServerSettingsContract$State.username;
        }
        StringInputField stringInputField5 = stringInputField2;
        if ((i & 32) != 0) {
            stringInputField3 = outgoingServerSettingsContract$State.password;
        }
        StringInputField stringInputField6 = stringInputField3;
        if ((i & 64) != 0) {
            str = outgoingServerSettingsContract$State.clientCertificateAlias;
        }
        outgoingServerSettingsContract$State.getClass();
        stringInputField4.getClass();
        connectionSecurity2.getClass();
        numberInputField2.getClass();
        authenticationType2.getClass();
        stringInputField5.getClass();
        stringInputField6.getClass();
        return new OutgoingServerSettingsContract$State(stringInputField4, connectionSecurity2, numberInputField2, authenticationType2, stringInputField5, stringInputField6, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OutgoingServerSettingsContract$State)) {
            return false;
        }
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State = (OutgoingServerSettingsContract$State) obj;
        return Intrinsics.areEqual(this.server, outgoingServerSettingsContract$State.server) && this.security == outgoingServerSettingsContract$State.security && Intrinsics.areEqual(this.port, outgoingServerSettingsContract$State.port) && this.authenticationType == outgoingServerSettingsContract$State.authenticationType && Intrinsics.areEqual(this.username, outgoingServerSettingsContract$State.username) && Intrinsics.areEqual(this.password, outgoingServerSettingsContract$State.password) && Intrinsics.areEqual(this.clientCertificateAlias, outgoingServerSettingsContract$State.clientCertificateAlias);
    }

    public final int hashCode() {
        int hashCode = (this.password.hashCode() + ((this.username.hashCode() + ((this.authenticationType.hashCode() + ((this.port.hashCode() + ((this.security.hashCode() + (this.server.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.clientCertificateAlias;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(server=");
        sb.append(this.server);
        sb.append(", security=");
        sb.append(this.security);
        sb.append(", port=");
        sb.append(this.port);
        sb.append(", authenticationType=");
        sb.append(this.authenticationType);
        sb.append(", username=");
        sb.append(this.username);
        sb.append(", password=");
        sb.append(this.password);
        sb.append(", clientCertificateAlias=");
        return CameraDevices$CC.m(sb, this.clientCertificateAlias, ")");
    }

    public OutgoingServerSettingsContract$State(StringInputField stringInputField, ConnectionSecurity connectionSecurity, NumberInputField numberInputField, AuthenticationType authenticationType, StringInputField stringInputField2, StringInputField stringInputField3, String str) {
        stringInputField.getClass();
        connectionSecurity.getClass();
        stringInputField2.getClass();
        stringInputField3.getClass();
        this.server = stringInputField;
        this.security = connectionSecurity;
        this.port = numberInputField;
        this.authenticationType = authenticationType;
        this.username = stringInputField2;
        this.password = stringInputField3;
        this.clientCertificateAlias = str;
    }
}
