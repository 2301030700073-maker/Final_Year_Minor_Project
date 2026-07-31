package coil3.size;

import coil3.size.Dimension;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DimensionKt {
    public static final int Dimension(int i) {
        return Dimension.Pixels.m903constructorimpl(i);
    }

    public static final int pxOrElse(Dimension dimension, Function0 function0) {
        return dimension instanceof Dimension.Pixels ? ((Dimension.Pixels) dimension).m908unboximpl() : ((Number) function0.invoke()).intValue();
    }
}
