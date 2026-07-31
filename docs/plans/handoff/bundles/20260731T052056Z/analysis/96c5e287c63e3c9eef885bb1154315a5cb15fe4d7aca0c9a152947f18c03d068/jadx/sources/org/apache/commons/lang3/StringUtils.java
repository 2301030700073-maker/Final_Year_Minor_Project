package org.apache.commons.lang3;

import java.text.Normalizer;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StringUtils {
    public static final Pattern STRIP_ACCENTS_PATTERN = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0045 A[LOOP:0: B:4:0x000a->B:9:0x0045, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean equalsAny(java.lang.String r9, java.lang.CharSequence... r10) {
        /*
            int r0 = java.lang.reflect.Array.getLength(r10)
            r1 = 0
            if (r0 != 0) goto L8
            goto L48
        L8:
            int r0 = r10.length
            r2 = r1
        La:
            if (r2 >= r0) goto L48
            r3 = r10[r2]
            r4 = 1
            if (r9 != r3) goto L13
        L11:
            r3 = r4
            goto L42
        L13:
            if (r9 == 0) goto L22
            if (r3 != 0) goto L18
            goto L22
        L18:
            int r5 = r9.length()
            int r6 = r3.length()
            if (r5 == r6) goto L24
        L22:
            r3 = r1
            goto L42
        L24:
            boolean r5 = r3 instanceof java.lang.String
            if (r5 == 0) goto L2d
            boolean r3 = r9.equals(r3)
            goto L42
        L2d:
            int r5 = r9.length()
            r6 = r1
        L32:
            if (r6 >= r5) goto L11
            char r7 = r9.charAt(r6)
            char r8 = r3.charAt(r6)
            if (r7 == r8) goto L3f
            goto L22
        L3f:
            int r6 = r6 + 1
            goto L32
        L42:
            if (r3 == 0) goto L45
            return r4
        L45:
            int r2 = r2 + 1
            goto La
        L48:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.StringUtils.equalsAny(java.lang.String, java.lang.CharSequence[]):boolean");
    }

    public static String stripAccents(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(Normalizer.normalize(str, Normalizer.Form.NFKD));
        for (int i = 0; i < sb.length(); i++) {
            char charAt = sb.charAt(i);
            if (charAt == 272) {
                sb.setCharAt(i, 'D');
            } else if (charAt == 273) {
                sb.setCharAt(i, 'd');
            } else if (charAt == 321) {
                sb.setCharAt(i, 'L');
            } else if (charAt == 322) {
                sb.setCharAt(i, 'l');
            } else if (charAt == 358) {
                sb.setCharAt(i, 'T');
            } else if (charAt == 359) {
                sb.setCharAt(i, 't');
            } else if (charAt == 407) {
                sb.setCharAt(i, 'I');
            } else if (charAt == 580) {
                sb.setCharAt(i, 'U');
            } else if (charAt == 616) {
                sb.setCharAt(i, 'i');
            } else if (charAt == 649) {
                sb.setCharAt(i, 'u');
            } else if (charAt == 7547) {
                sb.setCharAt(i, 'I');
            } else if (charAt == 7550) {
                sb.setCharAt(i, 'U');
            } else if (charAt == 7588) {
                sb.setCharAt(i, 'i');
            } else if (charAt == 7591) {
                sb.setCharAt(i, 'I');
            } else if (charAt == 7606) {
                sb.setCharAt(i, 'u');
            }
        }
        return STRIP_ACCENTS_PATTERN.matcher(sb).replaceAll("");
    }
}
