package com.fsck.k9.mail;

import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.mail.filter.Base64;
import com.fsck.k9.mail.filter.Hex;
import com.fsck.k9.mail.helper.Rfc822Token;
import com.jcraft.jzlib.Adler32;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.ReversedListReadOnly;
import kotlin.text.MatcherMatchResult;
import kotlin.text.StringsKt;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.CacheControl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.dom.address.DomainList;
import org.apache.james.mime4j.dom.address.Mailbox;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class K9MailLib {
    public static DebugStatus debugStatus = new Adler32(18);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface DebugStatus {
        boolean debugSensitive();

        boolean enabled();
    }

    public static String computeCramMd5(String str, String str2, String str3) {
        try {
            return new String(computeCramMd5Bytes(str3.getBytes("US-ASCII"), str, str2), "US-ASCII");
        } catch (MessagingException e) {
            throw e;
        } catch (Exception e2) {
            throw new MessagingException("This shouldn't happen", false, e2);
        }
    }

    public static byte[] computeCramMd5Bytes(byte[] bArr, String str, String str2) {
        try {
            byte[] decodeBase64 = Base64.decodeBase64(bArr);
            byte[] bytes = str2.getBytes();
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            if (bytes.length > 64) {
                bytes = messageDigest.digest(bytes);
            }
            byte[] bArr2 = new byte[64];
            byte[] bArr3 = new byte[64];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bytes, 0, bArr3, 0, bytes.length);
            for (int i = 0; i < 64; i++) {
                bArr2[i] = (byte) (bArr2[i] ^ 54);
            }
            for (int i2 = 0; i2 < 64; i2++) {
                bArr3[i2] = (byte) (bArr3[i2] ^ 92);
            }
            messageDigest.update(bArr2);
            byte[] digest = messageDigest.digest(decodeBase64);
            messageDigest.update(bArr3);
            return Base64.encodeBase64$1((str + " " + Hex.encodeHex(messageDigest.digest(digest))).getBytes());
        } catch (Exception e) {
            throw new MessagingException("Something went wrong during CRAM-MD5 computation", false, e);
        }
    }

    public static String pack(Address[] addressArr) {
        if (addressArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = addressArr.length;
        for (int i = 0; i < length; i++) {
            Address address = addressArr[i];
            sb.append(address.address);
            String str = address.personal;
            if (str != null) {
                sb.append(";\u0001");
                Pattern compile = Pattern.compile("\"");
                compile.getClass();
                String replaceAll = compile.matcher(str).replaceAll("\\\"");
                replaceAll.getClass();
                sb.append(replaceAll);
            }
            if (i < length - 1) {
                sb.append(",\u0001");
            }
        }
        return sb.toString();
    }

    /* renamed from: parse, reason: collision with other method in class */
    public static Address[] m931parse(String str) {
        if (str == null || str.length() == 0) {
            return Address.EMPTY_ADDRESS_ARRAY;
        }
        try {
            DomainList flatten = CacheControl.Companion.parseAddressList(str).flatten();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(flatten, 10));
            Iterator it = flatten.iterator();
            while (it.hasNext()) {
                Mailbox mailbox = (Mailbox) it.next();
                arrayList.add(new Address(mailbox.localPart + "@" + mailbox.domain, mailbox.name, false));
            }
            return (Address[]) arrayList.toArray(new Address[0]);
        } catch (MimeException e) {
            Log.e(e, "MimeException in Address.parse()", new Object[0]);
            return Address.EMPTY_ADDRESS_ARRAY;
        }
    }

    public static MimeType parseOrNull(String str) {
        if (str != null) {
            try {
                return parse(str);
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }

    public static Address[] parseUnencoded(String str) {
        if (str == null || str.length() == 0) {
            return Address.EMPTY_ADDRESS_ARRAY;
        }
        Rfc822Token[] rfc822TokenArr = IntOffsetKt.tokenize(str);
        rfc822TokenArr.getClass();
        ArrayList arrayList = new ArrayList();
        for (Rfc822Token rfc822Token : rfc822TokenArr) {
            if (!StringsKt.isBlank(rfc822Token.mAddress)) {
                arrayList.add(rfc822Token);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Rfc822Token rfc822Token2 = (Rfc822Token) it.next();
            arrayList2.add(new Address(rfc822Token2.mAddress, rfc822Token2.mName, false));
        }
        return (Address[]) arrayList2.toArray(new Address[0]);
    }

    public static String toString(Address[] addressArr) {
        addressArr.getClass();
        return addressArr.length == 0 ? "" : ArraysKt___ArraysKt.joinToString$default(addressArr, ", ", null, null, null, 62);
    }

    public static Address[] unpack(String str) {
        String substring;
        String str2;
        if (str == null) {
            return Address.EMPTY_ADDRESS_ARRAY;
        }
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int indexOf$default = StringsKt.indexOf$default(str, ",\u0001", i, false, 4);
            if (indexOf$default == -1) {
                indexOf$default = length;
            }
            int indexOf$default2 = StringsKt.indexOf$default(str, ";\u0001", i, false, 4);
            if (indexOf$default2 == -1 || indexOf$default2 > indexOf$default) {
                substring = str.substring(i, indexOf$default);
                str2 = null;
            } else {
                substring = str.substring(i, indexOf$default2);
                str2 = str.substring(indexOf$default2 + 2, indexOf$default);
            }
            arrayList.add(new Address(substring, str2, false));
            i = indexOf$default + 2;
        }
        return (Address[]) arrayList.toArray(new Address[0]);
    }

    public static MimeType parse(String str) {
        str.getClass();
        MatcherMatchResult matchEntire = MimeType.MIME_TYPE.matchEntire(str);
        if (matchEntire != null) {
            String str2 = (String) ((ReversedListReadOnly) matchEntire.getGroupValues()).get(1);
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            lowerCase.getClass();
            String lowerCase2 = ((String) ((ReversedListReadOnly) matchEntire.getGroupValues()).get(2)).toLowerCase(locale);
            lowerCase2.getClass();
            return new MimeType(lowerCase, lowerCase2);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) "Invalid MIME type: ".concat(str));
        return null;
    }
}
