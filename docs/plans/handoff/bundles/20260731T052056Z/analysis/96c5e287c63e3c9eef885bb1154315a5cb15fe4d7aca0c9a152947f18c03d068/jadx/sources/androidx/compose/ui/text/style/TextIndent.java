package androidx.compose.ui.text.style;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import coil3.util.ContextsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextIndent {
    public static final TextIndent None = new TextIndent(ContextsKt.getSp(0), ContextsKt.getSp(0));
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
        return TextUnit.m723equalsimpl0(this.firstLine, textIndent.firstLine) && TextUnit.m723equalsimpl0(this.restLine, textIndent.restLine);
    }

    public final int hashCode() {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        return Modifier.CC.m(this.restLine) + (Modifier.CC.m(this.firstLine) * 31);
    }

    public final String toString() {
        return "TextIndent(firstLine=" + ((Object) TextUnit.m727toStringimpl(this.firstLine)) + ", restLine=" + ((Object) TextUnit.m727toStringimpl(this.restLine)) + ')';
    }
}
