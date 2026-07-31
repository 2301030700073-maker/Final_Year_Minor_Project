package androidx.compose.foundation.lazy.grid;

import androidx.cardview.widget.CardView;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.ui.unit.ConstraintsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GridSlotCache {
    public long cachedConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
    public float cachedDensity;
    public CardView.AnonymousClass1 cachedSizes;
    public final GapComposer$$ExternalSyntheticLambda3 calculation;

    public GridSlotCache(GapComposer$$ExternalSyntheticLambda3 gapComposer$$ExternalSyntheticLambda3) {
        this.calculation = gapComposer$$ExternalSyntheticLambda3;
    }
}
