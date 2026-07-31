package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LazyLayoutItemAnimationKt {
    public static final SpringSpec InterruptionSpec;

    static {
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        InterruptionSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, new IntOffset(4294967297L), 1);
    }
}
