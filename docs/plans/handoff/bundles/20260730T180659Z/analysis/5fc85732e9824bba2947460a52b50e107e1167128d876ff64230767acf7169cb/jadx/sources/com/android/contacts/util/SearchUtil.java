package com.android.contacts.util;

/* loaded from: classes.dex */
public class SearchUtil {

    public static class MatchedLine {
        public String line;
        public int startIndex = -1;

        public String toString() {
            return "MatchedLine{line='" + this.line + "', startIndex=" + this.startIndex + '}';
        }
    }

    public static MatchedLine findMatchingLine(String str, String str2) {
        MatchedLine matchedLine = new MatchedLine();
        int contains = contains(str, str2);
        if (contains != -1) {
            int i = contains - 1;
            while (i > -1 && str.charAt(i) != '\n') {
                i--;
            }
            int i2 = contains + 1;
            while (i2 < str.length() && str.charAt(i2) != '\n') {
                i2++;
            }
            int i3 = i + 1;
            matchedLine.line = str.substring(i3, i2);
            matchedLine.startIndex = contains - i3;
        }
        return matchedLine;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0051, code lost:
    
        return r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int contains(java.lang.String r8, java.lang.String r9) {
        /*
            int r0 = r8.length()
            int r1 = r9.length()
            r2 = -1
            if (r0 >= r1) goto Lc
            return r2
        Lc:
            int r0 = r9.length()
            int[] r0 = new int[r0]
            r1 = 0
            r3 = 0
            r4 = 0
        L15:
            int r5 = r9.length()
            if (r3 >= r5) goto L29
            int r5 = java.lang.Character.codePointAt(r9, r3)
            r0[r4] = r5
            int r4 = r4 + 1
            int r5 = java.lang.Character.charCount(r5)
            int r3 = r3 + r5
            goto L15
        L29:
            r9 = 0
        L2a:
            int r3 = r8.length()
            if (r9 >= r3) goto L57
            r3 = r9
            r5 = 0
        L32:
            int r6 = r8.length()
            if (r3 >= r6) goto L4f
            if (r5 >= r4) goto L4f
            int r6 = r8.codePointAt(r3)
            int r6 = java.lang.Character.toLowerCase(r6)
            r7 = r0[r5]
            if (r6 == r7) goto L47
            goto L4f
        L47:
            int r6 = java.lang.Character.charCount(r6)
            int r3 = r3 + r6
            int r5 = r5 + 1
            goto L32
        L4f:
            if (r5 != r4) goto L52
            return r9
        L52:
            int r9 = findNextTokenStart(r8, r9)
            goto L2a
        L57:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.SearchUtil.contains(java.lang.String, java.lang.String):int");
    }

    static int findNextTokenStart(String str, int i) {
        while (i <= str.length()) {
            if (i == str.length()) {
                return i;
            }
            int codePointAt = str.codePointAt(i);
            if (!Character.isLetterOrDigit(codePointAt)) {
                break;
            }
            i += Character.charCount(codePointAt);
        }
        while (i <= str.length() && i != str.length()) {
            int codePointAt2 = str.codePointAt(i);
            if (Character.isLetterOrDigit(codePointAt2)) {
                return i;
            }
            i += Character.charCount(codePointAt2);
        }
        return i;
    }

    public static String cleanStartAndEndOfSearchQuery(String str) {
        int i = 0;
        while (i < str.length()) {
            int codePointAt = str.codePointAt(i);
            if (Character.isLetterOrDigit(codePointAt)) {
                break;
            }
            i += Character.charCount(codePointAt);
        }
        if (i == str.length()) {
            return "";
        }
        int length = str.length();
        do {
            length--;
            if (length <= -1) {
                break;
            }
            if (Character.isLowSurrogate(str.charAt(length))) {
                length--;
            }
        } while (!Character.isLetterOrDigit(str.codePointAt(length)));
        return str.substring(i, length + 1);
    }
}
