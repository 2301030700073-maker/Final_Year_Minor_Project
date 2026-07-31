package androidx.navigation3.ui;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.navigation3.scene.Scene;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ float $finalFraction;
    final /* synthetic */ Scene $scene;
    final /* synthetic */ SeekableTransitionState $transitionState;
    final /* synthetic */ float $value;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1(float f, float f2, SeekableTransitionState seekableTransitionState, Scene scene, Continuation continuation) {
        super(2, continuation);
        this.$value = f;
        this.$finalFraction = f2;
        this.$transitionState = seekableTransitionState;
        this.$scene = scene;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1(this.$value, this.$finalFraction, this.$transitionState, this.$scene, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0037, code lost:
    
        if (r0.seekTo(r8, r0.targetState$delegate.getValue(), r7) == r5) goto L30;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            int r0 = r7.label
            r1 = 0
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L1d
            if (r0 == r4) goto L19
            if (r0 != r3) goto L13
            kotlin.ResultKt.throwOnFailure(r8)
            return r2
        L13:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r1
        L19:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3a
        L1d:
            kotlin.ResultKt.throwOnFailure(r8)
            float r8 = r7.$value
            float r0 = r7.$finalFraction
            int r0 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r0 != 0) goto L29
            goto L3a
        L29:
            androidx.compose.animation.core.SeekableTransitionState r0 = r7.$transitionState
            r7.label = r4
            androidx.compose.runtime.ParcelableSnapshotMutableState r4 = r0.targetState$delegate
            java.lang.Object r4 = r4.getValue()
            java.lang.Object r8 = r0.seekTo(r8, r4, r7)
            if (r8 != r5) goto L3a
            goto L76
        L3a:
            float r8 = r7.$value
            float r0 = r7.$finalFraction
            int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r8 != 0) goto L77
            androidx.compose.animation.core.SeekableTransitionState r8 = r7.$transitionState
            androidx.navigation3.scene.Scene r0 = r7.$scene
            r7.label = r3
            androidx.compose.animation.core.Transition r3 = r8.transition
            if (r3 != 0) goto L4e
        L4c:
            r7 = r2
            goto L74
        L4e:
            androidx.compose.runtime.ParcelableSnapshotMutableState r4 = r8.currentState$delegate
            java.lang.Object r4 = r4.getValue()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r0)
            if (r4 == 0) goto L67
            androidx.compose.runtime.ParcelableSnapshotMutableState r4 = r8.targetState$delegate
            java.lang.Object r4 = r4.getValue()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r0)
            if (r4 == 0) goto L67
            goto L4c
        L67:
            androidx.compose.animation.core.MutatorMutex r4 = r8.mutatorMutex
            androidx.compose.animation.core.SeekableTransitionState$snapTo$2 r6 = new androidx.compose.animation.core.SeekableTransitionState$snapTo$2
            r6.<init>(r8, r0, r3, r1)
            java.lang.Object r7 = androidx.compose.animation.core.MutatorMutex.mutate$default(r4, r6, r7)
            if (r7 != r5) goto L4c
        L74:
            if (r7 != r5) goto L77
        L76:
            return r5
        L77:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
