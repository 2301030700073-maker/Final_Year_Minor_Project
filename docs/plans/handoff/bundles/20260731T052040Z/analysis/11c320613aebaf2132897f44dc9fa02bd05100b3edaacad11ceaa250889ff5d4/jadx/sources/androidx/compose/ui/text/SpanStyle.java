package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.ColorStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SpanStyle implements AnnotatedString.Annotation {
    public final long background;
    public final BaselineShift baselineShift;
    public final DrawStyle drawStyle;
    public final SystemFontFamily fontFamily;
    public final String fontFeatureSettings;
    public final long fontSize;
    public final FontStyle fontStyle;
    public final FontSynthesis fontSynthesis;
    public final FontWeight fontWeight;
    public final long letterSpacing;
    public final LocaleList localeList;
    public final Shadow shadow;
    public final TextDecoration textDecoration;
    public final TextForegroundStyle textForegroundStyle;
    public final TextGeometricTransform textGeometricTransform;

    public SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, SystemFontFamily systemFontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, int i) {
        this((i & 1) != 0 ? Color.Unspecified : j, (i & 2) != 0 ? TextUnit.Unspecified : j2, (i & 4) != 0 ? null : fontWeight, (i & 8) != 0 ? null : fontStyle, (i & 16) != 0 ? null : fontSynthesis, (i & 32) != 0 ? null : systemFontFamily, (i & 64) != 0 ? null : str, (i & 128) != 0 ? TextUnit.Unspecified : j3, (i & 256) != 0 ? null : baselineShift, (i & 512) != 0 ? null : textGeometricTransform, (i & 1024) != 0 ? null : localeList, (i & 2048) != 0 ? Color.Unspecified : j4, (i & 4096) != 0 ? null : textDecoration, (i & 8192) != 0 ? null : shadow);
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
        return TextUnit.m451equalsimpl0(this.fontSize, spanStyle.fontSize) && Intrinsics.areEqual(this.fontWeight, spanStyle.fontWeight) && Intrinsics.areEqual(this.fontStyle, spanStyle.fontStyle) && Intrinsics.areEqual(this.fontSynthesis, spanStyle.fontSynthesis) && Intrinsics.areEqual(this.fontFamily, spanStyle.fontFamily) && Intrinsics.areEqual(this.fontFeatureSettings, spanStyle.fontFeatureSettings) && TextUnit.m451equalsimpl0(this.letterSpacing, spanStyle.letterSpacing) && Intrinsics.areEqual(this.baselineShift, spanStyle.baselineShift) && Intrinsics.areEqual(this.textGeometricTransform, spanStyle.textGeometricTransform) && Intrinsics.areEqual(this.localeList, spanStyle.localeList) && Color.m244equalsimpl0(this.background, spanStyle.background);
    }

    public final boolean hasSameNonLayoutAttributes$ui_text(SpanStyle spanStyle) {
        return Intrinsics.areEqual(this.textForegroundStyle, spanStyle.textForegroundStyle) && Intrinsics.areEqual(this.textDecoration, spanStyle.textDecoration) && Intrinsics.areEqual(this.shadow, spanStyle.shadow) && Intrinsics.areEqual(this.drawStyle, spanStyle.drawStyle);
    }

    public final int hashCode() {
        TextForegroundStyle textForegroundStyle = this.textForegroundStyle;
        long mo419getColor0d7_KjU = textForegroundStyle.mo419getColor0d7_KjU();
        int i = Color.$r8$clinit;
        int m658hashCodeimpl = ULong.m658hashCodeimpl(mo419getColor0d7_KjU) * 31;
        Brush brush = textForegroundStyle.getBrush();
        int m454hashCodeimpl = (TextUnit.m454hashCodeimpl(this.fontSize) + ((Float.floatToIntBits(textForegroundStyle.getAlpha()) + ((m658hashCodeimpl + (brush != null ? brush.hashCode() : 0)) * 31)) * 31)) * 31;
        FontWeight fontWeight = this.fontWeight;
        int i2 = (m454hashCodeimpl + (fontWeight != null ? fontWeight.weight : 0)) * 31;
        FontStyle fontStyle = this.fontStyle;
        int i3 = (i2 + (fontStyle != null ? fontStyle.value : 0)) * 31;
        FontSynthesis fontSynthesis = this.fontSynthesis;
        int i4 = (i3 + (fontSynthesis != null ? fontSynthesis.value : 0)) * 31;
        SystemFontFamily systemFontFamily = this.fontFamily;
        int hashCode = (i4 + (systemFontFamily != null ? systemFontFamily.hashCode() : 0)) * 31;
        String str = this.fontFeatureSettings;
        int m454hashCodeimpl2 = (TextUnit.m454hashCodeimpl(this.letterSpacing) + ((hashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31;
        BaselineShift baselineShift = this.baselineShift;
        int floatToIntBits = (m454hashCodeimpl2 + (baselineShift != null ? Float.floatToIntBits(baselineShift.multiplier) : 0)) * 31;
        TextGeometricTransform textGeometricTransform = this.textGeometricTransform;
        int hashCode2 = (floatToIntBits + (textGeometricTransform != null ? textGeometricTransform.hashCode() : 0)) * 31;
        LocaleList localeList = this.localeList;
        int m = Modifier.CC.m((hashCode2 + (localeList != null ? localeList.localeList.hashCode() : 0)) * 31, this.background, 31);
        TextDecoration textDecoration = this.textDecoration;
        int i5 = (m + (textDecoration != null ? textDecoration.mask : 0)) * 31;
        Shadow shadow = this.shadow;
        int hashCode3 = (i5 + (shadow != null ? shadow.hashCode() : 0)) * 961;
        DrawStyle drawStyle = this.drawStyle;
        return hashCode3 + (drawStyle != null ? drawStyle.hashCode() : 0);
    }

    public final SpanStyle merge(SpanStyle spanStyle) {
        if (spanStyle == null) {
            return this;
        }
        TextForegroundStyle textForegroundStyle = spanStyle.textForegroundStyle;
        return SpanStyleKt.m408fastMergedSHsh3o(this, textForegroundStyle.mo419getColor0d7_KjU(), textForegroundStyle.getBrush(), textForegroundStyle.getAlpha(), spanStyle.fontSize, spanStyle.fontWeight, spanStyle.fontStyle, spanStyle.fontSynthesis, spanStyle.fontFamily, spanStyle.fontFeatureSettings, spanStyle.letterSpacing, spanStyle.baselineShift, spanStyle.textGeometricTransform, spanStyle.localeList, spanStyle.background, spanStyle.textDecoration, spanStyle.shadow, spanStyle.drawStyle);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanStyle(color=");
        TextForegroundStyle textForegroundStyle = this.textForegroundStyle;
        sb.append((Object) Color.m250toStringimpl(textForegroundStyle.mo419getColor0d7_KjU()));
        sb.append(", brush=");
        sb.append(textForegroundStyle.getBrush());
        sb.append(", alpha=");
        sb.append(textForegroundStyle.getAlpha());
        sb.append(", fontSize=");
        sb.append((Object) TextUnit.m455toStringimpl(this.fontSize));
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
        sb.append((Object) TextUnit.m455toStringimpl(this.letterSpacing));
        sb.append(", baselineShift=");
        sb.append(this.baselineShift);
        sb.append(", textGeometricTransform=");
        sb.append(this.textGeometricTransform);
        sb.append(", localeList=");
        sb.append(this.localeList);
        sb.append(", background=");
        Modifier.CC.m181m(this.background, ", textDecoration=", sb);
        sb.append(this.textDecoration);
        sb.append(", shadow=");
        sb.append(this.shadow);
        sb.append(", platformStyle=null, drawStyle=");
        sb.append(this.drawStyle);
        sb.append(')');
        return sb.toString();
    }

    public SpanStyle(TextForegroundStyle textForegroundStyle, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, SystemFontFamily systemFontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle) {
        this.textForegroundStyle = textForegroundStyle;
        this.fontSize = j;
        this.fontWeight = fontWeight;
        this.fontStyle = fontStyle;
        this.fontSynthesis = fontSynthesis;
        this.fontFamily = systemFontFamily;
        this.fontFeatureSettings = str;
        this.letterSpacing = j2;
        this.baselineShift = baselineShift;
        this.textGeometricTransform = textGeometricTransform;
        this.localeList = localeList;
        this.background = j3;
        this.textDecoration = textDecoration;
        this.shadow = shadow;
        this.drawStyle = drawStyle;
    }

    public SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, SystemFontFamily systemFontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow) {
        this(j != 16 ? new ColorStyle(j) : TextForegroundStyle.Unspecified.INSTANCE, j2, fontWeight, fontStyle, fontSynthesis, systemFontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, (DrawStyle) null);
    }
}
