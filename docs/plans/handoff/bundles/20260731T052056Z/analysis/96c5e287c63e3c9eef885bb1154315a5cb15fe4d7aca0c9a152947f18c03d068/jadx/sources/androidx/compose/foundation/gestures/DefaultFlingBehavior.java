package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.DecayAnimationSpecImpl;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultFlingBehavior implements FlingBehavior {
    public DecayAnimationSpecImpl flingDecay;

    public DefaultFlingBehavior(DecayAnimationSpecImpl decayAnimationSpecImpl) {
        this.flingDecay = decayAnimationSpecImpl;
    }

    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public final Object performFling(ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, float f, Continuation continuation) {
        return AwaitKt.withContext(ScrollableKt.DefaultScrollMotionDurationScale, new DefaultFlingBehavior$performFling$2(f, this, scrollingLogic$doFlingAnimation$2$reverseScope$1, null), continuation);
    }
}
