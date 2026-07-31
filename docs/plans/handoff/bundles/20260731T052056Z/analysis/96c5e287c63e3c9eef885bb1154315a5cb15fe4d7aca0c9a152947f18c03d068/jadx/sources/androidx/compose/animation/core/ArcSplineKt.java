package androidx.compose.animation.core;

import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.Transition.DeferredAnimation;
import androidx.compose.animation.core.Transition.TransitionAnimationState;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.platform.AndroidFontResourceLoader;
import androidx.paging.SingleRunner$runInIsolation$2;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
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
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda28;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public static final BorderKt$$ExternalSyntheticLambda1 SeekableTransitionStateTotalDurationChanged = new BorderKt$$ExternalSyntheticLambda1(4);
    public static final TwoWayConverterImpl FloatToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(5), new BorderKt$$ExternalSyntheticLambda1(22));
    public static final TwoWayConverterImpl IntToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(6), new BorderKt$$ExternalSyntheticLambda1(7));
    public static final TwoWayConverterImpl DpToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(8), new BorderKt$$ExternalSyntheticLambda1(9));
    public static final TwoWayConverterImpl DpOffsetToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(10), new BorderKt$$ExternalSyntheticLambda1(11));
    public static final TwoWayConverterImpl SizeToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(12), new BorderKt$$ExternalSyntheticLambda1(13));
    public static final TwoWayConverterImpl OffsetToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(14), new BorderKt$$ExternalSyntheticLambda1(15));
    public static final TwoWayConverterImpl IntOffsetToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(16), new BorderKt$$ExternalSyntheticLambda1(17));
    public static final TwoWayConverterImpl IntSizeToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(18), new BorderKt$$ExternalSyntheticLambda1(19));
    public static final TwoWayConverterImpl RectToVector = new TwoWayConverterImpl(new BorderKt$$ExternalSyntheticLambda1(20), new BorderKt$$ExternalSyntheticLambda1(21));

    public static Animatable Animatable$default(float f) {
        return new Animatable(Float.valueOf(f), FloatToVector, Float.valueOf(0.01f), 8);
    }

    public static AnimationState AnimationState$default(float f, float f2, int i) {
        if ((i & 2) != 0) {
            f2 = RecyclerView.DECELERATION_RATE;
        }
        return new AnimationState(FloatToVector, Float.valueOf(f), new AnimationVector1D(f2), Long.MIN_VALUE, Long.MIN_VALUE, false);
    }

    public static final void UpdateInitialAndTargetValues(Transition transition, Transition.TransitionAnimationState transitionAnimationState, Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec, GapComposer gapComposer, int i) {
        int i2;
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
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda18(i, 1, transition, transitionAnimationState, obj, obj2, finiteAnimationSpec);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|1|(2:3|(8:5|6|7|(3:(1:(1:11)(2:50|51))(1:52)|12|13)(8:53|(11:63|64|65|66|67|68|69|70|(1:72)(1:75)|(1:74)|27)(7:55|56|57|58|15|16|(7:18|19|20|21|22|23|(1:29)(1:25))(2:44|45))|62|35|(1:37)|38|(1:42)|43)|14|15|16|(0)(0)))|84|6|7|(0)(0)|14|15|16|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x014e, code lost:
    
        if (withInfiniteAnimationFrameNanos(r5, r8) == r9) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00aa, code lost:
    
        if (androidx.compose.runtime.Updater.getMonotonicFrameClock(r8.getContext()).withFrameNanos(new org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda8(r5, r12), r8) == r9) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0157, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0158, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0104 A[Catch: CancellationException -> 0x0157, TRY_LEAVE, TryCatch #5 {CancellationException -> 0x0157, blocks: (B:16:0x00ef, B:18:0x0104), top: B:15:0x00ef }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object animate(androidx.compose.animation.core.AnimationState r23, androidx.compose.animation.core.Animation r24, long r25, final kotlin.jvm.functions.Function1 r27, kotlin.coroutines.jvm.internal.ContinuationImpl r28) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.ArcSplineKt.animate(androidx.compose.animation.core.AnimationState, androidx.compose.animation.core.Animation, long, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static Object animate$default(float f, float f2, AnimationSpec animationSpec, Function2 function2, SuspendLambda suspendLambda, int i) {
        if ((i & 8) != 0) {
            animationSpec = spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 7);
        }
        AnimationSpec animationSpec2 = animationSpec;
        Float f3 = new Float(f);
        Float f4 = new Float(f2);
        Float f5 = new Float(RecyclerView.DECELERATION_RATE);
        TwoWayConverterImpl twoWayConverterImpl = FloatToVector;
        Function1 function1 = twoWayConverterImpl.convertToVector;
        AnimationVector animationVector = (AnimationVector) function1.invoke(f5);
        if (animationVector == null) {
            animationVector = ((AnimationVector) function1.invoke(f3)).newVector$animation_core();
        }
        AnimationVector animationVector2 = animationVector;
        Object animate = animate(new AnimationState(twoWayConverterImpl, f3, animationVector2, 56), new TargetBasedAnimation(animationSpec2, twoWayConverterImpl, f3, f4, animationVector2), Long.MIN_VALUE, new AppBarKt$$ExternalSyntheticLambda11(2, function2), suspendLambda);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        if (animate != coroutineSingletons) {
            animate = unit;
        }
        return animate == coroutineSingletons ? animate : unit;
    }

    public static final Object animateDecay(AnimationState animationState, DecayAnimationSpecImpl decayAnimationSpecImpl, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        Object animate = animate(animationState, new DecayAnimation(decayAnimationSpecImpl, animationState.typeConverter, animationState.value$delegate.getValue(), animationState.velocityVector), z ? animationState.lastFrameTimeNanos : Long.MIN_VALUE, function1, continuationImpl);
        return animate == CoroutineSingletons.COROUTINE_SUSPENDED ? animate : Unit.INSTANCE;
    }

    public static final InfiniteTransition.TransitionAnimationState animateFloat(InfiniteTransition infiniteTransition, float f, float f2, InfiniteRepeatableSpec infiniteRepeatableSpec, GapComposer gapComposer, int i) {
        Float valueOf = Float.valueOf(f);
        Float valueOf2 = Float.valueOf(f2);
        int i2 = (i & 1022) | 32768;
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer$Companion.Empty;
        if (rememberedValue == obj) {
            rememberedValue = new InfiniteTransition.TransitionAnimationState(infiniteTransition, valueOf, valueOf2, infiniteRepeatableSpec);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) rememberedValue;
        boolean z = true;
        boolean z2 = (((i2 & 112) ^ 48) > 32 && gapComposer.changedInstance(valueOf)) || (i2 & 48) == 32;
        if ((((i2 & 896) ^ 384) <= 256 || !gapComposer.changedInstance(valueOf2)) && (i2 & 384) != 256) {
            z = false;
        }
        boolean changedInstance = z2 | z | gapComposer.changedInstance(infiniteRepeatableSpec);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue2 == obj) {
            Object gamesHubScreenKt$$ExternalSyntheticLambda28 = new GamesHubScreenKt$$ExternalSyntheticLambda28(valueOf, transitionAnimationState, valueOf2, infiniteRepeatableSpec, 1);
            gapComposer.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda28);
            rememberedValue2 = gamesHubScreenKt$$ExternalSyntheticLambda28;
        }
        Updater.SideEffect((Function0) rememberedValue2, gapComposer);
        boolean changedInstance2 = gapComposer.changedInstance(infiniteTransition);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue3 == obj) {
            rememberedValue3 = new BackHandlerKt$$ExternalSyntheticLambda2(2, infiniteTransition, transitionAnimationState);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        Updater.DisposableEffect(transitionAnimationState, (Function1) rememberedValue3, gapComposer);
        return transitionAnimationState;
    }

    public static final Object animateTo(AnimationState animationState, Float f, AnimationSpec animationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        Object animate = animate(animationState, new TargetBasedAnimation(animationSpec, animationState.typeConverter, animationState.value$delegate.getValue(), f, animationState.velocityVector), z ? animationState.lastFrameTimeNanos : Long.MIN_VALUE, function1, continuationImpl);
        return animate == CoroutineSingletons.COROUTINE_SUSPENDED ? animate : Unit.INSTANCE;
    }

    public static /* synthetic */ Object animateTo$default(AnimationState animationState, Float f, AnimationSpec animationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl, int i) {
        if ((i & 2) != 0) {
            animationSpec = spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 7);
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i & 4) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i & 8) != 0) {
            function1 = new BorderKt$$ExternalSyntheticLambda1(3);
        }
        return animateTo(animationState, f, animationSpec2, z2, function1, continuationImpl);
    }

    public static final AnimationVector copy(AnimationVector animationVector) {
        AnimationVector newVector$animation_core = animationVector.newVector$animation_core();
        int size$animation_core = newVector$animation_core.getSize$animation_core();
        for (int i = 0; i < size$animation_core; i++) {
            newVector$animation_core.set$animation_core(i, animationVector.get$animation_core(i));
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

    public static final Transition.DeferredAnimation createDeferredAnimation(Transition transition, TwoWayConverterImpl twoWayConverterImpl, String str, GapComposer gapComposer, int i, int i2) {
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData;
        if ((i2 & 2) != 0) {
            str = "DeferredAnimation";
        }
        boolean changed = gapComposer.changed(transition);
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer$Companion.Empty;
        if (changed || rememberedValue == obj) {
            rememberedValue = transition.new DeferredAnimation(twoWayConverterImpl, str);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Transition.DeferredAnimation deferredAnimation = (Transition.DeferredAnimation) rememberedValue;
        boolean changed2 = gapComposer.changed(transition) | gapComposer.changedInstance(deferredAnimation);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed2 || rememberedValue2 == obj) {
            rememberedValue2 = new BackHandlerKt$$ExternalSyntheticLambda2(5, transition, deferredAnimation);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(deferredAnimation, (Function1) rememberedValue2, gapComposer);
        if (transition.isSeeking() && (deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) deferredAnimation.data$delegate.getValue()) != null) {
            Transition transition2 = Transition.this;
            deferredAnimationData.animation.updateInitialAndTargetValue$animation_core(deferredAnimationData.targetValueByState.invoke(transition2.getSegment().getInitialState()), deferredAnimationData.targetValueByState.invoke(transition2.getSegment().getTargetState()), (FiniteAnimationSpec) deferredAnimationData.transitionSpec.invoke(transition2.getSegment()));
        }
        return deferredAnimation;
    }

    public static final Transition.TransitionAnimationState createTransitionAnimation(Transition transition, Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec, TwoWayConverterImpl twoWayConverterImpl, GapComposer gapComposer, int i) {
        boolean changed = gapComposer.changed(transition);
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj3 = Composer$Companion.Empty;
        if (changed || rememberedValue == obj3) {
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                AnimationVector animationVector = (AnimationVector) twoWayConverterImpl.convertToVector.invoke(obj2);
                animationVector.reset$animation_core();
                rememberedValue = transition.new TransitionAnimationState(obj, animationVector, twoWayConverterImpl);
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                gapComposer.updateRememberedValue(rememberedValue);
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }
        Transition.TransitionAnimationState transitionAnimationState = (Transition.TransitionAnimationState) rememberedValue;
        UpdateInitialAndTargetValues(transition, transitionAnimationState, obj, obj2, finiteAnimationSpec, gapComposer, 0);
        boolean changed2 = gapComposer.changed(transition) | gapComposer.changed(transitionAnimationState);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed2 || rememberedValue2 == obj3) {
            rememberedValue2 = new BackHandlerKt$$ExternalSyntheticLambda2(8, transition, transitionAnimationState);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(transitionAnimationState, (Function1) rememberedValue2, gapComposer);
        return transitionAnimationState;
    }

    public static final void doAnimationFrameWithScale(AnimationScope animationScope, long j, float f, Animation animation, AnimationState animationState, Function1 function1) {
        long durationNanos = f == RecyclerView.DECELERATION_RATE ? animation.getDurationNanos() : (long) ((j - animationScope.startTimeNanos) / f);
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
        if (scaleFactor >= RecyclerView.DECELERATION_RATE) {
            return scaleFactor;
        }
        PreconditionsKt.throwIllegalStateException("negative scale factor");
        return scaleFactor;
    }

    /* renamed from: infiniteRepeatable-9IiC70o$default, reason: not valid java name */
    public static InfiniteRepeatableSpec m24infiniteRepeatable9IiC70o$default(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i) {
        if ((i & 2) != 0) {
            repeatMode = RepeatMode.Restart;
        }
        return new InfiniteRepeatableSpec(durationBasedAnimationSpec, repeatMode);
    }

    public static final InfiniteTransition rememberInfiniteTransition(String str, GapComposer gapComposer, int i) {
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new InfiniteTransition();
            gapComposer.updateRememberedValue(rememberedValue);
        }
        InfiniteTransition infiniteTransition = (InfiniteTransition) rememberedValue;
        infiniteTransition.run$animation_core(0, gapComposer);
        return infiniteTransition;
    }

    public static final Transition rememberTransition(BasePreferenceLoader basePreferenceLoader, String str, GapComposer gapComposer, int i) {
        int i2 = (i & 14) ^ 6;
        boolean z = true;
        int i3 = 4;
        int i4 = 0;
        boolean z2 = (i2 > 4 && gapComposer.changed(basePreferenceLoader)) || (i & 6) == 4;
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer$Companion.Empty;
        Continuation continuation = null;
        if (z2 || rememberedValue == obj) {
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                Object transition = new Transition(basePreferenceLoader, null, str);
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                gapComposer.updateRememberedValue(transition);
                rememberedValue = transition;
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }
        Transition transition2 = (Transition) rememberedValue;
        if (basePreferenceLoader instanceof SeekableTransitionState) {
            gapComposer.startReplaceGroup(-1357590553);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Object obj2 = (CoroutineScope) rememberedValue2;
            boolean changedInstance = gapComposer.changedInstance(obj2) | ((i2 > 4 && gapComposer.changed(basePreferenceLoader)) || (i & 6) == 4);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue3 == obj) {
                rememberedValue3 = new BackHandlerKt$$ExternalSyntheticLambda2(i3, basePreferenceLoader, obj2);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.DisposableEffect(obj2, (Function1) rememberedValue3, gapComposer);
            SeekableTransitionState seekableTransitionState = (SeekableTransitionState) basePreferenceLoader;
            Object value = seekableTransitionState.currentState$delegate.getValue();
            Object value2 = seekableTransitionState.targetState$delegate.getValue();
            if ((i2 <= 4 || !gapComposer.changed(basePreferenceLoader)) && (i & 6) != 4) {
                z = false;
            }
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z || rememberedValue4 == obj) {
                rememberedValue4 = new SingleRunner$runInIsolation$2(2, basePreferenceLoader, continuation);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Updater.LaunchedEffect(value, value2, (Function2) rememberedValue4, gapComposer);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-1356604288);
            transition2.animateTo$animation_core(basePreferenceLoader.getTargetState(), gapComposer, 0);
            gapComposer.end(false);
        }
        boolean changed = gapComposer.changed(transition2);
        Object rememberedValue5 = gapComposer.rememberedValue();
        if (changed || rememberedValue5 == obj) {
            rememberedValue5 = new TransitionKt$$ExternalSyntheticLambda1(transition2, i4);
            gapComposer.updateRememberedValue(rememberedValue5);
        }
        Updater.DisposableEffect(transition2, (Function1) rememberedValue5, gapComposer);
        return transition2;
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
        if ((i2 & 1) != 0) {
            i = 300;
        }
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
            animationVector.set$animation_core(i, animationVector2.get$animation_core(i));
        }
        animationState.finishedTimeNanos = animationScope.finishedTimeNanos;
        animationState.lastFrameTimeNanos = animationScope.lastFrameTimeNanos;
        animationState.isRunning = ((Boolean) animationScope.isRunning$delegate.getValue()).booleanValue();
    }

    public static final Transition updateTransition(Object obj, String str, GapComposer gapComposer, int i) {
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new Transition(new MutableTransitionState(obj), null, str);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Transition transition = (Transition) rememberedValue;
        transition.animateTo$animation_core(obj, gapComposer, (i & 8) | 48 | (i & 14));
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new TransitionKt$$ExternalSyntheticLambda1(transition, 1);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(transition, (Function1) rememberedValue2, gapComposer);
        return transition;
    }

    public static final Object withInfiniteAnimationFrameNanos(Function1 function1, ContinuationImpl continuationImpl) {
        if (continuationImpl.getContext().get(AndroidFontResourceLoader.$$INSTANCE) == null) {
            return Updater.getMonotonicFrameClock(continuationImpl.getContext()).withFrameNanos(function1, continuationImpl);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
        return null;
    }
}
