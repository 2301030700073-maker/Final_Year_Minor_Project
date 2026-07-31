package androidx.compose.animation.core;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.glance.session.SessionWorker$doWork$2$1;
import androidx.paging.Pager$pageFetcher$2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Animatable {
    public final SpringSpec defaultSpringSpec;
    public final AnimationState internalState;
    public final ParcelableSnapshotMutableState isRunning$delegate;
    public final AnimationVector lowerBoundVector;
    public final MutatorMutex mutatorMutex;
    public final AnimationVector negativeInfinityBounds;
    public final AnimationVector positiveInfinityBounds;
    public final ParcelableSnapshotMutableState targetValue$delegate;
    public final TwoWayConverterImpl typeConverter;
    public final AnimationVector upperBoundVector;
    public final Object visibilityThreshold;

    public Animatable(Object obj, TwoWayConverterImpl twoWayConverterImpl, Object obj2) {
        this.typeConverter = twoWayConverterImpl;
        this.visibilityThreshold = obj2;
        AnimationState animationState = new AnimationState(twoWayConverterImpl, obj, null, 60);
        this.internalState = animationState;
        this.isRunning$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
        this.targetValue$delegate = Updater.mutableStateOf$default(obj);
        this.mutatorMutex = new MutatorMutex();
        this.defaultSpringSpec = new SpringSpec(obj2);
        AnimationVector animationVector = animationState.velocityVector;
        boolean z = animationVector instanceof AnimationVector1D;
        AnimationVector animationVector2 = z ? ArcSplineKt.negativeInfinityBounds1D : animationVector instanceof AnimationVector2D ? ArcSplineKt.negativeInfinityBounds2D : animationVector instanceof AnimationVector3D ? ArcSplineKt.negativeInfinityBounds3D : ArcSplineKt.negativeInfinityBounds4D;
        this.negativeInfinityBounds = animationVector2;
        AnimationVector animationVector3 = z ? ArcSplineKt.positiveInfinityBounds1D : animationVector instanceof AnimationVector2D ? ArcSplineKt.positiveInfinityBounds2D : animationVector instanceof AnimationVector3D ? ArcSplineKt.positiveInfinityBounds3D : ArcSplineKt.positiveInfinityBounds4D;
        this.positiveInfinityBounds = animationVector3;
        this.lowerBoundVector = animationVector2;
        this.upperBoundVector = animationVector3;
    }

    public static Object animateTo$default(Animatable animatable, Object obj, AnimationSpec animationSpec, Function1 function1, Continuation continuation, int i) {
        if ((i & 2) != 0) {
            animationSpec = animatable.defaultSpringSpec;
        }
        AnimationSpec animationSpec2 = animationSpec;
        Object invoke = animatable.typeConverter.convertFromVector.invoke(animatable.internalState.velocityVector);
        if ((i & 8) != 0) {
            function1 = null;
        }
        Function1 function12 = function1;
        Object value = animatable.getValue();
        TwoWayConverterImpl twoWayConverterImpl = animatable.typeConverter;
        return MutatorMutex.mutate$default(animatable.mutatorMutex, new Animatable$runAnimation$2(animatable, invoke, new TargetBasedAnimation(animationSpec2, twoWayConverterImpl, value, obj, (AnimationVector) twoWayConverterImpl.convertToVector.invoke(invoke)), animatable.internalState.lastFrameTimeNanos, function12, null), continuation);
    }

    public final Object clampToBounds(Object obj) {
        AnimationVector animationVector = this.negativeInfinityBounds;
        AnimationVector animationVector2 = this.lowerBoundVector;
        boolean areEqual = Intrinsics.areEqual(animationVector2, animationVector);
        AnimationVector animationVector3 = this.upperBoundVector;
        if (!areEqual || !Intrinsics.areEqual(animationVector3, this.positiveInfinityBounds)) {
            TwoWayConverterImpl twoWayConverterImpl = this.typeConverter;
            AnimationVector animationVector4 = (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj);
            int size$animation_core = animationVector4.getSize$animation_core();
            boolean z = false;
            for (int i = 0; i < size$animation_core; i++) {
                if (animationVector4.get$animation_core(i) < animationVector2.get$animation_core(i) || animationVector4.get$animation_core(i) > animationVector3.get$animation_core(i)) {
                    animationVector4.set$animation_core(i, RegexKt.coerceIn(animationVector4.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
                    z = true;
                }
            }
            if (z) {
                return twoWayConverterImpl.convertFromVector.invoke(animationVector4);
            }
        }
        return obj;
    }

    public final void endAnimation() {
        AnimationState animationState = this.internalState;
        animationState.velocityVector.reset$animation_core();
        animationState.lastFrameTimeNanos = Long.MIN_VALUE;
        this.isRunning$delegate.setValue(Boolean.FALSE);
    }

    public final Object getValue() {
        return this.internalState.value$delegate.getValue();
    }

    public final boolean isRunning() {
        return ((Boolean) this.isRunning$delegate.getValue()).booleanValue();
    }

    public final Object snapTo(Object obj, Continuation continuation) {
        Object mutate$default = MutatorMutex.mutate$default(this.mutatorMutex, new SessionWorker$doWork$2$1(this, obj, null, 1), continuation);
        return mutate$default == CoroutineSingletons.COROUTINE_SUSPENDED ? mutate$default : Unit.INSTANCE;
    }

    public final Object stop(SuspendLambda suspendLambda) {
        Object mutate$default = MutatorMutex.mutate$default(this.mutatorMutex, new Pager$pageFetcher$2(1, this, null), suspendLambda);
        return mutate$default == CoroutineSingletons.COROUTINE_SUSPENDED ? mutate$default : Unit.INSTANCE;
    }

    public /* synthetic */ Animatable(Object obj, TwoWayConverterImpl twoWayConverterImpl, Object obj2, int i) {
        this(obj, twoWayConverterImpl, (i & 4) != 0 ? null : obj2);
    }
}
