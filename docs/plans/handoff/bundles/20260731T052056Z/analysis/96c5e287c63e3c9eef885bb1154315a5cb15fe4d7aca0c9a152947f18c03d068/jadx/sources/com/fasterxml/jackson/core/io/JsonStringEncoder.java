package com.fasterxml.jackson.core.io;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonStringEncoder {
    public static final char[] HC = (char[]) CharTypes.HC.clone();
    public static final JsonStringEncoder instance = new JsonStringEncoder();

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
    
        if (r7 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
    
        r7 = new char[]{'\\', 0, '0', '0', 0, 0};
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0042, code lost:
    
        r12 = r8 + 1;
        r8 = r14.charAt(r8);
        r13 = r3[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
    
        if (r13 >= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        r7[1] = 'u';
        r11 = com.fasterxml.jackson.core.io.JsonStringEncoder.HC;
        r7[4] = r11[r8 >> 4];
        r7[5] = r11[r8 & 15];
        r11 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
    
        r8 = r9 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0068, code lost:
    
        if (r8 <= r1.length) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
    
        r8 = r1.length - r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
    
        if (r8 <= 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006e, code lost:
    
        java.lang.System.arraycopy(r7, 0, r1, r9, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0071, code lost:
    
        if (r6 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0073, code lost:
    
        r6 = new com.fasterxml.jackson.core.util.TextBuffer(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0078, code lost:
    
        r1 = r6.finishCurrentSegment();
        r11 = r11 - r8;
        java.lang.System.arraycopy(r7, r8, r1, 0, r11);
        r9 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        java.lang.System.arraycopy(r7, 0, r1, r9, r11);
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        r7[1] = (char) r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
    
        r11 = 2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static char[] quoteAsString(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.JsonStringEncoder.quoteAsString(java.lang.String):char[]");
    }
}
