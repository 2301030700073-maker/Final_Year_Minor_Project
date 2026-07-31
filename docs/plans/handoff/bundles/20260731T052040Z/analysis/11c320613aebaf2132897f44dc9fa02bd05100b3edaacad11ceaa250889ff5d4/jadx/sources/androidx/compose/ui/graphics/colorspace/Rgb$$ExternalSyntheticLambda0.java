package androidx.compose.ui.graphics.colorspace;

import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
