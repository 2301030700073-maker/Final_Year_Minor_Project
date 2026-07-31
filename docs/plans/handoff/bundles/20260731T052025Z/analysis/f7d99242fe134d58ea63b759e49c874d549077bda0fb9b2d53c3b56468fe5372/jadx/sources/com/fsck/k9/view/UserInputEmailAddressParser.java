package com.fsck.k9.view;

import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.K9MailLib;
import java.util.ArrayList;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import net.thunderbird.core.common.net.HostNameUtils;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UserInputEmailAddressParser {
    public static ArrayList parse(String str) {
        str.getClass();
        Pattern pattern = Address.ATOM;
        Address[] parseUnencoded = K9MailLib.parseUnencoded(str);
        ArrayList arrayList = new ArrayList();
        for (Address address : parseUnencoded) {
            String hostname = address.getHostname();
            String str2 = address.address;
            Address address2 = null;
            if (hostname != null && !StringsKt.isBlank(hostname)) {
                if (!Cookie.Companion.isASCII(str2)) {
                    throw new NonAsciiEmailAddressException(str2);
                }
                Regex regex = HostNameUtils.HOST_PATTERN;
                if (HostNameUtils.isLegalHostNameOrIP(address.getHostname()) != null) {
                    Pattern pattern2 = Address.ATOM;
                    address2 = (Address) ArraysKt___ArraysKt.firstOrNull(K9MailLib.m931parse(address.toEncodedString()));
                }
            }
            if (address2 != null) {
                arrayList.add(address2);
            }
        }
        return arrayList;
    }
}
