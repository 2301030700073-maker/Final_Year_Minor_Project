package net.thunderbird.core.common.mail;

import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TokensKt {
    public static final char[] ATEXT_EXTRA = {'!', '#', '$', '%', '&', '\'', '*', '+', '-', '/', '=', '?', '^', '_', '`', '{', '|', '}', '~'};

    public static final boolean isAtext(char c) {
        if ('A' <= c && c < '[') {
            return true;
        }
        if ('a' > c || c >= '{') {
            return ('0' <= c && c < ':') || ArraysKt___ArraysKt.contains(ATEXT_EXTRA, c);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003d A[LOOP:0: B:10:0x0025->B:15:0x003d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040 A[EDGE_INSN: B:16:0x0040->B:21:0x0040 BREAK  A[LOOP:0: B:10:0x0025->B:15:0x003d], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean isDotString(java.lang.String r6) {
        /*
            int r0 = r6.length()
            r1 = 0
            if (r0 != 0) goto L8
            goto L41
        L8:
            char r0 = r6.charAt(r1)
            r2 = 46
            if (r0 == r2) goto L41
            int r0 = r6.length()
            r3 = 1
            int r0 = r0 - r3
            char r0 = r6.charAt(r0)
            if (r0 != r2) goto L1d
            goto L41
        L1d:
            int r0 = r6.length()
            int r0 = r0 - r3
            if (r0 < 0) goto L40
            r4 = r1
        L25:
            char r5 = r6.charAt(r4)
            if (r5 != r2) goto L34
            int r5 = r4 + (-1)
            char r5 = r6.charAt(r5)
            if (r5 != r2) goto L3b
            goto L41
        L34:
            boolean r5 = isAtext(r5)
            if (r5 != 0) goto L3b
            goto L41
        L3b:
            if (r4 == r0) goto L40
            int r4 = r4 + 1
            goto L25
        L40:
            return r3
        L41:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.common.mail.TokensKt.isDotString(java.lang.String):boolean");
    }

    public static final boolean isQtext(char c) {
        if (' ' <= c && c < '\"') {
            return true;
        }
        if ('#' > c || c >= '\\') {
            return ']' <= c && c < 127;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x008b, code lost:
    
        r0.expect('\"');
        r8 = r8.toString();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static net.thunderbird.core.common.mail.EmailAddress parse(java.lang.String r7, net.thunderbird.core.common.mail.EmailAddressParserConfig r8) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.common.mail.TokensKt.parse(java.lang.String, net.thunderbird.core.common.mail.EmailAddressParserConfig):net.thunderbird.core.common.mail.EmailAddress");
    }

    public static final EmailAddress toEmailAddressOrNull(String str) {
        str.getClass();
        try {
            return parse(str, EmailAddressParserConfig.RELAXED);
        } catch (EmailAddressParserException unused) {
            return null;
        }
    }
}
