package androidx.compose.ui.text;

import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ParagraphStyleKt {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long DefaultLineHeight;

    static {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        DefaultLineHeight = TextUnit.Unspecified;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0033, code lost:
    
        if (androidx.compose.ui.unit.TextUnit.m451equalsimpl0(r3, r17.lineHeight) != false) goto L12;
     */
    /* renamed from: fastMerge-j5T8yCg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.ParagraphStyle m407fastMergej5T8yCg(androidx.compose.ui.text.ParagraphStyle r17, int r18, int r19, long r20, androidx.compose.ui.text.style.TextIndent r22, androidx.compose.ui.text.PlatformParagraphStyle r23, androidx.compose.ui.text.style.LineHeightStyle r24, int r25, int r26, androidx.compose.ui.text.style.TextMotion r27) {
        /*
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r20
            r5 = r22
            r6 = r23
            r7 = r24
            r8 = r25
            r9 = r26
            r10 = r27
            r11 = 0
            r13 = 1095216660480(0xff00000000, double:5.41108926696E-312)
            if (r1 != 0) goto L1e
            goto L22
        L1e:
            int r15 = r0.textAlign
            if (r1 != r15) goto L74
        L22:
            androidx.compose.ui.unit.TextUnitType[] r15 = androidx.compose.ui.unit.TextUnit.TextUnitTypes
            long r15 = r3 & r13
            int r15 = (r15 > r11 ? 1 : (r15 == r11 ? 0 : -1))
            if (r15 != 0) goto L2c
            r15 = r11
            goto L35
        L2c:
            r15 = r11
            long r11 = r0.lineHeight
            boolean r11 = androidx.compose.ui.unit.TextUnit.m451equalsimpl0(r3, r11)
            if (r11 == 0) goto L75
        L35:
            if (r5 == 0) goto L3f
            androidx.compose.ui.text.style.TextIndent r11 = r0.textIndent
            boolean r11 = r5.equals(r11)
            if (r11 == 0) goto L75
        L3f:
            if (r2 != 0) goto L42
            goto L46
        L42:
            int r11 = r0.textDirection
            if (r2 != r11) goto L75
        L46:
            if (r6 == 0) goto L50
            androidx.compose.ui.text.PlatformParagraphStyle r11 = r0.platformStyle
            boolean r11 = r6.equals(r11)
            if (r11 == 0) goto L75
        L50:
            if (r7 == 0) goto L5a
            androidx.compose.ui.text.style.LineHeightStyle r11 = r0.lineHeightStyle
            boolean r11 = r7.equals(r11)
            if (r11 == 0) goto L75
        L5a:
            if (r8 != 0) goto L5d
            goto L61
        L5d:
            int r11 = r0.lineBreak
            if (r8 != r11) goto L75
        L61:
            if (r9 != 0) goto L64
            goto L68
        L64:
            int r11 = r0.hyphens
            if (r9 != r11) goto L75
        L68:
            if (r10 == 0) goto L73
            androidx.compose.ui.text.style.TextMotion r11 = r0.textMotion
            boolean r11 = r10.equals(r11)
            if (r11 != 0) goto L73
            goto L75
        L73:
            return r0
        L74:
            r15 = r11
        L75:
            androidx.compose.ui.unit.TextUnitType[] r11 = androidx.compose.ui.unit.TextUnit.TextUnitTypes
            long r11 = r3 & r13
            int r11 = (r11 > r15 ? 1 : (r11 == r15 ? 0 : -1))
            if (r11 != 0) goto L7f
            long r3 = r0.lineHeight
        L7f:
            if (r5 != 0) goto L83
            androidx.compose.ui.text.style.TextIndent r5 = r0.textIndent
        L83:
            if (r1 != 0) goto L87
            int r1 = r0.textAlign
        L87:
            if (r2 != 0) goto L8b
            int r2 = r0.textDirection
        L8b:
            androidx.compose.ui.text.PlatformParagraphStyle r11 = r0.platformStyle
            if (r11 != 0) goto L90
            goto L93
        L90:
            if (r6 != 0) goto L93
            r6 = r11
        L93:
            if (r7 != 0) goto L97
            androidx.compose.ui.text.style.LineHeightStyle r7 = r0.lineHeightStyle
        L97:
            if (r8 != 0) goto L9b
            int r8 = r0.lineBreak
        L9b:
            if (r9 != 0) goto L9f
            int r9 = r0.hyphens
        L9f:
            if (r10 != 0) goto La4
            androidx.compose.ui.text.style.TextMotion r0 = r0.textMotion
            r10 = r0
        La4:
            androidx.compose.ui.text.ParagraphStyle r0 = new androidx.compose.ui.text.ParagraphStyle
            r17 = r0
            r18 = r1
            r19 = r2
            r20 = r3
            r22 = r5
            r23 = r6
            r24 = r7
            r25 = r8
            r26 = r9
            r27 = r10
            r17.<init>(r18, r19, r20, r22, r23, r24, r25, r26, r27)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.ParagraphStyleKt.m407fastMergej5T8yCg(androidx.compose.ui.text.ParagraphStyle, int, int, long, androidx.compose.ui.text.style.TextIndent, androidx.compose.ui.text.PlatformParagraphStyle, androidx.compose.ui.text.style.LineHeightStyle, int, int, androidx.compose.ui.text.style.TextMotion):androidx.compose.ui.text.ParagraphStyle");
    }
}
