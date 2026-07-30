package com.facebook.ads.redexgen.core;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.facebook.ads.redexgen.X.Xz, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1666Xz {
    public static byte[] A00;
    public static String[] A01 = {"eEHk", "ygOhJn4gwhgM9pR66mJFLHE8jb74qaTG", "SWTMetVjWMGXvvbk4HbXZY7l6nAfW5gw", "kDTk3o3meTC0HRu", "GMMw8R09GyvqwOCNAxdHnqSVewSvsbQS", "nHjkRL0Prd5osTlH9GGbQuiEatOgPQ3G", "seEmdveek1dWIL04QMImsaHPaV43qN1B", "r"};
    public static final Pattern A02;
    public static final Map<String, Integer> A03;
    public static final Map<String, Integer> A04;
    public static final Pattern A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A06(List<C1654Xn> list, String str, C1662Xv c1662Xv) {
        List<C1663Xw> A0E = A0E(list, str, c1662Xv);
        for (int i = 0; i < A0E.size(); i++) {
            C1654Xn c1654Xn = A0E.get(i).A01;
            if (c1654Xn.A07() != -1) {
                return c1654Xn.A07();
            }
        }
        return -1;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static SpannedString A07(String str, String str2, List<C1654Xn> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        int i = 0;
        ArrayList arrayList = new ArrayList();
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            switch (charAt) {
                case '&':
                    int indexOf = str2.indexOf(59, i + 1);
                    int indexOf2 = str2.indexOf(32, i + 1);
                    if (indexOf == -1) {
                        indexOf = indexOf2;
                    } else if (indexOf2 != -1) {
                        indexOf = Math.min(indexOf, indexOf2);
                    }
                    if (indexOf == -1) {
                        spannableStringBuilder.append(charAt);
                        i++;
                        break;
                    } else {
                        A0J(str2.substring(i + 1, indexOf), spannableStringBuilder);
                        if (indexOf == indexOf2) {
                            spannableStringBuilder.append((CharSequence) A0C(1, 1, 17));
                        }
                        i = indexOf + 1;
                        break;
                    }
                case '<':
                    if (i + 1 < str2.length()) {
                        int i2 = i;
                        boolean z = str2.charAt(i2 + 1) == '/';
                        i = A05(str2, i2 + 1);
                        boolean z2 = str2.charAt(i + (-2)) == '/';
                        String substring = str2.substring((z ? 2 : 1) + i2, z2 ? i - 2 : i - 1);
                        if (!substring.trim().isEmpty()) {
                            String A0D = A0D(substring);
                            if (!A0O(A0D)) {
                                break;
                            } else if (!z) {
                                if (!z2) {
                                    arrayDeque.push(C1662Xv.A01(substring, spannableStringBuilder.length()));
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                while (!arrayDeque.isEmpty()) {
                                    C1662Xv c1662Xv = (C1662Xv) arrayDeque.pop();
                                    A0K(str, c1662Xv, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new C1661Xu(c1662Xv, spannableStringBuilder.length()));
                                    }
                                    if (c1662Xv.A01.equals(A0D)) {
                                        break;
                                    }
                                }
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        i++;
                        break;
                    }
                default:
                    spannableStringBuilder.append(charAt);
                    i++;
                    break;
            }
        }
        while (true) {
            boolean isEmpty = arrayDeque.isEmpty();
            if (A01[7].length() == 19) {
                throw new RuntimeException();
            }
            A01[6] = "0PgF5BeDatFZnxwC6wxmb2Fcjflavslz";
            if (isEmpty) {
                A0K(str, C1662Xv.A00(), Collections.emptyList(), spannableStringBuilder, list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
            A0K(str, (C1662Xv) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 29);
        }
        return new String(copyOfRange);
    }

    public static void A0F() {
        A00 = new byte[]{27, 44, 0, 19, 103, 104, 16, 4, 18, 1, 19, 103, 104, 16, 18, 112, 112, 108, 35, 4, 28, 11, 6, 3, 14, 74, 77, 28, 15, 24, 30, 3, 9, 11, 6, 77, 74, 28, 11, 6, 31, 15, 80, 74, 26, 61, 37, 50, 63, 58, 55, 115, 50, 63, 58, 52, 61, 62, 54, 61, 39, 115, 37, 50, 63, 38, 54, 105, 115, 69, 98, 122, 109, 96, 101, 104, 44, 109, 98, 111, 100, 99, 126, 44, 122, 109, 96, 121, 105, 54, 44, 33, 25, 27, 2, 2, 27, 28, 21, 82, 16, 19, 22, 82, 17, 7, 23, 82, 1, 23, 6, 6, 27, 28, 21, 72, 82, 36, 28, 30, 7, 7, 30, 25, 16, 87, 20, 2, 18, 87, 0, 30, 3, 31, 87, 21, 22, 19, 87, 31, 18, 22, 19, 18, 5, 77, 87, 66, 121, 124, 121, 120, 96, 121, 55, 116, 98, 114, 55, 100, 114, 99, 99, 126, 121, 112, 55, 94, 108, 107, Byte.MAX_VALUE, 125, 125, 74, 124, 108, 89, 104, 123, 122, 108, 123, 28, 103, 27, 105, 26, 44, 90, 46, 33, 89, 91, 46, 1, 89, 95, 95, 76, 46, 1, 89, 90, 46, 33, 89, 91, 90, 92, 88, 91, 77, 86, 122, 119, 114, 124, 117, 76, 64, 93, 34, 93, 88, 96, 93, 83, 94, 92, 84, 78, 75, 115, 78, 64, 89, 73, 68, 65, 121, 69, 95, 71, 72, 108, 105, 81, 98, 103, 99, 107, 103, 98, 90, 104, 100, 98, 96, 107, 113, 100, 53, 48, 8, 37, 50, 51, 25, 28, 36, 12, 19, 18, 15, 30, 87, 82, 106, 76, 80, 89, 89, 90, 66, 56, 54, 59, 57, 49, 2, 12, 21, 5, 94, 49, 55, 60, 38, 55, 32, 63, 37, 61, 50, 122, 113, 123, 28, 15, 52, 112, 126, 119, 118, 107, 112, 119, 126, 57, 108, 119, 106, 108, 105, 105, 118, 107, 109, 124, 125, 57, 124, 119, 109, 112, 109, 96, 35, 57, 62, 63, 25, 20, 27, 18, Byte.MAX_VALUE, 118, 117, 103, 96, 101, 97, 105, 95, 90, 93, 86, 13, 8, 15, 4, 76, 13, 4, 7, 21, 27, 30, 25, 18, 90, 5, 30, 16, 31, 3, 41, 55, 90, 66, 99, 111, 105, 107, 96, 122, 111, 1, 5, 8, 8, 0, 9, 119, 123, 106, 105, 71, 88, 68, 94, 67, 94, 88, 89, 21, 2, 3, 4, 31, 17, 30, 2, 5, 27, 121, Byte.MAX_VALUE, 38, 33, 54, 45, 93, 71, 84, 75, 53, 50, 39, 52, 50, 27, 45, 27, 8, 31, 25, 4, 14, 12, 1, 121, 102, 103, 122, 107, 43, 55, 62, 62, 61, 37};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0H(SpannableStringBuilder spannableStringBuilder, String str, C1662Xv c1662Xv, List<C1661Xu> list, List<C1654Xn> list2) {
        Comparator comparator;
        C1662Xv c1662Xv2;
        C1662Xv c1662Xv3;
        C1662Xv c1662Xv4;
        int i;
        int A06 = A06(list2, str, c1662Xv);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        comparator = C1661Xu.A02;
        Collections.sort(arrayList, comparator);
        int i2 = 0;
        int i3 = c1662Xv.A00;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            c1662Xv2 = ((C1661Xu) arrayList.get(i4)).A01;
            if (A0C(415, 2, 22).equals(c1662Xv2.A01)) {
                C1661Xu c1661Xu = (C1661Xu) arrayList.get(i4);
                c1662Xv3 = c1661Xu.A01;
                int A002 = A00(A06(list2, str, c1662Xv3), A06, 1);
                c1662Xv4 = c1661Xu.A01;
                int i5 = c1662Xv4.A00 - i2;
                i = c1661Xu.A00;
                int i6 = i - i2;
                CharSequence subSequence = spannableStringBuilder.subSequence(i5, i6);
                spannableStringBuilder.delete(i5, i6);
                spannableStringBuilder.setSpan(new C1471Qc(subSequence.toString(), A002), i3, i5, 33);
                i2 += subSequence.length();
                i3 = i5;
            }
        }
    }

    static {
        A0F();
        A02 = Pattern.compile(A0C(187, 26, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION));
        A05 = Pattern.compile(A0C(3, 12, 38));
        HashMap hashMap = new HashMap();
        hashMap.put(A0C(440, 5, 19), Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put(A0C(349, 4, 17), Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put(A0C(300, 4, 65), Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put(A0C(405, 3, 122), Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put(A0C(445, 6, 79), Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put(A0C(380, 7, 19), Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put(A0C(289, 4, 125), Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put(A0C(284, 5, 71), Integer.valueOf(Color.rgb(0, 0, 0)));
        Map<String, Integer> defaultColors = Collections.unmodifiableMap(hashMap);
        A04 = defaultColors;
        HashMap hashMap2 = new HashMap();
        hashMap2.put(A0C(267, 8, 102), Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put(A0C(244, 7, 19), Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put(A0C(237, 7, 59), Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put(A0C(261, 6, 74), Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put(A0C(275, 9, 40), Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put(A0C(251, 10, 24), Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put(A0C(230, 7, 49), Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put(A0C(222, 8, 34), Integer.valueOf(Color.rgb(0, 0, 0)));
        Map<String, Integer> defaultBackgroundColors = Collections.unmodifiableMap(hashMap2);
        A03 = defaultBackgroundColors;
    }

    public static int A00(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x009a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0098 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0099 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A01(java.lang.String r7) {
        /*
            int r0 = r7.hashCode()
            r6 = 2
            r5 = 1
            r4 = 0
            switch(r0) {
                case -1364013995: goto L86;
                case -1074341483: goto L75;
                case 100571: goto L65;
                case 109757538: goto L39;
                default: goto La;
            }
        La:
            r0 = -1
        Lb:
            switch(r0) {
                case 0: goto L9a;
                case 1: goto L99;
                case 2: goto L99;
                case 3: goto L98;
                default: goto Le;
            }
        Le:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 69
            r1 = 22
            r0 = 17
            java.lang.String r0 = A0C(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r7)
            java.lang.String r3 = r0.toString()
            r2 = 167(0xa7, float:2.34E-43)
            r1 = 15
            r0 = 20
            java.lang.String r0 = A0C(r2, r1, r0)
            com.facebook.ads.redexgen.core.AbstractC2055fb.A07(r0, r3)
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            return r0
        L39:
            r2 = 425(0x1a9, float:5.96E-43)
            r1 = 5
            r0 = 91
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r3 = r7.equals(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.AbstractC1666Xz.A01
            r0 = 6
            r1 = r1[r0]
            r0 = 6
            char r1 = r1.charAt(r0)
            r0 = 101(0x65, float:1.42E-43)
            if (r1 == r0) goto L5a
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L5a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.AbstractC1666Xz.A01
            java.lang.String r1 = "xY9JAjZyRY1gGTbWC"
            r0 = 0
            r2[r0] = r1
            if (r3 == 0) goto La
            r0 = 0
            goto Lb
        L65:
            r2 = 304(0x130, float:4.26E-43)
            r1 = 3
            r0 = 2
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto La
            r0 = 3
            goto Lb
        L75:
            r2 = 387(0x183, float:5.42E-43)
            r1 = 6
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto La
            r0 = 2
            goto Lb
        L86:
            r2 = 294(0x126, float:4.12E-43)
            r1 = 6
            r0 = 79
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto La
            r0 = 1
            goto Lb
        L98:
            return r6
        L99:
            return r5
        L9a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.AbstractC1666Xz.A01(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00be A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00bd A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A02(java.lang.String r8) {
        /*
            int r0 = r8.hashCode()
            r7 = 2
            r6 = 1
            r5 = 0
            switch(r0) {
                case -1842484672: goto La9;
                case -1364013995: goto L97;
                case -1276788989: goto L84;
                case -1074341483: goto L73;
                case 100571: goto L4a;
                case 109757538: goto L39;
                default: goto La;
            }
        La:
            r0 = -1
        Lb:
            switch(r0) {
                case 0: goto Lbe;
                case 1: goto Lbe;
                case 2: goto Lbd;
                case 3: goto Lbd;
                case 4: goto Lbc;
                case 5: goto Lbc;
                default: goto Le;
            }
        Le:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 69
            r1 = 22
            r0 = 17
            java.lang.String r0 = A0C(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r8)
            java.lang.String r3 = r0.toString()
            r2 = 167(0xa7, float:2.34E-43)
            r1 = 15
            r0 = 20
            java.lang.String r0 = A0C(r2, r1, r0)
            com.facebook.ads.redexgen.core.AbstractC2055fb.A07(r0, r3)
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            return r0
        L39:
            r2 = 425(0x1a9, float:5.96E-43)
            r1 = 5
            r0 = 91
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto La
            r0 = 1
            goto Lb
        L4a:
            r4 = 304(0x130, float:4.26E-43)
            r3 = 3
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.AbstractC1666Xz.A01
            r0 = 2
            r1 = r2[r0]
            r0 = 3
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto Lbf
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.AbstractC1666Xz.A01
            java.lang.String r1 = "5rvXLqkgrfEaUjvAjlSxl5wMf"
            r0 = 7
            r2[r0] = r1
            r0 = 2
            java.lang.String r0 = A0C(r4, r3, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto La
            r0 = 5
            goto Lb
        L73:
            r2 = 387(0x183, float:5.42E-43)
            r1 = 6
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto La
            r0 = 3
            goto Lb
        L84:
            r2 = 366(0x16e, float:5.13E-43)
            r1 = 10
            r0 = 106(0x6a, float:1.49E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto La
            r0 = 4
            goto Lb
        L97:
            r2 = 294(0x126, float:4.12E-43)
            r1 = 6
            r0 = 79
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto La
            r0 = 2
            goto Lb
        La9:
            r2 = 357(0x165, float:5.0E-43)
            r1 = 9
            r0 = 124(0x7c, float:1.74E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto La
            r0 = 0
            goto Lb
        Lbc:
            return r7
        Lbd:
            return r6
        Lbe:
            return r5
        Lbf:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.AbstractC1666Xz.A02(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A03(String str) {
        char c;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(A0C(294, 6, 79))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1074341483:
                if (str.equals(A0C(387, 6, 113))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 100571:
                if (str.equals(A0C(304, 3, 2))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3317767:
                if (str.equals(A0C(345, 4, 14))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 108511772:
                if (str.equals(A0C(408, 5, FacebookMediationAdapter.ERROR_NULL_CONTEXT))) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (str.equals(A0C(425, 5, 91))) {
                    c = 0;
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
                return 1;
            case 1:
                return 4;
            case 2:
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
            default:
                AbstractC2055fb.A07(A0C(167, 15, 20), A0C(44, 25, 78) + str);
                return 2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A04(String str) {
        char c;
        switch (str.hashCode()) {
            case 3462:
                if (str.equals(A0C(376, 2, 88))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3642:
                if (str.equals(A0C(413, 2, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE))) {
                    c = 0;
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
                return 1;
            case 1:
                return 2;
            default:
                AbstractC2055fb.A07(A0C(167, 15, 20), A0C(18, 26, 119) + str);
                return Integer.MIN_VALUE;
        }
    }

    public static int A05(String str, int i) {
        int indexOf = str.indexOf(62, i);
        if (indexOf == -1) {
            int index = str.length();
            return index;
        }
        int index2 = indexOf + 1;
        return index2;
    }

    public static C1658Xr A08(C2070fq c2070fq, List<C1654Xn> list) {
        String A0T = c2070fq.A0T();
        if (A0T == null) {
            return null;
        }
        Matcher matcher = A02.matcher(A0T);
        if (A01[1].charAt(15) == '6') {
            A01[1] = "5Ft19vFhd6FDY0w6LCtGNSBk2kXgcVxq";
            if (matcher.matches()) {
                return A09(null, matcher, c2070fq, list);
            }
            String A0T2 = c2070fq.A0T();
            String firstLine = A01[0];
            if (firstLine.length() != 10) {
                A01[0] = "N";
                if (A0T2 == null) {
                    return null;
                }
                Matcher matcher2 = A02.matcher(A0T2);
                if (!matcher2.matches()) {
                    return null;
                }
                String firstLine2 = A0T.trim();
                return A09(firstLine2, matcher2, c2070fq, list);
            }
        }
        throw new RuntimeException();
    }

    public static C1658Xr A09(String str, Matcher matcher, C2070fq c2070fq, List<C1654Xn> list) {
        C1665Xy c1665Xy = new C1665Xy();
        try {
            c1665Xy.A09 = Y0.A01((String) AbstractC2011es.A01(matcher.group(1)));
            c1665Xy.A08 = Y0.A01((String) AbstractC2011es.A01(matcher.group(2)));
            A0L((String) AbstractC2011es.A01(matcher.group(3)), c1665Xy);
            StringBuilder sb = new StringBuilder();
            String A0T = c2070fq.A0T();
            while (!TextUtils.isEmpty(A0T)) {
                if (sb.length() > 0) {
                    sb.append(A0C(0, 1, 12));
                }
                sb.append(A0T.trim());
                A0T = c2070fq.A0T();
            }
            c1665Xy.A0A = A07(str, sb.toString(), list);
            return c1665Xy.A07();
        } catch (NumberFormatException unused) {
            AbstractC2055fb.A07(A0C(167, 15, 20), A0C(117, 30, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE) + matcher.group());
            return null;
        }
    }

    public static C1868cY A0A(String str) {
        C1665Xy builder = new C1665Xy();
        A0L(str, builder);
        return builder.A08();
    }

    public static C1476Qh A0B(CharSequence charSequence) {
        C1665Xy infoBuilder = new C1665Xy();
        infoBuilder.A0A = charSequence;
        return infoBuilder.A08().A0H();
    }

    public static String A0D(String str) {
        String trim = str.trim();
        AbstractC2011es.A07(!trim.isEmpty());
        return AbstractC2094gE.A1P(trim, A0C(182, 5, 90))[0];
    }

    public static List<C1663Xw> A0E(List<C1654Xn> list, String str, C1662Xv c1662Xv) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            C1654Xn c1654Xn = list.get(i);
            int i2 = c1654Xn.A09(str, c1662Xv.A01, c1662Xv.A03, c1662Xv.A02);
            if (i2 > 0) {
                arrayList.add(new C1663Xw(i2, c1654Xn));
            }
        }
        Collections.sort(arrayList);
        if (A01[1].charAt(15) != '6') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[5] = "jno2Jg06ahIxx4HH69mV0ZThEPzyhJ91";
        strArr[4] = "OKW2X00AiPItgC6saRqupgXKGg6PccDV";
        return arrayList;
    }

    public static void A0G(SpannableStringBuilder spannableStringBuilder, C1654Xn c1654Xn, int i, int i2) {
        if (c1654Xn == null) {
            return;
        }
        if (c1654Xn.A08() != -1) {
            AbstractC1874ce.A00(spannableStringBuilder, new StyleSpan(c1654Xn.A08()), i, i2, 33);
        }
        if (c1654Xn.A0S()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (c1654Xn.A0T()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (c1654Xn.A0R()) {
            AbstractC1874ce.A00(spannableStringBuilder, new ForegroundColorSpan(c1654Xn.A05()), i, i2, 33);
        }
        boolean A0Q = c1654Xn.A0Q();
        if (A01[0].length() != 10) {
            A01[0] = "NratlLA6o";
            if (A0Q) {
                AbstractC1874ce.A00(spannableStringBuilder, new BackgroundColorSpan(c1654Xn.A04()), i, i2, 33);
            }
            if (c1654Xn.A0K() != null) {
                AbstractC1874ce.A00(spannableStringBuilder, new TypefaceSpan(c1654Xn.A0K()), i, i2, 33);
            }
            switch (c1654Xn.A06()) {
                case 1:
                    AbstractC1874ce.A00(spannableStringBuilder, new AbsoluteSizeSpan((int) c1654Xn.A03(), true), i, i2, 33);
                    break;
                case 2:
                    AbstractC1874ce.A00(spannableStringBuilder, new RelativeSizeSpan(c1654Xn.A03()), i, i2, 33);
                    break;
                case 3:
                    AbstractC1874ce.A00(spannableStringBuilder, new RelativeSizeSpan(c1654Xn.A03() / 100.0f), i, i2, 33);
                    break;
            }
            if (c1654Xn.A0P()) {
                spannableStringBuilder.setSpan(new C1472Qd(), i, i2, 33);
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    public static void A0I(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i, int i2) {
        for (String className : set) {
            if (A04.containsKey(className)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(A04.get(className).intValue()), i, i2, 33);
            } else if (A03.containsKey(className)) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(A03.get(className).intValue()), i, i2, 33);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void A0J(String str, SpannableStringBuilder spannableStringBuilder) {
        char c;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals(A0C(307, 2, 102))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3464:
                if (str.equals(A0C(378, 2, 43))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 96708:
                if (str.equals(A0C(218, 3, 48))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3374865:
                if (str.equals(A0C(393, 4, 4))) {
                    c = 2;
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
                spannableStringBuilder.append('<');
                break;
            case 1:
                spannableStringBuilder.append('>');
                break;
            case 2:
                spannableStringBuilder.append(' ');
                break;
            case 3:
                spannableStringBuilder.append('&');
                break;
            default:
                AbstractC2055fb.A07(A0C(167, 15, 20), A0C(310, 31, 4) + str + A0C(16, 2, 86));
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Incorrect condition in loop: B:19:0x00ee */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0K(java.lang.String r9, com.facebook.ads.redexgen.core.C1662Xv r10, java.util.List<com.facebook.ads.redexgen.core.C1661Xu> r11, android.text.SpannableStringBuilder r12, java.util.List<com.facebook.ads.redexgen.core.C1654Xn> r13) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.AbstractC1666Xz.A0K(java.lang.String, com.facebook.ads.redexgen.X.Xv, java.util.List, android.text.SpannableStringBuilder, java.util.List):void");
    }

    public static void A0L(String str, C1665Xy c1665Xy) {
        String name = A0C(167, 15, 20);
        Matcher matcher = A05.matcher(str);
        while (matcher.find()) {
            String str2 = (String) AbstractC2011es.A01(matcher.group(1));
            String str3 = (String) AbstractC2011es.A01(matcher.group(2));
            try {
                if (A0C(353, 4, 46).equals(str2)) {
                    A0M(str3, c1665Xy);
                } else if (A0C(213, 5, 6).equals(str2)) {
                    c1665Xy.A06 = A03(str3);
                } else if (A0C(397, 8, 42).equals(str2)) {
                    A0N(str3, c1665Xy);
                } else if (A0C(421, 4, 51).equals(str2)) {
                    c1665Xy.A02 = Y0.A00(str3);
                } else if (A0C(432, 8, 112).equals(str2)) {
                    c1665Xy.A07 = A04(str3);
                } else {
                    AbstractC2055fb.A07(name, A0C(147, 20, 10) + str2 + A0C(15, 1, 87) + str3);
                }
            } catch (NumberFormatException unused) {
                AbstractC2055fb.A07(name, A0C(91, 26, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION) + matcher.group());
            }
        }
    }

    public static void A0M(String str, C1665Xy c1665Xy) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            int commaIndex = indexOf + 1;
            c1665Xy.A03 = A01(str.substring(commaIndex));
            str = str.substring(0, indexOf);
        }
        if (str.endsWith(A0C(2, 1, 56))) {
            float A002 = Y0.A00(str);
            if (A01[1].charAt(15) != '6') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[2] = "RaiSszSRRKf8njehoETRLL5obseuriYt";
            strArr[3] = "MxAaWh4BXlB3WfP";
            c1665Xy.A00 = A002;
            c1665Xy.A04 = 0;
            return;
        }
        int commaIndex2 = Integer.parseInt(str);
        c1665Xy.A00 = commaIndex2;
        if (A01[1].charAt(15) != '6') {
            c1665Xy.A04 = 1;
            return;
        }
        String[] strArr2 = A01;
        strArr2[2] = "199UenBBObik8ecpBas0Ux8CeW7wk8Fz";
        strArr2[3] = "OpVrY9ibNUeEmPb";
        c1665Xy.A04 = 1;
    }

    public static void A0N(String str, C1665Xy c1665Xy) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            int commaIndex = indexOf + 1;
            c1665Xy.A05 = A02(str.substring(commaIndex));
            str = str.substring(0, indexOf);
        }
        c1665Xy.A01 = Y0.A00(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean A0O(String str) {
        char c;
        switch (str.hashCode()) {
            case 98:
                if (str.equals(A0C(221, 1, 93))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 99:
                if (str.equals(A0C(293, 1, 32))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS /* 105 */:
                if (str.equals(A0C(309, 1, 64))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 117:
                if (str.equals(A0C(430, 1, 115))) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 118:
                if (str.equals(A0C(431, 1, 70))) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 3650:
                if (str.equals(A0C(415, 2, 22))) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3314158:
                if (str.equals(A0C(FacebookRequestErrorClassification.EC_TOO_MANY_USER_ACTION_CALLS, 4, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3511770:
                if (str.equals(A0C(417, 4, 73))) {
                    c = 4;
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
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }
}
