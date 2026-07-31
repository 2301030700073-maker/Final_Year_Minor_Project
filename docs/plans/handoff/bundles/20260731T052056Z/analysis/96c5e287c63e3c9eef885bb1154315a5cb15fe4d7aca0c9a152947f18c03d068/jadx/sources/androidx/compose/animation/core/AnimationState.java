package androidx.compose.animation.core;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimationState implements State {
    public long finishedTimeNanos;
    public boolean isRunning;
    public long lastFrameTimeNanos;
    public final TwoWayConverterImpl typeConverter;
    public final ParcelableSnapshotMutableState value$delegate;
    public AnimationVector velocityVector;

    public AnimationState(TwoWayConverterImpl twoWayConverterImpl, Object obj, AnimationVector animationVector, long j, long j2, boolean z) {
        AnimationVector animationVector2;
        this.typeConverter = twoWayConverterImpl;
        this.value$delegate = Updater.mutableStateOf$default(obj);
        if (animationVector != null) {
            animationVector2 = ArcSplineKt.copy(animationVector);
        } else {
            animationVector2 = (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj);
            animationVector2.reset$animation_core();
        }
        this.velocityVector = animationVector2;
        this.lastFrameTimeNanos = j;
        this.finishedTimeNanos = j2;
        this.isRunning = z;
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return this.value$delegate.getValue();
    }

    public final Object getVelocity() {
        return this.typeConverter.convertFromVector.invoke(this.velocityVector);
    }

    public final String toString() {
        return "AnimationState(value=" + this.value$delegate.getValue() + ", velocity=" + getVelocity() + ", isRunning=" + this.isRunning + ", lastFrameTimeNanos=" + this.lastFrameTimeNanos + ", finishedTimeNanos=" + this.finishedTimeNanos + ')';
    }

    public /* synthetic */ AnimationState(TwoWayConverterImpl twoWayConverterImpl, Object obj, AnimationVector animationVector, int i) {
        this(twoWayConverterImpl, obj, (i & 4) != 0 ? null : animationVector, Long.MIN_VALUE, Long.MIN_VALUE, false);
    }
}
