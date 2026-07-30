package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.internal.api.AdSizeApi;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: assets/audience_network.dex */
public abstract class Q2 {
    public static byte[] A00;
    public static String[] A01 = {"7StDzEVzZaGlrktQpy4icwf3", "I", "3cp2JV3NqqqI0", "YEXeyEpn3xDQanHXL", "Flp3Qh2JQVd85Qikv3pTxWi5jwEwB1Pa", "u33", "Z9xurGdUnVzS9yB8saF1J325BeaWcoYF", "YWnblh4AgHhjZ1mUFm4d9FR9l3asrr0"};
    public static final ArrayList<Q0> A02;
    public static final Pattern A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static Q1 A04(String str) {
        Matcher matcher = A03.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) AbstractC2011es.A01(matcher.group(1));
        String group = matcher.group(2);
        try {
            return new Q1(Integer.parseInt(str2, 16), group != null ? Integer.parseInt(group) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = (copyOfRange[i4] ^ i3) ^ 4;
            String[] strArr = A01;
            if (strArr[1].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[2] = "xDZ8xdyRoY86j";
            strArr2[3] = "PThezbP1LCy0nQkZm";
            copyOfRange[i4] = (byte) i5;
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{51, 0, 29, 89, 12, 49, 67, 69, 54, 12, 64, 23, 44, 64, 55, 93, 64, 84, 48, 22, 95, 16, 68, 69, 82, 87, 49, 67, 69, 54, 93, 64, 84, 48, 22, 92, 65, 95, 16, 68, 68, 82, 73, 56, 58, 116, 106, 56, 58, 116, 109, 98, 115, 115, 111, 106, 96, 98, 119, 106, 108, 109, 44, 96, 102, 98, 46, 53, 51, 59, 114, 99, 99, Byte.MAX_VALUE, 122, 112, 114, 103, 122, 124, 125, 60, 112, 118, 114, 62, 36, 35, 43, 71, 86, 86, 74, 79, 69, 71, 82, 79, 73, 72, 9, 66, 80, 68, 85, 83, 68, 85, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 105, 100, 51, 80, 65, 65, 93, 88, 82, 80, 69, 88, 94, 95, 30, 65, 86, 66, 111, 126, 126, 98, 103, 109, 111, 122, 103, 97, 96, 33, 122, 122, 99, 98, 37, 118, 99, 98, 98, 115, 115, 111, 106, 96, 98, 119, 106, 108, 109, 44, 117, 108, 97, 112, 118, 97, 76, 93, 93, 65, 68, 78, 76, 89, 68, 66, 67, 2, 85, 0, 78, 76, 64, 72, 95, 76, 0, 64, 66, 89, 68, 66, 67, 36, 53, 53, 41, 44, 38, 36, 49, 44, 42, 43, 106, 61, 104, 32, 40, 54, 34, 125, 108, 108, 112, 117, Byte.MAX_VALUE, 125, 104, 117, 115, 114, 51, 100, 49, 113, 108, 40, 49, Byte.MAX_VALUE, 121, 125, 49, 42, 44, 36, 36, 53, 53, 41, 44, 38, 36, 49, 44, 42, 43, 106, 61, 104, 40, 53, 113, 104, 51, 49, 49, 39, 54, 54, 42, 47, 37, 39, 50, 47, 41, 40, 105, 62, 107, 55, 51, 47, 37, 45, 50, 47, 43, 35, 107, 50, 62, 117, 33, 50, 35, 35, 63, 58, 48, 50, 39, 58, 60, 61, 124, 43, 126, 33, 50, 36, 48, 48, 32, 49, 49, 45, 40, 34, 32, 53, 40, 46, 47, 110, 57, 108, 50, 34, 53, 36, 114, 116, 61, 44, 44, 48, 53, 63, 61, 40, 53, 51, 50, 115, 36, 113, 47, 41, 62, 46, 53, 44, 25, 13, 28, 17, 23, 38, 50, 35, 46, 40, 104, 38, 36, 116, 107, Byte.MAX_VALUE, 110, 99, 101, 37, 107, 105, 62, 112, 100, 117, 120, 126, 62, 116, 112, 114, 34, 67, 87, 70, 75, 77, 13, 71, 67, 65, 17, 15, 72, 77, 65, 106, 126, 111, 98, 100, 36, 109, 103, 106, 104, 88, 76, 93, 80, 86, 22, 94, 14, 8, 8, 20, 88, 85, 88, 78, 12, 24, 9, 4, 2, 66, 10, 90, 92, 92, 64, 0, 1, 12, 26, 6, 18, 3, 14, 8, 72, 10, 15, 6, 86, 40, 60, 45, 32, 38, 102, 36, 33, 36, 120, 52, 32, 49, 60, 58, 122, 56, 37, 102, 119, 99, 114, Byte.MAX_VALUE, 121, 57, 123, 102, 34, 119, 59, 122, 119, 98, 123, 34, 54, 39, 42, 44, 108, 46, 51, 38, 36, 57, 45, 60, 49, 55, 119, 53, 40, 61, 63, 117, 20, 105, 18, 6, 23, 26, 28, 92, 30, 3, 22, 20, 94, 63, 65, 40, 60, 45, 32, 38, 102, 38, 57, 60, 58, 88, 76, 93, 80, 86, 22, 75, 88, 78, 107, Byte.MAX_VALUE, 110, 99, 101, 37, 126, 120, Byte.MAX_VALUE, 111, 39, 98, 110, 58, 46, 63, 50, 52, 116, 45, 53, 63, 117, 63, 47, 40, 24, 12, 29, 16, 22, 86, 15, 23, 29, 87, 29, 13, 10, 87, 17, 29, 6, 18, 3, 14, 8, 72, 17, 9, 3, 73, 3, 19, 20, 73, 15, 3, 92, 23, 21, 8, 1, 14, 11, 2, 90, 11, 5, 21, 1, 21, 4, 9, 15, 79, 22, 14, 4, 78, 4, 20, 19, 78, 21, 8, 4, 91, 16, 18, 15, 6, 9, 12, 5, 93, 16, 82, 53, 33, 48, 61, 59, 123, 34, 59, 38, 54, 61, 39, 10, 30, 15, 2, 4, 68, 28, 10, 29, 16, 4, 21, 24, 30, 94, 9, 92, 23, 29, 16, 18, 11, 31, 14, 3, 5, 69, 18, 71, 29, 11, 28, 18, 5, 67, 66, 63, 40, 61, 111, 22, 1, 20, 68, 27, 29, 25, 78, 72, 64, 35, 37, 33, 119, 112, 120, 75, 71, 76, 77, 75, 120, 90, 77, 78, 65, 80, 6, 3, 1, 81, 90, 95, 93, 10, 73, 72, 78, 30, 99, 115, 116, 100, 3, 19, 20, 2, 41, 57, 62, 37, 91, 75, 76, 83, 24, 8, 15, 4, 21, 7, 16, 64, 112, 98, 117, 98, 95, 77, 83, 10, 71, 85, 75, 70, Byte.MAX_VALUE, 121, 49, 41, 80, 86, 24, 6, 126, 114, 122, 45, 43, 35, 31, 21, 24, 26, 48, 61, 46, 105, 101, 123, 110, 60, 17, 21, 25, 31, 29, 102, 98, 110, 104, 106, 32, 101, Byte.MAX_VALUE, 106, 104, 97, 100, 109, 61, 95, 90, 95, 3, 77, 73, 77, 69, 116, 89, 80, 69, 38, 59, Byte.MAX_VALUE, 42, 104, 117, 49, 100, 43, 56, 39, 34, 36, 52, 51, 55, 55, 114, 99, 126, 114, 25, 8, 21, 25, 66, 27, 25, 25, 121, 102, 107, 106, 96, 26, 5, 8, 9, 3, 67, 13, 26, 92, 93, 86, 73, 68, 69, 79, 15, 65, 86, 67, 82, 77, 64, 65, 75, 11, 64, 75, 72, 70, 93, 9, 82, 77, 87, 77, 75, 74, 84, 75, 70, 71, 77, 13, 74, 71, 84, 65, 64, 95, 82, 83, 89, 25, 91, 70, 2, 64, 27, 83, 69, 80, 79, 66, 67, 73, 9, 75, 86, 67, 65, 125, 98, 111, 110, 100, 36, 102, 123, 110, 108, 57, 125, 98, 111, 110, 100, 36, 124, 125, 104, 58, 29, 2, 15, 14, 4, 68, 19, 70, 29, 5, 15, 69, 4, 5, 89, 69, 29, 27, 83, 65, 94, 83, 82, 88, 24, 79, 26, 65, 89, 83, 25, 88, 89, 5, 25, 65, 71, 14, 49, 40, 53, 37, 46, 52, 104, 110, 46, 38, 89, 95, 31, 22, 48, 
        54, 126, 33, 39, 110, 105, 104, 106, 106};
    }

    static {
        A0B();
        A02 = new ArrayList<>();
        A03 = Pattern.compile(A06(0, 43, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A00(String str) {
        char c;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(A06(387, 14, 38))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1095064472:
                if (str.equals(A06(553, 13, 95))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals(A06(359, 9, 67))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 187078297:
                if (str.equals(A06(368, 9, 14))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                if (str.equals(A06(377, 10, 21))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1505942594:
                if (str.equals(A06(566, 16, 125))) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1556697186:
                if (str.equals(A06(540, 13, 14))) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 5;
            case 1:
                return 6;
            case 2:
                return 18;
            case 3:
                return 17;
            case 4:
                return 7;
            case 5:
                return 8;
            case 6:
                if (A01[5].length() != 3) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[2] = "hKYQTACTdOogv";
                strArr[3] = "jW42kNuSo4nZgs64O";
                return 14;
            default:
                return 0;
        }
    }

    public static int A01(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        boolean A0C = A0C(str);
        String[] strArr = A01;
        if (strArr[1].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[2] = "k6b8HgxG1eJSt";
        strArr2[3] = "sHODvi2HKJy0fWhhW";
        if (A0C) {
            return 1;
        }
        if (A0F(str)) {
            return 2;
        }
        if (A0E(str)) {
            return 3;
        }
        if (A0D(str)) {
            return 4;
        }
        if (A06(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 15, 4).equals(str) || A06(203, 18, 65).equals(str) || A06(314, 20, 69).equals(str)) {
            return 5;
        }
        if (A06(176, 27, 41).equals(str)) {
            return 6;
        }
        return A02(str);
    }

    public static int A02(String str) {
        int customMimeTypeCount = A02.size();
        if (0 < customMimeTypeCount) {
            A02.get(0);
            throw new NullPointerException(A06(814, 8, 36));
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00dc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00e2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00e3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00f3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0011 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00d7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00da A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00db A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A03(java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.Q2.A03(java.lang.String, java.lang.String):int");
    }

    public static String A05(int i) {
        switch (i) {
            case 32:
                return A06(903, 13, 50);
            case 33:
                return A06(866, 9, 36);
            case 35:
                return A06(893, 10, 38);
            case 64:
            case 102:
            case FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT /* 103 */:
            case FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION /* 104 */:
                return A06(470, 15, 18);
            case 96:
            case 97:
            case 98:
            case 99:
            case AdSizeApi.INTERSTITIAL /* 100 */:
            case FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS /* 101 */:
                return A06(926, 11, 15);
            case FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS /* 105 */:
            case FacebookMediationAdapter.ERROR_NULL_CONTEXT /* 107 */:
                return A06(485, 10, 71);
            case FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE /* 106 */:
                return A06(916, 10, 34);
            case FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS /* 108 */:
                return A06(796, 10, 11);
            case 163:
                String[] strArr = A01;
                if (strArr[2].length() == strArr[3].length()) {
                    throw new RuntimeException();
                }
                A01[5] = "b4B";
                return A06(937, 10, 15);
            case 165:
                return A06(359, 9, 67);
            case 166:
                return A06(377, 10, 21);
            case 169:
            case 172:
                return A06(553, 13, 95);
            case 170:
            case 171:
                return A06(566, 16, 125);
            case 173:
                return A06(521, 10, 77);
            case 174:
                return A06(368, 9, 14);
            case 177:
                return A06(966, 19, 51);
            default:
                return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x033a, code lost:
    
        if (r3.startsWith(A06(779, 4, 125)) == false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0346, code lost:
    
        return A06(401, 10, 15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0354, code lost:
    
        if (r3.startsWith(A06(835, 4, 67)) == false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0360, code lost:
    
        return A06(138, 20, 10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x036e, code lost:
    
        if (r3.startsWith(A06(1005, 4, 26)) == false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x037a, code lost:
    
        return A06(843, 8, com.google.ads.mediation.facebook.FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0388, code lost:
    
        if (r3.contains(A06(700, 6, 68)) == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0394, code lost:
    
        return A06(70, 19, 23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x03a2, code lost:
    
        if (r3.contains(A06(773, 6, 31)) != false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x03b1, code lost:
    
        if (r3.contains(A06(694, 6, 124)) == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x03e7, code lost:
    
        return A09(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x03b3, code lost:
    
        r2 = com.facebook.ads.redexgen.core.Q2.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x03c7, code lost:
    
        if (r2[6].charAt(23) == r2[4].charAt(23)) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x03cf, code lost:
    
        r2 = com.facebook.ads.redexgen.core.Q2.A01;
        r2[1] = "c";
        r2[0] = "tteHNcQnKuQyCPrqfUdz6Vqy";
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x03e2, code lost:
    
        return A06(51, 19, 7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02de, code lost:
    
        return A06(566, 16, 125);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0282, code lost:
    
        return A06(368, 9, 14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x023f, code lost:
    
        return A06(377, 10, 21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0216, code lost:
    
        return A06(359, 9, 67);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x015f, code lost:
    
        r3 = A06(947, 19, com.google.ads.mediation.facebook.FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0173, code lost:
    
        if (com.facebook.ads.redexgen.core.Q2.A01[5].length() == 3) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0175, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0176, code lost:
    
        r2 = com.facebook.ads.redexgen.core.Q2.A01;
        r2[1] = "X";
        r2[0] = "yf2k9PeUUEF7EnsRFEpAzt41";
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0182, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0140, code lost:
    
        return A06(966, 19, 51);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x00fb, code lost:
    
        if (r3.startsWith(r4) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c0, code lost:
    
        if (r3.startsWith(r4) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cf, code lost:
    
        if (r3.startsWith(A06(761, 4, 39)) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00de, code lost:
    
        if (r3.startsWith(A06(757, 4, 63)) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x010b, code lost:
    
        if (r3.startsWith(A06(682, 4, 119)) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0117, code lost:
    
        return A06(856, 10, com.google.ads.mediation.facebook.FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0125, code lost:
    
        if (r3.startsWith(A06(com.facebook.ads.AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 3, 83)) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0134, code lost:
    
        if (r3.startsWith(A06(995, 4, 43)) == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x014e, code lost:
    
        if (r3.startsWith(A06(999, 3, 66)) != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x015d, code lost:
    
        if (r3.startsWith(A06(991, 4, 26)) == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0190, code lost:
    
        if (r3.startsWith(A06(822, 4, 79)) == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0192, code lost:
    
        r4 = null;
        r0 = A06(826, 5, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x019f, code lost:
    
        if (r3.startsWith(r0) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01a1, code lost:
    
        r0 = A04(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01a5, code lost:
    
        if (r0 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01a7, code lost:
    
        r4 = A05(r0.A01);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01ad, code lost:
    
        if (r4 != null) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01b9, code lost:
    
        return A06(470, 15, 18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01c7, code lost:
    
        if (r3.startsWith(A06(806, 4, 8)) == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01d3, code lost:
    
        return A06(441, 10, 99);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01e1, code lost:
    
        if (r3.startsWith(A06(810, 4, 54)) == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01ed, code lost:
    
        return A06(451, 10, 77);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01fb, code lost:
    
        if (r3.startsWith(A06(43, 4, 93)) != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x020a, code lost:
    
        if (r3.startsWith(A06(717, 4, 102)) == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0224, code lost:
    
        if (r3.startsWith(A06(769, 4, 49)) != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0233, code lost:
    
        if (r3.startsWith(A06(725, 4, 41)) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x024d, code lost:
    
        if (r3.startsWith(A06(765, 4, 30)) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0259, code lost:
    
        return A06(387, 14, 38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0267, code lost:
    
        if (r3.startsWith(A06(47, 4, 93)) != false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0276, code lost:
    
        if (r3.startsWith(A06(721, 4, 58)) == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x028f, code lost:
    
        if (r3.startsWith(A06(729, 4, 3)) == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x029b, code lost:
    
        return A06(553, 13, 95);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02a9, code lost:
    
        if (r3.startsWith(A06(733, 4, 99)) == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02b5, code lost:
    
        return A06(582, 28, 99);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02c3, code lost:
    
        if (r3.startsWith(A06(737, 4, 73)) != false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02d2, code lost:
    
        if (r3.startsWith(A06(741, 4, 59)) == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02ec, code lost:
    
        if (r3.startsWith(A06(745, 4, 120)) == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02f8, code lost:
    
        return A06(610, 28, 100);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0306, code lost:
    
        if (r3.startsWith(A06(831, 4, 83)) == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0312, code lost:
    
        return A06(521, 10, 77);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0320, code lost:
    
        if (r3.startsWith(A06(985, 6, 67)) == false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x032c, code lost:
    
        return A06(638, 12, 80);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String A07(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 1006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.Q2.A07(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String A08(String str) {
        char c;
        switch (str.hashCode()) {
            case -1007807498:
                if (str.equals(A06(659, 12, 117))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -586683234:
                if (str.equals(A06(671, 11, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 187090231:
                if (str.equals(A06(461, 9, 81))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return A06(401, 10, 15);
            case 1:
                if (A01[7].length() == 15) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[6] = "6sFwrjulZT4VlZzO9Uzh6my59kprzUza";
                strArr[4] = "N4TBYujlx0iv1PS4aPSOtkF54qrUOs3Z";
                return A06(485, 10, 71);
            case 2:
                return A06(650, 9, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
            default:
                return str;
        }
    }

    public static String A09(String str) {
        int customMimeTypeCount = A02.size();
        if (0 < customMimeTypeCount) {
            A02.get(0);
            throw new NullPointerException(A06(706, 11, 44));
        }
        return null;
    }

    public static String A0A(String str) {
        int indexOfSlash;
        if (str == null || (indexOfSlash = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOfSlash);
    }

    public static boolean A0C(String str) {
        return A06(354, 5, 124).equals(A0A(str));
    }

    public static boolean A0D(String str) {
        return A06(791, 5, 124).equals(A0A(str));
    }

    public static boolean A0E(String str) {
        return A06(839, 4, 2).equals(A0A(str)) || A06(51, 19, 7).equals(str) || A06(70, 19, 23).equals(str) || A06(221, 25, 24).equals(str) || A06(334, 20, 88).equals(str) || A06(138, 20, 10).equals(str) || A06(267, 28, 66).equals(str) || A06(246, 21, 65).equals(str) || A06(295, 19, 87).equals(str) || A06(158, 18, 7).equals(str) || A06(123, 15, 53).equals(str) || A06(89, 19, 34).equals(str);
    }

    public static boolean A0F(String str) {
        return A06(851, 5, 11).equals(A0A(str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0129 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0010 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0G(java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.Q2.A0G(java.lang.String, java.lang.String):boolean");
    }
}
