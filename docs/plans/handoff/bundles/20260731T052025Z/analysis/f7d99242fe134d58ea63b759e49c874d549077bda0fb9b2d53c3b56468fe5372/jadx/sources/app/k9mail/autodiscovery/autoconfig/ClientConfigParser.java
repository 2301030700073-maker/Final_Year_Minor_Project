package app.k9mail.autodiscovery.autoconfig;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.BoxMeasurePolicy$$ExternalSyntheticLambda1;
import androidx.work.Data$$ExternalSyntheticLambda0;
import app.k9mail.autodiscovery.api.ConnectionSecurity;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.common.mail.EmailAddress;
import net.thunderbird.core.common.net.HostNameUtils;
import net.thunderbird.core.common.net.Hostname;
import net.thunderbird.core.common.net.Port;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Cookie;
import okhttp3.Handshake;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClientConfigParser {
    public final String domain;
    public final EmailAddress email;
    public final String localPart;
    public final XmlPullParser pullParser;

    public ClientConfigParser(InputStream inputStream, EmailAddress emailAddress) {
        inputStream.getClass();
        emailAddress.getClass();
        this.email = emailAddress;
        this.localPart = emailAddress.localPart;
        this.domain = emailAddress.domain.normalized;
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new InputStreamReader(inputStream));
        this.pullParser = newPullParser;
    }

    public static boolean isValidHostname(String str) {
        Regex regex = HostNameUtils.HOST_PATTERN;
        return HostNameUtils.isLegalHostNameOrIP(StringsKt.trim(str).toString()) != null;
    }

    public final AutoconfigParserResult parse() {
        int next;
        AutoconfigParserResult autoconfigParserResult = null;
        do {
            XmlPullParser xmlPullParser = this.pullParser;
            next = xmlPullParser.next();
            if (next == 2) {
                if (Intrinsics.areEqual(xmlPullParser.getName(), "clientConfig")) {
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    readElement(new ClientConfigParser$$ExternalSyntheticLambda1(this, ref$ObjectRef));
                    autoconfigParserResult = (AutoconfigParserResult) ref$ObjectRef.element;
                    if (autoconfigParserResult == null) {
                        throw new AutoconfigParserException("Missing 'emailProvider' element", null);
                    }
                } else {
                    skipElement();
                }
            }
        } while (next != 1);
        if (autoconfigParserResult != null) {
            return autoconfigParserResult;
        }
        throw new AutoconfigParserException("Missing 'clientConfig' element", null);
    }

    public final Object parseServer(String str, Function5 function5) {
        XmlPullParser xmlPullParser = this.pullParser;
        String attributeValue = xmlPullParser.getAttributeValue(null, "type");
        if (!Intrinsics.areEqual(attributeValue, str)) {
            Log.d("Unsupported '%s[type]' value: '%s'", xmlPullParser.getName(), attributeValue);
            skipElement();
            return null;
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        ArrayList arrayList = new ArrayList();
        Ref$ObjectRef ref$ObjectRef4 = new Ref$ObjectRef();
        readElement(new BoxMeasurePolicy$$ExternalSyntheticLambda1(this, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3, arrayList, ref$ObjectRef4, 1));
        String str2 = (String) ref$ObjectRef.element;
        if (str2 == null) {
            throw new AutoconfigParserException("Missing 'hostname' element", null);
        }
        Integer num = (Integer) ref$ObjectRef2.element;
        if (num == null) {
            throw new AutoconfigParserException("Missing 'port' element", null);
        }
        int intValue = num.intValue();
        String str3 = (String) ref$ObjectRef3.element;
        if (str3 == null) {
            throw new AutoconfigParserException("Missing 'username' element", null);
        }
        if (arrayList.isEmpty()) {
            throw new AutoconfigParserException("No usable 'authentication' element found", null);
        }
        List list = CollectionsKt.toList(arrayList);
        ConnectionSecurity connectionSecurity = (ConnectionSecurity) ref$ObjectRef4.element;
        if (connectionSecurity == null) {
            throw new AutoconfigParserException("Missing 'socketType' element", null);
        }
        Cookie.Companion.toHostname(str2);
        Hostname hostname = new Hostname(str2);
        Handshake.Companion.toPort(intValue);
        return function5.invoke(hostname, new Port(intValue), connectionSecurity, list, str3);
    }

    public final void readElement(Function1 function1) {
        XmlPullParser xmlPullParser = this.pullParser;
        if (xmlPullParser.getEventType() != 2) {
            UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
            return;
        }
        String name = xmlPullParser.getName();
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                throw new AutoconfigParserException(CameraDevices$CC.m("End of document reached while reading element '", name, "'"), null);
            }
            if (next != 3) {
                function1.invoke(Integer.valueOf(next));
            } else if (Intrinsics.areEqual(xmlPullParser.getName(), name) && xmlPullParser.getDepth() == depth) {
                return;
            }
        }
    }

    public final String readText() {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = "";
        readElement(new ClientConfigParser$$ExternalSyntheticLambda1(ref$ObjectRef, this));
        return (String) ref$ObjectRef.element;
    }

    public final String replaceVariables(String str) {
        return StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "%EMAILDOMAIN%", this.domain), "%EMAILLOCALPART%", this.localPart), "%EMAILADDRESS%", this.email.getAddress());
    }

    public final void skipElement() {
        Log.d("Skipping element '%s'", this.pullParser.getName());
        readElement(new Data$$ExternalSyntheticLambda0(15));
    }
}
