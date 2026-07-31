package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ScrollingLogic$onScrollStopped$performFling$1 extends SuspendLambda implements Function2 {
    public /* synthetic */ long J$0;
    public long J$1;
    public int label;
    public final /* synthetic */ ScrollingLogic this$0;

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
    
        if (r15 == r0) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r14.label
            r2 = 3
            r3 = 2
            r4 = 1
            androidx.compose.foundation.gestures.ScrollingLogic r5 = r14.this$0
            if (r1 == 0) goto L2e
            if (r1 == r4) goto L28
            if (r1 == r3) goto L20
            if (r1 != r2) goto L19
            long r0 = r14.J$1
            long r2 = r14.J$0
            kotlin.ResultKt.throwOnFailure(r15)
            goto L70
        L19:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r14)
            r14 = 0
            return r14
        L20:
            long r3 = r14.J$1
            long r6 = r14.J$0
            kotlin.ResultKt.throwOnFailure(r15)
            goto L56
        L28:
            long r6 = r14.J$0
            kotlin.ResultKt.throwOnFailure(r15)
            goto L40
        L2e:
            kotlin.ResultKt.throwOnFailure(r15)
            long r6 = r14.J$0
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r15 = r5.nestedScrollDispatcher
            r14.J$0 = r6
            r14.label = r4
            java.lang.Object r15 = r15.m502dispatchPreFlingQWom1Mo(r6, r14)
            if (r15 != r0) goto L40
            goto L6d
        L40:
            androidx.compose.ui.unit.Velocity r15 = (androidx.compose.ui.unit.Velocity) r15
            long r8 = r15.packedValue
            long r8 = androidx.compose.ui.unit.Velocity.m733minusAH228Gc(r6, r8)
            r14.J$0 = r6
            r14.J$1 = r8
            r14.label = r3
            java.lang.Object r15 = r5.m99doFlingAnimationQWom1Mo(r8, r14)
            if (r15 != r0) goto L55
            goto L6d
        L55:
            r3 = r8
        L56:
            androidx.compose.ui.unit.Velocity r15 = (androidx.compose.ui.unit.Velocity) r15
            long r11 = r15.packedValue
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r8 = r5.nestedScrollDispatcher
            long r9 = androidx.compose.ui.unit.Velocity.m733minusAH228Gc(r3, r11)
            r14.J$0 = r6
            r14.J$1 = r11
            r14.label = r2
            r13 = r14
            java.lang.Object r15 = r8.m501dispatchPostFlingRZ2iAVY(r9, r11, r13)
            if (r15 != r0) goto L6e
        L6d:
            return r0
        L6e:
            r2 = r6
            r0 = r11
        L70:
            androidx.compose.ui.unit.Velocity r15 = (androidx.compose.ui.unit.Velocity) r15
            long r14 = r15.packedValue
            long r14 = androidx.compose.ui.unit.Velocity.m733minusAH228Gc(r0, r14)
            long r14 = androidx.compose.ui.unit.Velocity.m733minusAH228Gc(r2, r14)
            androidx.compose.ui.unit.Velocity r0 = new androidx.compose.ui.unit.Velocity
            r0.<init>(r14)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic$onScrollStopped$performFling$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
