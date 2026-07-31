package androidx.compose.ui.graphics.colorspace;

import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Rgb$$ExternalSyntheticLambda0 implements DoubleFunction {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Rgb f$0;

    public /* synthetic */ Rgb$$ExternalSyntheticLambda0(Rgb rgb, int i) {
        this.$r8$classId = i;
        this.f$0 = rgb;
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public final double invoke(double d) {
        int i = this.$r8$classId;
        Rgb rgb = this.f$0;
        switch (i) {
            case 0:
                return RangesKt.coerceIn(rgb.oetfOrig.invoke(d), rgb.min, rgb.max);
            default:
                return rgb.eotfOrig.invoke(RangesKt.coerceIn(d, rgb.min, rgb.max));
        }
    }
}
