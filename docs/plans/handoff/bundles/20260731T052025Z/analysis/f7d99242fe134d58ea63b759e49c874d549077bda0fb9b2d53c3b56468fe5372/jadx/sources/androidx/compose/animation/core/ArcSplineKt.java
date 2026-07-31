package androidx.compose.animation.core;

import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.Transition.DeferredAnimation;
import androidx.compose.animation.core.Transition.TransitionAnimationState;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public static final BorderKt$$ExternalSyntheticLambda1 SeekableTransitionStateTotalDurationChanged = new BorderKt$$ExternalSyntheticLambda1(10);
    public static final TwoWayConverterImpl FloatToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(11), new BorderKt$$ExternalSyntheticLambda1(28));
    public static final TwoWayConverterImpl IntToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(12), new BorderKt$$ExternalSyntheticLambda1(13));
    public static final TwoWayConverterImpl DpToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(14), new BorderKt$$ExternalSyntheticLambda1(15));
    public static final TwoWayConverterImpl DpOffsetToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(16), new BorderKt$$ExternalSyntheticLambda1(17));
    public static final TwoWayConverterImpl SizeToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(18), new BorderKt$$ExternalSyntheticLambda1(19));
    public static final TwoWayConverterImpl OffsetToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(20), new BorderKt$$ExternalSyntheticLambda1(21));
    public static final TwoWayConverterImpl IntOffsetToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(22), new BorderKt$$ExternalSyntheticLambda1(23));
    public static final TwoWayConverterImpl IntSizeToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(24), new BorderKt$$ExternalSyntheticLambda1(25));
    public static final TwoWayConverterImpl RectToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(26), new BorderKt$$ExternalSyntheticLambda1(27));

    public static Animatable Animatable$default(float f) {
        return new Animatable(Float.valueOf(f), FloatToVector, Float.valueOf(0.01f), 8);
    }

    public static AnimationState AnimationState$default(int i, float f) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return new AnimationState(FloatToVector, Float.valueOf(0.0f), new AnimationVector1D(f), Long.MIN_VALUE, Long.MIN_VALUE, false);
    }

    public static final void UpdateInitialAndTargetValues(Transition transition, Transition.TransitionAnimationState transitionAnimationState, Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec, Composer composer, int i) {
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
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(obj) : gapComposer.changedInstance(obj) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(obj2) : gapComposer.changedInstance(obj2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (32768 & i) == 0 ? gapComposer.changed(finiteAnimationSpec) : gapComposer.changedInstance(finiteAnimationSpec) ? 16384 : 8192;
        }
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.skipToGroupEnd();
        } else if (transition.isSeeking()) {
            transitionAnimationState.updateInitialAndTargetValue$animation_core(obj, obj2, finiteAnimationSpec);
        } else {
            transitionAnimationState.updateTargetValue$animation_core(obj2, finiteAnimationSpec);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0(transition, transitionAnimationState, obj, obj2, finiteAnimationSpec, i, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0115 A[Catch: CancellationException -> 0x003c, TRY_LEAVE, TryCatch #2 {CancellationException -> 0x003c, blocks: (B:16:0x0037, B:18:0x0100, B:20:0x0115, B:25:0x0138, B:27:0x0148, B:29:0x0152, B:36:0x015f, B:37:0x0164, B:39:0x0165), top: B:15:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x017f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object animate(androidx.compose.animation.core.AnimationState r24, androidx.compose.animation.core.Animation r25, long r26, final kotlin.jvm.functions.Function1 r28, kotlin.coroutines.jvm.internal.ContinuationImpl r29) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.ArcSplineKt.animate(androidx.compose.animation.core.AnimationState, androidx.compose.animation.core.Animation, long, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static Object animateDecay$default(AnimationState animationState, DecayAnimationSpecImpl decayAnimationSpecImpl, Function1 function1, ContinuationImpl continuationImpl) {
        Object animate = animate(animationState, new DecayAnimation(decayAnimationSpecImpl, animationState.typeConverter, animationState.value$delegate.getValue(), animationState.velocityVector), Long.MIN_VALUE, function1, continuationImpl);
        return animate == CoroutineSingletons.COROUTINE_SUSPENDED ? animate : Unit.INSTANCE;
    }

    public static final InfiniteTransition.TransitionAnimationState animateFloat(InfiniteTransition infiniteTransition, float f, float f2, InfiniteRepeatableSpec infiniteRepeatableSpec, Composer composer, int i, int i2) {
        InfiniteTransition.TransitionAnimationState transitionAnimationState;
        Float valueOf = Float.valueOf(f);
        Float valueOf2 = Float.valueOf(f2);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new InfiniteTransition.TransitionAnimationState(infiniteTransition, valueOf, valueOf2, infiniteRepeatableSpec);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        InfiniteTransition.TransitionAnimationState transitionAnimationState2 = (InfiniteTransition.TransitionAnimationState) rememberedValue;
        boolean changedInstance = gapComposer.changedInstance(infiniteRepeatableSpec);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue2 == neverEqualPolicy) {
            transitionAnimationState = transitionAnimationState2;
            GapComposer$$ExternalSyntheticLambda0 gapComposer$$ExternalSyntheticLambda0 = new GapComposer$$ExternalSyntheticLambda0(valueOf, transitionAnimationState, valueOf2, infiniteRepeatableSpec, 3);
            gapComposer.updateRememberedValue(gapComposer$$ExternalSyntheticLambda0);
            rememberedValue2 = gapComposer$$ExternalSyntheticLambda0;
        } else {
            transitionAnimationState = transitionAnimationState2;
        }
        Updater.SideEffect((Function0) rememberedValue2, gapComposer);
        boolean changedInstance2 = gapComposer.changedInstance(infiniteTransition);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
            rememberedValue3 = new BackHandlerKt$$ExternalSyntheticLambda2(8, infiniteTransition, transitionAnimationState);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        Updater.DisposableEffect(transitionAnimationState, (Function1) rememberedValue3, gapComposer);
        return transitionAnimationState;
    }

    public static final Object animateTo(AnimationState animationState, Float f, AnimationSpec animationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        Object animate = animate(animationState, new TargetBasedAnimation(animationSpec, animationState.typeConverter, animationState.value$delegate.getValue(), f, animationState.velocityVector), z ? animationState.lastFrameTimeNanos : Long.MIN_VALUE, function1, continuationImpl);
        return animate == CoroutineSingletons.COROUTINE_SUSPENDED ? animate : Unit.INSTANCE;
    }

    public static /* synthetic */ Object animateTo$default(AnimationState animationState, Float f, SpringSpec springSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl, int i) {
        if ((i & 2) != 0) {
            springSpec = spring$default(0.0f, 0.0f, null, 7);
        }
        SpringSpec springSpec2 = springSpec;
        if ((i & 8) != 0) {
            function1 = new BorderKt$$ExternalSyntheticLambda1(9);
        }
        return animateTo(animationState, f, springSpec2, z, function1, continuationImpl);
    }

    public static final AnimationVector copy(AnimationVector animationVector) {
        AnimationVector newVector$animation_core = animationVector.newVector$animation_core();
        int size$animation_core = newVector$animation_core.getSize$animation_core();
        for (int i = 0; i < size$animation_core; i++) {
            newVector$animation_core.set$animation_core(i, animationVector.get$animation_core(i));
        }
        return newVector$animation_core;
    }

    public static AnimationState copy$default(AnimationState animationState, float f) {
        float f2 = ((AnimationVector1D) animationState.velocityVector).value;
        return new AnimationState(animationState.typeConverter, Float.valueOf(f), new AnimationVector1D(f2), animationState.lastFrameTimeNanos, animationState.finishedTimeNanos, animationState.isRunning);
    }

    public static final Transition.DeferredAnimation createDeferredAnimation(Transition transition, TwoWayConverterImpl twoWayConverterImpl, String str, Composer composer, int i, int i2) {
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData;
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
            rememberedValue2 = new BackHandlerKt$$ExternalSyntheticLambda2(14, transition, deferredAnimation);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(deferredAnimation, (Function1) rememberedValue2, gapComposer);
        if (transition.isSeeking() && (deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) deferredAnimation.data$delegate.getValue()) != null) {
            Transition transition2 = Transition.this;
            deferredAnimationData.animation.updateInitialAndTargetValue$animation_core(deferredAnimationData.targetValueByState.invoke(transition2.getSegment().getInitialState()), deferredAnimationData.targetValueByState.invoke(transition2.getSegment().getTargetState()), (FiniteAnimationSpec) deferredAnimationData.transitionSpec.invoke(transition2.getSegment()));
        }
        return deferredAnimation;
    }

    public static final Transition.TransitionAnimationState createTransitionAnimation(Transition transition, Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec, TwoWayConverterImpl twoWayConverterImpl, Composer composer, int i) {
        boolean changed = ((GapComposer) composer).changed(transition);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (changed || rememberedValue == neverEqualPolicy) {
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                AnimationVector animationVector = (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj2);
                animationVector.reset$animation_core();
                Transition.TransitionAnimationState transitionAnimationState = transition.new TransitionAnimationState(obj, animationVector, twoWayConverterImpl);
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                gapComposer.updateRememberedValue(transitionAnimationState);
                rememberedValue = transitionAnimationState;
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }
        Transition.TransitionAnimationState transitionAnimationState2 = (Transition.TransitionAnimationState) rememberedValue;
        UpdateInitialAndTargetValues(transition, transitionAnimationState2, obj, obj2, finiteAnimationSpec, gapComposer, 0);
        boolean changed2 = gapComposer.changed(transition) | gapComposer.changed(transitionAnimationState2);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed2 || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new BackHandlerKt$$ExternalSyntheticLambda2(12, transition, transitionAnimationState2);
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

    /* renamed from: infiniteRepeatable-9IiC70o$default, reason: not valid java name */
    public static InfiniteRepeatableSpec m112infiniteRepeatable9IiC70o$default(DurationBasedAnimationSpec durationBasedAnimationSpec, int i) {
        return new InfiniteRepeatableSpec(durationBasedAnimationSpec, RepeatMode.Restart);
    }

    public static final InfiniteTransition rememberInfiniteTransition(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new InfiniteTransition();
            gapComposer.updateRememberedValue(rememberedValue);
        }
        InfiniteTransition infiniteTransition = (InfiniteTransition) rememberedValue;
        infiniteTransition.run$animation_core(gapComposer, 0);
        return infiniteTransition;
    }

    public static final Transition rememberTransition(DnsQueryResult dnsQueryResult, String str, Composer composer, int i) {
        int i2 = (i & 14) ^ 6;
        int i3 = 1;
        boolean z = (i2 > 4 && ((GapComposer) composer).changed(dnsQueryResult)) || (i & 6) == 4;
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer.Companion.Empty;
        Continuation continuation = null;
        if (z || rememberedValue == obj) {
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                Object transition = new Transition(dnsQueryResult, null, str);
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                gapComposer.updateRememberedValue(transition);
                rememberedValue = transition;
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }
        Transition transition2 = (Transition) rememberedValue;
        if (dnsQueryResult instanceof SeekableTransitionState) {
            gapComposer.startReplaceGroup(-1357590553);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Object obj2 = (CoroutineScope) rememberedValue2;
            boolean changedInstance = gapComposer.changedInstance(obj2) | ((i2 > 4 && gapComposer.changed(dnsQueryResult)) || (i & 6) == 4);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue3 == obj) {
                rememberedValue3 = new BackHandlerKt$$ExternalSyntheticLambda2(13, dnsQueryResult, obj2);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.DisposableEffect(obj2, (Function1) rememberedValue3, gapComposer);
            SeekableTransitionState seekableTransitionState = (SeekableTransitionState) dnsQueryResult;
            Object value = seekableTransitionState.currentState$delegate.getValue();
            Object value2 = seekableTransitionState.targetState$delegate.getValue();
            boolean z2 = (i2 > 4 && gapComposer.changed(dnsQueryResult)) || (i & 6) == 4;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z2 || rememberedValue4 == obj) {
                rememberedValue4 = new DraggableNode$drag$2(dnsQueryResult, continuation, 10);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Updater.LaunchedEffect(value, value2, (Function2) rememberedValue4, gapComposer);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-1356604288);
            transition2.animateTo$animation_core(dnsQueryResult.getTargetState(), gapComposer, 0);
            gapComposer.end(false);
        }
        boolean changed = gapComposer.changed(transition2);
        Object rememberedValue5 = gapComposer.rememberedValue();
        if (changed || rememberedValue5 == obj) {
            rememberedValue5 = new TransitionKt$$ExternalSyntheticLambda5(transition2, i3);
            gapComposer.updateRememberedValue(rememberedValue5);
        }
        Updater.DisposableEffect(transition2, (Function1) rememberedValue5, gapComposer);
        return transition2;
    }

    public static SnapSpec snap$default() {
        return new SnapSpec(0);
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

    public static TweenSpec tween$default(int i, int i2, Easing easing, int i3) {
        if ((i3 & 1) != 0) {
            i = 300;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            easing = EasingKt.FastOutSlowInEasing;
        }
        return new TweenSpec(i, i2, easing);
    }

    public static final void updateState(AnimationScope animationScope, AnimationState animationState) {
        animationState.value$delegate.setValue(animationScope.value$delegate.getValue());
        AnimationVector animationVector = animationState.velocityVector;
        AnimationVector animationVector2 = animationScope.velocityVector;
        int size$animation_core = animationVector.getSize$animation_core();
        for (int i = 0; i < size$animation_core; i++) {
            animationVector.set$animation_core(i, animationVector2.get$animation_core(i));
        }
        animationState.finishedTimeNanos = animationScope.finishedTimeNanos;
        animationState.lastFrameTimeNanos = animationScope.lastFrameTimeNanos;
        animationState.isRunning = ((Boolean) animationScope.isRunning$delegate.getValue()).booleanValue();
    }

    public static final Transition updateTransition(Object obj, String str, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new Transition(new MutableTransitionState(obj), null, str);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Transition transition = (Transition) rememberedValue;
        transition.animateTo$animation_core(obj, gapComposer, (i & 8) | 48 | (i & 14));
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new TransitionKt$$ExternalSyntheticLambda5(transition, 0);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(transition, (Function1) rememberedValue2, gapComposer);
        return transition;
    }

    public static final Object animate(float f, float f2, float f3, AnimationSpec animationSpec, Function2 function2, SuspendLambda suspendLambda) {
        Float f4 = new Float(f);
        Float f5 = new Float(f2);
        Float f6 = new Float(f3);
        TwoWayConverterImpl twoWayConverterImpl = FloatToVector;
        Function1 function1 = twoWayConverterImpl.convertToVector;
        AnimationVector animationVector = (AnimationVector) function1.invoke(f6);
        if (animationVector == null) {
            animationVector = ((AnimationVector) function1.invoke(f4)).newVector$animation_core();
        }
        AnimationVector animationVector2 = animationVector;
        Object animate = animate(new AnimationState(twoWayConverterImpl, f4, animationVector2, 56), new TargetBasedAnimation(animationSpec, twoWayConverterImpl, f4, f5, animationVector2), Long.MIN_VALUE, new TorchControl$$ExternalSyntheticLambda1(10, function2), suspendLambda);
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (animate != coroutineSingletons) {
            animate = unit;
        }
        return animate == coroutineSingletons ? animate : unit;
    }
}
