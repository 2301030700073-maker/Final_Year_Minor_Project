package androidx.compose.ui.text;

import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParagraphStyle.kt */
/* loaded from: classes.dex */
public final class ParagraphStyle {
    private final int hyphens;
    private final int lineBreak;
    private final long lineHeight;
    private final LineHeightStyle lineHeightStyle;
    private final PlatformParagraphStyle platformStyle;
    private final int textAlign;
    private final int textDirection;
    private final TextIndent textIndent;
    private final TextMotion textMotion;

    public /* synthetic */ ParagraphStyle(int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, j, textIndent, platformParagraphStyle, lineHeightStyle, i3, i4, textMotion);
    }

    private ParagraphStyle(int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        this.textAlign = i;
        this.textDirection = i2;
        this.lineHeight = j;
        this.textIndent = textIndent;
        this.platformStyle = platformParagraphStyle;
        this.lineHeightStyle = lineHeightStyle;
        this.lineBreak = i3;
        this.hyphens = i4;
        this.textMotion = textMotion;
        if (TextUnit.m2495equalsimpl0(j, TextUnit.Companion.m2502getUnspecifiedXSAIIZE()) || TextUnit.m2498getValueimpl(j) >= 0.0f) {
            return;
        }
        throw new IllegalStateException(("lineHeight can't be negative (" + TextUnit.m2498getValueimpl(j) + CoreConstants.RIGHT_PARENTHESIS_CHAR).toString());
    }

    public /* synthetic */ ParagraphStyle(int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? TextAlign.Companion.m2354getUnspecifiede0LSkKk() : i, (i5 & 2) != 0 ? TextDirection.Companion.m2367getUnspecifieds_7Xco() : i2, (i5 & 4) != 0 ? TextUnit.Companion.m2502getUnspecifiedXSAIIZE() : j, (i5 & 8) != 0 ? null : textIndent, (i5 & 16) != 0 ? null : platformParagraphStyle, (i5 & 32) != 0 ? null : lineHeightStyle, (i5 & 64) != 0 ? LineBreak.Companion.m2306getUnspecifiedrAG3T2k() : i3, (i5 & 128) != 0 ? Hyphens.Companion.m2294getUnspecifiedvmbZdU8() : i4, (i5 & 256) == 0 ? textMotion : null, null);
    }

    /* renamed from: getTextAlign-e0LSkKk, reason: not valid java name */
    public final int m2077getTextAligne0LSkKk() {
        return this.textAlign;
    }

    /* renamed from: getTextDirection-s_7X-co, reason: not valid java name */
    public final int m2078getTextDirections_7Xco() {
        return this.textDirection;
    }

    /* renamed from: getLineHeight-XSAIIZE, reason: not valid java name */
    public final long m2076getLineHeightXSAIIZE() {
        return this.lineHeight;
    }

    public final TextIndent getTextIndent() {
        return this.textIndent;
    }

    public final PlatformParagraphStyle getPlatformStyle() {
        return this.platformStyle;
    }

    public final LineHeightStyle getLineHeightStyle() {
        return this.lineHeightStyle;
    }

    /* renamed from: getLineBreak-rAG3T2k, reason: not valid java name */
    public final int m2075getLineBreakrAG3T2k() {
        return this.lineBreak;
    }

    /* renamed from: getHyphens-vmbZdU8, reason: not valid java name */
    public final int m2074getHyphensvmbZdU8() {
        return this.hyphens;
    }

    public final TextMotion getTextMotion() {
        return this.textMotion;
    }

    public final ParagraphStyle merge(ParagraphStyle paragraphStyle) {
        return paragraphStyle == null ? this : ParagraphStyleKt.m2079fastMergej5T8yCg(this, paragraphStyle.textAlign, paragraphStyle.textDirection, paragraphStyle.lineHeight, paragraphStyle.textIndent, paragraphStyle.platformStyle, paragraphStyle.lineHeightStyle, paragraphStyle.lineBreak, paragraphStyle.hyphens, paragraphStyle.textMotion);
    }

    /* renamed from: copy-ykzQM6k, reason: not valid java name */
    public final ParagraphStyle m2073copyykzQM6k(int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        return new ParagraphStyle(i, i2, j, textIndent, platformParagraphStyle, lineHeightStyle, i3, i4, textMotion, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphStyle)) {
            return false;
        }
        ParagraphStyle paragraphStyle = (ParagraphStyle) obj;
        return TextAlign.m2344equalsimpl0(this.textAlign, paragraphStyle.textAlign) && TextDirection.m2358equalsimpl0(this.textDirection, paragraphStyle.textDirection) && TextUnit.m2495equalsimpl0(this.lineHeight, paragraphStyle.lineHeight) && Intrinsics.areEqual(this.textIndent, paragraphStyle.textIndent) && Intrinsics.areEqual(this.platformStyle, paragraphStyle.platformStyle) && Intrinsics.areEqual(this.lineHeightStyle, paragraphStyle.lineHeightStyle) && LineBreak.m2298equalsimpl0(this.lineBreak, paragraphStyle.lineBreak) && Hyphens.m2288equalsimpl0(this.hyphens, paragraphStyle.hyphens) && Intrinsics.areEqual(this.textMotion, paragraphStyle.textMotion);
    }

    public int hashCode() {
        int m2345hashCodeimpl = ((((TextAlign.m2345hashCodeimpl(this.textAlign) * 31) + TextDirection.m2359hashCodeimpl(this.textDirection)) * 31) + TextUnit.m2499hashCodeimpl(this.lineHeight)) * 31;
        TextIndent textIndent = this.textIndent;
        int hashCode = (m2345hashCodeimpl + (textIndent != null ? textIndent.hashCode() : 0)) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.platformStyle;
        int hashCode2 = (hashCode + (platformParagraphStyle != null ? platformParagraphStyle.hashCode() : 0)) * 31;
        LineHeightStyle lineHeightStyle = this.lineHeightStyle;
        int hashCode3 = (((((hashCode2 + (lineHeightStyle != null ? lineHeightStyle.hashCode() : 0)) * 31) + LineBreak.m2302hashCodeimpl(this.lineBreak)) * 31) + Hyphens.m2289hashCodeimpl(this.hyphens)) * 31;
        TextMotion textMotion = this.textMotion;
        return hashCode3 + (textMotion != null ? textMotion.hashCode() : 0);
    }

    public String toString() {
        return "ParagraphStyle(textAlign=" + ((Object) TextAlign.m2346toStringimpl(this.textAlign)) + ", textDirection=" + ((Object) TextDirection.m2360toStringimpl(this.textDirection)) + ", lineHeight=" + ((Object) TextUnit.m2500toStringimpl(this.lineHeight)) + ", textIndent=" + this.textIndent + ", platformStyle=" + this.platformStyle + ", lineHeightStyle=" + this.lineHeightStyle + ", lineBreak=" + ((Object) LineBreak.m2303toStringimpl(this.lineBreak)) + ", hyphens=" + ((Object) Hyphens.m2290toStringimpl(this.hyphens)) + ", textMotion=" + this.textMotion + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
