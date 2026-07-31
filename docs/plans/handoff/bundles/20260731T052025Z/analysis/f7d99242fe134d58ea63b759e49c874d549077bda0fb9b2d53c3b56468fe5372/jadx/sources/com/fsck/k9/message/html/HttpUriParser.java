package com.fsck.k9.message.html;

import kotlin.collections.ReversedListReadOnly;
import kotlin.text.MatcherMatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HttpUriParser implements UriParser {
    public static final Regex SCHEME_REGEX = new Regex("(https?|rtsp)://", 0);
    public static final Regex DOMAIN_REGEX = new Regex("[\\da-z](?:[\\da-z-]*[\\da-z])*(?:\\.[\\da-z](?:[\\da-z-]*[\\da-z])*)*(?::(\\d{0,5}))?", 0);
    public static final Regex IPv4_REGEX = new Regex("(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})(:(\\d{0,5}))?");

    public static boolean isHexDigit(char c) {
        if ('a' <= c && c < '{') {
            return true;
        }
        if ('A' > c || c >= '[') {
            return '0' <= c && c < ':';
        }
        return true;
    }

    public static int matchUnreservedPCTEncodedSubDelimClassesGreedy(int i, CharSequence charSequence, String str) {
        String concat = "!$&'()*+,;=-._~".concat(str);
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            if (!isHexDigit(charAt)) {
                if (i2 == 0) {
                    if (!StringsKt.contains$default(concat, charAt)) {
                        if (charAt != '%') {
                            break;
                        }
                        i2 = 2;
                    } else {
                        continue;
                    }
                } else {
                    break;
                }
            } else {
                i2--;
                if (i2 < 0) {
                    i2 = 0;
                }
            }
            i++;
        }
        return i;
    }

    public static int tryMatchIpv4Address(CharSequence charSequence, int i, boolean z) {
        MatcherMatchResult find = IPv4_REGEX.find(i, charSequence);
        if (find != null && find.getRange().first == i) {
            int i2 = 1;
            while (true) {
                if (i2 < 5) {
                    if (Integer.parseInt((String) ((ReversedListReadOnly) find.getGroupValues()).get(1)) > 255) {
                        break;
                    }
                    i2++;
                } else if (z || ((CharSequence) ((ReversedListReadOnly) find.getGroupValues()).get(5)).length() <= 0) {
                    String str = (String) ((ReversedListReadOnly) find.getGroupValues()).get(6);
                    if (str.length() <= 0 || Integer.parseInt(str) <= 65535) {
                        return find.getRange().last + 1;
                    }
                }
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    @Override // com.fsck.k9.message.html.UriParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fsck.k9.message.html.UriMatch parseUri(int r20, java.lang.CharSequence r21) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.message.html.HttpUriParser.parseUri(int, java.lang.CharSequence):com.fsck.k9.message.html.UriMatch");
    }
}
