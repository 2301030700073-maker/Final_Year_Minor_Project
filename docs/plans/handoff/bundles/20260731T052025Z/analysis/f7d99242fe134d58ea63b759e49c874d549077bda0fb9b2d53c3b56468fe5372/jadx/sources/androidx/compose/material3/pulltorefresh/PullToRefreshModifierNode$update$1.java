package androidx.compose.material3.pulltorefresh;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a0, code lost:
    
        if (r4.animateToHidden(r8) == r3) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a9, code lost:
    
        if (androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.access$animateToThreshold(r4, r8) == r3) goto L50;
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode r4 = r8.this$0
            r5 = 1
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            switch(r0) {
                case 0: goto L81;
                case 1: goto L4f;
                default: goto Lf;
            }
        Lf:
            int r0 = r8.label
            if (r0 == 0) goto L1d
            if (r0 != r5) goto L19
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4d
        L19:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r2)
            goto L4e
        L1d:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r9 = r4.state
            androidx.compose.animation.core.Animatable r9 = r9.anim
            boolean r9 = r9.isRunning()
            if (r9 != 0) goto L4d
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r9 = r4.state
            androidx.compose.runtime.ParcelableSnapshotMutableFloatState r0 = r4.verticalOffset$delegate
            float r0 = r0.getFloatValue()
            int r1 = r4.getThresholdPx()
            float r1 = (float) r1
            float r0 = r0 / r1
            r8.label = r5
            androidx.compose.animation.core.Animatable r9 = r9.anim
            java.lang.Float r1 = new java.lang.Float
            r1.<init>(r0)
            java.lang.Object r8 = r9.snapTo(r1, r8)
            if (r8 != r3) goto L48
            goto L49
        L48:
            r8 = r6
        L49:
            if (r8 != r3) goto L4d
            r1 = r3
            goto L4e
        L4d:
            r1 = r6
        L4e:
            return r1
        L4f:
            int r0 = r8.label
            if (r0 == 0) goto L5d
            if (r0 != r5) goto L59
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7f
        L59:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r2)
            goto L80
        L5d:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r9 = r4.state
            boolean r0 = r4.isRefreshing
            if (r0 == 0) goto L69
            r0 = 1065353216(0x3f800000, float:1.0)
            goto L6a
        L69:
            r0 = 0
        L6a:
            r8.label = r5
            androidx.compose.animation.core.Animatable r9 = r9.anim
            java.lang.Float r1 = new java.lang.Float
            r1.<init>(r0)
            java.lang.Object r8 = r9.snapTo(r1, r8)
            if (r8 != r3) goto L7a
            goto L7b
        L7a:
            r8 = r6
        L7b:
            if (r8 != r3) goto L7f
            r1 = r3
            goto L80
        L7f:
            r1 = r6
        L80:
            return r1
        L81:
            int r0 = r8.label
            r7 = 2
            if (r0 == 0) goto L93
            if (r0 == r5) goto L8f
            if (r0 != r7) goto L8b
            goto L8f
        L8b:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r2)
            goto Lae
        L8f:
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lad
        L93:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r4.isRefreshing
            if (r9 != 0) goto La3
            r8.label = r5
            java.lang.Object r8 = r4.animateToHidden(r8)
            if (r8 != r3) goto Lad
            goto Lab
        La3:
            r8.label = r7
            java.lang.Object r8 = androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.access$animateToThreshold(r4, r8)
            if (r8 != r3) goto Lad
        Lab:
            r1 = r3
            goto Lae
        Lad:
            r1 = r6
        Lae:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$update$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
