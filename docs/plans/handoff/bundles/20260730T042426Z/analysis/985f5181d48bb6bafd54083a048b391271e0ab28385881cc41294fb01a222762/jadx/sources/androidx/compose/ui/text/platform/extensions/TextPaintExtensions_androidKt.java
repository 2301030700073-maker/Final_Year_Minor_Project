package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextPaintExtensions.android.kt */
/* loaded from: classes.dex */
public abstract class TextPaintExtensions_androidKt {
    public static final float correctBlurRadius(float f) {
        if (f == 0.0f) {
            return Float.MIN_VALUE;
        }
        return f;
    }

    public static final SpanStyle applySpanStyle(AndroidTextPaint androidTextPaint, SpanStyle spanStyle, Function4 function4, Density density, boolean z) {
        Locale locale;
        long m2497getTypeUIouoOA = TextUnit.m2497getTypeUIouoOA(spanStyle.m2096getFontSizeXSAIIZE());
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2516getSpUIouoOA())) {
            androidTextPaint.setTextSize(density.mo212toPxR2X_6o(spanStyle.m2096getFontSizeXSAIIZE()));
        } else if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2515getEmUIouoOA())) {
            androidTextPaint.setTextSize(androidTextPaint.getTextSize() * TextUnit.m2498getValueimpl(spanStyle.m2096getFontSizeXSAIIZE()));
        }
        if (hasFontAttributes(spanStyle)) {
            FontFamily fontFamily = spanStyle.getFontFamily();
            FontWeight fontWeight = spanStyle.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            FontStyle m2097getFontStyle4Lr2A7w = spanStyle.m2097getFontStyle4Lr2A7w();
            FontStyle m2160boximpl = FontStyle.m2160boximpl(m2097getFontStyle4Lr2A7w != null ? m2097getFontStyle4Lr2A7w.m2166unboximpl() : FontStyle.Companion.m2168getNormal_LCdwA());
            FontSynthesis m2098getFontSynthesisZQGJjVo = spanStyle.m2098getFontSynthesisZQGJjVo();
            androidTextPaint.setTypeface((Typeface) function4.invoke(fontFamily, fontWeight, m2160boximpl, FontSynthesis.m2169boximpl(m2098getFontSynthesisZQGJjVo != null ? m2098getFontSynthesisZQGJjVo.m2175unboximpl() : FontSynthesis.Companion.m2176getAllGVVA2EU())));
        }
        if (spanStyle.getLocaleList() != null && !Intrinsics.areEqual(spanStyle.getLocaleList(), LocaleList.Companion.getCurrent())) {
            if (Build.VERSION.SDK_INT >= 24) {
                LocaleListHelperMethods.INSTANCE.setTextLocales(androidTextPaint, spanStyle.getLocaleList());
            } else {
                if (spanStyle.getLocaleList().isEmpty()) {
                    locale = Locale.Companion.getCurrent();
                } else {
                    locale = spanStyle.getLocaleList().get(0);
                }
                androidTextPaint.setTextLocale(locale.getPlatformLocale());
            }
        }
        if (spanStyle.getFontFeatureSettings() != null && !Intrinsics.areEqual(spanStyle.getFontFeatureSettings(), "")) {
            androidTextPaint.setFontFeatureSettings(spanStyle.getFontFeatureSettings());
        }
        if (spanStyle.getTextGeometricTransform() != null && !Intrinsics.areEqual(spanStyle.getTextGeometricTransform(), TextGeometricTransform.Companion.getNone$ui_text_release())) {
            androidTextPaint.setTextScaleX(androidTextPaint.getTextScaleX() * spanStyle.getTextGeometricTransform().getScaleX());
            androidTextPaint.setTextSkewX(androidTextPaint.getTextSkewX() + spanStyle.getTextGeometricTransform().getSkewX());
        }
        androidTextPaint.m2261setColor8_81llA(spanStyle.m2095getColor0d7_KjU());
        androidTextPaint.m2260setBrush12SF9DM(spanStyle.getBrush(), Size.Companion.m1209getUnspecifiedNHjbRc(), spanStyle.getAlpha());
        androidTextPaint.setShadow(spanStyle.getShadow());
        androidTextPaint.setTextDecoration(spanStyle.getTextDecoration());
        androidTextPaint.setDrawStyle(spanStyle.getDrawStyle());
        if (TextUnitType.m2511equalsimpl0(TextUnit.m2497getTypeUIouoOA(spanStyle.m2099getLetterSpacingXSAIIZE()), companion.m2516getSpUIouoOA()) && TextUnit.m2498getValueimpl(spanStyle.m2099getLetterSpacingXSAIIZE()) != 0.0f) {
            float textSize = androidTextPaint.getTextSize() * androidTextPaint.getTextScaleX();
            float mo212toPxR2X_6o = density.mo212toPxR2X_6o(spanStyle.m2099getLetterSpacingXSAIIZE());
            if (textSize != 0.0f) {
                androidTextPaint.setLetterSpacing(mo212toPxR2X_6o / textSize);
            }
        } else if (TextUnitType.m2511equalsimpl0(TextUnit.m2497getTypeUIouoOA(spanStyle.m2099getLetterSpacingXSAIIZE()), companion.m2515getEmUIouoOA())) {
            androidTextPaint.setLetterSpacing(TextUnit.m2498getValueimpl(spanStyle.m2099getLetterSpacingXSAIIZE()));
        }
        return m2270generateFallbackSpanStyle62GTOB8(spanStyle.m2099getLetterSpacingXSAIIZE(), z, spanStyle.m2093getBackground0d7_KjU(), spanStyle.m2094getBaselineShift5SSeXJ0());
    }

    /* renamed from: generateFallbackSpanStyle-62GTOB8, reason: not valid java name */
    private static final SpanStyle m2270generateFallbackSpanStyle62GTOB8(long j, boolean z, long j2, BaselineShift baselineShift) {
        long j3 = j2;
        boolean z2 = false;
        boolean z3 = z && TextUnitType.m2511equalsimpl0(TextUnit.m2497getTypeUIouoOA(j), TextUnitType.Companion.m2516getSpUIouoOA()) && TextUnit.m2498getValueimpl(j) != 0.0f;
        Color.Companion companion = Color.Companion;
        boolean z4 = (Color.m1304equalsimpl0(j3, companion.m1317getUnspecified0d7_KjU()) || Color.m1304equalsimpl0(j3, companion.m1316getTransparent0d7_KjU())) ? false : true;
        if (baselineShift != null) {
            if (!BaselineShift.m2278equalsimpl0(baselineShift.m2281unboximpl(), BaselineShift.Companion.m2282getNoney9eOQZs())) {
                z2 = true;
            }
        }
        if (!z3 && !z4 && !z2) {
            return null;
        }
        long m2502getUnspecifiedXSAIIZE = z3 ? j : TextUnit.Companion.m2502getUnspecifiedXSAIIZE();
        if (!z4) {
            j3 = companion.m1317getUnspecified0d7_KjU();
        }
        return new SpanStyle(0L, 0L, null, null, null, null, null, m2502getUnspecifiedXSAIIZE, z2 ? baselineShift : null, null, null, j3, null, null, null, null, 63103, null);
    }

    public static final void setTextMotion(AndroidTextPaint androidTextPaint, TextMotion textMotion) {
        int flags;
        if (textMotion == null) {
            textMotion = TextMotion.Companion.getStatic();
        }
        if (textMotion.getSubpixelTextPositioning$ui_text_release()) {
            flags = androidTextPaint.getFlags() | 128;
        } else {
            flags = androidTextPaint.getFlags() & (-129);
        }
        androidTextPaint.setFlags(flags);
        int m2372getLinearity4e0Vf04$ui_text_release = textMotion.m2372getLinearity4e0Vf04$ui_text_release();
        TextMotion.Linearity.Companion companion = TextMotion.Linearity.Companion;
        if (TextMotion.Linearity.m2374equalsimpl0(m2372getLinearity4e0Vf04$ui_text_release, companion.m2377getLinear4e0Vf04())) {
            androidTextPaint.setFlags(androidTextPaint.getFlags() | 64);
            androidTextPaint.setHinting(0);
        } else if (TextMotion.Linearity.m2374equalsimpl0(m2372getLinearity4e0Vf04$ui_text_release, companion.m2376getFontHinting4e0Vf04())) {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(1);
        } else if (TextMotion.Linearity.m2374equalsimpl0(m2372getLinearity4e0Vf04$ui_text_release, companion.m2378getNone4e0Vf04())) {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(0);
        } else {
            androidTextPaint.getFlags();
        }
    }

    public static final boolean hasFontAttributes(SpanStyle spanStyle) {
        return (spanStyle.getFontFamily() == null && spanStyle.m2097getFontStyle4Lr2A7w() == null && spanStyle.getFontWeight() == null) ? false : true;
    }
}
