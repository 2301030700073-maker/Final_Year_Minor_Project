package coil3.size;

import coil3.size.Dimension;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SizeKt {
    public static final Size Size(int i, int i2) {
        return new Size(Dimension.Pixels.m902boximpl(DimensionKt.Dimension(i)), Dimension.Pixels.m902boximpl(DimensionKt.Dimension(i2)));
    }

    public static final boolean isOriginal(Size size) {
        return Intrinsics.areEqual(size, Size.ORIGINAL);
    }

    public static final Size Size(Dimension dimension, int i) {
        return new Size(dimension, Dimension.Pixels.m902boximpl(DimensionKt.Dimension(i)));
    }

    public static final Size Size(int i, Dimension dimension) {
        return new Size(Dimension.Pixels.m902boximpl(DimensionKt.Dimension(i)), dimension);
    }
}
