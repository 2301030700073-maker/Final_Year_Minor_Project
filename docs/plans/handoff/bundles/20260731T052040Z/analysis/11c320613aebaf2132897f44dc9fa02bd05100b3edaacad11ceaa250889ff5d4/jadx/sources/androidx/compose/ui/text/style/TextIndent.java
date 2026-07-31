package androidx.compose.ui.text.style;

import androidx.compose.ui.unit.TextUnit;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextIndent {
    public static final TextIndent None = new TextIndent(MathKt.getSp(0), MathKt.getSp(0));
    public final long firstLine;
    public final long restLine;

    public TextIndent(long j, long j2) {
        this.firstLine = j;
        this.restLine = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextIndent)) {
            return false;
        }
        TextIndent textIndent = (TextIndent) obj;
        return TextUnit.m451equalsimpl0(this.firstLine, textIndent.firstLine) && TextUnit.m451equalsimpl0(this.restLine, textIndent.restLine);
    }

    public final int hashCode() {
        return TextUnit.m454hashCodeimpl(this.restLine) + (TextUnit.m454hashCodeimpl(this.firstLine) * 31);
    }

    public final String toString() {
        return "TextIndent(firstLine=" + ((Object) TextUnit.m455toStringimpl(this.firstLine)) + ", restLine=" + ((Object) TextUnit.m455toStringimpl(this.restLine)) + ')';
    }
}
