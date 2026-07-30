package com.android.vcard;

import android.telephony.PhoneNumberUtils;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class VCardUtils {
    private static final int[] sEscapeIndicatorsV30;
    private static final int[] sEscapeIndicatorsV40;
    private static final Map<Integer, String> sKnownImPropNameMap_ItoS;
    private static final Set<String> sMobilePhoneLabelSet;
    private static final Set<String> sPhoneTypesUnknownToContactsSet;
    private static final Set<Character> sUnAcceptableAsciiInV21WordSet;
    private static final Map<Integer, String> sKnownPhoneTypesMap_ItoS = new HashMap();
    private static final Map<String, Integer> sKnownPhoneTypeMap_StoI = new HashMap();

    private static class DecoderException extends Exception {
        public DecoderException(String str) {
            super(str);
        }
    }

    private static class QuotedPrintableCodecPort {
        private static byte ESCAPE_CHAR = 61;

        public static final byte[] decodeQuotedPrintable(byte[] bArr) throws DecoderException {
            if (bArr == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i = 0;
            while (i < bArr.length) {
                byte b = bArr[i];
                if (b == ESCAPE_CHAR) {
                    int i2 = i + 1;
                    try {
                        int digit = Character.digit((char) bArr[i2], 16);
                        i = i2 + 1;
                        int digit2 = Character.digit((char) bArr[i], 16);
                        if (digit == -1 || digit2 == -1) {
                            throw new DecoderException("Invalid quoted-printable encoding");
                        }
                        byteArrayOutputStream.write((char) ((digit << 4) + digit2));
                    } catch (ArrayIndexOutOfBoundsException unused) {
                        throw new DecoderException("Invalid quoted-printable encoding");
                    }
                } else {
                    byteArrayOutputStream.write(b);
                }
                i++;
            }
            return byteArrayOutputStream.toByteArray();
        }
    }

    public static class PhoneNumberUtilsPort {
        public static String formatNumber(String str, int i) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            PhoneNumberUtils.formatNumber(spannableStringBuilder, i);
            return spannableStringBuilder.toString();
        }
    }

    public static class TextUtilsPort {
        public static boolean isPrintableAscii(char c) {
            return (' ' <= c && c <= '~') || c == '\r' || c == '\n';
        }

        public static boolean isPrintableAsciiOnly(CharSequence charSequence) {
            int length = charSequence.length();
            for (int i = 0; i < length; i++) {
                if (!isPrintableAscii(charSequence.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    }

    static {
        sKnownPhoneTypesMap_ItoS.put(9, "CAR");
        sKnownPhoneTypeMap_StoI.put("CAR", 9);
        sKnownPhoneTypesMap_ItoS.put(6, "PAGER");
        sKnownPhoneTypeMap_StoI.put("PAGER", 6);
        sKnownPhoneTypesMap_ItoS.put(11, "ISDN");
        sKnownPhoneTypeMap_StoI.put("ISDN", 11);
        sKnownPhoneTypeMap_StoI.put("HOME", 1);
        sKnownPhoneTypeMap_StoI.put("WORK", 3);
        sKnownPhoneTypeMap_StoI.put("CELL", 2);
        sKnownPhoneTypeMap_StoI.put("OTHER", 7);
        sKnownPhoneTypeMap_StoI.put("CALLBACK", 8);
        sKnownPhoneTypeMap_StoI.put("COMPANY-MAIN", 10);
        sKnownPhoneTypeMap_StoI.put("RADIO", 14);
        sKnownPhoneTypeMap_StoI.put("TTY-TDD", 16);
        sKnownPhoneTypeMap_StoI.put("ASSISTANT", 19);
        sKnownPhoneTypeMap_StoI.put("VOICE", 7);
        HashSet hashSet = new HashSet();
        sPhoneTypesUnknownToContactsSet = hashSet;
        hashSet.add("MODEM");
        sPhoneTypesUnknownToContactsSet.add("MSG");
        sPhoneTypesUnknownToContactsSet.add("BBS");
        sPhoneTypesUnknownToContactsSet.add("VIDEO");
        HashMap hashMap = new HashMap();
        sKnownImPropNameMap_ItoS = hashMap;
        hashMap.put(0, "X-AIM");
        sKnownImPropNameMap_ItoS.put(1, "X-MSN");
        sKnownImPropNameMap_ItoS.put(2, "X-YAHOO");
        sKnownImPropNameMap_ItoS.put(3, "X-SKYPE-USERNAME");
        sKnownImPropNameMap_ItoS.put(5, "X-GOOGLE-TALK");
        sKnownImPropNameMap_ItoS.put(6, "X-ICQ");
        sKnownImPropNameMap_ItoS.put(7, "X-JABBER");
        sKnownImPropNameMap_ItoS.put(4, "X-QQ");
        sKnownImPropNameMap_ItoS.put(8, "X-NETMEETING");
        sMobilePhoneLabelSet = new HashSet(Arrays.asList("MOBILE", "携帯電話", "携帯", "ケイタイ", "ｹｲﾀｲ"));
        sUnAcceptableAsciiInV21WordSet = new HashSet(Arrays.asList('[', ']', '=', ':', '.', ',', ' '));
        sEscapeIndicatorsV30 = new int[]{58, 59, 44, 32};
        sEscapeIndicatorsV40 = new int[]{59, 58};
    }

    public static String getPhoneTypeString(Integer num) {
        return sKnownPhoneTypesMap_ItoS.get(num);
    }

    public static Object getPhoneTypeFromStrings(Collection<String> collection, String str) {
        boolean z;
        if (str == null) {
            str = "";
        }
        int i = -1;
        String str2 = null;
        boolean z2 = false;
        if (collection != null) {
            Iterator<String> it = collection.iterator();
            z = false;
            boolean z3 = false;
            while (it.hasNext()) {
                String next = it.next();
                if (next != null) {
                    String upperCase = next.toUpperCase();
                    if (upperCase.equals("PREF")) {
                        z3 = true;
                    } else if (upperCase.equals("FAX")) {
                        z = true;
                    } else {
                        if (upperCase.startsWith("X-") && i < 0) {
                            next = next.substring(2);
                        }
                        if (next.length() != 0) {
                            Integer num = sKnownPhoneTypeMap_StoI.get(next.toUpperCase());
                            if (num != null) {
                                int intValue = num.intValue();
                                int indexOf = str.indexOf("@");
                                if ((intValue == 6 && indexOf > 0 && indexOf < str.length() - 1) || i < 0 || i == 0 || i == 7) {
                                    i = num.intValue();
                                }
                            } else if (i < 0) {
                                str2 = next;
                                i = 0;
                            }
                        }
                    }
                }
            }
            z2 = z3;
        } else {
            z = false;
        }
        if (i < 0) {
            i = z2 ? 12 : 1;
        }
        if (z) {
            if (i == 1) {
                i = 5;
            } else if (i == 3) {
                i = 4;
            } else if (i == 7) {
                i = 13;
            }
        }
        return i == 0 ? str2 : Integer.valueOf(i);
    }

    public static boolean isMobilePhoneLabel(String str) {
        return "_AUTO_CELL".equals(str) || sMobilePhoneLabelSet.contains(str);
    }

    public static boolean isValidInV21ButUnknownToContactsPhoteType(String str) {
        return sPhoneTypesUnknownToContactsSet.contains(str);
    }

    public static String getPropertyNameForIm(int i) {
        return sKnownImPropNameMap_ItoS.get(Integer.valueOf(i));
    }

    public static String[] sortNameElements(int i, String str, String str2, String str3) {
        String[] strArr = new String[3];
        int nameOrderType = VCardConfig.getNameOrderType(i);
        if (nameOrderType == 4) {
            strArr[0] = str2;
            strArr[1] = str3;
            strArr[2] = str;
        } else if (nameOrderType != 8) {
            strArr[0] = str3;
            strArr[1] = str2;
            strArr[2] = str;
        } else if (containsOnlyPrintableAscii(str) && containsOnlyPrintableAscii(str3)) {
            strArr[0] = str3;
            strArr[1] = str2;
            strArr[2] = str;
        } else {
            strArr[0] = str;
            strArr[1] = str2;
            strArr[2] = str3;
        }
        return strArr;
    }

    public static int getPhoneNumberFormat(int i) {
        return VCardConfig.isJapaneseDevice(i) ? 2 : 1;
    }

    public static String constructNameFromElements(int i, String str, String str2, String str3) {
        return constructNameFromElements(i, str, str2, str3, null, null);
    }

    public static String constructNameFromElements(int i, String str, String str2, String str3, String str4, String str5) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        String[] sortNameElements = sortNameElements(i, str, str2, str3);
        if (TextUtils.isEmpty(str4)) {
            z = true;
        } else {
            sb.append(str4);
            z = false;
        }
        for (String str6 : sortNameElements) {
            if (!TextUtils.isEmpty(str6)) {
                if (z) {
                    z = false;
                } else {
                    sb.append(' ');
                }
                sb.append(str6);
            }
        }
        if (!TextUtils.isEmpty(str5)) {
            if (!z) {
                sb.append(' ');
            }
            sb.append(str5);
        }
        return sb.toString();
    }

    public static List<String> constructListFromValue(String str, int i) {
        String unescapeCharacter;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == '\\' && i2 < length - 1) {
                int i3 = i2 + 1;
                char charAt2 = str.charAt(i3);
                if (VCardConfig.isVersion40(i)) {
                    unescapeCharacter = VCardParserImpl_V40.unescapeCharacter(charAt2);
                } else if (VCardConfig.isVersion30(i)) {
                    unescapeCharacter = VCardParserImpl_V30.unescapeCharacter(charAt2);
                } else {
                    if (!VCardConfig.isVersion21(i)) {
                        Log.w("vCard", "Unknown vCard type");
                    }
                    unescapeCharacter = VCardParserImpl_V21.unescapeCharacter(charAt2);
                }
                if (unescapeCharacter != null) {
                    sb.append(unescapeCharacter);
                    i2 = i3;
                } else {
                    sb.append(charAt);
                }
            } else if (charAt == ';') {
                arrayList.add(sb.toString());
                sb = new StringBuilder();
            } else {
                sb.append(charAt);
            }
            i2++;
        }
        arrayList.add(sb.toString());
        return arrayList;
    }

    public static boolean containsOnlyPrintableAscii(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return containsOnlyPrintableAscii(Arrays.asList(strArr));
    }

    public static boolean containsOnlyPrintableAscii(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (String str : collection) {
            if (!TextUtils.isEmpty(str) && !TextUtilsPort.isPrintableAsciiOnly(str)) {
                return false;
            }
        }
        return true;
    }

    public static boolean containsOnlyNonCrLfPrintableAscii(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return containsOnlyNonCrLfPrintableAscii(Arrays.asList(strArr));
    }

    public static boolean containsOnlyNonCrLfPrintableAscii(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (String str : collection) {
            if (!TextUtils.isEmpty(str)) {
                int length = str.length();
                for (int i = 0; i < length; i = str.offsetByCodePoints(i, 1)) {
                    int codePointAt = str.codePointAt(i);
                    if (32 > codePointAt || codePointAt > 126) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean containsOnlyAlphaDigitHyphen(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return containsOnlyAlphaDigitHyphen(Arrays.asList(strArr));
    }

    public static boolean containsOnlyAlphaDigitHyphen(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (String str : collection) {
            if (!TextUtils.isEmpty(str)) {
                int length = str.length();
                for (int i = 0; i < length; i = str.offsetByCodePoints(i, 1)) {
                    int codePointAt = str.codePointAt(i);
                    if ((97 > codePointAt || codePointAt >= 123) && ((65 > codePointAt || codePointAt >= 91) && ((48 > codePointAt || codePointAt >= 58) && codePointAt != 45))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean containsOnlyWhiteSpaces(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return containsOnlyWhiteSpaces(Arrays.asList(strArr));
    }

    public static boolean containsOnlyWhiteSpaces(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (String str : collection) {
            if (!TextUtils.isEmpty(str)) {
                int length = str.length();
                for (int i = 0; i < length; i = str.offsetByCodePoints(i, 1)) {
                    if (!Character.isWhitespace(str.codePointAt(i))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean isV21Word(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (32 > codePointAt || codePointAt > 126 || sUnAcceptableAsciiInV21WordSet.contains(Character.valueOf((char) codePointAt))) {
                return false;
            }
            i = str.offsetByCodePoints(i, 1);
        }
        return true;
    }

    public static String toStringAsV30ParamValue(String str) {
        return toStringAsParamValue(str, sEscapeIndicatorsV30);
    }

    public static String toStringAsV40ParamValue(String str) {
        return toStringAsParamValue(str, sEscapeIndicatorsV40);
    }

    private static String toStringAsParamValue(String str, int[] iArr) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        boolean z = false;
        for (int i = 0; i < length; i = str.offsetByCodePoints(i, 1)) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt >= 32 && codePointAt != 34) {
                sb.appendCodePoint(codePointAt);
                int length2 = iArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length2) {
                        break;
                    }
                    if (codePointAt == iArr[i2]) {
                        z = true;
                        break;
                    }
                    i2++;
                }
            }
        }
        String sb2 = sb.toString();
        if (sb2.isEmpty() || containsOnlyWhiteSpaces(sb2)) {
            return "";
        }
        if (!z) {
            return sb2;
        }
        return '\"' + sb2 + '\"';
    }

    public static String toHalfWidthString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            String tryGetHalfWidthText = JapaneseUtils.tryGetHalfWidthText(charAt);
            if (tryGetHalfWidthText != null) {
                sb.append(tryGetHalfWidthText);
            } else {
                sb.append(charAt);
            }
            i = str.offsetByCodePoints(i, 1);
        }
        return sb.toString();
    }

    public static String guessImageType(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length >= 3 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70) {
            return "GIF";
        }
        if (bArr.length >= 4 && bArr[0] == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71) {
            return "PNG";
        }
        if (bArr.length >= 2 && bArr[0] == -1 && bArr[1] == -40) {
            return "JPEG";
        }
        return null;
    }

    public static boolean areAllEmpty(String... strArr) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                return false;
            }
        }
        return true;
    }

    public static boolean appearsLikeAndroidVCardQuotedPrintable(String str) {
        int length = str.length() % 3;
        if (str.length() < 2 || !(length == 1 || length == 0)) {
            return false;
        }
        for (int i = 0; i < str.length(); i += 3) {
            if (str.charAt(i) != '=') {
                return false;
            }
        }
        return true;
    }

    public static String parseQuotedPrintable(String str, boolean z, String str2, String str3) {
        String[] strArr;
        byte[] bytes;
        int i;
        char charAt;
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt2 = str.charAt(i2);
            if (charAt2 == '=' && i2 < length - 1 && ((charAt = str.charAt((i = i2 + 1))) == ' ' || charAt == '\t')) {
                sb.append(charAt);
                i2 = i;
            } else {
                sb.append(charAt2);
            }
            i2++;
        }
        String sb2 = sb.toString();
        if (z) {
            strArr = sb2.split("\r\n");
        } else {
            StringBuilder sb3 = new StringBuilder();
            int length2 = sb2.length();
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            while (i3 < length2) {
                char charAt3 = sb2.charAt(i3);
                if (charAt3 == '\n') {
                    arrayList.add(sb3.toString());
                    sb3 = new StringBuilder();
                } else if (charAt3 == '\r') {
                    arrayList.add(sb3.toString());
                    sb3 = new StringBuilder();
                    if (i3 < length2 - 1) {
                        int i4 = i3 + 1;
                        if (sb2.charAt(i4) == '\n') {
                            i3 = i4;
                        }
                    }
                } else {
                    sb3.append(charAt3);
                }
                i3++;
            }
            String sb4 = sb3.toString();
            if (sb4.length() > 0) {
                arrayList.add(sb4);
            }
            strArr = (String[]) arrayList.toArray(new String[0]);
        }
        StringBuilder sb5 = new StringBuilder();
        for (String str4 : strArr) {
            if (str4.endsWith("=")) {
                str4 = str4.substring(0, str4.length() - 1);
            }
            sb5.append(str4);
        }
        String sb6 = sb5.toString();
        if (TextUtils.isEmpty(sb6)) {
            Log.w("vCard", "Given raw string is empty.");
        }
        try {
            bytes = sb6.getBytes(str2);
        } catch (UnsupportedEncodingException unused) {
            Log.w("vCard", "Failed to decode: " + str2);
            bytes = sb6.getBytes();
        }
        try {
            bytes = QuotedPrintableCodecPort.decodeQuotedPrintable(bytes);
        } catch (DecoderException unused2) {
            Log.e("vCard", "DecoderException is thrown.");
        }
        try {
            return new String(bytes, str3);
        } catch (UnsupportedEncodingException unused3) {
            Log.e("vCard", "Failed to encode: charset=" + str3);
            return new String(bytes);
        }
    }

    public static final String convertStringCharset(String str, String str2, String str3) {
        if (str2.equalsIgnoreCase(str3)) {
            return str;
        }
        ByteBuffer encode = Charset.forName(str2).encode(str);
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        try {
            return new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            Log.e("vCard", "Failed to encode: charset=" + str3);
            return null;
        }
    }
}
