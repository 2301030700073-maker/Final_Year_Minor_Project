package androidx.compose.animation.core;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.AndroidFlingSpline;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DecayAnimation implements Animation {
    public final Dispatcher animationSpec;
    public final long durationNanos;
    public final AnimationVector endVelocity;
    public final Object initialValue;
    public final AnimationVector initialValueVector;
    public final AnimationVector initialVelocityVector;
    public final Object targetValue;
    public final TwoWayConverterImpl typeConverter;

    public DecayAnimation(DecayAnimationSpecImpl decayAnimationSpecImpl, TwoWayConverterImpl twoWayConverterImpl, Object obj, AnimationVector animationVector) {
        Dispatcher dispatcher = new Dispatcher(decayAnimationSpecImpl.floatDecaySpec, 3);
        this.animationSpec = dispatcher;
        this.typeConverter = twoWayConverterImpl;
        this.initialValue = obj;
        AnimationVector animationVector2 = (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj);
        this.initialValueVector = animationVector2;
        this.initialVelocityVector = ArcSplineKt.copy(animationVector);
        this.targetValue = twoWayConverterImpl.convertFromVector.invoke(dispatcher.getTargetValue(animationVector2, animationVector));
        if (((AnimationVector) dispatcher.runningAsyncCalls) == null) {
            dispatcher.runningAsyncCalls = animationVector2.newVector$animation_core();
        }
        AnimationVector animationVector3 = (AnimationVector) dispatcher.runningAsyncCalls;
        if (animationVector3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            throw null;
        }
        int size$animation_core = animationVector3.getSize$animation_core();
        long j = 0;
        for (int i = 0; i < size$animation_core; i++) {
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) dispatcher.executorServiceOrNull;
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
            animationVector4.set$animation_core(RangesKt.coerceIn(f, -0.0f, 0.0f), i2);
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
        if (Modifier.CC.$default$isFinishedFromNanos(this, j)) {
            return this.targetValue;
        }
        Function1 function1 = this.typeConverter.convertFromVector;
        Dispatcher dispatcher = this.animationSpec;
        AnimationVector animationVector = (AnimationVector) dispatcher.readyAsyncCalls;
        AnimationVector animationVector2 = this.initialValueVector;
        if (animationVector == null) {
            dispatcher.readyAsyncCalls = animationVector2.newVector$animation_core();
        }
        AnimationVector animationVector3 = (AnimationVector) dispatcher.readyAsyncCalls;
        if (animationVector3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueVector");
            throw null;
        }
        int size$animation_core = animationVector3.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector4 = (AnimationVector) dispatcher.readyAsyncCalls;
            if (i >= size$animation_core) {
                if (animationVector4 != null) {
                    return function1.invoke(animationVector4);
                }
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                throw null;
            }
            if (animationVector4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                throw null;
            }
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) dispatcher.executorServiceOrNull;
            float f = animationVector2.get$animation_core(i);
            long j2 = j / 1000000;
            FlingCalculator.FlingInfo flingInfo = ((FlingCalculator) popupMenu$1.this$0).flingInfo(this.initialVelocityVector.get$animation_core(i));
            long j3 = flingInfo.duration;
            animationVector4.set$animation_core((Math.signum(flingInfo.initialVelocity) * flingInfo.distance * AndroidFlingSpline.flingPosition(j3 > 0 ? j2 / j3 : 1.0f).distanceCoefficient) + f, i);
            i++;
        }
    }

    @Override // androidx.compose.animation.core.Animation
    public final AnimationVector getVelocityVectorFromNanos(long j) {
        if (Modifier.CC.$default$isFinishedFromNanos(this, j)) {
            return this.endVelocity;
        }
        return this.animationSpec.getVelocityFromNanos(j, this.initialValueVector, this.initialVelocityVector);
    }

    @Override // androidx.compose.animation.core.Animation
    public final /* synthetic */ boolean isFinishedFromNanos(long j) {
        return Modifier.CC.$default$isFinishedFromNanos(this, j);
    }

    @Override // androidx.compose.animation.core.Animation
    public final boolean isInfinite() {
        return false;
    }
}
