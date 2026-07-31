package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
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
import androidx.compose.ui.unit.TextUnitType;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        if (TextUnit.m723equalsimpl0(j, TextUnit.Unspecified)) {
            return;
        }
        if (TextUnit.m725getValueimpl(j) >= RecyclerView.DECELERATION_RATE) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("lineHeight can't be negative (" + TextUnit.m725getValueimpl(j) + ')');
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphStyle)) {
            return false;
        }
        ParagraphStyle paragraphStyle = (ParagraphStyle) obj;
        return this.textAlign == paragraphStyle.textAlign && this.textDirection == paragraphStyle.textDirection && TextUnit.m723equalsimpl0(this.lineHeight, paragraphStyle.lineHeight) && Intrinsics.areEqual(this.textIndent, paragraphStyle.textIndent) && Intrinsics.areEqual(this.platformStyle, paragraphStyle.platformStyle) && Intrinsics.areEqual(this.lineHeightStyle, paragraphStyle.lineHeightStyle) && this.lineBreak == paragraphStyle.lineBreak && this.hyphens == paragraphStyle.hyphens && Intrinsics.areEqual(this.textMotion, paragraphStyle.textMotion);
    }

    public final int hashCode() {
        int i = ((this.textAlign * 31) + this.textDirection) * 31;
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        int m = (Modifier.CC.m(this.lineHeight) + i) * 31;
        TextIndent textIndent = this.textIndent;
        int hashCode = (m + (textIndent != null ? textIndent.hashCode() : 0)) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.platformStyle;
        int hashCode2 = (hashCode + (platformParagraphStyle != null ? platformParagraphStyle.hashCode() : 0)) * 31;
        LineHeightStyle lineHeightStyle = this.lineHeightStyle;
        int hashCode3 = (((((hashCode2 + (lineHeightStyle != null ? lineHeightStyle.hashCode() : 0)) * 31) + this.lineBreak) * 31) + this.hyphens) * 31;
        TextMotion textMotion = this.textMotion;
        return hashCode3 + (textMotion != null ? textMotion.hashCode() : 0);
    }

    public final ParagraphStyle merge(ParagraphStyle paragraphStyle) {
        return paragraphStyle == null ? this : ParagraphStyleKt.m635fastMergej5T8yCg(this, paragraphStyle.textAlign, paragraphStyle.textDirection, paragraphStyle.lineHeight, paragraphStyle.textIndent, paragraphStyle.platformStyle, paragraphStyle.lineHeightStyle, paragraphStyle.lineBreak, paragraphStyle.hyphens, paragraphStyle.textMotion);
    }

    public final String toString() {
        return "ParagraphStyle(textAlign=" + ((Object) TextAlign.m672toStringimpl(this.textAlign)) + ", textDirection=" + ((Object) TextDirection.m673toStringimpl(this.textDirection)) + ", lineHeight=" + ((Object) TextUnit.m727toStringimpl(this.lineHeight)) + ", textIndent=" + this.textIndent + ", platformStyle=" + this.platformStyle + ", lineHeightStyle=" + this.lineHeightStyle + ", lineBreak=" + ((Object) LineBreak.m669toStringimpl(this.lineBreak)) + ", hyphens=" + ((Object) Hyphens.m668toStringimpl(this.hyphens)) + ", textMotion=" + this.textMotion + ')';
    }

    public ParagraphStyle(int i, TextIndent textIndent, int i2) {
        this((i2 & 1) != 0 ? 0 : i, 0, TextUnit.Unspecified, (i2 & 8) != 0 ? null : textIndent, null, null, 0, 0, null);
    }
}
