package okhttp3.internal.url;

import kotlin.text.StringsKt;
import okhttp3.internal._UtilCommonKt;
import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class _UrlKt {
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String canonicalize$default(int i, int i2, int i3, String str, String str2, boolean z) {
        int i4 = (i3 & 1) != 0 ? 0 : i;
        int length = (i3 & 2) != 0 ? str.length() : i2;
        boolean z2 = (i3 & 8) != 0 ? false : z;
        boolean z3 = (i3 & 16) == 0;
        boolean z4 = (i3 & 32) == 0;
        boolean z5 = (i3 & 64) == 0;
        str.getClass();
        int i5 = i4;
        while (i5 < length) {
            int codePointAt = str.codePointAt(i5);
            int i6 = 32;
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && !z5) || StringsKt.contains$default(str2, (char) codePointAt) || ((codePointAt == 37 && (!z2 || (z3 && !isPercentEncoded(i5, str, length)))) || (codePointAt == 43 && z4)))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(i4, str, i5);
                Buffer buffer2 = null;
                while (i5 < length) {
                    int codePointAt2 = str.codePointAt(i5);
                    if (!z2 || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                        if (codePointAt2 == i6 && str2 == " !\"#$&'()+,/:;<=>?@[\\]^`{|}~") {
                            buffer.m1057writeUtf8("+");
                        } else if (codePointAt2 == 43 && z4) {
                            buffer.m1057writeUtf8(z2 ? "+" : "%2B");
                        } else {
                            if (codePointAt2 >= i6 && codePointAt2 != 127) {
                                if ((codePointAt2 < 128 || z5) && !StringsKt.contains$default(str2, (char) codePointAt2) && (codePointAt2 != 37 || (z2 && (!z3 || isPercentEncoded(i5, str, length))))) {
                                    buffer.writeUtf8CodePoint(codePointAt2);
                                }
                            }
                            if (buffer2 == null) {
                                buffer2 = new Buffer();
                            }
                            buffer2.writeUtf8CodePoint(codePointAt2);
                            while (!buffer2.exhausted()) {
                                byte readByte = buffer2.readByte();
                                buffer.m1053writeByte(37);
                                char[] cArr = HEX_DIGITS;
                                buffer.m1053writeByte((int) cArr[((readByte & 255) >> 4) & 15]);
                                buffer.m1053writeByte((int) cArr[readByte & 15]);
                            }
                        }
                    }
                    i5 += Character.charCount(codePointAt2);
                    i6 = 32;
                }
                return buffer.readUtf8();
            }
            i5 += Character.charCount(codePointAt);
        }
        return str.substring(i4, length);
    }

    public static final boolean isPercentEncoded(int i, String str, int i2) {
        str.getClass();
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && _UtilCommonKt.parseHexDigit(str.charAt(i + 1)) != -1 && _UtilCommonKt.parseHexDigit(str.charAt(i3)) != -1;
    }

    public static String percentDecode$default(int i, int i2, int i3, String str) {
        int i4;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        boolean z = (i3 & 4) == 0;
        str.getClass();
        int i5 = i;
        while (i5 < i2) {
            char charAt = str.charAt(i5);
            if (charAt == '%' || (charAt == '+' && z)) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(i, str, i5);
                while (i5 < i2) {
                    int codePointAt = str.codePointAt(i5);
                    if (codePointAt != 37 || (i4 = i5 + 2) >= i2) {
                        if (codePointAt == 43 && z) {
                            buffer.m1053writeByte(32);
                            i5++;
                        }
                        buffer.writeUtf8CodePoint(codePointAt);
                        i5 += Character.charCount(codePointAt);
                    } else {
                        int parseHexDigit = _UtilCommonKt.parseHexDigit(str.charAt(i5 + 1));
                        int parseHexDigit2 = _UtilCommonKt.parseHexDigit(str.charAt(i4));
                        if (parseHexDigit != -1 && parseHexDigit2 != -1) {
                            buffer.m1053writeByte((parseHexDigit << 4) + parseHexDigit2);
                            i5 = Character.charCount(codePointAt) + i4;
                        }
                        buffer.writeUtf8CodePoint(codePointAt);
                        i5 += Character.charCount(codePointAt);
                    }
                }
                return buffer.readUtf8();
            }
            i5++;
        }
        return str.substring(i, i2);
    }
}
