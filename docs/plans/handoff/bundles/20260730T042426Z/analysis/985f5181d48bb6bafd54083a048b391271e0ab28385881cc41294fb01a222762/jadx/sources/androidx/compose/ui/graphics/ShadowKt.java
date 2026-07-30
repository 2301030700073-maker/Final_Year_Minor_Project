package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.util.MathHelpersKt;

/* compiled from: Shadow.kt */
/* loaded from: classes.dex */
public abstract class ShadowKt {
    public static final Shadow lerp(Shadow shadow, Shadow shadow2, float f) {
        return new Shadow(ColorKt.m1322lerpjxsXWHM(shadow.m1408getColor0d7_KjU(), shadow2.m1408getColor0d7_KjU(), f), OffsetKt.m1183lerpWko1d7g(shadow.m1409getOffsetF1C5BW0(), shadow2.m1409getOffsetF1C5BW0(), f), MathHelpersKt.lerp(shadow.getBlurRadius(), shadow2.getBlurRadius(), f), null);
    }
}
