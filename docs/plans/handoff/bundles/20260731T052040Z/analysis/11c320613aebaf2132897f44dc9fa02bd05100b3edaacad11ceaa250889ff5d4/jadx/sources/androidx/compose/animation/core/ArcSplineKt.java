package androidx.compose.animation.core;

import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.Transition.DeferredAnimation;
import androidx.compose.animation.core.Transition.TransitionAnimationState;
import androidx.compose.foundation.GestureNodeKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda5;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.AndroidUriHandler;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.RendererCapabilities;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ArcSplineKt {
    public static final AnimationVector1D positiveInfinityBounds1D = new AnimationVector1D(Float.POSITIVE_INFINITY);
    public static final AnimationVector2D positiveInfinityBounds2D = new AnimationVector2D(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final AnimationVector3D positiveInfinityBounds3D = new AnimationVector3D(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final AnimationVector4D positiveInfinityBounds4D = new AnimationVector4D(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final AnimationVector1D negativeInfinityBounds1D = new AnimationVector1D(Float.NEGATIVE_INFINITY);
    public static final AnimationVector2D negativeInfinityBounds2D = new AnimationVector2D(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
    public static final AnimationVector3D negativeInfinityBounds3D = new AnimationVector3D(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
    public static final AnimationVector4D negativeInfinityBounds4D = new AnimationVector4D(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
    public static final float[] OurPercentCache = new float[91];
    public static final ImageKt$$ExternalSyntheticLambda0 SeekableTransitionStateTotalDurationChanged = new ImageKt$$ExternalSyntheticLambda0(3);
    public static final TwoWayConverterImpl FloatToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(4), new ImageKt$$ExternalSyntheticLambda0(21));
    public static final TwoWayConverterImpl IntToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(5), new ImageKt$$ExternalSyntheticLambda0(6));
    public static final TwoWayConverterImpl DpToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(7), new ImageKt$$ExternalSyntheticLambda0(8));
    public static final TwoWayConverterImpl DpOffsetToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(9), new ImageKt$$ExternalSyntheticLambda0(10));
    public static final TwoWayConverterImpl SizeToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(11), new ImageKt$$ExternalSyntheticLambda0(12));
    public static final TwoWayConverterImpl OffsetToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(13), new ImageKt$$ExternalSyntheticLambda0(14));
    public static final TwoWayConverterImpl IntOffsetToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(15), new ImageKt$$ExternalSyntheticLambda0(16));
    public static final TwoWayConverterImpl IntSizeToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(17), new ImageKt$$ExternalSyntheticLambda0(18));
    public static final TwoWayConverterImpl RectToVector = new TwoWayConverterImpl(new ImageKt$$ExternalSyntheticLambda0(19), new ImageKt$$ExternalSyntheticLambda0(20));

    public static Animatable Animatable$default(float f) {
        return new Animatable(Float.valueOf(f), FloatToVector, Float.valueOf(0.01f), 8);
    }

    public static AnimationState AnimationState$default(float f, float f2, int i) {
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return new AnimationState(FloatToVector, Float.valueOf(f), new AnimationVector1D(f2), Long.MIN_VALUE, Long.MIN_VALUE, false);
    }

    public static final void UpdateInitialAndTargetValues(Transition transition, Transition.TransitionAnimationState transitionAnimationState, Color color, Color color2, FiniteAnimationSpec finiteAnimationSpec, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(867041821);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(transition) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(transitionAnimationState) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(color) : gapComposer.changedInstance(color) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(color2) : gapComposer.changedInstance(color2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (32768 & i) == 0 ? gapComposer.changed(finiteAnimationSpec) : gapComposer.changedInstance(finiteAnimationSpec) ? 16384 : 8192;
        }
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.skipToGroupEnd();
        } else if (transition.isSeeking()) {
            transitionAnimationState.updateInitialAndTargetValue$animation_core(color, color2, finiteAnimationSpec);
        } else {
            transitionAnimationState.updateTargetValue$animation_core(color2, finiteAnimationSpec);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda5(transition, transitionAnimationState, color, color2, finiteAnimationSpec, i, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ea A[Catch: CancellationException -> 0x0042, TRY_LEAVE, TryCatch #1 {CancellationException -> 0x0042, blocks: (B:16:0x003d, B:18:0x00d5, B:20:0x00ea, B:25:0x010d), top: B:15:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0124 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object animate(androidx.compose.animation.core.AnimationState r23, androidx.compose.animation.core.Animation r24, long r25, final kotlin.jvm.functions.Function1 r27, kotlin.coroutines.jvm.internal.ContinuationImpl r28) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.ArcSplineKt.animate(androidx.compose.animation.core.AnimationState, androidx.compose.animation.core.Animation, long, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static Object animate$default(float f, float f2, AnimationSpec animationSpec, Function2 function2, SuspendLambda suspendLambda, int i) {
        if ((i & 8) != 0) {
            animationSpec = spring$default(0.0f, 0.0f, null, 7);
        }
        AnimationSpec animationSpec2 = animationSpec;
        Float f3 = new Float(f);
        Float f4 = new Float(f2);
        Float f5 = new Float(0.0f);
        TwoWayConverterImpl twoWayConverterImpl = FloatToVector;
        Function1 function1 = twoWayConverterImpl.convertToVector;
        AnimationVector animationVector = (AnimationVector) function1.invoke(f5);
        if (animationVector == null) {
            animationVector = ((AnimationVector) function1.invoke(f3)).newVector$animation_core();
        }
        AnimationVector animationVector2 = animationVector;
        Object animate = animate(new AnimationState(twoWayConverterImpl, f3, animationVector2, 56), new TargetBasedAnimation(animationSpec2, twoWayConverterImpl, f3, f4, animationVector2), Long.MIN_VALUE, new DiskLruCache$$ExternalSyntheticLambda0(function2, 1), suspendLambda);
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (animate != coroutineSingletons) {
            animate = unit;
        }
        return animate == coroutineSingletons ? animate : unit;
    }

    public static final Object animateDecay(AnimationState animationState, DecayAnimationSpecImpl decayAnimationSpecImpl, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        Object animate = animate(animationState, new DecayAnimation(decayAnimationSpecImpl, animationState.typeConverter, animationState.value$delegate.getValue(), animationState.velocityVector), z ? animationState.lastFrameTimeNanos : Long.MIN_VALUE, function1, continuationImpl);
        return animate == CoroutineSingletons.COROUTINE_SUSPENDED ? animate : Unit.INSTANCE;
    }

    public static final Object animateTo(AnimationState animationState, Float f, AnimationSpec animationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        Object animate = animate(animationState, new TargetBasedAnimation(animationSpec, animationState.typeConverter, animationState.value$delegate.getValue(), f, animationState.velocityVector), z ? animationState.lastFrameTimeNanos : Long.MIN_VALUE, function1, continuationImpl);
        return animate == CoroutineSingletons.COROUTINE_SUSPENDED ? animate : Unit.INSTANCE;
    }

    public static final Object callWithFrameNanos(Animation animation, Function1 function1, SuspendAnimationKt$animate$4 suspendAnimationKt$animate$4) {
        if (!animation.isInfinite()) {
            return Updater.getMonotonicFrameClock(suspendAnimationKt$animate$4.getContext()).withFrameNanos(new GestureNodeKt$$ExternalSyntheticLambda0(function1, 1), suspendAnimationKt$animate$4);
        }
        if (suspendAnimationKt$animate$4.getContext().get(AndroidUriHandler.$$INSTANCE) == null) {
            return Updater.getMonotonicFrameClock(suspendAnimationKt$animate$4.getContext()).withFrameNanos(function1, suspendAnimationKt$animate$4);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
        return null;
    }

    public static final AnimationVector copy(AnimationVector animationVector) {
        AnimationVector newVector$animation_core = animationVector.newVector$animation_core();
        int size$animation_core = newVector$animation_core.getSize$animation_core();
        for (int i = 0; i < size$animation_core; i++) {
            newVector$animation_core.set$animation_core(animationVector.get$animation_core(i), i);
        }
        return newVector$animation_core;
    }

    public static AnimationState copy$default(AnimationState animationState, float f, float f2, int i) {
        if ((i & 1) != 0) {
            f = ((Number) animationState.value$delegate.getValue()).floatValue();
        }
        if ((i & 2) != 0) {
            f2 = ((AnimationVector1D) animationState.velocityVector).value;
        }
        return new AnimationState(animationState.typeConverter, Float.valueOf(f), new AnimationVector1D(f2), animationState.lastFrameTimeNanos, animationState.finishedTimeNanos, animationState.isRunning);
    }

    public static final Transition.DeferredAnimation createDeferredAnimation(Transition transition, TwoWayConverterImpl twoWayConverterImpl, String str, Composer composer, int i, int i2) {
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData;
        int i3 = 2;
        if ((i2 & 2) != 0) {
            str = "DeferredAnimation";
        }
        boolean changed = ((GapComposer) composer).changed(transition);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (changed || rememberedValue == neverEqualPolicy) {
            rememberedValue = transition.new DeferredAnimation(twoWayConverterImpl, str);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Transition.DeferredAnimation deferredAnimation = (Transition.DeferredAnimation) rememberedValue;
        boolean changed2 = gapComposer.changed(transition) | gapComposer.changedInstance(deferredAnimation);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed2 || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new Recomposer$$ExternalSyntheticLambda4(transition, deferredAnimation, i3);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(deferredAnimation, (Function1) rememberedValue2, gapComposer);
        if (transition.isSeeking() && (deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) deferredAnimation.data$delegate.getValue()) != null) {
            Transition transition2 = Transition.this;
            deferredAnimationData.animation.updateInitialAndTargetValue$animation_core(deferredAnimationData.targetValueByState.invoke(transition2.getSegment().getInitialState()), deferredAnimationData.targetValueByState.invoke(transition2.getSegment().getTargetState()), (FiniteAnimationSpec) deferredAnimationData.transitionSpec.invoke(transition2.getSegment()));
        }
        return deferredAnimation;
    }

    public static final Transition.TransitionAnimationState createTransitionAnimation(Transition transition, Color color, Color color2, FiniteAnimationSpec finiteAnimationSpec, TwoWayConverterImpl twoWayConverterImpl, Composer composer) {
        boolean changed = ((GapComposer) composer).changed(transition);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (changed || rememberedValue == neverEqualPolicy) {
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                AnimationVector animationVector = (AnimationVector) twoWayConverterImpl.convertToVector.invoke(color2);
                animationVector.reset$animation_core();
                Transition.TransitionAnimationState transitionAnimationState = transition.new TransitionAnimationState(color, animationVector, twoWayConverterImpl);
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                gapComposer.updateRememberedValue(transitionAnimationState);
                rememberedValue = transitionAnimationState;
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }
        Transition.TransitionAnimationState transitionAnimationState2 = (Transition.TransitionAnimationState) rememberedValue;
        UpdateInitialAndTargetValues(transition, transitionAnimationState2, color, color2, finiteAnimationSpec, gapComposer, 0);
        boolean changed2 = gapComposer.changed(transition) | gapComposer.changed(transitionAnimationState2);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed2 || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new Recomposer$$ExternalSyntheticLambda4(transition, transitionAnimationState2, 5);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(transitionAnimationState2, (Function1) rememberedValue2, gapComposer);
        return transitionAnimationState2;
    }

    public static final void doAnimationFrameWithScale(AnimationScope animationScope, long j, float f, Animation animation, AnimationState animationState, Function1 function1) {
        long durationNanos = f == 0.0f ? animation.getDurationNanos() : (long) ((j - animationScope.startTimeNanos) / f);
        animationScope.lastFrameTimeNanos = j;
        animationScope.value$delegate.setValue(animation.getValueFromNanos(durationNanos));
        animationScope.velocityVector = animation.getVelocityVectorFromNanos(durationNanos);
        if (animation.isFinishedFromNanos(durationNanos)) {
            animationScope.finishedTimeNanos = animationScope.lastFrameTimeNanos;
            animationScope.isRunning$delegate.setValue(Boolean.FALSE);
        }
        updateState(animationScope, animationState);
        function1.invoke(animationScope);
    }

    public static final float getDurationScale(CoroutineContext coroutineContext) {
        MotionDurationScale motionDurationScale = (MotionDurationScale) coroutineContext.get(Alignment.Companion.$$INSTANCE);
        float scaleFactor = motionDurationScale != null ? motionDurationScale.getScaleFactor() : 1.0f;
        if (scaleFactor >= 0.0f) {
            return scaleFactor;
        }
        PreconditionsKt.throwIllegalStateException("negative scale factor");
        return scaleFactor;
    }

    public static SpringSpec spring$default(float f, float f2, Object obj, int i) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        if ((i & 2) != 0) {
            f2 = 1500.0f;
        }
        if ((i & 4) != 0) {
            obj = null;
        }
        return new SpringSpec(f, f2, obj);
    }

    public static TweenSpec tween$default(int i, int i2, Easing easing) {
        int i3 = (i2 & 2) != 0 ? 0 : 90;
        if ((i2 & 4) != 0) {
            easing = EasingKt.FastOutSlowInEasing;
        }
        return new TweenSpec(i, i3, easing);
    }

    public static final void updateState(AnimationScope animationScope, AnimationState animationState) {
        animationState.value$delegate.setValue(animationScope.value$delegate.getValue());
        AnimationVector animationVector = animationState.velocityVector;
        AnimationVector animationVector2 = animationScope.velocityVector;
        int size$animation_core = animationVector.getSize$animation_core();
        for (int i = 0; i < size$animation_core; i++) {
            animationVector.set$animation_core(animationVector2.get$animation_core(i), i);
        }
        animationState.finishedTimeNanos = animationScope.finishedTimeNanos;
        animationState.lastFrameTimeNanos = animationScope.lastFrameTimeNanos;
        animationState.isRunning = ((Boolean) animationScope.isRunning$delegate.getValue()).booleanValue();
    }

    public static final Transition updateTransition(int i, int i2, Composer composer, Object obj) {
        String str = (i2 & 2) != 0 ? null : "ListColor";
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new Transition(new MutableTransitionState(obj), null, str);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Transition transition = (Transition) rememberedValue;
        transition.animateTo$animation_core(obj, gapComposer, (i & 14) | (i & 8) | 48);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new TransitionKt$$ExternalSyntheticLambda4(transition, 0);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(transition, (Function1) rememberedValue2, gapComposer);
        return transition;
    }
}
