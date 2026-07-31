package app.k9mail.feature.migration.qrcode.payload;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.feature.migration.qrcode.payload.QrCodeData;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.text.Regex;
import net.thunderbird.core.common.mail.EmailAddressParserConfig;
import net.thunderbird.core.common.mail.EmailAddressParserException;
import net.thunderbird.core.common.mail.TokensKt;
import okhttp3.Cookie;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodePayloadValidator {
    public static final Regex LINE_BREAK = new Regex("[\\r\\n]");

    public static void validateData(QrCodeData qrCodeData) {
        List<QrCodeData.Account> list = qrCodeData.accounts;
        if (list.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("Account array must not be empty");
            return;
        }
        for (QrCodeData.Account account : list) {
            QrCodeData.IncomingServer incomingServer = account.incomingServer;
            IntOffsetKt.toIncomingServerProtocol(incomingServer.protocol);
            Cookie.Companion.toHostname(incomingServer.hostname);
            Handshake.Companion.toPort(incomingServer.port);
            IntOffsetKt.toConnectionSecurity(incomingServer.connectionSecurity);
            IntOffsetKt.toAuthenticationType(incomingServer.authenticationType);
            String str = incomingServer.username;
            Regex regex = LINE_BREAK;
            if (regex.containsMatchIn(str)) {
                UriKt$$ExternalSyntheticBUOutline0.m("Username must not contain line break");
                return;
            }
            String str2 = incomingServer.accountName;
            if (str2 != null && regex.containsMatchIn(str2)) {
                UriKt$$ExternalSyntheticBUOutline0.m("Account name must not contain line break");
                return;
            }
            String str3 = incomingServer.password;
            if (str3 != null && regex.containsMatchIn(str3)) {
                UriKt$$ExternalSyntheticBUOutline0.m("Password must not contain line break");
                return;
            }
            List<QrCodeData.OutgoingServer> list2 = account.outgoingServers;
            if (list2.isEmpty()) {
                UriKt$$ExternalSyntheticBUOutline0.m("List of outgoing servers must not be empty");
                return;
            }
            for (QrCodeData.OutgoingServer outgoingServer : list2) {
                int i = outgoingServer.protocol;
                if (i != 0) {
                    UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unsupported value: ", i));
                    return;
                }
                Cookie.Companion.toHostname(outgoingServer.hostname);
                Handshake.Companion.toPort(outgoingServer.port);
                IntOffsetKt.toConnectionSecurity(outgoingServer.connectionSecurity);
                IntOffsetKt.toAuthenticationType(outgoingServer.authenticationType);
                if (regex.containsMatchIn(outgoingServer.username)) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Username must not contain line break");
                    return;
                }
                String str4 = outgoingServer.password;
                if (str4 != null && regex.containsMatchIn(str4)) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Password must not contain line break");
                    return;
                }
                List<QrCodeData.Identity> list3 = outgoingServer.identities;
                if (list3.isEmpty()) {
                    UriKt$$ExternalSyntheticBUOutline0.m("List of identities must not be empty");
                    return;
                }
                for (QrCodeData.Identity identity : list3) {
                    try {
                        TokensKt.parse(identity.emailAddress, EmailAddressParserConfig.LIMITED);
                        if (regex.containsMatchIn(identity.displayName)) {
                            UriKt$$ExternalSyntheticBUOutline0.m("Display name must not contain a line break");
                            return;
                        }
                    } catch (EmailAddressParserException e) {
                        throw new IllegalArgumentException("Email address failed to parse", e);
                    }
                }
            }
        }
    }
}
