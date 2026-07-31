package androidx.compose.foundation.layout;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RowColumnParentData {
    public float weight = RecyclerView.DECELERATION_RATE;
    public boolean fill = true;
    public OffsetKt crossAxisAlignment = null;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RowColumnParentData)) {
            return false;
        }
        RowColumnParentData rowColumnParentData = (RowColumnParentData) obj;
        return Float.compare(this.weight, rowColumnParentData.weight) == 0 && this.fill == rowColumnParentData.fill && Intrinsics.areEqual(this.crossAxisAlignment, rowColumnParentData.crossAxisAlignment);
    }

    public final int hashCode() {
        int floatToIntBits = ((Float.floatToIntBits(this.weight) * 31) + (this.fill ? 1231 : 1237)) * 31;
        OffsetKt offsetKt = this.crossAxisAlignment;
        return (floatToIntBits + (offsetKt == null ? 0 : offsetKt.hashCode())) * 31;
    }

    public final String toString() {
        return "RowColumnParentData(weight=" + this.weight + ", fill=" + this.fill + ", crossAxisAlignment=" + this.crossAxisAlignment + ", flowLayoutData=null)";
    }
}
