package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SwipeableRowState$updateOffset$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ SwipeBehaviour $behaviour;
    public final /* synthetic */ float $finalOffset;
    public final /* synthetic */ boolean $willSettlePastThreshold;
    public int label;
    public final /* synthetic */ SwipeableRowState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableRowState$updateOffset$1(SwipeableRowState swipeableRowState, float f, SwipeBehaviour swipeBehaviour, boolean z, Continuation continuation) {
        super(2, continuation);
        this.this$0 = swipeableRowState;
        this.$finalOffset = f;
        this.$behaviour = swipeBehaviour;
        this.$willSettlePastThreshold = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SwipeableRowState$updateOffset$1(this.this$0, this.$finalOffset, this.$behaviour, this.$willSettlePastThreshold, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SwipeableRowState$updateOffset$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0085, code lost:
    
        if (androidx.compose.animation.core.Animatable.animateTo$default(r8, r9, r10, null, r12, 12) == r7) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0087, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0066, code lost:
    
        if (kotlinx.coroutines.JobKt.m1010delayVtjQ1oo(r14, r12) == r7) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004b, code lost:
    
        if (androidx.compose.animation.core.Animatable.animateTo$default(r8, r9, r10, null, r12, 12) == r7) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState r0 = r14.this$0
            androidx.compose.runtime.ParcelableSnapshotMutableState r1 = r0.swipeState$delegate
            int r2 = r14.label
            r3 = 3
            r4 = 2
            r5 = 1
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour r6 = r14.$behaviour
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L2b
            if (r2 == r5) goto L26
            if (r2 == r4) goto L21
            if (r2 != r3) goto L1a
            kotlin.ResultKt.throwOnFailure(r15)
            goto L88
        L1a:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r14)
            r14 = 0
            return r14
        L21:
            kotlin.ResultKt.throwOnFailure(r15)
            r12 = r14
            goto L69
        L26:
            kotlin.ResultKt.throwOnFailure(r15)
            r12 = r14
            goto L4e
        L2b:
            kotlin.ResultKt.throwOnFailure(r15)
            androidx.compose.animation.core.Animatable r8 = r0.getAnimatedOffset()
            java.lang.Float r9 = new java.lang.Float
            float r15 = r14.$finalOffset
            r9.<init>(r15)
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour r15 = r0.getActiveBehaviour$tfa_core_ui_compose_designsystem()
            androidx.compose.animation.core.AnimationSpec r10 = r15.getSettleAnimationSpec()
            r14.label = r5
            r11 = 0
            r13 = 12
            r12 = r14
            java.lang.Object r14 = androidx.compose.animation.core.Animatable.animateTo$default(r8, r9, r10, r11, r12, r13)
            if (r14 != r7) goto L4e
            goto L87
        L4e:
            boolean r14 = r6 instanceof net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour.Action
            boolean r15 = r12.$willSettlePastThreshold
            if (r14 == 0) goto L8e
            if (r15 == 0) goto L8e
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState r14 = net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState.Resetting
            r1.setValue(r14)
            r14 = r6
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour$Action r14 = (net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour.Action) r14
            long r14 = r14.autoCloseDelayMillis
            r12.label = r4
            java.lang.Object r14 = kotlinx.coroutines.JobKt.m1010delayVtjQ1oo(r14, r12)
            if (r14 != r7) goto L69
            goto L87
        L69:
            androidx.compose.runtime.ParcelableSnapshotMutableFloatState r14 = r0.pendingOffset$delegate
            r15 = 0
            r14.setFloatValue(r15)
            androidx.compose.animation.core.Animatable r8 = r0.getAnimatedOffset()
            java.lang.Float r9 = new java.lang.Float
            r9.<init>(r15)
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour$Action r6 = (net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour.Action) r6
            androidx.compose.animation.core.AnimationSpec r10 = r6.settleAnimationSpec
            r12.label = r3
            r11 = 0
            r13 = 12
            java.lang.Object r14 = androidx.compose.animation.core.Animatable.animateTo$default(r8, r9, r10, r11, r12, r13)
            if (r14 != r7) goto L88
        L87:
            return r7
        L88:
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState r14 = net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState.Settled
            r1.setValue(r14)
            goto L99
        L8e:
            boolean r14 = r6 instanceof net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour.Dismiss
            if (r14 == 0) goto L99
            if (r15 == 0) goto L99
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState r14 = net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState.Dismissed
            r1.setValue(r14)
        L99:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState$updateOffset$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
