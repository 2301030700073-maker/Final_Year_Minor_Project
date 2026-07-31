package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.style.ColorStyle;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import coil3.util.ContextsKt;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SpanStyleKt {
    public static final TextForegroundStyle DefaultColorForegroundStyle;
    public static final long DefaultFontSize = ContextsKt.getSp(14);
    public static final long DefaultLetterSpacing = ContextsKt.getSp(0);
    public static final long DefaultBackgroundColor = Color.Transparent;

    static {
        long j = Color.Black;
        DefaultColorForegroundStyle = j != 16 ? new ColorStyle(j) : TextForegroundStyle.Unspecified.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x00b8, code lost:
    
        if (r15.equals(r24.baselineShift) != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00c7, code lost:
    
        if (r39.equals(r24.textGeometricTransform) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x00d6, code lost:
    
        if (r40.equals(r24.localeList) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x00ea, code lost:
    
        if (kotlin.ULong.m820equalsimpl0(r41, r6) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0042, code lost:
    
        if (kotlin.ULong.m820equalsimpl0(r25, r14) != false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0143  */
    /* renamed from: fastMerge-dSHsh3o, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.SpanStyle m636fastMergedSHsh3o(androidx.compose.ui.text.SpanStyle r24, long r25, androidx.compose.ui.graphics.Brush r27, float r28, long r29, androidx.compose.ui.text.font.FontWeight r31, androidx.compose.ui.text.font.FontStyle r32, androidx.compose.ui.text.font.FontSynthesis r33, androidx.compose.ui.text.font.FontFamily r34, java.lang.String r35, long r36, androidx.compose.ui.text.style.BaselineShift r38, androidx.compose.ui.text.style.TextGeometricTransform r39, androidx.compose.ui.text.intl.LocaleList r40, long r41, androidx.compose.ui.text.style.TextDecoration r43, androidx.compose.ui.graphics.Shadow r44, androidx.compose.ui.text.PlatformSpanStyle r45, androidx.compose.ui.graphics.drawscope.DrawStyle r46) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.SpanStyleKt.m636fastMergedSHsh3o(androidx.compose.ui.text.SpanStyle, long, androidx.compose.ui.graphics.Brush, float, long, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontSynthesis, androidx.compose.ui.text.font.FontFamily, java.lang.String, long, androidx.compose.ui.text.style.BaselineShift, androidx.compose.ui.text.style.TextGeometricTransform, androidx.compose.ui.text.intl.LocaleList, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.graphics.Shadow, androidx.compose.ui.text.PlatformSpanStyle, androidx.compose.ui.graphics.drawscope.DrawStyle):androidx.compose.ui.text.SpanStyle");
    }

    public static final Object lerpDiscrete(float f, Object obj, Object obj2) {
        return ((double) f) < 0.5d ? obj : obj2;
    }

    /* renamed from: lerpTextUnitInheritable-C3pnCVY, reason: not valid java name */
    public static final long m637lerpTextUnitInheritableC3pnCVY(long j, long j2, float f) {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        long j3 = j & 1095216660480L;
        if (j3 == 0 || (1095216660480L & j2) == 0) {
            return ((TextUnit) lerpDiscrete(f, new TextUnit(j), new TextUnit(j2))).packedValue;
        }
        ContextsKt.m789checkArithmeticNB67dxo(j, j2);
        return ContextsKt.pack(UnsignedKt.lerp(TextUnit.m725getValueimpl(j), TextUnit.m725getValueimpl(j2), f), j3);
    }
}
