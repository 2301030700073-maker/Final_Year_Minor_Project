package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface BringIntoViewSpec {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final SpringSpec DefaultScrollAnimationSpec = ArcSplineKt.spring$default(0.0f, 0.0f, null, 7);
        public static final BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1 DefaultBringIntoViewSpec = new BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1(1);
    }

    float calculateScrollDistance(float f, float f2, float f3);

    SpringSpec getScrollAnimationSpec();
}
