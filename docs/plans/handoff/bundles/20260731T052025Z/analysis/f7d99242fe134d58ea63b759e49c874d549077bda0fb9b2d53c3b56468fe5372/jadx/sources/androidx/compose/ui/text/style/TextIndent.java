package androidx.compose.ui.text.style;

import androidx.compose.ui.unit.TextUnit;
import androidx.sqlite.SQLite;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextIndent {
    public static final TextIndent None = new TextIndent(SQLite.getSp(0), SQLite.getSp(0));
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
        return TextUnit.m771equalsimpl0(this.firstLine, textIndent.firstLine) && TextUnit.m771equalsimpl0(this.restLine, textIndent.restLine);
    }

    public final int hashCode() {
        return TextUnit.m774hashCodeimpl(this.restLine) + (TextUnit.m774hashCodeimpl(this.firstLine) * 31);
    }

    public final String toString() {
        return "TextIndent(firstLine=" + ((Object) TextUnit.m775toStringimpl(this.firstLine)) + ", restLine=" + ((Object) TextUnit.m775toStringimpl(this.restLine)) + ')';
    }
}
