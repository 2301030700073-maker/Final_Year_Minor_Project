package com.eygraber.uri;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.ranges.CharRange;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UriCodec {
    public static final CharRange lowercaseAsciiAlphaRange = new CharRange('a', 'z');
    public static final CharRange lowercaseHexRange = new CharRange('a', 'f');
    public static final CharRange uppercaseAsciiAlphaRange = new CharRange('A', 'Z');
    public static final CharRange uppercaseHexRange = new CharRange('A', 'F');
    public static final CharRange digitAsciiRange = new CharRange('0', '9');
    public static final Set defaultAllowedSet = ArraysKt___ArraysKt.toSet(new Character[]{'_', '-', '!', '.', '~', '\'', '(', ')', '*'});
    public static final char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cd, code lost:
    
        r4 = (byte[]) ((kotlin.SynchronizedLazyImpl) r2.children).getValue();
        r6 = r2.terminalBitCount;
        r2.terminalBitCount = r6 + 1;
        r4[r6] = r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String decode(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.eygraber.uri.UriCodec.decode(java.lang.String):java.lang.String");
    }

    public static String encode(String str, String str2) {
        str.getClass();
        int length = str.length();
        StringBuilder sb = null;
        int i = 0;
        while (i < length) {
            int i2 = i;
            while (i2 < length && isAllowed(str.charAt(i2), str2)) {
                i2++;
            }
            if (i2 == length) {
                if (i == 0) {
                    return str;
                }
                if (sb != null) {
                    sb.append((CharSequence) str, i, length);
                    return sb.toString();
                }
                UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                return null;
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            if (i2 > i) {
                sb.append((CharSequence) str, i, i2);
            }
            i = i2 + 1;
            while (i < length && !isAllowed(str.charAt(i), str2)) {
                i++;
            }
            try {
                byte[] bytes = str.substring(i2, i).getBytes(Charsets.UTF_8);
                bytes.getClass();
                int length2 = bytes.length;
                for (int i3 = 0; i3 < length2; i3++) {
                    sb.append('%');
                    char[] cArr = hexDigits;
                    sb.append(cArr[(bytes[i3] & 240) >> 4]);
                    sb.append(cArr[bytes[i3] & 15]);
                }
            } catch (Exception e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
                return null;
            }
        }
        StringsKt__StringsJVMKt.decodeToString(new byte[0]);
        return sb != null ? sb.toString() : str;
    }

    public static boolean isAllowed(char c, String str) {
        CharRange charRange = lowercaseAsciiAlphaRange;
        char c2 = charRange.first;
        if (c <= charRange.last && c2 <= c) {
            return true;
        }
        CharRange charRange2 = uppercaseAsciiAlphaRange;
        char c3 = charRange2.first;
        if (c <= charRange2.last && c3 <= c) {
            return true;
        }
        CharRange charRange3 = digitAsciiRange;
        char c4 = charRange3.first;
        if ((c > charRange3.last || c4 > c) && !defaultAllowedSet.contains(Character.valueOf(c))) {
            return (str == null || StringsKt.indexOf$default(str, c, 0, 6) == -1) ? false : true;
        }
        return true;
    }
}
