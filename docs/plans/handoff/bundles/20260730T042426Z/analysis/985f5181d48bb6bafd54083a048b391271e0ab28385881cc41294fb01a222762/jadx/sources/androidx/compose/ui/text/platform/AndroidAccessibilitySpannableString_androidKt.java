package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import android.text.SpannableString;
import android.text.style.ScaleXSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TtsAnnotation;
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.platform.extensions.TtsAnnotationExtensions_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: AndroidAccessibilitySpannableString.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidAccessibilitySpannableString_androidKt {
    public static final SpannableString toAccessibilitySpannableString(AnnotatedString annotatedString, Density density, FontFamily.Resolver resolver, URLSpanCache uRLSpanCache) {
        SpanStyle m2092copyGSF8kmg;
        SpannableString spannableString = new SpannableString(annotatedString.getText());
        List spanStylesOrNull$ui_text_release = annotatedString.getSpanStylesOrNull$ui_text_release();
        if (spanStylesOrNull$ui_text_release != null) {
            int size = spanStylesOrNull$ui_text_release.size();
            for (int i = 0; i < size; i++) {
                AnnotatedString.Range range = (AnnotatedString.Range) spanStylesOrNull$ui_text_release.get(i);
                SpanStyle spanStyle = (SpanStyle) range.component1();
                int component2 = range.component2();
                int component3 = range.component3();
                m2092copyGSF8kmg = spanStyle.m2092copyGSF8kmg((r38 & 1) != 0 ? spanStyle.m2095getColor0d7_KjU() : 0L, (r38 & 2) != 0 ? spanStyle.fontSize : 0L, (r38 & 4) != 0 ? spanStyle.fontWeight : null, (r38 & 8) != 0 ? spanStyle.fontStyle : null, (r38 & 16) != 0 ? spanStyle.fontSynthesis : null, (r38 & 32) != 0 ? spanStyle.fontFamily : null, (r38 & 64) != 0 ? spanStyle.fontFeatureSettings : null, (r38 & 128) != 0 ? spanStyle.letterSpacing : 0L, (r38 & 256) != 0 ? spanStyle.baselineShift : null, (r38 & 512) != 0 ? spanStyle.textGeometricTransform : null, (r38 & 1024) != 0 ? spanStyle.localeList : null, (r38 & 2048) != 0 ? spanStyle.background : 0L, (r38 & PKIFailureInfo.certConfirmed) != 0 ? spanStyle.textDecoration : null, (r38 & 8192) != 0 ? spanStyle.shadow : null, (r38 & 16384) != 0 ? spanStyle.platformStyle : null, (r38 & 32768) != 0 ? spanStyle.drawStyle : null);
                setSpanStyle(spannableString, m2092copyGSF8kmg, component2, component3, density, resolver);
            }
        }
        List ttsAnnotations = annotatedString.getTtsAnnotations(0, annotatedString.length());
        int size2 = ttsAnnotations.size();
        for (int i2 = 0; i2 < size2; i2++) {
            AnnotatedString.Range range2 = (AnnotatedString.Range) ttsAnnotations.get(i2);
            spannableString.setSpan(TtsAnnotationExtensions_androidKt.toSpan((TtsAnnotation) range2.component1()), range2.component2(), range2.component3(), 33);
        }
        List urlAnnotations = annotatedString.getUrlAnnotations(0, annotatedString.length());
        int size3 = urlAnnotations.size();
        for (int i3 = 0; i3 < size3; i3++) {
            AnnotatedString.Range range3 = (AnnotatedString.Range) urlAnnotations.get(i3);
            spannableString.setSpan(uRLSpanCache.toURLSpan((UrlAnnotation) range3.component1()), range3.component2(), range3.component3(), 33);
        }
        List linkAnnotations = annotatedString.getLinkAnnotations(0, annotatedString.length());
        int size4 = linkAnnotations.size();
        for (int i4 = 0; i4 < size4; i4++) {
            AnnotatedString.Range range4 = (AnnotatedString.Range) linkAnnotations.get(i4);
            if (range4.getStart() != range4.getEnd()) {
                LinkAnnotation linkAnnotation = (LinkAnnotation) range4.getItem();
                if (linkAnnotation instanceof LinkAnnotation.Url) {
                    linkAnnotation.getLinkInteractionListener();
                    spannableString.setSpan(uRLSpanCache.toURLSpan(toUrlLink(range4)), range4.getStart(), range4.getEnd(), 33);
                } else {
                    spannableString.setSpan(uRLSpanCache.toClickableSpan(range4), range4.getStart(), range4.getEnd(), 33);
                }
            }
        }
        return spannableString;
    }

    private static final void setSpanStyle(SpannableString spannableString, SpanStyle spanStyle, int i, int i2, Density density, FontFamily.Resolver resolver) {
        SpannableExtensions_androidKt.m2266setColorRPmYEkk(spannableString, spanStyle.m2095getColor0d7_KjU(), i, i2);
        SpannableExtensions_androidKt.m2267setFontSizeKmRG4DE(spannableString, spanStyle.m2096getFontSizeXSAIIZE(), density, i, i2);
        if (spanStyle.getFontWeight() != null || spanStyle.m2097getFontStyle4Lr2A7w() != null) {
            FontWeight fontWeight = spanStyle.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            FontStyle m2097getFontStyle4Lr2A7w = spanStyle.m2097getFontStyle4Lr2A7w();
            spannableString.setSpan(new StyleSpan(AndroidFontUtils_androidKt.m2156getAndroidTypefaceStyleFO1MlWM(fontWeight, m2097getFontStyle4Lr2A7w != null ? m2097getFontStyle4Lr2A7w.m2166unboximpl() : FontStyle.Companion.m2168getNormal_LCdwA())), i, i2, 33);
        }
        if (spanStyle.getFontFamily() != null) {
            if (spanStyle.getFontFamily() instanceof GenericFontFamily) {
                spannableString.setSpan(new TypefaceSpan(((GenericFontFamily) spanStyle.getFontFamily()).getName()), i, i2, 33);
            } else if (Build.VERSION.SDK_INT >= 28) {
                FontFamily fontFamily = spanStyle.getFontFamily();
                FontSynthesis m2098getFontSynthesisZQGJjVo = spanStyle.m2098getFontSynthesisZQGJjVo();
                Object value = FontFamily.Resolver.CC.m2159resolveDPcqOEQ$default(resolver, fontFamily, null, 0, m2098getFontSynthesisZQGJjVo != null ? m2098getFontSynthesisZQGJjVo.m2175unboximpl() : FontSynthesis.Companion.m2176getAllGVVA2EU(), 6, null).getValue();
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type android.graphics.Typeface");
                spannableString.setSpan(Api28Impl.INSTANCE.createTypefaceSpan((Typeface) value), i, i2, 33);
            }
        }
        if (spanStyle.getTextDecoration() != null) {
            TextDecoration textDecoration = spanStyle.getTextDecoration();
            TextDecoration.Companion companion = TextDecoration.Companion;
            if (textDecoration.contains(companion.getUnderline())) {
                spannableString.setSpan(new UnderlineSpan(), i, i2, 33);
            }
            if (spanStyle.getTextDecoration().contains(companion.getLineThrough())) {
                spannableString.setSpan(new StrikethroughSpan(), i, i2, 33);
            }
        }
        if (spanStyle.getTextGeometricTransform() != null) {
            spannableString.setSpan(new ScaleXSpan(spanStyle.getTextGeometricTransform().getScaleX()), i, i2, 33);
        }
        SpannableExtensions_androidKt.setLocaleList(spannableString, spanStyle.getLocaleList(), i, i2);
        SpannableExtensions_androidKt.m2264setBackgroundRPmYEkk(spannableString, spanStyle.m2093getBackground0d7_KjU(), i, i2);
    }

    private static final AnnotatedString.Range toUrlLink(AnnotatedString.Range range) {
        Object item = range.getItem();
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url");
        return new AnnotatedString.Range((LinkAnnotation.Url) item, range.getStart(), range.getEnd());
    }
}
