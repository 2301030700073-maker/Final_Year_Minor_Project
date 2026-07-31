package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntOffset;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LazyLayoutItemAnimationKt {
    public static final SpringSpec InterruptionSpec;

    static {
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        InterruptionSpec = ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1);
    }
}
