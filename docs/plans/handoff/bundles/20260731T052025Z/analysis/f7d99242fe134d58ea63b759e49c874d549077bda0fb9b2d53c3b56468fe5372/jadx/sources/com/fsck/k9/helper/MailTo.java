package com.fsck.k9.helper;

import android.net.Uri;
import androidx.work.Configuration;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.internet.MessageIdParser;
import com.fsck.k9.mail.internet.MimeHeaderParserException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MailTo {
    public static final Address[] EMPTY_ADDRESS_LIST = new Address[0];
    public final Address[] bccAddresses;
    public final String body;
    public final Address[] ccAddresses;
    public final String inReplyToMessageId;
    public final String subject;
    public final Address[] toAddresses;

    public MailTo(Address[] addressArr, Address[] addressArr2, Address[] addressArr3, String str, String str2, String str3) {
        this.toAddresses = addressArr;
        this.ccAddresses = addressArr2;
        this.bccAddresses = addressArr3;
        this.inReplyToMessageId = str;
        this.subject = str2;
        this.body = str3;
    }

    public static String getFirstParameterValue(Configuration.Builder builder, String str) {
        ArrayList queryParameters = builder.getQueryParameters(str);
        if (queryParameters.isEmpty()) {
            return null;
        }
        return (String) queryParameters.get(0);
    }

    public static MailTo parse(Uri uri) {
        String str;
        if (uri == null || uri.toString() == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Argument 'uri' must not be null");
            return null;
        }
        if (!"mailto".equals(uri.getScheme())) {
            UriKt$$ExternalSyntheticBUOutline0.m("Not a mailto scheme");
            return null;
        }
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        int indexOf = schemeSpecificPart.indexOf(63);
        if (indexOf == -1) {
            indexOf = schemeSpecificPart.length();
        }
        Configuration.Builder builder = new Configuration.Builder(23, Uri.parse("foo://bar?" + uri.getEncodedQuery()));
        String decode = Uri.decode(schemeSpecificPart.substring(0, indexOf));
        ArrayList queryParameters = builder.getQueryParameters("to");
        if (decode.length() != 0) {
            queryParameters.add(0, decode);
        }
        ArrayList queryParameters2 = builder.getQueryParameters("cc");
        ArrayList queryParameters3 = builder.getQueryParameters("bcc");
        Address[] addressArray = toAddressArray(queryParameters);
        Address[] addressArray2 = toAddressArray(queryParameters2);
        Address[] addressArray3 = toAddressArray(queryParameters3);
        String firstParameterValue = getFirstParameterValue(builder, "subject");
        String firstParameterValue2 = getFirstParameterValue(builder, "body");
        String firstParameterValue3 = getFirstParameterValue(builder, "in-reply-to");
        if (firstParameterValue3 != null) {
            try {
                str = (String) MessageIdParser.parseList(firstParameterValue3).get(0);
            } catch (MimeHeaderParserException e) {
                Log.w(e, "Ignoring invalid in-reply-to value within the mailto: link.", new Object[0]);
            }
            return new MailTo(addressArray, addressArray2, addressArray3, str, firstParameterValue, firstParameterValue2);
        }
        str = null;
        return new MailTo(addressArray, addressArray2, addressArray3, str, firstParameterValue, firstParameterValue2);
    }

    public static Address[] toAddressArray(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return EMPTY_ADDRESS_LIST;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(',');
        }
        sb.setLength(sb.length() - 1);
        String sb2 = sb.toString();
        Pattern pattern = Address.ATOM;
        return K9MailLib.m931parse(sb2);
    }
}
