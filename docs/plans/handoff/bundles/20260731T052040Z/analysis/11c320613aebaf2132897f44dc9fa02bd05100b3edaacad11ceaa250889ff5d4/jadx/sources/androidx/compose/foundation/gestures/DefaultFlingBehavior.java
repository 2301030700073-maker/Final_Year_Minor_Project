package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.DecayAnimationSpecImpl;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultFlingBehavior implements FlingBehavior {
    public DecayAnimationSpecImpl flingDecay;

    public DefaultFlingBehavior(DecayAnimationSpecImpl decayAnimationSpecImpl) {
        this.flingDecay = decayAnimationSpecImpl;
    }

    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public final Object performFling(ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, float f, Continuation continuation) {
        return JobKt.withContext(ScrollableKt.DefaultScrollMotionDurationScale, new DefaultFlingBehavior$performFling$2(f, this, scrollingLogic$doFlingAnimation$2$reverseScope$1, null), continuation);
    }
}
