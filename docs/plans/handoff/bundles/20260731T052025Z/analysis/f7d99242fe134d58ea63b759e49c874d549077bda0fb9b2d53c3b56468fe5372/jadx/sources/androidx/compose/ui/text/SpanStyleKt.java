package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.style.ColorStyle;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SpanStyleKt {
    public static final TextForegroundStyle DefaultColorForegroundStyle;
    public static final long DefaultFontSize = SQLite.getSp(14);
    public static final long DefaultLetterSpacing = SQLite.getSp(0);
    public static final long DefaultBackgroundColor = Color.Transparent;

    static {
        long j = Color.Black;
        DefaultColorForegroundStyle = j != 16 ? new ColorStyle(j) : TextForegroundStyle.Unspecified.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x00b6, code lost:
    
        if (r15.equals(r24.baselineShift) != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00c5, code lost:
    
        if (r39.equals(r24.textGeometricTransform) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x00d4, code lost:
    
        if (r40.equals(r24.localeList) == false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x013f  */
    /* renamed from: fastMerge-dSHsh3o, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.SpanStyle m694fastMergedSHsh3o(androidx.compose.ui.text.SpanStyle r24, long r25, androidx.compose.ui.graphics.Brush r27, float r28, long r29, androidx.compose.ui.text.font.FontWeight r31, androidx.compose.ui.text.font.FontStyle r32, androidx.compose.ui.text.font.FontSynthesis r33, androidx.compose.ui.text.font.SystemFontFamily r34, java.lang.String r35, long r36, androidx.compose.ui.text.style.BaselineShift r38, androidx.compose.ui.text.style.TextGeometricTransform r39, androidx.compose.ui.text.intl.LocaleList r40, long r41, androidx.compose.ui.text.style.TextDecoration r43, androidx.compose.ui.graphics.Shadow r44, androidx.compose.ui.text.PlatformSpanStyle r45, androidx.compose.ui.graphics.drawscope.DrawStyle r46) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.SpanStyleKt.m694fastMergedSHsh3o(androidx.compose.ui.text.SpanStyle, long, androidx.compose.ui.graphics.Brush, float, long, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontSynthesis, androidx.compose.ui.text.font.SystemFontFamily, java.lang.String, long, androidx.compose.ui.text.style.BaselineShift, androidx.compose.ui.text.style.TextGeometricTransform, androidx.compose.ui.text.intl.LocaleList, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.graphics.Shadow, androidx.compose.ui.text.PlatformSpanStyle, androidx.compose.ui.graphics.drawscope.DrawStyle):androidx.compose.ui.text.SpanStyle");
    }

    public static final Object lerpDiscrete(float f, Object obj, Object obj2) {
        return ((double) f) < 0.5d ? obj : obj2;
    }

    /* renamed from: lerpTextUnitInheritable-C3pnCVY, reason: not valid java name */
    public static final long m695lerpTextUnitInheritableC3pnCVY(long j, long j2, float f) {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        long j3 = j & 1095216660480L;
        if (j3 != 0) {
            long j4 = 1095216660480L & j2;
            if (j4 != 0) {
                if (j3 == 0 || j4 == 0) {
                    InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for Unspecified type.");
                }
                if (!TextUnitType.m776equalsimpl0(TextUnit.m772getTypeUIouoOA(j), TextUnit.m772getTypeUIouoOA(j2))) {
                    InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for " + ((Object) TextUnitType.m777toStringimpl(TextUnit.m772getTypeUIouoOA(j))) + " and " + ((Object) TextUnitType.m777toStringimpl(TextUnit.m772getTypeUIouoOA(j2))));
                }
                return SQLite.pack(DBUtil.lerp(TextUnit.m773getValueimpl(j), TextUnit.m773getValueimpl(j2), f), j3);
            }
        }
        return ((TextUnit) lerpDiscrete(f, new TextUnit(j), new TextUnit(j2))).packedValue;
    }
}
