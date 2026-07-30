package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.ShadowKt;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.FontWeightKt;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.BaselineShiftKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextGeometricTransformKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: SpanStyle.kt */
/* loaded from: classes.dex */
public abstract class SpanStyleKt {
    private static final long DefaultBackgroundColor;
    private static final long DefaultColor;
    private static final TextForegroundStyle DefaultColorForegroundStyle;
    private static final long DefaultFontSize = TextUnitKt.getSp(14);
    private static final long DefaultLetterSpacing = TextUnitKt.getSp(0);

    public static final Object lerpDiscrete(Object obj, Object obj2, float f) {
        return ((double) f) < 0.5d ? obj : obj2;
    }

    static {
        Color.Companion companion = Color.Companion;
        DefaultBackgroundColor = companion.m1316getTransparent0d7_KjU();
        long m1313getBlack0d7_KjU = companion.m1313getBlack0d7_KjU();
        DefaultColor = m1313getBlack0d7_KjU;
        DefaultColorForegroundStyle = TextForegroundStyle.Companion.m2369from8_81llA(m1313getBlack0d7_KjU);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0030, code lost:
    
        if (androidx.compose.ui.unit.TextUnit.m2495equalsimpl0(r26, r21.m2096getFontSizeXSAIIZE()) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0053, code lost:
    
        if (androidx.compose.ui.graphics.Color.m1304equalsimpl0(r22, r21.getTextForegroundStyle$ui_text_release().mo2284getColor0d7_KjU()) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x005f, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r6, r21.m2097getFontStyle4Lr2A7w()) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x006b, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r5, r21.getFontWeight()) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0073, code lost:
    
        if (r31 != r21.getFontFamily()) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0085, code lost:
    
        if (androidx.compose.ui.unit.TextUnit.m2495equalsimpl0(r33, r21.m2099getLetterSpacingXSAIIZE()) == false) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0148  */
    /* renamed from: fastMerge-dSHsh3o, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.SpanStyle m2100fastMergedSHsh3o(androidx.compose.ui.text.SpanStyle r21, long r22, androidx.compose.ui.graphics.Brush r24, float r25, long r26, androidx.compose.ui.text.font.FontWeight r28, androidx.compose.ui.text.font.FontStyle r29, androidx.compose.ui.text.font.FontSynthesis r30, androidx.compose.ui.text.font.FontFamily r31, java.lang.String r32, long r33, androidx.compose.ui.text.style.BaselineShift r35, androidx.compose.ui.text.style.TextGeometricTransform r36, androidx.compose.ui.text.intl.LocaleList r37, long r38, androidx.compose.ui.text.style.TextDecoration r40, androidx.compose.ui.graphics.Shadow r41, androidx.compose.ui.text.PlatformSpanStyle r42, androidx.compose.ui.graphics.drawscope.DrawStyle r43) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.SpanStyleKt.m2100fastMergedSHsh3o(androidx.compose.ui.text.SpanStyle, long, androidx.compose.ui.graphics.Brush, float, long, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontSynthesis, androidx.compose.ui.text.font.FontFamily, java.lang.String, long, androidx.compose.ui.text.style.BaselineShift, androidx.compose.ui.text.style.TextGeometricTransform, androidx.compose.ui.text.intl.LocaleList, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.graphics.Shadow, androidx.compose.ui.text.PlatformSpanStyle, androidx.compose.ui.graphics.drawscope.DrawStyle):androidx.compose.ui.text.SpanStyle");
    }

    /* renamed from: lerpTextUnitInheritable-C3pnCVY, reason: not valid java name */
    public static final long m2101lerpTextUnitInheritableC3pnCVY(long j, long j2, float f) {
        if (TextUnitKt.m2506isUnspecifiedR2X_6o(j) || TextUnitKt.m2506isUnspecifiedR2X_6o(j2)) {
            return ((TextUnit) lerpDiscrete(TextUnit.m2492boximpl(j), TextUnit.m2492boximpl(j2), f)).m2501unboximpl();
        }
        return TextUnitKt.m2507lerpC3pnCVY(j, j2, f);
    }

    public static final SpanStyle lerp(SpanStyle spanStyle, SpanStyle spanStyle2, float f) {
        TextForegroundStyle lerp = TextDrawStyleKt.lerp(spanStyle.getTextForegroundStyle$ui_text_release(), spanStyle2.getTextForegroundStyle$ui_text_release(), f);
        FontFamily fontFamily = (FontFamily) lerpDiscrete(spanStyle.getFontFamily(), spanStyle2.getFontFamily(), f);
        long m2101lerpTextUnitInheritableC3pnCVY = m2101lerpTextUnitInheritableC3pnCVY(spanStyle.m2096getFontSizeXSAIIZE(), spanStyle2.m2096getFontSizeXSAIIZE(), f);
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeight2 = spanStyle2.getFontWeight();
        if (fontWeight2 == null) {
            fontWeight2 = FontWeight.Companion.getNormal();
        }
        FontWeight lerp2 = FontWeightKt.lerp(fontWeight, fontWeight2, f);
        FontStyle fontStyle = (FontStyle) lerpDiscrete(spanStyle.m2097getFontStyle4Lr2A7w(), spanStyle2.m2097getFontStyle4Lr2A7w(), f);
        FontSynthesis fontSynthesis = (FontSynthesis) lerpDiscrete(spanStyle.m2098getFontSynthesisZQGJjVo(), spanStyle2.m2098getFontSynthesisZQGJjVo(), f);
        String str = (String) lerpDiscrete(spanStyle.getFontFeatureSettings(), spanStyle2.getFontFeatureSettings(), f);
        long m2101lerpTextUnitInheritableC3pnCVY2 = m2101lerpTextUnitInheritableC3pnCVY(spanStyle.m2099getLetterSpacingXSAIIZE(), spanStyle2.m2099getLetterSpacingXSAIIZE(), f);
        BaselineShift m2094getBaselineShift5SSeXJ0 = spanStyle.m2094getBaselineShift5SSeXJ0();
        float m2281unboximpl = m2094getBaselineShift5SSeXJ0 != null ? m2094getBaselineShift5SSeXJ0.m2281unboximpl() : BaselineShift.m2276constructorimpl(0.0f);
        BaselineShift m2094getBaselineShift5SSeXJ02 = spanStyle2.m2094getBaselineShift5SSeXJ0();
        float m2283lerpjWV1Mfo = BaselineShiftKt.m2283lerpjWV1Mfo(m2281unboximpl, m2094getBaselineShift5SSeXJ02 != null ? m2094getBaselineShift5SSeXJ02.m2281unboximpl() : BaselineShift.m2276constructorimpl(0.0f), f);
        TextGeometricTransform textGeometricTransform = spanStyle.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform textGeometricTransform2 = spanStyle2.getTextGeometricTransform();
        if (textGeometricTransform2 == null) {
            textGeometricTransform2 = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform lerp3 = TextGeometricTransformKt.lerp(textGeometricTransform, textGeometricTransform2, f);
        LocaleList localeList = (LocaleList) lerpDiscrete(spanStyle.getLocaleList(), spanStyle2.getLocaleList(), f);
        long m1322lerpjxsXWHM = ColorKt.m1322lerpjxsXWHM(spanStyle.m2093getBackground0d7_KjU(), spanStyle2.m2093getBackground0d7_KjU(), f);
        TextDecoration textDecoration = (TextDecoration) lerpDiscrete(spanStyle.getTextDecoration(), spanStyle2.getTextDecoration(), f);
        Shadow shadow = spanStyle.getShadow();
        if (shadow == null) {
            shadow = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        Shadow shadow2 = spanStyle2.getShadow();
        if (shadow2 == null) {
            shadow2 = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        return new SpanStyle(lerp, m2101lerpTextUnitInheritableC3pnCVY, lerp2, fontStyle, fontSynthesis, fontFamily, str, m2101lerpTextUnitInheritableC3pnCVY2, BaselineShift.m2275boximpl(m2283lerpjWV1Mfo), lerp3, localeList, m1322lerpjxsXWHM, textDecoration, ShadowKt.lerp(shadow, shadow2, f), lerpPlatformStyle(spanStyle.getPlatformStyle(), spanStyle2.getPlatformStyle(), f), (DrawStyle) lerpDiscrete(spanStyle.getDrawStyle(), spanStyle2.getDrawStyle(), f), (DefaultConstructorMarker) null);
    }

    private static final PlatformSpanStyle lerpPlatformStyle(PlatformSpanStyle platformSpanStyle, PlatformSpanStyle platformSpanStyle2, float f) {
        if (platformSpanStyle == null && platformSpanStyle2 == null) {
            return null;
        }
        if (platformSpanStyle == null) {
            platformSpanStyle = PlatformSpanStyle.Companion.getDefault();
        }
        if (platformSpanStyle2 == null) {
            platformSpanStyle2 = PlatformSpanStyle.Companion.getDefault();
        }
        return AndroidTextStyle_androidKt.lerp(platformSpanStyle, platformSpanStyle2, f);
    }

    public static final SpanStyle resolveSpanStyleDefaults(SpanStyle spanStyle) {
        long m2099getLetterSpacingXSAIIZE;
        TextForegroundStyle takeOrElse = spanStyle.getTextForegroundStyle$ui_text_release().takeOrElse(new Function0() { // from class: androidx.compose.ui.text.SpanStyleKt$resolveSpanStyleDefaults$1
            @Override // kotlin.jvm.functions.Function0
            public final TextForegroundStyle invoke() {
                TextForegroundStyle textForegroundStyle;
                textForegroundStyle = SpanStyleKt.DefaultColorForegroundStyle;
                return textForegroundStyle;
            }
        });
        long m2096getFontSizeXSAIIZE = TextUnitKt.m2506isUnspecifiedR2X_6o(spanStyle.m2096getFontSizeXSAIIZE()) ? DefaultFontSize : spanStyle.m2096getFontSizeXSAIIZE();
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle m2097getFontStyle4Lr2A7w = spanStyle.m2097getFontStyle4Lr2A7w();
        FontStyle m2160boximpl = FontStyle.m2160boximpl(m2097getFontStyle4Lr2A7w != null ? m2097getFontStyle4Lr2A7w.m2166unboximpl() : FontStyle.Companion.m2168getNormal_LCdwA());
        FontSynthesis m2098getFontSynthesisZQGJjVo = spanStyle.m2098getFontSynthesisZQGJjVo();
        FontSynthesis m2169boximpl = FontSynthesis.m2169boximpl(m2098getFontSynthesisZQGJjVo != null ? m2098getFontSynthesisZQGJjVo.m2175unboximpl() : FontSynthesis.Companion.m2176getAllGVVA2EU());
        FontFamily fontFamily = spanStyle.getFontFamily();
        if (fontFamily == null) {
            fontFamily = FontFamily.Companion.getDefault();
        }
        FontFamily fontFamily2 = fontFamily;
        String fontFeatureSettings = spanStyle.getFontFeatureSettings();
        if (fontFeatureSettings == null) {
            fontFeatureSettings = "";
        }
        String str = fontFeatureSettings;
        if (TextUnitKt.m2506isUnspecifiedR2X_6o(spanStyle.m2099getLetterSpacingXSAIIZE())) {
            m2099getLetterSpacingXSAIIZE = DefaultLetterSpacing;
        } else {
            m2099getLetterSpacingXSAIIZE = spanStyle.m2099getLetterSpacingXSAIIZE();
        }
        long j = m2099getLetterSpacingXSAIIZE;
        BaselineShift m2094getBaselineShift5SSeXJ0 = spanStyle.m2094getBaselineShift5SSeXJ0();
        BaselineShift m2275boximpl = BaselineShift.m2275boximpl(m2094getBaselineShift5SSeXJ0 != null ? m2094getBaselineShift5SSeXJ0.m2281unboximpl() : BaselineShift.Companion.m2282getNoney9eOQZs());
        TextGeometricTransform textGeometricTransform = spanStyle.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = spanStyle.getLocaleList();
        if (localeList == null) {
            localeList = LocaleList.Companion.getCurrent();
        }
        LocaleList localeList2 = localeList;
        long m2093getBackground0d7_KjU = spanStyle.m2093getBackground0d7_KjU();
        if (m2093getBackground0d7_KjU == 16) {
            m2093getBackground0d7_KjU = DefaultBackgroundColor;
        }
        long j2 = m2093getBackground0d7_KjU;
        TextDecoration textDecoration = spanStyle.getTextDecoration();
        if (textDecoration == null) {
            textDecoration = TextDecoration.Companion.getNone();
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle.getShadow();
        if (shadow == null) {
            shadow = Shadow.Companion.getNone();
        }
        Shadow shadow2 = shadow;
        PlatformSpanStyle platformStyle = spanStyle.getPlatformStyle();
        DrawStyle drawStyle = spanStyle.getDrawStyle();
        if (drawStyle == null) {
            drawStyle = Fill.INSTANCE;
        }
        return new SpanStyle(takeOrElse, m2096getFontSizeXSAIIZE, fontWeight2, m2160boximpl, m2169boximpl, fontFamily2, str, j, m2275boximpl, textGeometricTransform2, localeList2, j2, textDecoration2, shadow2, platformStyle, drawStyle, (DefaultConstructorMarker) null);
    }

    private static final PlatformSpanStyle mergePlatformStyle(SpanStyle spanStyle, PlatformSpanStyle platformSpanStyle) {
        if (spanStyle.getPlatformStyle() == null) {
            return platformSpanStyle;
        }
        if (platformSpanStyle == null) {
            return spanStyle.getPlatformStyle();
        }
        return spanStyle.getPlatformStyle().merge(platformSpanStyle);
    }
}
