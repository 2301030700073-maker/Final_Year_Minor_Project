package com.fsck.k9.helper;

import android.database.Cursor;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Utility {
    public static final Pattern RESPONSE_PATTERN = Pattern.compile("((Re|Fw|Fwd|Aw|R\\u00E9f\\.)(\\[\\d+\\])?[\\u00A0 ]?: *)+", 2);
    public static final Pattern TAG_PATTERN = Pattern.compile("\\[[-_a-z0-9]+\\] ", 2);
    public static final Pattern IMG_PATTERN = Pattern.compile("(?is:<img[^>]+src\\s*=\\s*['\"]?([a-z]+)\\:)");
    public static final Pattern MESSAGE_ID = Pattern.compile("<(?:[a-zA-Z0-9!#$%&'*+\\-/=?^_`{|}~]+(?:\\.[a-zA-Z0-9!#$%&'*+\\-/=?^_`{|}~]+)*|\"(?:[^\\\\\"]|\\\\.)*\")@(?:[a-zA-Z0-9!#$%&'*+\\-/=?^_`{|}~]+(?:\\.[a-zA-Z0-9!#$%&'*+\\-/=?^_`{|}~]+)*|\\[(?:[^\\\\\\]]|\\\\.)*\\])>");

    public static void closeQuietly(Cursor cursor) {
        if (cursor != null) {
            cursor.close();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0081, code lost:
    
        if (r4 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0083, code lost:
    
        r2 = r2 - r4.length();
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x002d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String stripSubject(java.lang.String r10) {
        /*
            java.util.regex.Pattern r0 = com.fsck.k9.helper.Utility.TAG_PATTERN
            java.util.regex.Matcher r0 = r0.matcher(r10)
            r1 = 0
            boolean r2 = r0.find(r1)
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L24
            int r2 = r0.start()
            if (r2 != 0) goto L20
            java.lang.String r4 = r0.group()
            int r2 = r0.end()
            r5 = r3
        L1e:
            r6 = r5
            goto L27
        L20:
            r2 = r1
            r6 = r2
            r5 = r3
            goto L27
        L24:
            r2 = r1
            r5 = r2
            goto L1e
        L27:
            java.util.regex.Pattern r7 = com.fsck.k9.helper.Utility.RESPONSE_PATTERN
            java.util.regex.Matcher r7 = r7.matcher(r10)
        L2d:
            int r8 = r10.length()
            int r8 = r8 - r3
            if (r2 >= r8) goto L7f
            boolean r8 = r7.find(r2)
            if (r8 == 0) goto L7f
            int r8 = r7.start()
            if (r8 != r2) goto L7f
            if (r5 == 0) goto L52
            if (r4 == 0) goto L52
            int r8 = r7.end()
            int r9 = r4.length()
            boolean r8 = r10.regionMatches(r8, r4, r1, r9)
            if (r8 == 0) goto L7f
        L52:
            int r2 = r7.end()
            if (r5 == 0) goto L2d
            if (r4 != 0) goto L6b
            int r6 = r0.start()
            if (r6 != r2) goto L7d
            java.lang.String r4 = r0.group()
            int r6 = r4.length()
        L68:
            int r2 = r2 + r6
            r6 = r3
            goto L2d
        L6b:
            int r6 = r10.length()
            int r6 = r6 - r3
            if (r2 >= r6) goto L7d
            boolean r6 = r10.startsWith(r4, r2)
            if (r6 == 0) goto L7d
            int r6 = r4.length()
            goto L68
        L7d:
            r6 = r1
            goto L2d
        L7f:
            if (r6 == 0) goto L88
            if (r4 == 0) goto L88
            int r0 = r4.length()
            int r2 = r2 - r0
        L88:
            r0 = -1
            if (r2 <= r0) goto L9b
            int r0 = r10.length()
            int r0 = r0 - r3
            if (r2 >= r0) goto L9b
            java.lang.String r10 = r10.substring(r2)
            java.lang.String r10 = r10.trim()
            return r10
        L9b:
            java.lang.String r10 = r10.trim()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.helper.Utility.stripSubject(java.lang.String):java.lang.String");
    }
}
