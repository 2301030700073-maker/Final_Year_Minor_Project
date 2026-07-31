package com.skydoves.landscapist.coil3;

import androidx.compose.ui.unit.Constraints;
import coil3.size.Dimension;
import coil3.size.DimensionKt;
import coil3.size.Size;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConstraintsSizeResolverKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: inferredCoilSize-BRTryo0, reason: not valid java name */
    public static final Size m965inferredCoilSizeBRTryo0(long j) {
        int i = (int) (3 & j);
        int i2 = (((i & 2) >> 1) * 3) + ((i & 1) << 1);
        if (((((int) (j >> 33)) & ((1 << (i2 + 13)) - 1)) - 1 == 0) || ((((1 << (18 - i2)) - 1) & ((int) (j >> (i2 + 46)))) - 1 == 0)) {
            return null;
        }
        return new Size(Constraints.m730getHasBoundedWidthimpl(j) ? Dimension.Pixels.m902boximpl(DimensionKt.Dimension(Constraints.m734getMaxWidthimpl(j))) : Dimension.Undefined.INSTANCE, Constraints.m729getHasBoundedHeightimpl(j) ? Dimension.Pixels.m902boximpl(DimensionKt.Dimension(Constraints.m733getMaxHeightimpl(j))) : Dimension.Undefined.INSTANCE);
    }
}
