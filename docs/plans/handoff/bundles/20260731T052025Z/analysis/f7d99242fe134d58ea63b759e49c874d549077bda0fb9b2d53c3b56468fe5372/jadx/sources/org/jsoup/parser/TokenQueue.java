package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TokenQueue {
    public int pos = 0;
    public final String queue;
    public static final String[] ElementSelectorChars = {"*", "|", "_", "-"};
    public static final String[] CssIdentifierChars = {"-", "_"};

    public TokenQueue(String str) {
        Validate.notNull(str);
        this.queue = str;
    }

    public static String unescape(String str) {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        char c = 0;
        for (char c2 : str.toCharArray()) {
            if (c2 != '\\') {
                borrowBuilder.append(c2);
            } else if (c == '\\') {
                borrowBuilder.append(c2);
                c = 0;
            }
            c = c2;
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0071 A[LOOP:0: B:2:0x0009->B:24:0x0071, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055 A[EDGE_INSN: B:25:0x0055->B:26:0x0055 BREAK  A[LOOP:0: B:2:0x0009->B:24:0x0071], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String chompBalanced(char r12, char r13) {
        /*
            r11 = this;
            r0 = -1
            r1 = 0
            r5 = r0
            r6 = r5
            r2 = r1
            r3 = r2
            r4 = r3
            r7 = r4
            r8 = r7
        L9:
            boolean r9 = r11.isEmpty()
            if (r9 == 0) goto L10
            goto L55
        L10:
            char r9 = r11.consume()
            r10 = 92
            if (r2 == r10) goto L42
            r10 = 39
            if (r9 != r10) goto L23
            if (r9 == r12) goto L23
            if (r3 != 0) goto L23
            r4 = r4 ^ 1
            goto L2d
        L23:
            r10 = 34
            if (r9 != r10) goto L2d
            if (r9 == r12) goto L2d
            if (r4 != 0) goto L2d
            r3 = r3 ^ 1
        L2d:
            if (r4 != 0) goto L53
            if (r3 != 0) goto L53
            if (r8 == 0) goto L34
            goto L53
        L34:
            if (r9 != r12) goto L3d
            int r7 = r7 + 1
            if (r5 != r0) goto L4d
            int r5 = r11.pos
            goto L4d
        L3d:
            if (r9 != r13) goto L4d
            int r7 = r7 + (-1)
            goto L4d
        L42:
            r10 = 81
            if (r9 != r10) goto L48
            r8 = 1
            goto L4d
        L48:
            r10 = 69
            if (r9 != r10) goto L4d
            r8 = r1
        L4d:
            if (r7 <= 0) goto L53
            if (r2 == 0) goto L53
            int r6 = r11.pos
        L53:
            if (r7 > 0) goto L71
        L55:
            if (r6 < 0) goto L5e
            java.lang.String r11 = r11.queue
            java.lang.String r11 = r11.substring(r5, r6)
            goto L60
        L5e:
            java.lang.String r11 = ""
        L60:
            if (r7 > 0) goto L63
            return r11
        L63:
            java.lang.String r12 = "Did not find balanced marker at '"
            java.lang.String r13 = "'"
            java.lang.String r11 = androidx.camera.camera2.pipe.CameraDevices$CC.m(r12, r11, r13)
            org.jsoup.helper.ValidationException r12 = new org.jsoup.helper.ValidationException
            r12.<init>(r11)
            throw r12
        L71:
            r2 = r9
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.TokenQueue.chompBalanced(char, char):java.lang.String");
    }

    public final char consume() {
        int i = this.pos;
        this.pos = i + 1;
        return this.queue.charAt(i);
    }

    public final String consumeEscapedCssIdentifier(String... strArr) {
        String str;
        int i = this.pos;
        boolean z = false;
        loop0: while (true) {
            boolean isEmpty = isEmpty();
            str = this.queue;
            if (isEmpty) {
                break;
            }
            if (str.charAt(this.pos) == '\\') {
                int length = str.length();
                int i2 = this.pos;
                if (length - i2 > 1) {
                    this.pos = i2 + 2;
                    z = true;
                }
            }
            if (isEmpty() || !Character.isLetterOrDigit(str.charAt(this.pos))) {
                for (String str2 : strArr) {
                    if (!matches(str2)) {
                    }
                }
                break loop0;
            }
            this.pos++;
        }
        String substring = str.substring(i, this.pos);
        return z ? unescape(substring) : substring;
    }

    public final boolean consumeWhitespace() {
        boolean z = false;
        while (!isEmpty() && StringUtil.isWhitespace(this.queue.charAt(this.pos))) {
            this.pos++;
            z = true;
        }
        return z;
    }

    public final boolean isEmpty() {
        return this.queue.length() - this.pos == 0;
    }

    public final boolean matchChomp(String str) {
        if (!matches(str)) {
            return false;
        }
        this.pos = str.length() + this.pos;
        return true;
    }

    public final boolean matches(String str) {
        return this.queue.regionMatches(true, this.pos, str, 0, str.length());
    }

    public final boolean matchesAny(char... cArr) {
        if (!isEmpty()) {
            for (char c : cArr) {
                if (this.queue.charAt(this.pos) == c) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String remainder() {
        int i = this.pos;
        String str = this.queue;
        String substring = str.substring(i);
        this.pos = str.length();
        return substring;
    }

    public final String toString() {
        return this.queue.substring(this.pos);
    }
}
