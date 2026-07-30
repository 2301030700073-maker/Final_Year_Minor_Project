package androidx.compose.ui.text;

import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextIndentKt;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;

/* compiled from: ParagraphStyle.kt */
/* loaded from: classes.dex */
public abstract class ParagraphStyleKt {
    private static final long DefaultLineHeight = TextUnit.Companion.m2502getUnspecifiedXSAIIZE();

    public static final ParagraphStyle lerp(ParagraphStyle paragraphStyle, ParagraphStyle paragraphStyle2, float f) {
        int m2347unboximpl = ((TextAlign) SpanStyleKt.lerpDiscrete(TextAlign.m2341boximpl(paragraphStyle.m2077getTextAligne0LSkKk()), TextAlign.m2341boximpl(paragraphStyle2.m2077getTextAligne0LSkKk()), f)).m2347unboximpl();
        int m2361unboximpl = ((TextDirection) SpanStyleKt.lerpDiscrete(TextDirection.m2355boximpl(paragraphStyle.m2078getTextDirections_7Xco()), TextDirection.m2355boximpl(paragraphStyle2.m2078getTextDirections_7Xco()), f)).m2361unboximpl();
        long m2101lerpTextUnitInheritableC3pnCVY = SpanStyleKt.m2101lerpTextUnitInheritableC3pnCVY(paragraphStyle.m2076getLineHeightXSAIIZE(), paragraphStyle2.m2076getLineHeightXSAIIZE(), f);
        TextIndent textIndent = paragraphStyle.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.Companion.getNone();
        }
        TextIndent textIndent2 = paragraphStyle2.getTextIndent();
        if (textIndent2 == null) {
            textIndent2 = TextIndent.Companion.getNone();
        }
        return new ParagraphStyle(m2347unboximpl, m2361unboximpl, m2101lerpTextUnitInheritableC3pnCVY, TextIndentKt.lerp(textIndent, textIndent2, f), lerpPlatformStyle(paragraphStyle.getPlatformStyle(), paragraphStyle2.getPlatformStyle(), f), (LineHeightStyle) SpanStyleKt.lerpDiscrete(paragraphStyle.getLineHeightStyle(), paragraphStyle2.getLineHeightStyle(), f), ((LineBreak) SpanStyleKt.lerpDiscrete(LineBreak.m2295boximpl(paragraphStyle.m2075getLineBreakrAG3T2k()), LineBreak.m2295boximpl(paragraphStyle2.m2075getLineBreakrAG3T2k()), f)).m2304unboximpl(), ((Hyphens) SpanStyleKt.lerpDiscrete(Hyphens.m2285boximpl(paragraphStyle.m2074getHyphensvmbZdU8()), Hyphens.m2285boximpl(paragraphStyle2.m2074getHyphensvmbZdU8()), f)).m2291unboximpl(), (TextMotion) SpanStyleKt.lerpDiscrete(paragraphStyle.getTextMotion(), paragraphStyle2.getTextMotion(), f), null);
    }

    private static final PlatformParagraphStyle lerpPlatformStyle(PlatformParagraphStyle platformParagraphStyle, PlatformParagraphStyle platformParagraphStyle2, float f) {
        if (platformParagraphStyle == null && platformParagraphStyle2 == null) {
            return null;
        }
        if (platformParagraphStyle == null) {
            platformParagraphStyle = PlatformParagraphStyle.Companion.getDefault();
        }
        if (platformParagraphStyle2 == null) {
            platformParagraphStyle2 = PlatformParagraphStyle.Companion.getDefault();
        }
        return AndroidTextStyle_androidKt.lerp(platformParagraphStyle, platformParagraphStyle2, f);
    }

    public static final ParagraphStyle resolveParagraphStyleDefaults(ParagraphStyle paragraphStyle, LayoutDirection layoutDirection) {
        int m2077getTextAligne0LSkKk = paragraphStyle.m2077getTextAligne0LSkKk();
        TextAlign.Companion companion = TextAlign.Companion;
        int m2353getStarte0LSkKk = TextAlign.m2344equalsimpl0(m2077getTextAligne0LSkKk, companion.m2354getUnspecifiede0LSkKk()) ? companion.m2353getStarte0LSkKk() : paragraphStyle.m2077getTextAligne0LSkKk();
        int m2149resolveTextDirectionIhaHGbI = TextStyleKt.m2149resolveTextDirectionIhaHGbI(layoutDirection, paragraphStyle.m2078getTextDirections_7Xco());
        long m2076getLineHeightXSAIIZE = TextUnitKt.m2506isUnspecifiedR2X_6o(paragraphStyle.m2076getLineHeightXSAIIZE()) ? DefaultLineHeight : paragraphStyle.m2076getLineHeightXSAIIZE();
        TextIndent textIndent = paragraphStyle.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.Companion.getNone();
        }
        TextIndent textIndent2 = textIndent;
        PlatformParagraphStyle platformStyle = paragraphStyle.getPlatformStyle();
        LineHeightStyle lineHeightStyle = paragraphStyle.getLineHeightStyle();
        int m2075getLineBreakrAG3T2k = paragraphStyle.m2075getLineBreakrAG3T2k();
        LineBreak.Companion companion2 = LineBreak.Companion;
        int m2305getSimplerAG3T2k = LineBreak.m2298equalsimpl0(m2075getLineBreakrAG3T2k, companion2.m2306getUnspecifiedrAG3T2k()) ? companion2.m2305getSimplerAG3T2k() : paragraphStyle.m2075getLineBreakrAG3T2k();
        int m2074getHyphensvmbZdU8 = paragraphStyle.m2074getHyphensvmbZdU8();
        Hyphens.Companion companion3 = Hyphens.Companion;
        int m2293getNonevmbZdU8 = Hyphens.m2288equalsimpl0(m2074getHyphensvmbZdU8, companion3.m2294getUnspecifiedvmbZdU8()) ? companion3.m2293getNonevmbZdU8() : paragraphStyle.m2074getHyphensvmbZdU8();
        TextMotion textMotion = paragraphStyle.getTextMotion();
        if (textMotion == null) {
            textMotion = TextMotion.Companion.getStatic();
        }
        return new ParagraphStyle(m2353getStarte0LSkKk, m2149resolveTextDirectionIhaHGbI, m2076getLineHeightXSAIIZE, textIndent2, platformStyle, lineHeightStyle, m2305getSimplerAG3T2k, m2293getNonevmbZdU8, textMotion, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x003d, code lost:
    
        if (androidx.compose.ui.unit.TextUnit.m2495equalsimpl0(r12, r24.m2076getLineHeightXSAIIZE()) != false) goto L14;
     */
    /* renamed from: fastMerge-j5T8yCg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.ParagraphStyle m2079fastMergej5T8yCg(androidx.compose.ui.text.ParagraphStyle r24, int r25, int r26, long r27, androidx.compose.ui.text.style.TextIndent r29, androidx.compose.ui.text.PlatformParagraphStyle r30, androidx.compose.ui.text.style.LineHeightStyle r31, int r32, int r33, androidx.compose.ui.text.style.TextMotion r34) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.ParagraphStyleKt.m2079fastMergej5T8yCg(androidx.compose.ui.text.ParagraphStyle, int, int, long, androidx.compose.ui.text.style.TextIndent, androidx.compose.ui.text.PlatformParagraphStyle, androidx.compose.ui.text.style.LineHeightStyle, int, int, androidx.compose.ui.text.style.TextMotion):androidx.compose.ui.text.ParagraphStyle");
    }

    private static final PlatformParagraphStyle mergePlatformStyle(ParagraphStyle paragraphStyle, PlatformParagraphStyle platformParagraphStyle) {
        if (paragraphStyle.getPlatformStyle() == null) {
            return platformParagraphStyle;
        }
        if (platformParagraphStyle == null) {
            return paragraphStyle.getPlatformStyle();
        }
        return paragraphStyle.getPlatformStyle().merge(platformParagraphStyle);
    }
}
