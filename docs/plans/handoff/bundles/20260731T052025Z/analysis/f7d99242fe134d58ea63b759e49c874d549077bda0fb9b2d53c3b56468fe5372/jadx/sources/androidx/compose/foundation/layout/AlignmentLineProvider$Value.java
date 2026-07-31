package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AlignmentLineProvider$Value {
    public final AlignmentLine alignmentLine;

    public AlignmentLineProvider$Value(AlignmentLine alignmentLine) {
        this.alignmentLine = alignmentLine;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AlignmentLineProvider$Value) && Intrinsics.areEqual(this.alignmentLine, ((AlignmentLineProvider$Value) obj).alignmentLine);
    }

    public final int hashCode() {
        return this.alignmentLine.hashCode();
    }

    public final String toString() {
        return "Value(alignmentLine=" + this.alignmentLine + ')';
    }
}
