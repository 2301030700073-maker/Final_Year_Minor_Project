package androidx.compose.foundation.layout;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RowColumnParentData {
    public float weight = 0.0f;
    public boolean fill = true;
    public CrossAxisAlignment$HorizontalCrossAxisAlignment crossAxisAlignment = null;

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
        CrossAxisAlignment$HorizontalCrossAxisAlignment crossAxisAlignment$HorizontalCrossAxisAlignment = this.crossAxisAlignment;
        return (floatToIntBits + (crossAxisAlignment$HorizontalCrossAxisAlignment == null ? 0 : crossAxisAlignment$HorizontalCrossAxisAlignment.hashCode())) * 31;
    }

    public final String toString() {
        return "RowColumnParentData(weight=" + this.weight + ", fill=" + this.fill + ", crossAxisAlignment=" + this.crossAxisAlignment + ", flowLayoutData=null)";
    }
}
