package androidx.compose.animation.core;

/* compiled from: VectorizedAnimationSpec.kt */
/* loaded from: classes.dex */
public final class VectorizedSpringSpec implements VectorizedFiniteAnimationSpec {
    private final /* synthetic */ VectorizedFloatAnimationSpec $$delegate_0;
    private final float dampingRatio;
    private final float stiffness;

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.$$delegate_0.getDurationNanos(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.$$delegate_0.getEndVelocity(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.$$delegate_0.getValueFromNanos(j, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.$$delegate_0.getVelocityFromNanos(j, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public boolean isInfinite() {
        return this.$$delegate_0.isInfinite();
    }

    private VectorizedSpringSpec(float f, float f2, Animations animations) {
        this.dampingRatio = f;
        this.stiffness = f2;
        this.$$delegate_0 = new VectorizedFloatAnimationSpec(animations);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VectorizedSpringSpec(float r1, float r2, androidx.compose.animation.core.AnimationVector r3) {
        /*
            r0 = this;
            androidx.compose.animation.core.Animations r3 = androidx.compose.animation.core.VectorizedAnimationSpecKt.access$createSpringAnimations(r3, r1, r2)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.VectorizedSpringSpec.<init>(float, float, androidx.compose.animation.core.AnimationVector):void");
    }
}
