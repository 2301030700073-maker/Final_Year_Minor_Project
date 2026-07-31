package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParagraphStyle implements AnnotatedString.Annotation {
    public final int hyphens;
    public final int lineBreak;
    public final long lineHeight;
    public final LineHeightStyle lineHeightStyle;
    public final PlatformParagraphStyle platformStyle;
    public final int textAlign;
    public final int textDirection;
    public final TextIndent textIndent;
    public final TextMotion textMotion;

    public ParagraphStyle(int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        this.textAlign = i;
        this.textDirection = i2;
        this.lineHeight = j;
        this.textIndent = textIndent;
        this.platformStyle = platformParagraphStyle;
        this.lineHeightStyle = lineHeightStyle;
        this.lineBreak = i3;
        this.hyphens = i4;
        this.textMotion = textMotion;
        if (TextUnit.m771equalsimpl0(j, TextUnit.Unspecified) || TextUnit.m773getValueimpl(j) >= 0.0f) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("lineHeight can't be negative (" + TextUnit.m773getValueimpl(j) + ')');
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphStyle)) {
            return false;
        }
        ParagraphStyle paragraphStyle = (ParagraphStyle) obj;
        return this.textAlign == paragraphStyle.textAlign && this.textDirection == paragraphStyle.textDirection && TextUnit.m771equalsimpl0(this.lineHeight, paragraphStyle.lineHeight) && Intrinsics.areEqual(this.textIndent, paragraphStyle.textIndent) && Intrinsics.areEqual(this.platformStyle, paragraphStyle.platformStyle) && Intrinsics.areEqual(this.lineHeightStyle, paragraphStyle.lineHeightStyle) && this.lineBreak == paragraphStyle.lineBreak && this.hyphens == paragraphStyle.hyphens && Intrinsics.areEqual(this.textMotion, paragraphStyle.textMotion);
    }

    public final int hashCode() {
        int m774hashCodeimpl = (TextUnit.m774hashCodeimpl(this.lineHeight) + (((this.textAlign * 31) + this.textDirection) * 31)) * 31;
        TextIndent textIndent = this.textIndent;
        int hashCode = (m774hashCodeimpl + (textIndent != null ? textIndent.hashCode() : 0)) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.platformStyle;
        int hashCode2 = (hashCode + (platformParagraphStyle != null ? platformParagraphStyle.hashCode() : 0)) * 31;
        LineHeightStyle lineHeightStyle = this.lineHeightStyle;
        int hashCode3 = (((((hashCode2 + (lineHeightStyle != null ? lineHeightStyle.hashCode() : 0)) * 31) + this.lineBreak) * 31) + this.hyphens) * 31;
        TextMotion textMotion = this.textMotion;
        return hashCode3 + (textMotion != null ? textMotion.hashCode() : 0);
    }

    public final ParagraphStyle merge(ParagraphStyle paragraphStyle) {
        return paragraphStyle == null ? this : ParagraphStyleKt.m693fastMergej5T8yCg(this, paragraphStyle.textAlign, paragraphStyle.textDirection, paragraphStyle.lineHeight, paragraphStyle.textIndent, paragraphStyle.platformStyle, paragraphStyle.lineHeightStyle, paragraphStyle.lineBreak, paragraphStyle.hyphens, paragraphStyle.textMotion);
    }

    public final String toString() {
        return "ParagraphStyle(textAlign=" + ((Object) TextAlign.m725toStringimpl(this.textAlign)) + ", textDirection=" + ((Object) TextDirection.m726toStringimpl(this.textDirection)) + ", lineHeight=" + ((Object) TextUnit.m775toStringimpl(this.lineHeight)) + ", textIndent=" + this.textIndent + ", platformStyle=" + this.platformStyle + ", lineHeightStyle=" + this.lineHeightStyle + ", lineBreak=" + ((Object) LineBreak.m722toStringimpl(this.lineBreak)) + ", hyphens=" + ((Object) Hyphens.m721toStringimpl(this.hyphens)) + ", textMotion=" + this.textMotion + ')';
    }
}
