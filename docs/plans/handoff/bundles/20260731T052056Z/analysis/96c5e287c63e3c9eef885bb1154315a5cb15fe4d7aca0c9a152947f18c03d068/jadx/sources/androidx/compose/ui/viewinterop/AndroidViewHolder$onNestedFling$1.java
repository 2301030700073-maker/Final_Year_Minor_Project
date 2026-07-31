package androidx.compose.ui.viewinterop;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidViewHolder$onNestedFling$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $consumed;
    public final /* synthetic */ long $viewVelocity;
    public int label;
    public final /* synthetic */ AndroidViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$onNestedFling$1(boolean z, AndroidViewHolder androidViewHolder, long j, Continuation continuation) {
        super(2, continuation);
        this.$consumed = z;
        this.this$0 = androidViewHolder;
        this.$viewVelocity = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AndroidViewHolder$onNestedFling$1(this.$consumed, this.this$0, this.$viewVelocity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AndroidViewHolder$onNestedFling$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        if (r11 == r0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r11 == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r10.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            kotlin.ResultKt.throwOnFailure(r11)
            goto L47
        L10:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            r10 = 0
            return r10
        L17:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L34
        L1b:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.compose.ui.viewinterop.AndroidViewHolder r11 = r10.this$0
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r4 = r11.dispatcher
            boolean r11 = r10.$consumed
            if (r11 != 0) goto L39
            r10.label = r3
            r5 = 0
            long r7 = r10.$viewVelocity
            r9 = r10
            java.lang.Object r11 = r4.m501dispatchPostFlingRZ2iAVY(r5, r7, r9)
            if (r11 != r0) goto L34
            goto L46
        L34:
            androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
            long r10 = r11.packedValue
            goto L4b
        L39:
            r9 = r10
            r9.label = r2
            long r5 = r9.$viewVelocity
            r7 = 0
            java.lang.Object r11 = r4.m501dispatchPostFlingRZ2iAVY(r5, r7, r9)
            if (r11 != r0) goto L47
        L46:
            return r0
        L47:
            androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
            long r10 = r11.packedValue
        L4b:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
