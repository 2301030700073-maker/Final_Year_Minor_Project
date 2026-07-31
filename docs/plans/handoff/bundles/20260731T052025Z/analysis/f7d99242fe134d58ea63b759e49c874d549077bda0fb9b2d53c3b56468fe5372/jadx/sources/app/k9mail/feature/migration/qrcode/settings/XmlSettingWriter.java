package app.k9mail.feature.migration.qrcode.settings;

import android.util.Xml;
import androidx.compose.ui.unit.IntRectKt;
import app.k9mail.feature.migration.qrcode.domain.entity.AccountData;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.xmlpull.v1.XmlSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class XmlSettingWriter {
    public static void writeElement(XmlSerializer xmlSerializer, String str, String str2) {
        xmlSerializer.startTag(null, str);
        xmlSerializer.text(str2);
        xmlSerializer.endTag(null, str);
    }

    public final void writeSettings(FileOutputStream fileOutputStream, ArrayList arrayList) {
        String str;
        String str2;
        XmlSerializer newSerializer = Xml.newSerializer();
        newSerializer.setOutput(fileOutputStream, "UTF-8");
        String str3 = null;
        newSerializer.startDocument(null, Boolean.TRUE);
        int i = 1;
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        String str4 = "k9settings";
        newSerializer.startTag(null, "k9settings");
        newSerializer.attribute(null, "version", "99");
        newSerializer.attribute(null, "format", DiskLruCache.VERSION);
        newSerializer.startTag(null, "accounts");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AccountData.Account account = (AccountData.Account) it.next();
            String uuid = UUID.randomUUID().toString();
            uuid.getClass();
            newSerializer.startTag(str3, "account");
            newSerializer.attribute(str3, "uuid", uuid);
            writeElement(newSerializer, "name", account.accountName);
            newSerializer.startTag(str3, "settings");
            int ordinal = account.deletePolicy.ordinal();
            if (ordinal == 0) {
                str = "NEVER";
            } else if (ordinal == i) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unsupported value");
                return;
            } else if (ordinal == 2) {
                str = "DELETE";
            } else {
                if (ordinal != 3) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
                str = "MARK_AS_READ";
            }
            newSerializer.startTag(str3, "value");
            newSerializer.attribute(str3, "key", "deletePolicy");
            newSerializer.text(str);
            newSerializer.endTag(str3, "value");
            newSerializer.endTag(str3, "settings");
            AccountData.IncomingServer incomingServer = account.incomingServer;
            newSerializer.startTag(str3, "incoming-server");
            int ordinal2 = incomingServer.protocol.ordinal();
            if (ordinal2 == 0) {
                str2 = "IMAP";
            } else {
                if (ordinal2 != i) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
                str2 = "POP3";
            }
            newSerializer.attribute(str3, "type", str2);
            writeElement(newSerializer, "host", incomingServer.hostname);
            writeElement(newSerializer, "port", String.valueOf(incomingServer.port));
            writeElement(newSerializer, "connection-security", IntRectKt.mapToSettingsString(incomingServer.connectionSecurity));
            writeElement(newSerializer, "authentication-type", IntRectKt.mapToSettingsString(incomingServer.authenticationType));
            writeElement(newSerializer, "username", incomingServer.username);
            String str5 = incomingServer.password;
            if (str5 != null) {
                writeElement(newSerializer, "password", str5);
            }
            newSerializer.endTag(null, "incoming-server");
            AccountData.OutgoingServerGroup outgoingServerGroup = (AccountData.OutgoingServerGroup) CollectionsKt.first((List) account.outgoingServerGroups);
            AccountData.OutgoingServer outgoingServer = outgoingServerGroup.outgoingServer;
            Iterator it2 = it;
            newSerializer.startTag(null, "outgoing-server");
            String str6 = str4;
            if (SettingsValueMapperKt$WhenMappings.$EnumSwitchMapping$1[0] != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            newSerializer.attribute(null, "type", "SMTP");
            writeElement(newSerializer, "host", outgoingServer.hostname);
            writeElement(newSerializer, "port", String.valueOf(outgoingServer.port));
            writeElement(newSerializer, "connection-security", IntRectKt.mapToSettingsString(outgoingServer.connectionSecurity));
            writeElement(newSerializer, "authentication-type", IntRectKt.mapToSettingsString(outgoingServer.authenticationType));
            writeElement(newSerializer, "username", outgoingServer.username);
            String str7 = outgoingServer.password;
            if (str7 != null) {
                writeElement(newSerializer, "password", str7);
            }
            newSerializer.endTag(null, "outgoing-server");
            ArrayList arrayList2 = outgoingServerGroup.identities;
            newSerializer.startTag(null, "identities");
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                AccountData.Identity identity = (AccountData.Identity) it3.next();
                newSerializer.startTag(null, "identity");
                writeElement(newSerializer, "name", identity.displayName);
                writeElement(newSerializer, "email", identity.emailAddress.getAddress());
                newSerializer.endTag(null, "identity");
            }
            newSerializer.endTag(null, "identities");
            newSerializer.endTag(null, "account");
            it = it2;
            str3 = null;
            str4 = str6;
            i = 1;
        }
        String str8 = str4;
        String str9 = str3;
        newSerializer.endTag(str9, "accounts");
        newSerializer.endTag(str9, str8);
        newSerializer.endDocument();
        newSerializer.flush();
    }
}
