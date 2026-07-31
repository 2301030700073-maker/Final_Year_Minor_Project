package androidx.compose.ui.graphics.colorspace;

import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Rgb$$ExternalSyntheticLambda1 implements DoubleFunction {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Rgb f$0;

    public /* synthetic */ Rgb$$ExternalSyntheticLambda1(Rgb rgb, int i) {
        this.$r8$classId = i;
        this.f$0 = rgb;
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public final double invoke(double d) {
        int i = this.$r8$classId;
        Rgb rgb = this.f$0;
        switch (i) {
            case 0:
                return RegexKt.coerceIn(rgb.oetfOrig.invoke(d), rgb.min, rgb.max);
            default:
                return rgb.eotfOrig.invoke(RegexKt.coerceIn(d, rgb.min, rgb.max));
        }
    }
}
