package androidx.compose.animation.core;

import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.RegexKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;
import org.wikipedia.settings.BasePreferenceLoader;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SeekableTransitionState extends BasePreferenceLoader {
    public final SeekableTransitionState$$ExternalSyntheticLambda1 animateOneFrameLambda;
    public Object composedTargetState;
    public CancellableContinuationImpl compositionContinuation;
    public final MutexImpl compositionContinuationMutex;
    public SeekingAnimationState currentAnimation;
    public final ParcelableSnapshotMutableState currentState$delegate;
    public float durationScale;
    public final SeekableTransitionState$$ExternalSyntheticLambda1 firstFrameLambda;
    public final ParcelableSnapshotMutableFloatState fraction$delegate;
    public final MutableObjectList initialValueAnimations;
    public long lastFrameTimeNanos;
    public final MutatorMutex mutatorMutex;
    public final NavBackStackEntry$$ExternalSyntheticLambda0 recalculateTotalDurationNanos;
    public PreferenceManager snapshotStateObserver;
    public final ParcelableSnapshotMutableState targetState$delegate;
    public long totalDurationNanos;
    public Transition transition;
    public static final AnimationVector1D ZeroVelocity = new AnimationVector1D(RecyclerView.DECELERATION_RATE);
    public static final AnimationVector1D Target1 = new AnimationVector1D(1.0f);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SeekingAnimationState {
        public VectorizedFiniteAnimationSpec animationSpec;
        public long animationSpecDuration;
        public long durationNanos;
        public AnimationVector1D initialVelocity;
        public boolean isComplete;
        public long progressNanos;
        public final AnimationVector1D start = new AnimationVector1D(RecyclerView.DECELERATION_RATE);
        public float value;

        public final String toString() {
            return "progress nanos: " + this.progressNanos + ", animationSpec: " + this.animationSpec + ", isComplete: " + this.isComplete + ", value: " + this.value + ", start: " + this.start + ", initialVelocity: " + this.initialVelocity + ", durationNanos: " + this.durationNanos + ", animationSpecDuration: " + this.animationSpecDuration;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.animation.core.SeekableTransitionState$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r4v7, types: [androidx.compose.animation.core.SeekableTransitionState$$ExternalSyntheticLambda1] */
    public SeekableTransitionState(NavBackStackEntry navBackStackEntry) {
        super(1);
        final int i = 1;
        this.targetState$delegate = Updater.mutableStateOf$default(navBackStackEntry);
        this.currentState$delegate = Updater.mutableStateOf$default(navBackStackEntry);
        this.composedTargetState = navBackStackEntry;
        this.recalculateTotalDurationNanos = new NavBackStackEntry$$ExternalSyntheticLambda0(3, this);
        this.fraction$delegate = new ParcelableSnapshotMutableFloatState(RecyclerView.DECELERATION_RATE);
        this.compositionContinuationMutex = new MutexImpl();
        this.mutatorMutex = new MutatorMutex();
        this.lastFrameTimeNanos = Long.MIN_VALUE;
        this.initialValueAnimations = new MutableObjectList();
        final int i2 = 0;
        this.firstFrameLambda = new Function1(this) { // from class: androidx.compose.animation.core.SeekableTransitionState$$ExternalSyntheticLambda1
            public final /* synthetic */ SeekableTransitionState f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                Unit unit = Unit.INSTANCE;
                SeekableTransitionState seekableTransitionState = this.f$0;
                long longValue = ((Long) obj).longValue();
                switch (i3) {
                    case 0:
                        seekableTransitionState.lastFrameTimeNanos = longValue;
                        break;
                    default:
                        long j = longValue - seekableTransitionState.lastFrameTimeNanos;
                        seekableTransitionState.lastFrameTimeNanos = longValue;
                        long roundToLong = UnsignedKt.roundToLong(j / seekableTransitionState.durationScale);
                        MutableObjectList mutableObjectList = seekableTransitionState.initialValueAnimations;
                        if (mutableObjectList.isNotEmpty()) {
                            Object[] objArr = mutableObjectList.content;
                            int i4 = mutableObjectList._size;
                            int i5 = 0;
                            for (int i6 = 0; i6 < i4; i6++) {
                                SeekableTransitionState.SeekingAnimationState seekingAnimationState = (SeekableTransitionState.SeekingAnimationState) objArr[i6];
                                SeekableTransitionState.recalculateAnimationValue(seekingAnimationState, roundToLong);
                                seekingAnimationState.isComplete = true;
                            }
                            Transition transition = seekableTransitionState.transition;
                            if (transition != null) {
                                transition.updateInitialValues$animation_core();
                            }
                            int i7 = mutableObjectList._size;
                            Object[] objArr2 = mutableObjectList.content;
                            IntRange until = RegexKt.until(0, i7);
                            int i8 = until.first;
                            int i9 = until.last;
                            if (i8 <= i9) {
                                while (true) {
                                    objArr2[i8 - i5] = objArr2[i8];
                                    if (((SeekableTransitionState.SeekingAnimationState) objArr2[i8]).isComplete) {
                                        i5++;
                                    }
                                    if (i8 != i9) {
                                        i8++;
                                    }
                                }
                            }
                            ArraysKt___ArraysKt.fill(i7 - i5, i7, null, objArr2);
                            mutableObjectList._size -= i5;
                        }
                        SeekableTransitionState.SeekingAnimationState seekingAnimationState2 = seekableTransitionState.currentAnimation;
                        if (seekingAnimationState2 != null) {
                            seekingAnimationState2.durationNanos = seekableTransitionState.totalDurationNanos;
                            SeekableTransitionState.recalculateAnimationValue(seekingAnimationState2, roundToLong);
                            seekableTransitionState.setFraction(seekingAnimationState2.value);
                            if (seekingAnimationState2.value == 1.0f) {
                                seekableTransitionState.currentAnimation = null;
                            }
                            seekableTransitionState.seekToFraction();
                            break;
                        }
                        break;
                }
                return unit;
            }
        };
        this.animateOneFrameLambda = new Function1(this) { // from class: androidx.compose.animation.core.SeekableTransitionState$$ExternalSyntheticLambda1
            public final /* synthetic */ SeekableTransitionState f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i;
                Unit unit = Unit.INSTANCE;
                SeekableTransitionState seekableTransitionState = this.f$0;
                long longValue = ((Long) obj).longValue();
                switch (i3) {
                    case 0:
                        seekableTransitionState.lastFrameTimeNanos = longValue;
                        break;
                    default:
                        long j = longValue - seekableTransitionState.lastFrameTimeNanos;
                        seekableTransitionState.lastFrameTimeNanos = longValue;
                        long roundToLong = UnsignedKt.roundToLong(j / seekableTransitionState.durationScale);
                        MutableObjectList mutableObjectList = seekableTransitionState.initialValueAnimations;
                        if (mutableObjectList.isNotEmpty()) {
                            Object[] objArr = mutableObjectList.content;
                            int i4 = mutableObjectList._size;
                            int i5 = 0;
                            for (int i6 = 0; i6 < i4; i6++) {
                                SeekableTransitionState.SeekingAnimationState seekingAnimationState = (SeekableTransitionState.SeekingAnimationState) objArr[i6];
                                SeekableTransitionState.recalculateAnimationValue(seekingAnimationState, roundToLong);
                                seekingAnimationState.isComplete = true;
                            }
                            Transition transition = seekableTransitionState.transition;
                            if (transition != null) {
                                transition.updateInitialValues$animation_core();
                            }
                            int i7 = mutableObjectList._size;
                            Object[] objArr2 = mutableObjectList.content;
                            IntRange until = RegexKt.until(0, i7);
                            int i8 = until.first;
                            int i9 = until.last;
                            if (i8 <= i9) {
                                while (true) {
                                    objArr2[i8 - i5] = objArr2[i8];
                                    if (((SeekableTransitionState.SeekingAnimationState) objArr2[i8]).isComplete) {
                                        i5++;
                                    }
                                    if (i8 != i9) {
                                        i8++;
                                    }
                                }
                            }
                            ArraysKt___ArraysKt.fill(i7 - i5, i7, null, objArr2);
                            mutableObjectList._size -= i5;
                        }
                        SeekableTransitionState.SeekingAnimationState seekingAnimationState2 = seekableTransitionState.currentAnimation;
                        if (seekingAnimationState2 != null) {
                            seekingAnimationState2.durationNanos = seekableTransitionState.totalDurationNanos;
                            SeekableTransitionState.recalculateAnimationValue(seekingAnimationState2, roundToLong);
                            seekableTransitionState.setFraction(seekingAnimationState2.value);
                            if (seekingAnimationState2.value == 1.0f) {
                                seekableTransitionState.currentAnimation = null;
                            }
                            seekableTransitionState.seekToFraction();
                            break;
                        }
                        break;
                }
                return unit;
            }
        };
    }

    public static void recalculateAnimationValue(SeekingAnimationState seekingAnimationState, long j) {
        long j2 = seekingAnimationState.progressNanos + j;
        seekingAnimationState.progressNanos = j2;
        long j3 = seekingAnimationState.animationSpecDuration;
        if (j2 >= j3) {
            seekingAnimationState.value = 1.0f;
            return;
        }
        VectorizedFiniteAnimationSpec vectorizedFiniteAnimationSpec = seekingAnimationState.animationSpec;
        AnimationVector1D animationVector1D = seekingAnimationState.start;
        if (vectorizedFiniteAnimationSpec == null) {
            float f = j2 / j3;
            seekingAnimationState.value = (f * 1.0f) + ((1.0f - f) * animationVector1D.get$animation_core(0));
            return;
        }
        AnimationVector1D animationVector1D2 = seekingAnimationState.initialVelocity;
        if (animationVector1D2 == null) {
            animationVector1D2 = ZeroVelocity;
        }
        seekingAnimationState.value = RegexKt.coerceIn(((AnimationVector1D) vectorizedFiniteAnimationSpec.getValueFromNanos(j2, animationVector1D, Target1, animationVector1D2)).get$animation_core(0), RecyclerView.DECELERATION_RATE, 1.0f);
    }

    public final Object animateOneFrame(ContinuationImpl continuationImpl) {
        float durationScale = ArcSplineKt.getDurationScale(continuationImpl.getContext());
        Unit unit = Unit.INSTANCE;
        if (durationScale <= RecyclerView.DECELERATION_RATE) {
            endAllAnimations();
            return unit;
        }
        this.durationScale = durationScale;
        Object withFrameNanos = Updater.getMonotonicFrameClock(continuationImpl.getContext()).withFrameNanos(this.animateOneFrameLambda, continuationImpl);
        return withFrameNanos == CoroutineSingletons.COROUTINE_SUSPENDED ? withFrameNanos : unit;
    }

    public final void endAllAnimations() {
        Transition transition = this.transition;
        if (transition != null) {
            transition.clearInitialAnimations$animation_core();
        }
        this.initialValueAnimations.clear();
        if (this.currentAnimation != null) {
            this.currentAnimation = null;
            setFraction(1.0f);
            seekToFraction();
        }
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final Object getCurrentState() {
        return this.currentState$delegate.getValue();
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final Object getTargetState() {
        return this.targetState$delegate.getValue();
    }

    public final void moveAnimationToInitialState() {
        Transition transition = this.transition;
        if (transition == null) {
            return;
        }
        SeekingAnimationState seekingAnimationState = this.currentAnimation;
        if (seekingAnimationState == null) {
            if (this.totalDurationNanos > 0) {
                ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = this.fraction$delegate;
                if (parcelableSnapshotMutableFloatState.getFloatValue() != 1.0f && !Intrinsics.areEqual(this.currentState$delegate.getValue(), this.targetState$delegate.getValue())) {
                    SeekingAnimationState seekingAnimationState2 = new SeekingAnimationState();
                    seekingAnimationState2.value = parcelableSnapshotMutableFloatState.getFloatValue();
                    long j = this.totalDurationNanos;
                    seekingAnimationState2.durationNanos = j;
                    seekingAnimationState2.animationSpecDuration = UnsignedKt.roundToLong((1.0d - parcelableSnapshotMutableFloatState.getFloatValue()) * j);
                    seekingAnimationState2.start.set$animation_core(0, parcelableSnapshotMutableFloatState.getFloatValue());
                    seekingAnimationState = seekingAnimationState2;
                }
            }
            seekingAnimationState = null;
        }
        if (seekingAnimationState != null) {
            seekingAnimationState.durationNanos = this.totalDurationNanos;
            this.initialValueAnimations.add(seekingAnimationState);
            transition.setInitialAnimations$animation_core(seekingAnimationState);
        }
        this.currentAnimation = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x006f, code lost:
    
        if (androidx.compose.runtime.Updater.getMonotonicFrameClock(r13).withFrameNanos(r12.firstFrameLambda, r0) == r2) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runAnimations(kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof androidx.compose.animation.core.SeekableTransitionState$runAnimations$1
            if (r0 == 0) goto L13
            r0 = r13
            androidx.compose.animation.core.SeekableTransitionState$runAnimations$1 r0 = (androidx.compose.animation.core.SeekableTransitionState$runAnimations$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.animation.core.SeekableTransitionState$runAnimations$1 r0 = new androidx.compose.animation.core.SeekableTransitionState$runAnimations$1
            r0.<init>(r12, r13)
        L18:
            kotlin.coroutines.CoroutineContext r13 = r0._context
            java.lang.Object r1 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r0.label
            androidx.collection.MutableObjectList r4 = r12.initialValueAnimations
            r5 = 2
            r6 = 1
            r7 = -9223372036854775808
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            if (r3 == 0) goto L3a
            if (r3 == r6) goto L36
            if (r3 != r5) goto L2f
            goto L36
        L2f:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
            r12 = 0
            return r12
        L36:
            kotlin.ResultKt.throwOnFailure(r1)
            goto L72
        L3a:
            kotlin.ResultKt.throwOnFailure(r1)
            boolean r1 = r4.isEmpty()
            if (r1 == 0) goto L48
            androidx.compose.animation.core.SeekableTransitionState$SeekingAnimationState r1 = r12.currentAnimation
            if (r1 != 0) goto L48
            return r9
        L48:
            r13.getClass()
            float r1 = androidx.compose.animation.core.ArcSplineKt.getDurationScale(r13)
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 != 0) goto L5a
            r12.endAllAnimations()
            r12.lastFrameTimeNanos = r7
            return r9
        L5a:
            long r10 = r12.lastFrameTimeNanos
            int r1 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r1 != 0) goto L72
            r0.label = r6
            r13.getClass()
            androidx.compose.runtime.MonotonicFrameClock r13 = androidx.compose.runtime.Updater.getMonotonicFrameClock(r13)
            androidx.compose.animation.core.SeekableTransitionState$$ExternalSyntheticLambda1 r1 = r12.firstFrameLambda
            java.lang.Object r13 = r13.withFrameNanos(r1, r0)
            if (r13 != r2) goto L72
            goto L88
        L72:
            boolean r13 = r4.isNotEmpty()
            if (r13 != 0) goto L80
            androidx.compose.animation.core.SeekableTransitionState$SeekingAnimationState r13 = r12.currentAnimation
            if (r13 == 0) goto L7d
            goto L80
        L7d:
            r12.lastFrameTimeNanos = r7
            return r9
        L80:
            r0.label = r5
            java.lang.Object r13 = r12.animateOneFrame(r0)
            if (r13 != r2) goto L72
        L88:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState.runAnimations(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final Object seekTo(float f, Object obj, SuspendLambda suspendLambda) {
        if (RecyclerView.DECELERATION_RATE > f || f > 1.0f) {
            PreconditionsKt.throwIllegalArgumentException("Expecting fraction between 0 and 1. Got " + f);
        }
        Transition transition = this.transition;
        if (transition != null) {
            Object mutate$default = MutatorMutex.mutate$default(this.mutatorMutex, new SeekableTransitionState$seekTo$3(obj, this.targetState$delegate.getValue(), this, transition, f, null), suspendLambda);
            if (mutate$default == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return mutate$default;
            }
        }
        return Unit.INSTANCE;
    }

    public final void seekToFraction() {
        Transition transition = this.transition;
        if (transition == null) {
            return;
        }
        transition.seekAnimations$animation_core(UnsignedKt.roundToLong(this.fraction$delegate.getFloatValue() * ((Number) transition.totalDurationNanos$delegate.getValue()).longValue()));
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void setCurrentState$animation_core(Object obj) {
        this.currentState$delegate.setValue(obj);
    }

    public final void setFraction(float f) {
        this.fraction$delegate.setFloatValue(f);
    }

    public final void setSnapshotStateObserver$animation_core(PreferenceManager preferenceManager) {
        YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 yearInReviewGeoSlideKt$$ExternalSyntheticLambda5;
        if (Intrinsics.areEqual(this.snapshotStateObserver, preferenceManager)) {
            return;
        }
        PreferenceManager preferenceManager2 = this.snapshotStateObserver;
        if (preferenceManager2 != null) {
            preferenceManager2.clear(this);
        }
        PreferenceManager preferenceManager3 = this.snapshotStateObserver;
        if (preferenceManager3 != null && (yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 = (YearInReviewGeoSlideKt$$ExternalSyntheticLambda5) preferenceManager3.mOnDisplayPreferenceDialogListener) != null) {
            yearInReviewGeoSlideKt$$ExternalSyntheticLambda5.dispose();
        }
        this.snapshotStateObserver = preferenceManager;
        if (preferenceManager != null) {
            preferenceManager.start();
        }
        PreferenceManager preferenceManager4 = this.snapshotStateObserver;
        if (preferenceManager4 != null) {
            preferenceManager4.observeReads(this, ArcSplineKt.SeekableTransitionStateTotalDurationChanged, this.recalculateTotalDurationNanos);
        }
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void transitionConfigured$animation_core(Transition transition) {
        Transition transition2 = this.transition;
        if (transition2 != null && transition != transition2) {
            PreconditionsKt.throwIllegalStateException("An instance of SeekableTransitionState has been used in different Transitions. Previous instance: " + this.transition + ", new instance: " + transition);
        }
        this.transition = transition;
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void transitionRemoved$animation_core() {
        this.transition = null;
        PreferenceManager preferenceManager = this.snapshotStateObserver;
        if (preferenceManager != null) {
            preferenceManager.clear(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
    
        if (r4.lock(r0) == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object waitForComposition(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1 r0 = (androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1 r0 = new androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            kotlinx.coroutines.sync.MutexImpl r4 = r8.compositionContinuationMutex
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3c
            if (r2 == r6) goto L35
            if (r2 != r5) goto L2f
            java.lang.Object r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6f
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r3
        L35:
            java.lang.Object r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            goto L50
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.runtime.ParcelableSnapshotMutableState r9 = r8.targetState$delegate
            java.lang.Object r9 = r9.getValue()
            r0.L$0 = r9
            r0.label = r6
            java.lang.Object r2 = r4.lock(r0)
            if (r2 != r1) goto L50
            goto L6b
        L50:
            r0.L$0 = r9
            r0.label = r5
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)
            r2.<init>(r6, r0)
            r2.initCancellability()
            r8.compositionContinuation = r2
            r4.unlock(r3)
            java.lang.Object r0 = r2.getResult()
            if (r0 != r1) goto L6c
        L6b:
            return r1
        L6c:
            r7 = r0
            r0 = r9
            r9 = r7
        L6f:
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r0)
            if (r9 == 0) goto L78
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L78:
            r0 = -9223372036854775808
            r8.lastFrameTimeNanos = r0
            java.util.concurrent.CancellationException r8 = new java.util.concurrent.CancellationException
            java.lang.String r9 = "targetState while waiting for composition"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState.waitForComposition(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004d, code lost:
    
        if (r5.lock(r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object waitForCompositionAfterTargetStateChange(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1 r0 = (androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1 r0 = new androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            kotlinx.coroutines.sync.MutexImpl r5 = r8.compositionContinuationMutex
            r6 = 1
            if (r2 == 0) goto L3c
            if (r2 == r6) goto L35
            if (r2 != r4) goto L2f
            java.lang.Object r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7b
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r3
        L35:
            java.lang.Object r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            goto L50
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.runtime.ParcelableSnapshotMutableState r9 = r8.targetState$delegate
            java.lang.Object r9 = r9.getValue()
            r0.L$0 = r9
            r0.label = r6
            java.lang.Object r2 = r5.lock(r0)
            if (r2 != r1) goto L50
            goto L77
        L50:
            java.lang.Object r2 = r8.composedTargetState
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r2)
            if (r2 == 0) goto L5c
            r5.unlock(r3)
            goto L81
        L5c:
            r0.L$0 = r9
            r0.label = r4
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)
            r2.<init>(r6, r0)
            r2.initCancellability()
            r8.compositionContinuation = r2
            r5.unlock(r3)
            java.lang.Object r0 = r2.getResult()
            if (r0 != r1) goto L78
        L77:
            return r1
        L78:
            r7 = r0
            r0 = r9
            r9 = r7
        L7b:
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r0)
            if (r1 == 0) goto L84
        L81:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L84:
            r1 = -9223372036854775808
            r8.lastFrameTimeNanos = r1
            java.util.concurrent.CancellationException r8 = new java.util.concurrent.CancellationException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "snapTo() was canceled because state was changed to "
            r1.<init>(r2)
            r1.append(r9)
            java.lang.String r9 = " instead of "
            r1.append(r9)
            r1.append(r0)
            java.lang.String r9 = r1.toString()
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState.waitForCompositionAfterTargetStateChange(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
