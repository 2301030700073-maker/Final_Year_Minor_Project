package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.ConstraintsKt;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GridSlotCache {
    public long cachedConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
    public float cachedDensity;
    public LazyGridSlots cachedSizes;
    public final HintHandler$$ExternalSyntheticLambda0 calculation;

    public GridSlotCache(HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0) {
        this.calculation = hintHandler$$ExternalSyntheticLambda0;
    }
}
