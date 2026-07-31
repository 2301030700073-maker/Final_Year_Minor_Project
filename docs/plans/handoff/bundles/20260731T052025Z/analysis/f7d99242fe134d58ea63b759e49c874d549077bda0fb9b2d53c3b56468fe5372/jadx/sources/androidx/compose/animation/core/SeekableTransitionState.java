package androidx.compose.animation.core;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.navigation.NavBackStackEntry;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SeekableTransitionState extends DnsQueryResult {
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
    public final OnBackPressedDispatcher$$ExternalSyntheticLambda0 recalculateTotalDurationNanos;
    public SnapshotStateObserver snapshotStateObserver;
    public final ParcelableSnapshotMutableState targetState$delegate;
    public long totalDurationNanos;
    public Transition transition;
    public static final AnimationVector1D ZeroVelocity = new AnimationVector1D(0.0f);
    public static final AnimationVector1D Target1 = new AnimationVector1D(1.0f);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SeekingAnimationState {
        public VectorizedFiniteAnimationSpec animationSpec;
        public long animationSpecDuration;
        public long durationNanos;
        public AnimationVector1D initialVelocity;
        public boolean isComplete;
        public long progressNanos;
        public final AnimationVector1D start = new AnimationVector1D(0.0f);
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
        this.recalculateTotalDurationNanos = new OnBackPressedDispatcher$$ExternalSyntheticLambda0(13, this);
        this.fraction$delegate = new ParcelableSnapshotMutableFloatState(0.0f);
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
                        long roundToLong = MathKt.roundToLong(j / seekableTransitionState.durationScale);
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
                            IntRange until = RangesKt.until(0, i7);
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
                        long roundToLong = MathKt.roundToLong(j / seekableTransitionState.durationScale);
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
                            IntRange until = RangesKt.until(0, i7);
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

    public static final void access$moveAnimationToInitialState(SeekableTransitionState seekableTransitionState) {
        Transition transition = seekableTransitionState.transition;
        ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = seekableTransitionState.fraction$delegate;
        if (transition == null) {
            return;
        }
        SeekingAnimationState seekingAnimationState = seekableTransitionState.currentAnimation;
        if (seekingAnimationState == null) {
            if (seekableTransitionState.totalDurationNanos <= 0 || parcelableSnapshotMutableFloatState.getFloatValue() == 1.0f || Intrinsics.areEqual(seekableTransitionState.currentState$delegate.getValue(), seekableTransitionState.targetState$delegate.getValue())) {
                seekingAnimationState = null;
            } else {
                seekingAnimationState = new SeekingAnimationState();
                seekingAnimationState.value = parcelableSnapshotMutableFloatState.getFloatValue();
                long j = seekableTransitionState.totalDurationNanos;
                seekingAnimationState.durationNanos = j;
                seekingAnimationState.animationSpecDuration = MathKt.roundToLong((1.0d - parcelableSnapshotMutableFloatState.getFloatValue()) * j);
                seekingAnimationState.start.set$animation_core(0, parcelableSnapshotMutableFloatState.getFloatValue());
            }
        }
        if (seekingAnimationState != null) {
            seekingAnimationState.durationNanos = seekableTransitionState.totalDurationNanos;
            seekableTransitionState.initialValueAnimations.add(seekingAnimationState);
            transition.setInitialAnimations$animation_core(seekingAnimationState);
        }
        seekableTransitionState.currentAnimation = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x006f, code lost:
    
        if (androidx.compose.runtime.Updater.getMonotonicFrameClock(r1.getContext()).withFrameNanos(r12, r1) == r8) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$runAnimations(androidx.compose.animation.core.SeekableTransitionState r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            androidx.collection.MutableObjectList r0 = r11.initialValueAnimations
            boolean r1 = r12 instanceof androidx.compose.animation.core.SeekableTransitionState$runAnimations$1
            if (r1 == 0) goto L15
            r1 = r12
            androidx.compose.animation.core.SeekableTransitionState$runAnimations$1 r1 = (androidx.compose.animation.core.SeekableTransitionState$runAnimations$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.compose.animation.core.SeekableTransitionState$runAnimations$1 r1 = new androidx.compose.animation.core.SeekableTransitionState$runAnimations$1
            r1.<init>(r11, r12)
        L1a:
            java.lang.Object r12 = r1.result
            int r2 = r1.label
            r3 = 2
            r4 = 1
            r5 = -9223372036854775808
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2d
            goto L34
        L2d:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r11)
            r11 = 0
            return r11
        L34:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L72
        L38:
            kotlin.ResultKt.throwOnFailure(r12)
            boolean r12 = r0.isEmpty()
            if (r12 == 0) goto L46
            androidx.compose.animation.core.SeekableTransitionState$SeekingAnimationState r12 = r11.currentAnimation
            if (r12 != 0) goto L46
            return r7
        L46:
            kotlin.coroutines.CoroutineContext r12 = r1.getContext()
            float r12 = androidx.compose.animation.core.ArcSplineKt.getDurationScale(r12)
            r2 = 0
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L59
            r11.endAllAnimations()
            r11.lastFrameTimeNanos = r5
            return r7
        L59:
            long r9 = r11.lastFrameTimeNanos
            int r12 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r12 != 0) goto L72
            androidx.compose.animation.core.SeekableTransitionState$$ExternalSyntheticLambda1 r12 = r11.firstFrameLambda
            r1.label = r4
            kotlin.coroutines.CoroutineContext r2 = r1.getContext()
            androidx.compose.runtime.BroadcastFrameClock r2 = androidx.compose.runtime.Updater.getMonotonicFrameClock(r2)
            java.lang.Object r12 = r2.withFrameNanos(r12, r1)
            if (r12 != r8) goto L72
            goto L88
        L72:
            boolean r12 = r0.isNotEmpty()
            if (r12 != 0) goto L80
            androidx.compose.animation.core.SeekableTransitionState$SeekingAnimationState r12 = r11.currentAnimation
            if (r12 == 0) goto L7d
            goto L80
        L7d:
            r11.lastFrameTimeNanos = r5
            return r7
        L80:
            r1.label = r3
            java.lang.Object r12 = r11.animateOneFrame(r1)
            if (r12 != r8) goto L72
        L88:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState.access$runAnimations(androidx.compose.animation.core.SeekableTransitionState, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
    
        if (r0.lock(r1) == r6) goto L21;
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
    public static final java.lang.Object access$waitForComposition(androidx.compose.animation.core.SeekableTransitionState r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            kotlinx.coroutines.sync.MutexImpl r0 = r8.compositionContinuationMutex
            boolean r1 = r9 instanceof androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1
            if (r1 == 0) goto L15
            r1 = r9
            androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1 r1 = (androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1 r1 = new androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1
            r1.<init>(r8, r9)
        L1a:
            java.lang.Object r9 = r1.result
            int r2 = r1.label
            r3 = 0
            r4 = 2
            r5 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L3c
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            java.lang.Object r0 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6f
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r3
        L35:
            java.lang.Object r2 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            goto L50
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.runtime.ParcelableSnapshotMutableState r9 = r8.targetState$delegate
            java.lang.Object r9 = r9.getValue()
            r1.L$0 = r9
            r1.label = r5
            java.lang.Object r2 = r0.lock(r1)
            if (r2 != r6) goto L50
            goto L6b
        L50:
            r1.L$0 = r9
            r1.label = r4
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r1 = kotlinx.atomicfu.AtomicFU.intercepted(r1)
            r2.<init>(r5, r1)
            r2.initCancellability()
            r8.compositionContinuation = r2
            r0.unlock(r3)
            java.lang.Object r0 = r2.getResult()
            if (r0 != r6) goto L6c
        L6b:
            return r6
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState.access$waitForComposition(androidx.compose.animation.core.SeekableTransitionState, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004d, code lost:
    
        if (r0.lock(r1) == r6) goto L24;
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
    public static final java.lang.Object access$waitForCompositionAfterTargetStateChange(androidx.compose.animation.core.SeekableTransitionState r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            kotlinx.coroutines.sync.MutexImpl r0 = r8.compositionContinuationMutex
            boolean r1 = r9 instanceof androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1
            if (r1 == 0) goto L15
            r1 = r9
            androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1 r1 = (androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1 r1 = new androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1
            r1.<init>(r8, r9)
        L1a:
            java.lang.Object r9 = r1.result
            int r2 = r1.label
            r3 = 0
            r4 = 2
            r5 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L3c
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            java.lang.Object r0 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7b
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r3
        L35:
            java.lang.Object r2 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            goto L50
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.runtime.ParcelableSnapshotMutableState r9 = r8.targetState$delegate
            java.lang.Object r9 = r9.getValue()
            r1.L$0 = r9
            r1.label = r5
            java.lang.Object r2 = r0.lock(r1)
            if (r2 != r6) goto L50
            goto L77
        L50:
            java.lang.Object r2 = r8.composedTargetState
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r2)
            if (r2 == 0) goto L5c
            r0.unlock(r3)
            goto L81
        L5c:
            r1.L$0 = r9
            r1.label = r4
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r1 = kotlinx.atomicfu.AtomicFU.intercepted(r1)
            r2.<init>(r5, r1)
            r2.initCancellability()
            r8.compositionContinuation = r2
            r0.unlock(r3)
            java.lang.Object r0 = r2.getResult()
            if (r0 != r6) goto L78
        L77:
            return r6
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState.access$waitForCompositionAfterTargetStateChange(androidx.compose.animation.core.SeekableTransitionState, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
        seekingAnimationState.value = RangesKt.coerceIn(((AnimationVector1D) vectorizedFiniteAnimationSpec.getValueFromNanos(j2, animationVector1D, Target1, animationVector1D2)).get$animation_core(0), 0.0f, 1.0f);
    }

    public final Object animateOneFrame(ContinuationImpl continuationImpl) {
        float durationScale = ArcSplineKt.getDurationScale(continuationImpl.getContext());
        Unit unit = Unit.INSTANCE;
        if (durationScale <= 0.0f) {
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

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final Object getCurrentState() {
        return this.currentState$delegate.getValue();
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final Object getTargetState() {
        return this.targetState$delegate.getValue();
    }

    public final Object seekTo(float f, Object obj, SuspendLambda suspendLambda) {
        if (0.0f > f || f > 1.0f) {
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
        transition.seekAnimations$animation_core(MathKt.roundToLong(this.fraction$delegate.getFloatValue() * ((Number) transition.totalDurationNanos$delegate.getValue()).longValue()));
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void setCurrentState$animation_core(Object obj) {
        this.currentState$delegate.setValue(obj);
    }

    public final void setFraction(float f) {
        this.fraction$delegate.setFloatValue(f);
    }

    public final void setSnapshotStateObserver$animation_core(SnapshotStateObserver snapshotStateObserver) {
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        if (Intrinsics.areEqual(this.snapshotStateObserver, snapshotStateObserver)) {
            return;
        }
        SnapshotStateObserver snapshotStateObserver2 = this.snapshotStateObserver;
        if (snapshotStateObserver2 != null) {
            snapshotStateObserver2.clear(this);
        }
        SnapshotStateObserver snapshotStateObserver3 = this.snapshotStateObserver;
        if (snapshotStateObserver3 != null && (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = snapshotStateObserver3.applyUnsubscribe) != null) {
            onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.dispose();
        }
        this.snapshotStateObserver = snapshotStateObserver;
        if (snapshotStateObserver != null) {
            snapshotStateObserver.start();
        }
        SnapshotStateObserver snapshotStateObserver4 = this.snapshotStateObserver;
        if (snapshotStateObserver4 != null) {
            snapshotStateObserver4.observeReads(this, ArcSplineKt.SeekableTransitionStateTotalDurationChanged, this.recalculateTotalDurationNanos);
        }
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void transitionConfigured$animation_core(Transition transition) {
        Transition transition2 = this.transition;
        if (transition2 != null && transition != transition2) {
            PreconditionsKt.throwIllegalStateException("An instance of SeekableTransitionState has been used in different Transitions. Previous instance: " + this.transition + ", new instance: " + transition);
        }
        this.transition = transition;
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void transitionRemoved$animation_core() {
        this.transition = null;
        SnapshotStateObserver snapshotStateObserver = this.snapshotStateObserver;
        if (snapshotStateObserver != null) {
            snapshotStateObserver.clear(this);
        }
    }
}
