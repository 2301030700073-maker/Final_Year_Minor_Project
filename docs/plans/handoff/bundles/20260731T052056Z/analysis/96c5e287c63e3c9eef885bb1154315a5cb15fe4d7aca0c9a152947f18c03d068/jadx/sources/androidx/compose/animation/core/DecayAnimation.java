package androidx.compose.animation.core;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.AndroidFlingSpline;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DecayAnimation implements Animation {
    public final ImageLoader$Builder animationSpec;
    public final long durationNanos;
    public final AnimationVector endVelocity;
    public final Object initialValue;
    public final AnimationVector initialValueVector;
    public final AnimationVector initialVelocityVector;
    public final Object targetValue;
    public final TwoWayConverterImpl typeConverter;

    public DecayAnimation(DecayAnimationSpecImpl decayAnimationSpecImpl, TwoWayConverterImpl twoWayConverterImpl, Object obj, AnimationVector animationVector) {
        ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(3, decayAnimationSpecImpl.floatDecaySpec);
        this.animationSpec = imageLoader$Builder;
        this.typeConverter = twoWayConverterImpl;
        this.initialValue = obj;
        AnimationVector animationVector2 = (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj);
        this.initialValueVector = animationVector2;
        this.initialVelocityVector = ArcSplineKt.copy(animationVector);
        this.targetValue = twoWayConverterImpl.convertFromVector.invoke(imageLoader$Builder.getTargetValue(animationVector2, animationVector));
        AnimationVector animationVector3 = (AnimationVector) imageLoader$Builder.componentRegistry;
        if (animationVector3 == null) {
            animationVector3 = animationVector2.newVector$animation_core();
            imageLoader$Builder.componentRegistry = animationVector3;
        }
        int size$animation_core = animationVector3.getSize$animation_core();
        long j = 0;
        for (int i = 0; i < size$animation_core; i++) {
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) imageLoader$Builder.application;
            animationVector2.getClass();
            j = Math.max(j, ((long) (Math.exp(((FlingCalculator) popupMenu$1.this$0).getSplineDeceleration(animationVector.get$animation_core(i)) / (FlingCalculatorKt.DecelerationRate - 1.0d)) * 1000.0d)) * 1000000);
        }
        this.durationNanos = j;
        AnimationVector copy = ArcSplineKt.copy(this.animationSpec.getVelocityFromNanos(j, this.initialValueVector, animationVector));
        this.endVelocity = copy;
        int size$animation_core2 = copy.getSize$animation_core();
        for (int i2 = 0; i2 < size$animation_core2; i2++) {
            AnimationVector animationVector4 = this.endVelocity;
            float f = animationVector4.get$animation_core(i2);
            this.animationSpec.getClass();
            this.animationSpec.getClass();
            animationVector4.set$animation_core(i2, RegexKt.coerceIn(f, -0.0f, RecyclerView.DECELERATION_RATE));
        }
    }

    @Override // androidx.compose.animation.core.Animation
    public final long getDurationNanos() {
        return this.durationNanos;
    }

    @Override // androidx.compose.animation.core.Animation
    public final Object getTargetValue() {
        return this.targetValue;
    }

    @Override // androidx.compose.animation.core.Animation
    public final TwoWayConverterImpl getTypeConverter() {
        return this.typeConverter;
    }

    @Override // androidx.compose.animation.core.Animation
    public final Object getValueFromNanos(long j) {
        if (Animation.CC.$default$isFinishedFromNanos(this, j)) {
            return this.targetValue;
        }
        Function1 function1 = this.typeConverter.convertFromVector;
        ImageLoader$Builder imageLoader$Builder = this.animationSpec;
        AnimationVector animationVector = (AnimationVector) imageLoader$Builder.defaults;
        AnimationVector animationVector2 = this.initialValueVector;
        if (animationVector == null) {
            animationVector = animationVector2.newVector$animation_core();
            imageLoader$Builder.defaults = animationVector;
        }
        int size$animation_core = animationVector.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector3 = (AnimationVector) imageLoader$Builder.defaults;
            if (i >= size$animation_core) {
                if (animationVector3 != null) {
                    return function1.invoke(animationVector3);
                }
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                throw null;
            }
            if (animationVector3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                throw null;
            }
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) imageLoader$Builder.application;
            float f = animationVector2.get$animation_core(i);
            long j2 = j / 1000000;
            FlingCalculator.FlingInfo flingInfo = ((FlingCalculator) popupMenu$1.this$0).flingInfo(this.initialVelocityVector.get$animation_core(i));
            long j3 = flingInfo.duration;
            animationVector3.set$animation_core(i, (Math.signum(flingInfo.initialVelocity) * flingInfo.distance * AndroidFlingSpline.flingPosition(j3 > 0 ? j2 / j3 : 1.0f).distanceCoefficient) + f);
            i++;
        }
    }

    @Override // androidx.compose.animation.core.Animation
    public final AnimationVector getVelocityVectorFromNanos(long j) {
        if (Animation.CC.$default$isFinishedFromNanos(this, j)) {
            return this.endVelocity;
        }
        return this.animationSpec.getVelocityFromNanos(j, this.initialValueVector, this.initialVelocityVector);
    }

    @Override // androidx.compose.animation.core.Animation
    public final /* synthetic */ boolean isFinishedFromNanos(long j) {
        return Animation.CC.$default$isFinishedFromNanos(this, j);
    }

    @Override // androidx.compose.animation.core.Animation
    public final boolean isInfinite() {
        return false;
    }
}
