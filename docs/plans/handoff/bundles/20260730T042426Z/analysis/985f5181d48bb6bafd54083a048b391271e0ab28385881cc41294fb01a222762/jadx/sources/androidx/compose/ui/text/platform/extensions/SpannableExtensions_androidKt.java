package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.os.Build;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.LocaleSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ScaleXSpan;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.FontFeatureSpan;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import androidx.compose.ui.text.android.style.LineHeightSpan;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.compose.ui.text.android.style.ShadowSpan;
import androidx.compose.ui.text.android.style.SkewXSpan;
import androidx.compose.ui.text.android.style.TextDecorationSpan;
import androidx.compose.ui.text.android.style.TypefaceSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.style.DrawStyleSpan;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;

/* compiled from: SpannableExtensions.android.kt */
/* loaded from: classes.dex */
public abstract class SpannableExtensions_androidKt {
    public static final void setSpan(Spannable spannable, Object obj, int i, int i2) {
        spannable.setSpan(obj, i, i2, 33);
    }

    public static final void setTextIndent(Spannable spannable, TextIndent textIndent, float f, Density density) {
        float m2498getValueimpl;
        if (textIndent != null) {
            if ((TextUnit.m2495equalsimpl0(textIndent.m2370getFirstLineXSAIIZE(), TextUnitKt.getSp(0)) && TextUnit.m2495equalsimpl0(textIndent.m2371getRestLineXSAIIZE(), TextUnitKt.getSp(0))) || TextUnitKt.m2506isUnspecifiedR2X_6o(textIndent.m2370getFirstLineXSAIIZE()) || TextUnitKt.m2506isUnspecifiedR2X_6o(textIndent.m2371getRestLineXSAIIZE())) {
                return;
            }
            long m2497getTypeUIouoOA = TextUnit.m2497getTypeUIouoOA(textIndent.m2370getFirstLineXSAIIZE());
            TextUnitType.Companion companion = TextUnitType.Companion;
            float f2 = 0.0f;
            if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2516getSpUIouoOA())) {
                m2498getValueimpl = density.mo212toPxR2X_6o(textIndent.m2370getFirstLineXSAIIZE());
            } else {
                m2498getValueimpl = TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2515getEmUIouoOA()) ? TextUnit.m2498getValueimpl(textIndent.m2370getFirstLineXSAIIZE()) * f : 0.0f;
            }
            long m2497getTypeUIouoOA2 = TextUnit.m2497getTypeUIouoOA(textIndent.m2371getRestLineXSAIIZE());
            if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA2, companion.m2516getSpUIouoOA())) {
                f2 = density.mo212toPxR2X_6o(textIndent.m2371getRestLineXSAIIZE());
            } else if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA2, companion.m2515getEmUIouoOA())) {
                f2 = TextUnit.m2498getValueimpl(textIndent.m2371getRestLineXSAIIZE()) * f;
            }
            setSpan(spannable, new LeadingMarginSpan.Standard((int) Math.ceil(m2498getValueimpl), (int) Math.ceil(f2)), 0, spannable.length());
        }
    }

    /* renamed from: setLineHeight-KmRG4DE, reason: not valid java name */
    public static final void m2268setLineHeightKmRG4DE(Spannable spannable, long j, float f, Density density, LineHeightStyle lineHeightStyle) {
        float m2263resolveLineHeightInPxo2QH7mI = m2263resolveLineHeightInPxo2QH7mI(j, f, density);
        if (Float.isNaN(m2263resolveLineHeightInPxo2QH7mI)) {
            return;
        }
        setSpan(spannable, new LineHeightStyleSpan(m2263resolveLineHeightInPxo2QH7mI, 0, (spannable.length() == 0 || StringsKt.last(spannable) == '\n') ? spannable.length() + 1 : spannable.length(), LineHeightStyle.Trim.m2336isTrimFirstLineTopimpl$ui_text_release(lineHeightStyle.m2326getTrimEVpEnUU()), LineHeightStyle.Trim.m2337isTrimLastLineBottomimpl$ui_text_release(lineHeightStyle.m2326getTrimEVpEnUU()), lineHeightStyle.m2325getAlignmentPIaL0Z0()), 0, spannable.length());
    }

    /* renamed from: setLineHeight-r9BaKPg, reason: not valid java name */
    public static final void m2269setLineHeightr9BaKPg(Spannable spannable, long j, float f, Density density) {
        float m2263resolveLineHeightInPxo2QH7mI = m2263resolveLineHeightInPxo2QH7mI(j, f, density);
        if (Float.isNaN(m2263resolveLineHeightInPxo2QH7mI)) {
            return;
        }
        setSpan(spannable, new LineHeightSpan(m2263resolveLineHeightInPxo2QH7mI), 0, spannable.length());
    }

    /* renamed from: resolveLineHeightInPx-o2QH7mI, reason: not valid java name */
    private static final float m2263resolveLineHeightInPxo2QH7mI(long j, float f, Density density) {
        float m2498getValueimpl;
        long m2497getTypeUIouoOA = TextUnit.m2497getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2516getSpUIouoOA())) {
            if (!isNonLinearFontScalingActive(density)) {
                return density.mo212toPxR2X_6o(j);
            }
            m2498getValueimpl = TextUnit.m2498getValueimpl(j) / TextUnit.m2498getValueimpl(density.mo216toSpkPz2Gy4(f));
        } else {
            if (!TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2515getEmUIouoOA())) {
                return Float.NaN;
            }
            m2498getValueimpl = TextUnit.m2498getValueimpl(j);
        }
        return m2498getValueimpl * f;
    }

    private static final boolean isNonLinearFontScalingActive(Density density) {
        return ((double) density.getFontScale()) > 1.05d;
    }

    public static final void setSpanStyles(Spannable spannable, TextStyle textStyle, List list, Density density, Function4 function4) {
        MetricAffectingSpan m2262createLetterSpacingSpaneAf_CNQ;
        setFontAttributes(spannable, textStyle, list, function4);
        int size = list.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range range = (AnnotatedString.Range) list.get(i);
            int start = range.getStart();
            int end = range.getEnd();
            if (start >= 0 && start < spannable.length() && end > start && end <= spannable.length()) {
                setSpanStyle(spannable, range, density);
                if (getNeedsLetterSpacingSpan((SpanStyle) range.getItem())) {
                    z = true;
                }
            }
        }
        if (z) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AnnotatedString.Range range2 = (AnnotatedString.Range) list.get(i2);
                int start2 = range2.getStart();
                int end2 = range2.getEnd();
                SpanStyle spanStyle = (SpanStyle) range2.getItem();
                if (start2 >= 0 && start2 < spannable.length() && end2 > start2 && end2 <= spannable.length() && (m2262createLetterSpacingSpaneAf_CNQ = m2262createLetterSpacingSpaneAf_CNQ(spanStyle.m2099getLetterSpacingXSAIIZE(), density)) != null) {
                    setSpan(spannable, m2262createLetterSpacingSpaneAf_CNQ, start2, end2);
                }
            }
        }
    }

    private static final void setFontAttributes(final Spannable spannable, TextStyle textStyle, List list, final Function4 function4) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            AnnotatedString.Range range = (AnnotatedString.Range) obj;
            if (TextPaintExtensions_androidKt.hasFontAttributes((SpanStyle) range.getItem()) || ((SpanStyle) range.getItem()).m2098getFontSynthesisZQGJjVo() != null) {
                arrayList.add(obj);
            }
        }
        flattenFontStylesAndApply(hasFontAttributes(textStyle) ? new SpanStyle(0L, 0L, textStyle.getFontWeight(), textStyle.m2140getFontStyle4Lr2A7w(), textStyle.m2141getFontSynthesisZQGJjVo(), textStyle.getFontFamily(), null, 0L, null, null, null, 0L, null, null, null, null, 65475, null) : null, arrayList, new Function3() { // from class: androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt$setFontAttributes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4) {
                invoke((SpanStyle) obj2, ((Number) obj3).intValue(), ((Number) obj4).intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(SpanStyle spanStyle, int i2, int i3) {
                Spannable spannable2 = spannable;
                Function4 function42 = function4;
                FontFamily fontFamily = spanStyle.getFontFamily();
                FontWeight fontWeight = spanStyle.getFontWeight();
                if (fontWeight == null) {
                    fontWeight = FontWeight.Companion.getNormal();
                }
                FontStyle m2097getFontStyle4Lr2A7w = spanStyle.m2097getFontStyle4Lr2A7w();
                FontStyle m2160boximpl = FontStyle.m2160boximpl(m2097getFontStyle4Lr2A7w != null ? m2097getFontStyle4Lr2A7w.m2166unboximpl() : FontStyle.Companion.m2168getNormal_LCdwA());
                FontSynthesis m2098getFontSynthesisZQGJjVo = spanStyle.m2098getFontSynthesisZQGJjVo();
                spannable2.setSpan(new TypefaceSpan((Typeface) function42.invoke(fontFamily, fontWeight, m2160boximpl, FontSynthesis.m2169boximpl(m2098getFontSynthesisZQGJjVo != null ? m2098getFontSynthesisZQGJjVo.m2175unboximpl() : FontSynthesis.Companion.m2176getAllGVVA2EU()))), i2, i3, 33);
            }
        });
    }

    private static final void setSpanStyle(Spannable spannable, AnnotatedString.Range range, Density density) {
        int start = range.getStart();
        int end = range.getEnd();
        SpanStyle spanStyle = (SpanStyle) range.getItem();
        m2265setBaselineShift0ocSgnM(spannable, spanStyle.m2094getBaselineShift5SSeXJ0(), start, end);
        m2266setColorRPmYEkk(spannable, spanStyle.m2095getColor0d7_KjU(), start, end);
        setBrush(spannable, spanStyle.getBrush(), spanStyle.getAlpha(), start, end);
        setTextDecoration(spannable, spanStyle.getTextDecoration(), start, end);
        m2267setFontSizeKmRG4DE(spannable, spanStyle.m2096getFontSizeXSAIIZE(), density, start, end);
        setFontFeatureSettings(spannable, spanStyle.getFontFeatureSettings(), start, end);
        setGeometricTransform(spannable, spanStyle.getTextGeometricTransform(), start, end);
        setLocaleList(spannable, spanStyle.getLocaleList(), start, end);
        m2264setBackgroundRPmYEkk(spannable, spanStyle.m2093getBackground0d7_KjU(), start, end);
        setShadow(spannable, spanStyle.getShadow(), start, end);
        setDrawStyle(spannable, spanStyle.getDrawStyle(), start, end);
    }

    public static final void flattenFontStylesAndApply(SpanStyle spanStyle, List list, Function3 function3) {
        if (list.size() <= 1) {
            if (list.isEmpty()) {
                return;
            }
            function3.invoke(merge(spanStyle, (SpanStyle) ((AnnotatedString.Range) list.get(0)).getItem()), Integer.valueOf(((AnnotatedString.Range) list.get(0)).getStart()), Integer.valueOf(((AnnotatedString.Range) list.get(0)).getEnd()));
            return;
        }
        int size = list.size();
        int i = size * 2;
        Integer[] numArr = new Integer[i];
        for (int i2 = 0; i2 < i; i2++) {
            numArr[i2] = 0;
        }
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            AnnotatedString.Range range = (AnnotatedString.Range) list.get(i3);
            numArr[i3] = Integer.valueOf(range.getStart());
            numArr[i3 + size] = Integer.valueOf(range.getEnd());
        }
        ArraysKt.sort(numArr);
        int intValue = ((Number) ArraysKt.first(numArr)).intValue();
        for (int i4 = 0; i4 < i; i4++) {
            Integer num = numArr[i4];
            int intValue2 = num.intValue();
            if (intValue2 != intValue) {
                int size3 = list.size();
                SpanStyle spanStyle2 = spanStyle;
                for (int i5 = 0; i5 < size3; i5++) {
                    AnnotatedString.Range range2 = (AnnotatedString.Range) list.get(i5);
                    if (range2.getStart() != range2.getEnd() && AnnotatedStringKt.intersect(intValue, intValue2, range2.getStart(), range2.getEnd())) {
                        spanStyle2 = merge(spanStyle2, (SpanStyle) range2.getItem());
                    }
                }
                if (spanStyle2 != null) {
                    function3.invoke(spanStyle2, Integer.valueOf(intValue), num);
                }
                intValue = intValue2;
            }
        }
    }

    /* renamed from: createLetterSpacingSpan-eAf_CNQ, reason: not valid java name */
    private static final MetricAffectingSpan m2262createLetterSpacingSpaneAf_CNQ(long j, Density density) {
        long m2497getTypeUIouoOA = TextUnit.m2497getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2516getSpUIouoOA())) {
            return new LetterSpacingSpanPx(density.mo212toPxR2X_6o(j));
        }
        if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2515getEmUIouoOA())) {
            return new LetterSpacingSpanEm(TextUnit.m2498getValueimpl(j));
        }
        return null;
    }

    private static final boolean getNeedsLetterSpacingSpan(SpanStyle spanStyle) {
        long m2497getTypeUIouoOA = TextUnit.m2497getTypeUIouoOA(spanStyle.m2099getLetterSpacingXSAIIZE());
        TextUnitType.Companion companion = TextUnitType.Companion;
        return TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2516getSpUIouoOA()) || TextUnitType.m2511equalsimpl0(TextUnit.m2497getTypeUIouoOA(spanStyle.m2099getLetterSpacingXSAIIZE()), companion.m2515getEmUIouoOA());
    }

    private static final void setShadow(Spannable spannable, Shadow shadow, int i, int i2) {
        if (shadow != null) {
            setSpan(spannable, new ShadowSpan(ColorKt.m1324toArgb8_81llA(shadow.m1408getColor0d7_KjU()), Offset.m1167getXimpl(shadow.m1409getOffsetF1C5BW0()), Offset.m1168getYimpl(shadow.m1409getOffsetF1C5BW0()), TextPaintExtensions_androidKt.correctBlurRadius(shadow.getBlurRadius())), i, i2);
        }
    }

    private static final void setDrawStyle(Spannable spannable, DrawStyle drawStyle, int i, int i2) {
        if (drawStyle != null) {
            setSpan(spannable, new DrawStyleSpan(drawStyle), i, i2);
        }
    }

    /* renamed from: setBackground-RPmYEkk, reason: not valid java name */
    public static final void m2264setBackgroundRPmYEkk(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            setSpan(spannable, new BackgroundColorSpan(ColorKt.m1324toArgb8_81llA(j)), i, i2);
        }
    }

    public static final void setLocaleList(Spannable spannable, LocaleList localeList, int i, int i2) {
        Object localeSpan;
        if (localeList != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                localeSpan = LocaleListHelperMethods.INSTANCE.localeSpan(localeList);
            } else {
                localeSpan = new LocaleSpan((localeList.isEmpty() ? Locale.Companion.getCurrent() : localeList.get(0)).getPlatformLocale());
            }
            setSpan(spannable, localeSpan, i, i2);
        }
    }

    private static final void setGeometricTransform(Spannable spannable, TextGeometricTransform textGeometricTransform, int i, int i2) {
        if (textGeometricTransform != null) {
            setSpan(spannable, new ScaleXSpan(textGeometricTransform.getScaleX()), i, i2);
            setSpan(spannable, new SkewXSpan(textGeometricTransform.getSkewX()), i, i2);
        }
    }

    private static final void setFontFeatureSettings(Spannable spannable, String str, int i, int i2) {
        if (str != null) {
            setSpan(spannable, new FontFeatureSpan(str), i, i2);
        }
    }

    /* renamed from: setFontSize-KmRG4DE, reason: not valid java name */
    public static final void m2267setFontSizeKmRG4DE(Spannable spannable, long j, Density density, int i, int i2) {
        long m2497getTypeUIouoOA = TextUnit.m2497getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2516getSpUIouoOA())) {
            setSpan(spannable, new AbsoluteSizeSpan(MathKt.roundToInt(density.mo212toPxR2X_6o(j)), false), i, i2);
        } else if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2515getEmUIouoOA())) {
            setSpan(spannable, new RelativeSizeSpan(TextUnit.m2498getValueimpl(j)), i, i2);
        }
    }

    public static final void setTextDecoration(Spannable spannable, TextDecoration textDecoration, int i, int i2) {
        if (textDecoration != null) {
            TextDecoration.Companion companion = TextDecoration.Companion;
            setSpan(spannable, new TextDecorationSpan(textDecoration.contains(companion.getUnderline()), textDecoration.contains(companion.getLineThrough())), i, i2);
        }
    }

    /* renamed from: setColor-RPmYEkk, reason: not valid java name */
    public static final void m2266setColorRPmYEkk(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            setSpan(spannable, new ForegroundColorSpan(ColorKt.m1324toArgb8_81llA(j)), i, i2);
        }
    }

    /* renamed from: setBaselineShift-0ocSgnM, reason: not valid java name */
    private static final void m2265setBaselineShift0ocSgnM(Spannable spannable, BaselineShift baselineShift, int i, int i2) {
        if (baselineShift != null) {
            setSpan(spannable, new BaselineShiftSpan(baselineShift.m2281unboximpl()), i, i2);
        }
    }

    private static final void setBrush(Spannable spannable, Brush brush, float f, int i, int i2) {
        if (brush != null) {
            if (brush instanceof SolidColor) {
                m2266setColorRPmYEkk(spannable, ((SolidColor) brush).m1418getValue0d7_KjU(), i, i2);
            } else if (brush instanceof ShaderBrush) {
                setSpan(spannable, new ShaderBrushSpan((ShaderBrush) brush, f), i, i2);
            }
        }
    }

    private static final boolean hasFontAttributes(TextStyle textStyle) {
        return TextPaintExtensions_androidKt.hasFontAttributes(textStyle.toSpanStyle()) || textStyle.m2141getFontSynthesisZQGJjVo() != null;
    }

    private static final SpanStyle merge(SpanStyle spanStyle, SpanStyle spanStyle2) {
        return spanStyle == null ? spanStyle2 : spanStyle.merge(spanStyle2);
    }
}
