package androidx.compose.material3.pulltorefresh;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PullToRefreshModifierNode$update$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ PullToRefreshModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PullToRefreshModifierNode$update$1(PullToRefreshModifierNode pullToRefreshModifierNode, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = pullToRefreshModifierNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PullToRefreshModifierNode pullToRefreshModifierNode = this.this$0;
        switch (i) {
            case 0:
                return new PullToRefreshModifierNode$update$1(pullToRefreshModifierNode, continuation, 0);
            case 1:
                return new PullToRefreshModifierNode$update$1(pullToRefreshModifierNode, continuation, 1);
            default:
                return new PullToRefreshModifierNode$update$1(pullToRefreshModifierNode, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((PullToRefreshModifierNode$update$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a4, code lost:
    
        if (r3.animateToHidden(r8) == r0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ad, code lost:
    
        if (r3.animateToThreshold(r8) == r0) goto L50;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            int r0 = r8.$r8$classId
            r1 = 0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode r3 = r8.this$0
            r4 = 1
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            switch(r0) {
                case 0: goto L83;
                case 1: goto L4f;
                default: goto Ld;
            }
        Ld:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r8.label
            if (r6 == 0) goto L1d
            if (r6 != r4) goto L19
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4d
        L19:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            goto L4e
        L1d:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r9 = r3.state
            androidx.compose.animation.core.Animatable r9 = r9.anim
            boolean r9 = r9.isRunning()
            if (r9 != 0) goto L4d
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r9 = r3.state
            androidx.compose.runtime.ParcelableSnapshotMutableFloatState r1 = r3.verticalOffset$delegate
            float r1 = r1.getFloatValue()
            int r2 = r3.getThresholdPx()
            float r2 = (float) r2
            float r1 = r1 / r2
            r8.label = r4
            androidx.compose.animation.core.Animatable r9 = r9.anim
            java.lang.Float r2 = new java.lang.Float
            r2.<init>(r1)
            java.lang.Object r8 = r9.snapTo(r2, r8)
            if (r8 != r0) goto L48
            goto L49
        L48:
            r8 = r5
        L49:
            if (r8 != r0) goto L4d
            r1 = r0
            goto L4e
        L4d:
            r1 = r5
        L4e:
            return r1
        L4f:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r8.label
            if (r6 == 0) goto L5f
            if (r6 != r4) goto L5b
            kotlin.ResultKt.throwOnFailure(r9)
            goto L81
        L5b:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            goto L82
        L5f:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r9 = r3.state
            boolean r1 = r3.isRefreshing
            if (r1 == 0) goto L6b
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L6c
        L6b:
            r1 = 0
        L6c:
            r8.label = r4
            androidx.compose.animation.core.Animatable r9 = r9.anim
            java.lang.Float r2 = new java.lang.Float
            r2.<init>(r1)
            java.lang.Object r8 = r9.snapTo(r2, r8)
            if (r8 != r0) goto L7c
            goto L7d
        L7c:
            r8 = r5
        L7d:
            if (r8 != r0) goto L81
            r1 = r0
            goto L82
        L81:
            r1 = r5
        L82:
            return r1
        L83:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r8.label
            r7 = 2
            if (r6 == 0) goto L97
            if (r6 == r4) goto L93
            if (r6 != r7) goto L8f
            goto L93
        L8f:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            goto Lb2
        L93:
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lb1
        L97:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r3.isRefreshing
            if (r9 != 0) goto La7
            r8.label = r4
            java.lang.Object r8 = r3.animateToHidden(r8)
            if (r8 != r0) goto Lb1
            goto Laf
        La7:
            r8.label = r7
            java.lang.Object r8 = r3.animateToThreshold(r8)
            if (r8 != r0) goto Lb1
        Laf:
            r1 = r0
            goto Lb2
        Lb1:
            r1 = r5
        Lb2:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$update$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
