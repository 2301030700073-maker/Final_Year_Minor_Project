package androidx.compose.ui.text;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SpanStyle implements AnnotatedString.Annotation {
    public final long background;
    public final BaselineShift baselineShift;
    public final DrawStyle drawStyle;
    public final FontFamily fontFamily;
    public final String fontFeatureSettings;
    public final long fontSize;
    public final FontStyle fontStyle;
    public final FontSynthesis fontSynthesis;
    public final FontWeight fontWeight;
    public final long letterSpacing;
    public final LocaleList localeList;
    public final PlatformSpanStyle platformStyle;
    public final Shadow shadow;
    public final TextDecoration textDecoration;
    public final TextForegroundStyle textForegroundStyle;
    public final TextGeometricTransform textGeometricTransform;

    public SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, int i) {
        this((i & 1) != 0 ? Color.Unspecified : j, (i & 2) != 0 ? TextUnit.Unspecified : j2, (i & 4) != 0 ? null : fontWeight, (i & 8) != 0 ? null : fontStyle, (i & 16) != 0 ? null : fontSynthesis, (i & 32) != 0 ? null : fontFamily, (i & 64) != 0 ? null : str, (i & 128) != 0 ? TextUnit.Unspecified : j3, (i & 256) != 0 ? null : baselineShift, (i & 512) != 0 ? null : textGeometricTransform, (i & 1024) != 0 ? null : localeList, (i & 2048) != 0 ? Color.Unspecified : j4, (i & 4096) != 0 ? null : textDecoration, (i & 8192) != 0 ? null : shadow, (PlatformSpanStyle) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanStyle)) {
            return false;
        }
        SpanStyle spanStyle = (SpanStyle) obj;
        return hasSameLayoutAffectingAttributes$ui_text(spanStyle) && hasSameNonLayoutAttributes$ui_text(spanStyle);
    }

    public final boolean hasSameLayoutAffectingAttributes$ui_text(SpanStyle spanStyle) {
        if (this == spanStyle) {
            return true;
        }
        if (!TextUnit.m723equalsimpl0(this.fontSize, spanStyle.fontSize) || !Intrinsics.areEqual(this.fontWeight, spanStyle.fontWeight) || !Intrinsics.areEqual(this.fontStyle, spanStyle.fontStyle) || !Intrinsics.areEqual(this.fontSynthesis, spanStyle.fontSynthesis) || !Intrinsics.areEqual(this.fontFamily, spanStyle.fontFamily) || !Intrinsics.areEqual(this.fontFeatureSettings, spanStyle.fontFeatureSettings) || !TextUnit.m723equalsimpl0(this.letterSpacing, spanStyle.letterSpacing) || !Intrinsics.areEqual(this.baselineShift, spanStyle.baselineShift) || !Intrinsics.areEqual(this.textGeometricTransform, spanStyle.textGeometricTransform) || !Intrinsics.areEqual(this.localeList, spanStyle.localeList)) {
            return false;
        }
        long j = spanStyle.background;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.background, j) && Intrinsics.areEqual(this.platformStyle, spanStyle.platformStyle);
    }

    public final boolean hasSameNonLayoutAttributes$ui_text(SpanStyle spanStyle) {
        return Intrinsics.areEqual(this.textForegroundStyle, spanStyle.textForegroundStyle) && Intrinsics.areEqual(this.textDecoration, spanStyle.textDecoration) && Intrinsics.areEqual(this.shadow, spanStyle.shadow) && Intrinsics.areEqual(this.drawStyle, spanStyle.drawStyle);
    }

    public final int hashCode() {
        TextForegroundStyle textForegroundStyle = this.textForegroundStyle;
        long mo667getColor0d7_KjU = textForegroundStyle.mo667getColor0d7_KjU();
        int i = Color.$r8$clinit;
        int m = Modifier.CC.m(mo667getColor0d7_KjU) * 31;
        Brush brush = textForegroundStyle.getBrush();
        int floatToIntBits = (Float.floatToIntBits(textForegroundStyle.getAlpha()) + ((m + (brush != null ? brush.hashCode() : 0)) * 31)) * 31;
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        int m2 = (Modifier.CC.m(this.fontSize) + floatToIntBits) * 31;
        FontWeight fontWeight = this.fontWeight;
        int i2 = (m2 + (fontWeight != null ? fontWeight.weight : 0)) * 31;
        FontStyle fontStyle = this.fontStyle;
        int i3 = (i2 + (fontStyle != null ? fontStyle.value : 0)) * 31;
        FontSynthesis fontSynthesis = this.fontSynthesis;
        int i4 = (i3 + (fontSynthesis != null ? fontSynthesis.value : 0)) * 31;
        FontFamily fontFamily = this.fontFamily;
        int hashCode = (i4 + (fontFamily != null ? fontFamily.hashCode() : 0)) * 31;
        String str = this.fontFeatureSettings;
        int m3 = (Modifier.CC.m(this.letterSpacing) + ((hashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31;
        BaselineShift baselineShift = this.baselineShift;
        int floatToIntBits2 = (m3 + (baselineShift != null ? Float.floatToIntBits(baselineShift.multiplier) : 0)) * 31;
        TextGeometricTransform textGeometricTransform = this.textGeometricTransform;
        int hashCode2 = (floatToIntBits2 + (textGeometricTransform != null ? textGeometricTransform.hashCode() : 0)) * 31;
        LocaleList localeList = this.localeList;
        int m4 = Animation.CC.m((hashCode2 + (localeList != null ? localeList.localeList.hashCode() : 0)) * 31, 31, this.background);
        TextDecoration textDecoration = this.textDecoration;
        int i5 = (m4 + (textDecoration != null ? textDecoration.mask : 0)) * 31;
        Shadow shadow = this.shadow;
        int hashCode3 = (i5 + (shadow != null ? shadow.hashCode() : 0)) * 31;
        PlatformSpanStyle platformSpanStyle = this.platformStyle;
        int hashCode4 = (hashCode3 + (platformSpanStyle != null ? platformSpanStyle.hashCode() : 0)) * 31;
        DrawStyle drawStyle = this.drawStyle;
        return hashCode4 + (drawStyle != null ? drawStyle.hashCode() : 0);
    }

    public final SpanStyle merge(SpanStyle spanStyle) {
        if (spanStyle == null) {
            return this;
        }
        TextForegroundStyle textForegroundStyle = spanStyle.textForegroundStyle;
        return SpanStyleKt.m636fastMergedSHsh3o(this, textForegroundStyle.mo667getColor0d7_KjU(), textForegroundStyle.getBrush(), textForegroundStyle.getAlpha(), spanStyle.fontSize, spanStyle.fontWeight, spanStyle.fontStyle, spanStyle.fontSynthesis, spanStyle.fontFamily, spanStyle.fontFeatureSettings, spanStyle.letterSpacing, spanStyle.baselineShift, spanStyle.textGeometricTransform, spanStyle.localeList, spanStyle.background, spanStyle.textDecoration, spanStyle.shadow, spanStyle.platformStyle, spanStyle.drawStyle);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanStyle(color=");
        TextForegroundStyle textForegroundStyle = this.textForegroundStyle;
        sb.append((Object) Color.m434toStringimpl(textForegroundStyle.mo667getColor0d7_KjU()));
        sb.append(", brush=");
        sb.append(textForegroundStyle.getBrush());
        sb.append(", alpha=");
        sb.append(textForegroundStyle.getAlpha());
        sb.append(", fontSize=");
        sb.append((Object) TextUnit.m727toStringimpl(this.fontSize));
        sb.append(", fontWeight=");
        sb.append(this.fontWeight);
        sb.append(", fontStyle=");
        sb.append(this.fontStyle);
        sb.append(", fontSynthesis=");
        sb.append(this.fontSynthesis);
        sb.append(", fontFamily=");
        sb.append(this.fontFamily);
        sb.append(", fontFeatureSettings=");
        sb.append(this.fontFeatureSettings);
        sb.append(", letterSpacing=");
        sb.append((Object) TextUnit.m727toStringimpl(this.letterSpacing));
        sb.append(", baselineShift=");
        sb.append(this.baselineShift);
        sb.append(", textGeometricTransform=");
        sb.append(this.textGeometricTransform);
        sb.append(", localeList=");
        sb.append(this.localeList);
        sb.append(", background=");
        Animation.CC.m(this.background, sb, ", textDecoration=");
        sb.append(this.textDecoration);
        sb.append(", shadow=");
        sb.append(this.shadow);
        sb.append(", platformStyle=");
        sb.append(this.platformStyle);
        sb.append(", drawStyle=");
        sb.append(this.drawStyle);
        sb.append(')');
        return sb.toString();
    }

    public SpanStyle(TextForegroundStyle textForegroundStyle, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        this.textForegroundStyle = textForegroundStyle;
        this.fontSize = j;
        this.fontWeight = fontWeight;
        this.fontStyle = fontStyle;
        this.fontSynthesis = fontSynthesis;
        this.fontFamily = fontFamily;
        this.fontFeatureSettings = str;
        this.letterSpacing = j2;
        this.baselineShift = baselineShift;
        this.textGeometricTransform = textGeometricTransform;
        this.localeList = localeList;
        this.background = j3;
        this.textDecoration = textDecoration;
        this.shadow = shadow;
        this.platformStyle = platformSpanStyle;
        this.drawStyle = drawStyle;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SpanStyle(long r24, long r26, androidx.compose.ui.text.font.FontWeight r28, androidx.compose.ui.text.font.FontStyle r29, androidx.compose.ui.text.font.FontSynthesis r30, androidx.compose.ui.text.font.FontFamily r31, java.lang.String r32, long r33, androidx.compose.ui.text.style.BaselineShift r35, androidx.compose.ui.text.style.TextGeometricTransform r36, androidx.compose.ui.text.intl.LocaleList r37, long r38, androidx.compose.ui.text.style.TextDecoration r40, androidx.compose.ui.graphics.Shadow r41, androidx.compose.ui.text.PlatformSpanStyle r42) {
        /*
            r23 = this;
            r0 = r24
            r2 = 16
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto Lf
            androidx.compose.ui.text.style.ColorStyle r2 = new androidx.compose.ui.text.style.ColorStyle
            r2.<init>(r0)
        Ld:
            r4 = r2
            goto L12
        Lf:
            androidx.compose.ui.text.style.TextForegroundStyle$Unspecified r2 = androidx.compose.ui.text.style.TextForegroundStyle.Unspecified.INSTANCE
            goto Ld
        L12:
            r22 = 0
            r3 = r23
            r5 = r26
            r7 = r28
            r8 = r29
            r9 = r30
            r10 = r31
            r11 = r32
            r12 = r33
            r14 = r35
            r15 = r36
            r16 = r37
            r17 = r38
            r19 = r40
            r20 = r41
            r21 = r42
            r3.<init>(r4, r5, r7, r8, r9, r10, r11, r12, r14, r15, r16, r17, r19, r20, r21, r22)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.SpanStyle.<init>(long, long, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontSynthesis, androidx.compose.ui.text.font.FontFamily, java.lang.String, long, androidx.compose.ui.text.style.BaselineShift, androidx.compose.ui.text.style.TextGeometricTransform, androidx.compose.ui.text.intl.LocaleList, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.graphics.Shadow, androidx.compose.ui.text.PlatformSpanStyle):void");
    }
}
