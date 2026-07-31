package androidx.compose.animation.core;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SpringSpec implements FiniteAnimationSpec {
    public final float dampingRatio;
    public final float stiffness;
    public final Object visibilityThreshold;

    public SpringSpec(float f, float f2, Object obj) {
        this.dampingRatio = f;
        this.stiffness = f2;
        this.visibilityThreshold = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SpringSpec) {
            SpringSpec springSpec = (SpringSpec) obj;
            if (springSpec.dampingRatio == this.dampingRatio && springSpec.stiffness == this.stiffness && Intrinsics.areEqual(springSpec.visibilityThreshold, this.visibilityThreshold)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.visibilityThreshold;
        return Float.floatToIntBits(this.stiffness) + Modifier.CC.m(this.dampingRatio, (obj != null ? obj.hashCode() : 0) * 31, 31);
    }

    @Override // androidx.compose.animation.core.FiniteAnimationSpec
    public final VectorizedFiniteAnimationSpec vectorize() {
        TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
        Object obj = this.visibilityThreshold;
        return new PopupMenu$1(this.dampingRatio, this.stiffness, obj == null ? null : (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj));
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        Object obj = this.visibilityThreshold;
        return new PopupMenu$1(this.dampingRatio, this.stiffness, obj == null ? null : (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj));
    }
}
