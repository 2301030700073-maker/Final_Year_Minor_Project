package androidx.compose.animation.core;

/* compiled from: VectorizedAnimationSpec.kt */
/* loaded from: classes.dex */
public interface VectorizedAnimationSpec {
    long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);

    AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);

    AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);

    AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);

    boolean isInfinite();

    /* compiled from: VectorizedAnimationSpec.kt */
    /* renamed from: androidx.compose.animation.core.VectorizedAnimationSpec$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}
