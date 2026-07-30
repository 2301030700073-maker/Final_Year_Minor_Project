package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.ui.MotionDurationScale;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;

/* compiled from: Scrollable.kt */
/* loaded from: classes.dex */
public final class DefaultFlingBehavior implements FlingBehavior {
    private DecayAnimationSpec flingDecay;
    private int lastAnimationCycleCount;
    private final MotionDurationScale motionDurationScale;

    public DefaultFlingBehavior(DecayAnimationSpec decayAnimationSpec, MotionDurationScale motionDurationScale) {
        this.flingDecay = decayAnimationSpec;
        this.motionDurationScale = motionDurationScale;
    }

    public final DecayAnimationSpec getFlingDecay() {
        return this.flingDecay;
    }

    public final void setFlingDecay(DecayAnimationSpec decayAnimationSpec) {
        this.flingDecay = decayAnimationSpec;
    }

    public /* synthetic */ DefaultFlingBehavior(DecayAnimationSpec decayAnimationSpec, MotionDurationScale motionDurationScale, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(decayAnimationSpec, (i & 2) != 0 ? ScrollableKt.getDefaultScrollMotionDurationScale() : motionDurationScale);
    }

    public final int getLastAnimationCycleCount() {
        return this.lastAnimationCycleCount;
    }

    public final void setLastAnimationCycleCount(int i) {
        this.lastAnimationCycleCount = i;
    }

    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public Object performFling(ScrollScope scrollScope, float f, Continuation continuation) {
        this.lastAnimationCycleCount = 0;
        return BuildersKt.withContext(this.motionDurationScale, new DefaultFlingBehavior$performFling$2(f, this, scrollScope, null), continuation);
    }
}
