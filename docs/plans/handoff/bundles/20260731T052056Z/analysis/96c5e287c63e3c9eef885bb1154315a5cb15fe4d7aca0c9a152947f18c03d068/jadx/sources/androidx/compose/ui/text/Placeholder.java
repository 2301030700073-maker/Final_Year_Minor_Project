package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        return TextUnit.m723equalsimpl0(this.width, placeholder.width) && TextUnit.m723equalsimpl0(this.height, placeholder.height);
    }

    public final int hashCode() {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        return ((Modifier.CC.m(this.height) + (Modifier.CC.m(this.width) * 31)) * 31) + 4;
    }

    public final String toString() {
        return "Placeholder(width=" + ((Object) TextUnit.m727toStringimpl(this.width)) + ", height=" + ((Object) TextUnit.m727toStringimpl(this.height)) + ", placeholderVerticalAlign=" + ((Object) "Center") + ')';
    }
}
