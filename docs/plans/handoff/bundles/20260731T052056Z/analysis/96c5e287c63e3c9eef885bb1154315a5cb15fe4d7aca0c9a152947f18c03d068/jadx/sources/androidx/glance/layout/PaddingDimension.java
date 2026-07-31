package androidx.glance.layout;

import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PaddingDimension {
    public final float dp;
    public final List resourceIds;

    public PaddingDimension(int i, float f) {
        this((i & 1) != 0 ? RecyclerView.DECELERATION_RATE : f, EmptyList.INSTANCE);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PaddingDimension)) {
            return false;
        }
        PaddingDimension paddingDimension = (PaddingDimension) obj;
        return Dp.m693equalsimpl0(this.dp, paddingDimension.dp) && Intrinsics.areEqual(this.resourceIds, paddingDimension.resourceIds);
    }

    public final int hashCode() {
        return this.resourceIds.hashCode() + (Float.floatToIntBits(this.dp) * 31);
    }

    public final PaddingDimension plus(PaddingDimension paddingDimension) {
        return new PaddingDimension(this.dp + paddingDimension.dp, CollectionsKt.plus((Collection) this.resourceIds, (Iterable) paddingDimension.resourceIds));
    }

    public final String toString() {
        return "PaddingDimension(dp=" + ((Object) Dp.m694toStringimpl(this.dp)) + ", resourceIds=" + this.resourceIds + ')';
    }

    public PaddingDimension(float f, List list) {
        this.dp = f;
        this.resourceIds = list;
    }
}
