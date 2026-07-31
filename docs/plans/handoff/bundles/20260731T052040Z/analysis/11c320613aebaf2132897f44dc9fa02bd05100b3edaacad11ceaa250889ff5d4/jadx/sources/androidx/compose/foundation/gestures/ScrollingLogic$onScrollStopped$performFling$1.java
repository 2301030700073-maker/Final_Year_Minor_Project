package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollingLogic$onScrollStopped$performFling$1 extends SuspendLambda implements Function2 {
    /* synthetic */ long J$0;
    long J$1;
    int label;
    final /* synthetic */ ScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$onScrollStopped$performFling$1(ScrollingLogic scrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.this$0 = scrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this.this$0, continuation);
        scrollingLogic$onScrollStopped$performFling$1.J$0 = ((Velocity) obj).packedValue;
        return scrollingLogic$onScrollStopped$performFling$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        long j = ((Velocity) obj).packedValue;
        ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this.this$0, (Continuation) obj2);
        scrollingLogic$onScrollStopped$performFling$1.J$0 = j;
        return scrollingLogic$onScrollStopped$performFling$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
    
        if (r14 == r4) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0072  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            int r0 = r13.label
            r1 = 3
            r2 = 2
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L2c
            if (r0 == r3) goto L26
            if (r0 == r2) goto L1e
            if (r0 != r1) goto L17
            long r0 = r13.J$1
            long r2 = r13.J$0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L74
        L17:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r13)
            r13 = 0
            return r13
        L1e:
            long r2 = r13.J$1
            long r5 = r13.J$0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L58
        L26:
            long r5 = r13.J$0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L40
        L2c:
            kotlin.ResultKt.throwOnFailure(r14)
            long r5 = r13.J$0
            androidx.compose.foundation.gestures.ScrollingLogic r14 = r13.this$0
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r14 = r14.nestedScrollDispatcher
            r13.J$0 = r5
            r13.label = r3
            java.lang.Object r14 = r14.m287dispatchPreFlingQWom1Mo(r5, r13)
            if (r14 != r4) goto L40
            goto L71
        L40:
            androidx.compose.ui.unit.Velocity r14 = (androidx.compose.ui.unit.Velocity) r14
            long r7 = r14.packedValue
            long r7 = androidx.compose.ui.unit.Velocity.m460minusAH228Gc(r5, r7)
            androidx.compose.foundation.gestures.ScrollingLogic r14 = r13.this$0
            r13.J$0 = r5
            r13.J$1 = r7
            r13.label = r2
            java.lang.Object r14 = r14.m70doFlingAnimationQWom1Mo(r7, r13)
            if (r14 != r4) goto L57
            goto L71
        L57:
            r2 = r7
        L58:
            androidx.compose.ui.unit.Velocity r14 = (androidx.compose.ui.unit.Velocity) r14
            long r10 = r14.packedValue
            androidx.compose.foundation.gestures.ScrollingLogic r14 = r13.this$0
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r7 = r14.nestedScrollDispatcher
            long r8 = androidx.compose.ui.unit.Velocity.m460minusAH228Gc(r2, r10)
            r13.J$0 = r5
            r13.J$1 = r10
            r13.label = r1
            r12 = r13
            java.lang.Object r14 = r7.m286dispatchPostFlingRZ2iAVY(r8, r10, r12)
            if (r14 != r4) goto L72
        L71:
            return r4
        L72:
            r2 = r5
            r0 = r10
        L74:
            androidx.compose.ui.unit.Velocity r14 = (androidx.compose.ui.unit.Velocity) r14
            long r13 = r14.packedValue
            long r13 = androidx.compose.ui.unit.Velocity.m460minusAH228Gc(r0, r13)
            long r13 = androidx.compose.ui.unit.Velocity.m460minusAH228Gc(r2, r13)
            androidx.compose.ui.unit.Velocity r0 = new androidx.compose.ui.unit.Velocity
            r0.<init>(r13)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic$onScrollStopped$performFling$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
