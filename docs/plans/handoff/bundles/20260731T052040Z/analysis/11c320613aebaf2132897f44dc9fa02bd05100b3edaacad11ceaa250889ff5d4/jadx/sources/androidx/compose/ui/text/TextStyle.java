package androidx.compose.ui.text;

import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.ColorStyle;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextStyle {
    public static final TextStyle Default;
    public final ParagraphStyle paragraphStyle;
    public final PlatformTextStyle platformStyle;
    public final SpanStyle spanStyle;

    static {
        long j = Color.Unspecified;
        long j2 = TextUnit.Unspecified;
        Default = new TextStyle(new SpanStyle(j, j2, null, null, null, null, null, j2, null, null, null, j, null, null), new ParagraphStyle(0, 0, j2, null, null, null, 0, 0, null), null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextStyle(androidx.compose.ui.text.SpanStyle r3, androidx.compose.ui.text.ParagraphStyle r4) {
        /*
            r2 = this;
            r3.getClass()
            androidx.compose.ui.text.PlatformParagraphStyle r0 = r4.platformStyle
            if (r0 != 0) goto L9
            r0 = 0
            goto Lf
        L9:
            androidx.compose.ui.text.PlatformTextStyle r1 = new androidx.compose.ui.text.PlatformTextStyle
            r1.<init>(r0)
            r0 = r1
        Lf:
            r2.<init>(r3, r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.TextStyle.<init>(androidx.compose.ui.text.SpanStyle, androidx.compose.ui.text.ParagraphStyle):void");
    }

    /* renamed from: copy-p1EtxEg$default, reason: not valid java name */
    public static TextStyle m409copyp1EtxEg$default(TextStyle textStyle, long j, FontWeight fontWeight, SystemFontFamily systemFontFamily, long j2, long j3, LineHeightStyle lineHeightStyle, int i) {
        long mo419getColor0d7_KjU = textStyle.spanStyle.textForegroundStyle.mo419getColor0d7_KjU();
        long j4 = (i & 2) != 0 ? textStyle.spanStyle.fontSize : j;
        FontWeight fontWeight2 = (i & 4) != 0 ? textStyle.spanStyle.fontWeight : fontWeight;
        SpanStyle spanStyle = textStyle.spanStyle;
        FontStyle fontStyle = spanStyle.fontStyle;
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        SystemFontFamily systemFontFamily2 = (i & 32) != 0 ? spanStyle.fontFamily : systemFontFamily;
        String str = spanStyle.fontFeatureSettings;
        long j5 = (i & 128) != 0 ? spanStyle.letterSpacing : j2;
        BaselineShift baselineShift = spanStyle.baselineShift;
        TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
        LocaleList localeList = spanStyle.localeList;
        long j6 = spanStyle.background;
        TextDecoration textDecoration = spanStyle.textDecoration;
        Shadow shadow = spanStyle.shadow;
        DrawStyle drawStyle = spanStyle.drawStyle;
        int i2 = (i & DecoderReuseEvaluation.DISCARD_REASON_AUDIO_BYPASS_POSSIBLE) != 0 ? textStyle.paragraphStyle.textAlign : 3;
        ParagraphStyle paragraphStyle = textStyle.paragraphStyle;
        int i3 = paragraphStyle.textDirection;
        long j7 = (i & 131072) != 0 ? paragraphStyle.lineHeight : j3;
        TextIndent textIndent = paragraphStyle.textIndent;
        PlatformTextStyle platformTextStyle = (i & 524288) != 0 ? textStyle.platformStyle : LayoutUtilKt.DefaultPlatformTextStyle;
        return new TextStyle(new SpanStyle(Color.m244equalsimpl0(mo419getColor0d7_KjU, spanStyle.textForegroundStyle.mo419getColor0d7_KjU()) ? spanStyle.textForegroundStyle : mo419getColor0d7_KjU != 16 ? new ColorStyle(mo419getColor0d7_KjU) : TextForegroundStyle.Unspecified.INSTANCE, j4, fontWeight2, fontStyle, fontSynthesis, systemFontFamily2, str, j5, baselineShift, textGeometricTransform, localeList, j6, textDecoration, shadow, drawStyle), new ParagraphStyle(i2, i3, j7, textIndent, platformTextStyle != null ? platformTextStyle.paragraphStyle : null, (i & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 ? paragraphStyle.lineHeightStyle : lineHeightStyle, paragraphStyle.lineBreak, paragraphStyle.hyphens, paragraphStyle.textMotion), platformTextStyle);
    }

    /* renamed from: merge-dA7vx0o$default, reason: not valid java name */
    public static TextStyle m410mergedA7vx0o$default(TextStyle textStyle, long j, long j2, long j3, int i, long j4, int i2) {
        long j5 = (i2 & 2) != 0 ? TextUnit.Unspecified : j2;
        long j6 = (i2 & 128) != 0 ? TextUnit.Unspecified : j3;
        long j7 = Color.Unspecified;
        int i3 = (32768 & i2) != 0 ? 0 : i;
        long j8 = (i2 & 131072) != 0 ? TextUnit.Unspecified : j4;
        SpanStyle m408fastMergedSHsh3o = SpanStyleKt.m408fastMergedSHsh3o(textStyle.spanStyle, j, null, Float.NaN, j5, null, null, null, null, null, j6, null, null, null, j7, null, null, null);
        ParagraphStyle m407fastMergej5T8yCg = ParagraphStyleKt.m407fastMergej5T8yCg(textStyle.paragraphStyle, i3, 0, j8, null, null, null, 0, 0, null);
        return (textStyle.spanStyle == m408fastMergedSHsh3o && textStyle.paragraphStyle == m407fastMergej5T8yCg) ? textStyle : new TextStyle(m408fastMergedSHsh3o, m407fastMergej5T8yCg);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStyle)) {
            return false;
        }
        TextStyle textStyle = (TextStyle) obj;
        return Intrinsics.areEqual(this.spanStyle, textStyle.spanStyle) && Intrinsics.areEqual(this.paragraphStyle, textStyle.paragraphStyle) && Intrinsics.areEqual(this.platformStyle, textStyle.platformStyle);
    }

    /* renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m411getColor0d7_KjU() {
        return this.spanStyle.textForegroundStyle.mo419getColor0d7_KjU();
    }

    public final int hashCode() {
        int hashCode = (this.paragraphStyle.hashCode() + (this.spanStyle.hashCode() * 31)) * 31;
        PlatformTextStyle platformTextStyle = this.platformStyle;
        return hashCode + (platformTextStyle != null ? platformTextStyle.hashCode() : 0);
    }

    public final TextStyle merge(TextStyle textStyle) {
        return (textStyle == null || textStyle.equals(Default)) ? this : new TextStyle(this.spanStyle.merge(textStyle.spanStyle), this.paragraphStyle.merge(textStyle.paragraphStyle));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextStyle(color=");
        sb.append((Object) Color.m250toStringimpl(m411getColor0d7_KjU()));
        sb.append(", brush=");
        SpanStyle spanStyle = this.spanStyle;
        sb.append(spanStyle.textForegroundStyle.getBrush());
        sb.append(", alpha=");
        sb.append(spanStyle.textForegroundStyle.getAlpha());
        sb.append(", fontSize=");
        sb.append((Object) TextUnit.m455toStringimpl(spanStyle.fontSize));
        sb.append(", fontWeight=");
        sb.append(spanStyle.fontWeight);
        sb.append(", fontStyle=");
        sb.append(spanStyle.fontStyle);
        sb.append(", fontSynthesis=");
        sb.append(spanStyle.fontSynthesis);
        sb.append(", fontFamily=");
        sb.append(spanStyle.fontFamily);
        sb.append(", fontFeatureSettings=");
        sb.append(spanStyle.fontFeatureSettings);
        sb.append(", letterSpacing=");
        sb.append((Object) TextUnit.m455toStringimpl(spanStyle.letterSpacing));
        sb.append(", baselineShift=");
        sb.append(spanStyle.baselineShift);
        sb.append(", textGeometricTransform=");
        sb.append(spanStyle.textGeometricTransform);
        sb.append(", localeList=");
        sb.append(spanStyle.localeList);
        sb.append(", background=");
        Modifier.CC.m181m(spanStyle.background, ", textDecoration=", sb);
        sb.append(spanStyle.textDecoration);
        sb.append(", shadow=");
        sb.append(spanStyle.shadow);
        sb.append(", drawStyle=");
        sb.append(spanStyle.drawStyle);
        sb.append(", textAlign=");
        ParagraphStyle paragraphStyle = this.paragraphStyle;
        sb.append((Object) TextAlign.m424toStringimpl(paragraphStyle.textAlign));
        sb.append(", textDirection=");
        sb.append((Object) TextDirection.m425toStringimpl(paragraphStyle.textDirection));
        sb.append(", lineHeight=");
        sb.append((Object) TextUnit.m455toStringimpl(paragraphStyle.lineHeight));
        sb.append(", textIndent=");
        sb.append(paragraphStyle.textIndent);
        sb.append(", platformStyle=");
        sb.append(this.platformStyle);
        sb.append(", lineHeightStyle=");
        sb.append(paragraphStyle.lineHeightStyle);
        sb.append(", lineBreak=");
        sb.append((Object) LineBreak.m421toStringimpl(paragraphStyle.lineBreak));
        sb.append(", hyphens=");
        sb.append((Object) Hyphens.m420toStringimpl(paragraphStyle.hyphens));
        sb.append(", textMotion=");
        sb.append(paragraphStyle.textMotion);
        sb.append(')');
        return sb.toString();
    }

    public TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle, PlatformTextStyle platformTextStyle) {
        this.spanStyle = spanStyle;
        this.paragraphStyle = paragraphStyle;
        this.platformStyle = platformTextStyle;
    }
}
