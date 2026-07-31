package androidx.compose.animation.core;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.view.PreviewView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return Float.floatToIntBits(this.stiffness) + CameraDevices$CC.m((obj != null ? obj.hashCode() : 0) * 31, this.dampingRatio, 31);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        Object obj = this.visibilityThreshold;
        return new PreviewView.AnonymousClass1(this.dampingRatio, this.stiffness, obj == null ? null : (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj));
    }

    public /* synthetic */ SpringSpec(Object obj) {
        this(1.0f, 1500.0f, obj);
    }
}
