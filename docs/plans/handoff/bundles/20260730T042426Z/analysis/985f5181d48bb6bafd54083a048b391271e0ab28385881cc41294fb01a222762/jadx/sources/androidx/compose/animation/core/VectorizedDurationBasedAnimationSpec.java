package androidx.compose.animation.core;

/* compiled from: VectorizedAnimationSpec.kt */
/* loaded from: classes.dex */
public interface VectorizedDurationBasedAnimationSpec extends VectorizedFiniteAnimationSpec {
    int getDelayMillis();

    int getDurationMillis();

    /* compiled from: VectorizedAnimationSpec.kt */
    /* renamed from: androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static long $default$getDurationNanos(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return (vectorizedDurationBasedAnimationSpec.getDelayMillis() + vectorizedDurationBasedAnimationSpec.getDurationMillis()) * 1000000;
        }
    }
}
