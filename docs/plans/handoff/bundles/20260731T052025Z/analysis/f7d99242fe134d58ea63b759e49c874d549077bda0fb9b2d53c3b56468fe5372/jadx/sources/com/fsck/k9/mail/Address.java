package com.fsck.k9.mail;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mail.helper.Rfc822Token;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.BitSet;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Cookie;
import org.apache.james.mime4j.Charsets;
import org.apache.james.mime4j.codec.EncoderUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Address implements Serializable {
    public static final Pattern ATOM;
    public static final Address[] EMPTY_ADDRESS_ARRAY;
    public final String address;
    public final String personal;

    static {
        Pattern compile = Pattern.compile("^(?:[a-zA-Z0-9!#$%&'*+\\-/=?^_`{|}~]|\\s)+$");
        compile.getClass();
        ATOM = compile;
        EMPTY_ADDRESS_ARRAY = new Address[0];
    }

    public Address(String str, String str2, boolean z) {
        str.getClass();
        this.address = str;
        this.personal = str2;
        if (z) {
            Rfc822Token[] rfc822TokenArr = IntOffsetKt.tokenize(str);
            rfc822TokenArr.getClass();
            if (rfc822TokenArr.length == 0) {
                Log.e("Invalid address: %s", str);
                return;
            }
            Rfc822Token rfc822Token = rfc822TokenArr[0];
            this.address = rfc822Token.mAddress;
            String str3 = rfc822Token.mName;
            this.personal = (str3 == null || str3.length() == 0) ? str2 != null ? StringsKt.trim(str2).toString() : null : str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Address.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        Address address = (Address) obj;
        return Intrinsics.areEqual(this.address, address.address) && Intrinsics.areEqual(this.personal, address.personal);
    }

    public final String getHostname() {
        String str = this.address;
        int lastIndexOf$default = StringsKt.lastIndexOf$default(6, str, "@");
        if (lastIndexOf$default == -1) {
            return null;
        }
        return str.substring(lastIndexOf$default + 1);
    }

    public final int hashCode() {
        int hashCode = this.address.hashCode() * 31;
        String str = this.personal;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toEncodedString() {
        boolean z;
        Charset charset;
        String str = this.address;
        String str2 = this.personal;
        if (str2 == null || StringsKt.isBlank(str2)) {
            return str;
        }
        byte[] bArr = EncoderUtil.BASE64_TABLE;
        int length = str2.length();
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = true;
            if (i >= length) {
                break;
            }
            char charAt = str2.charAt(i);
            if (!EncoderUtil.ATEXT_CHARS.get(charAt)) {
                if (!Cookie.Companion.isWhitespace(charAt)) {
                    z2 = false;
                    break;
                }
            } else {
                z2 = true;
            }
            i++;
        }
        if (!z2) {
            int i2 = 0;
            for (int i3 = 0; i3 < str2.length(); i3++) {
                char charAt2 = str2.charAt(i3);
                if (charAt2 == '\t' || charAt2 == ' ') {
                    i2 = 0;
                } else {
                    i2++;
                    if (i2 > 77 || charAt2 < ' ' || charAt2 >= 127) {
                        int length2 = str2.length();
                        int i4 = 0;
                        while (true) {
                            if (i4 < length2) {
                                char charAt3 = str2.charAt(i4);
                                if (charAt3 > 255) {
                                    charset = Charsets.UTF_8;
                                    break;
                                }
                                if (charAt3 > 127) {
                                    z = false;
                                }
                                i4++;
                            } else {
                                charset = z ? Charsets.US_ASCII : Charsets.ISO_8859_1;
                            }
                        }
                        byte[] encode = EncoderUtil.encode(str2, charset);
                        if (encode.length != 0) {
                            BitSet bitSet = EncoderUtil.Q_RESTRICTED_CHARS;
                            int i5 = 0;
                            for (byte b : encode) {
                                int i6 = b & 255;
                                if (i6 != 32 && !bitSet.get(i6)) {
                                    i5++;
                                }
                            }
                            if ((i5 * 100) / encode.length > 30) {
                                str2 = EncoderUtil.encodeB("=?" + charset.name() + "?B?", str2, charset, encode);
                            }
                        }
                        str2 = EncoderUtil.encodeQ("=?" + charset.name() + "?Q?", str2, charset, encode);
                    }
                }
            }
            str2 = "\"" + EncoderUtil.QUOTE.matcher(str2).replaceAll("\\\\$0") + '\"';
        }
        return ViewSizeResolver.CC.m(str2, " <", str, ">");
    }

    public final String toString() {
        String str = this.address;
        String str2 = this.personal;
        if (str2 == null || StringsKt.isBlank(str2)) {
            return str;
        }
        if (str2 == null) {
            str2 = null;
        } else if (!ATOM.matcher(str2).matches()) {
            Pattern compile = Pattern.compile("^\".*\"$");
            compile.getClass();
            if (!compile.matcher(str2).matches()) {
                str2 = CameraDevices$CC.m("\"", str2, "\"");
            }
        }
        return ViewSizeResolver.CC.m(str2, " <", str, ">");
    }

    public /* synthetic */ Address(int i, String str, String str2) {
        this(str, (i & 2) != 0 ? null : str2, true);
    }
}
