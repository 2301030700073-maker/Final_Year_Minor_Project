package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface BringIntoViewSpec {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final SpringSpec DefaultScrollAnimationSpec = ArcSplineKt.spring$default(0.0f, 0.0f, null, 7);
        public static final BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1 DefaultBringIntoViewSpec = new BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1(1);
    }

    float calculateScrollDistance(float f, float f2, float f3);

    SpringSpec getScrollAnimationSpec();
}
