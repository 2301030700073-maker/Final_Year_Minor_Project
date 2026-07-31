package androidx.compose.animation.core;

import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FloatSpringSpec implements FloatAnimationSpec {
    public final SpringSimulation spring;
    public final float visibilityThreshold;

    public FloatSpringSpec(float f, float f2, float f3) {
        this.visibilityThreshold = f3;
        SpringSimulation springSimulation = new SpringSimulation();
        springSimulation.finalPosition = 1.0f;
        springSimulation.naturalFreq = Math.sqrt(50.0d);
        springSimulation.dampingRatio = 1.0f;
        if (f < RecyclerView.DECELERATION_RATE) {
            PreconditionsKt.throwIllegalArgumentException("Damping ratio must be non-negative");
        }
        springSimulation.dampingRatio = f;
        double d = springSimulation.naturalFreq;
        if (((float) (d * d)) <= RecyclerView.DECELERATION_RATE) {
            PreconditionsKt.throwIllegalArgumentException("Spring stiffness constant must be positive.");
        }
        springSimulation.naturalFreq = Math.sqrt(f2);
        this.spring = springSimulation;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0132  */
    @Override // androidx.compose.animation.core.FloatAnimationSpec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long getDurationNanos(float r34, float r35, float r36) {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.FloatSpringSpec.getDurationNanos(float, float, float):long");
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float getEndVelocity(float f, float f2, float f3) {
        return RecyclerView.DECELERATION_RATE;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float getValueFromNanos(long j, float f, float f2, float f3) {
        SpringSimulation springSimulation = this.spring;
        springSimulation.finalPosition = f2;
        return Float.intBitsToFloat((int) (springSimulation.m27updateValuesIJZedt4$animation_core(f, f3, j / 1000000) >> 32));
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float getVelocityFromNanos(long j, float f, float f2, float f3) {
        SpringSimulation springSimulation = this.spring;
        springSimulation.finalPosition = f2;
        return Float.intBitsToFloat((int) (springSimulation.m27updateValuesIJZedt4$animation_core(f, f3, j / 1000000) & 4294967295L));
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        return new ImageLoader$Builder(this);
    }
}
