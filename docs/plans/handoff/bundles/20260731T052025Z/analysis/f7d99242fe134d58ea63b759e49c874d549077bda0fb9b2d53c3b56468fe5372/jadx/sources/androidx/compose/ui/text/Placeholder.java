package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Placeholder {
    public final long height;
    public final long width;

    public Placeholder(long j, long j2) {
        this.width = j;
        this.height = j2;
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        if ((j & 1095216660480L) == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("width cannot be TextUnit.Unspecified");
        }
        if ((j2 & 1095216660480L) == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("height cannot be TextUnit.Unspecified");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Placeholder)) {
            return false;
        }
        Placeholder placeholder = (Placeholder) obj;
        return TextUnit.m771equalsimpl0(this.width, placeholder.width) && TextUnit.m771equalsimpl0(this.height, placeholder.height);
    }

    public final int hashCode() {
        return ((TextUnit.m774hashCodeimpl(this.height) + (TextUnit.m774hashCodeimpl(this.width) * 31)) * 31) + 4;
    }

    public final String toString() {
        return "Placeholder(width=" + ((Object) TextUnit.m775toStringimpl(this.width)) + ", height=" + ((Object) TextUnit.m775toStringimpl(this.height)) + ", placeholderVerticalAlign=" + ((Object) "Center") + ')';
    }
}
