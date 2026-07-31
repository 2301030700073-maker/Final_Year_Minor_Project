package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface BringIntoViewSpec {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final SpringSpec DefaultScrollAnimationSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 7);
        public static final BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1 DefaultBringIntoViewSpec = new BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1(1);
    }

    float calculateScrollDistance(float f, float f2, float f3);

    SpringSpec getScrollAnimationSpec();
}
