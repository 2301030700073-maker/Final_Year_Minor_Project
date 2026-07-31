package kotlinx.coroutines.flow;

import kotlin.Function;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowKt__ZipKt$combine$1$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function $transform;
    public /* synthetic */ FlowCollector L$0;
    public /* synthetic */ Object L$1;
    public FlowCollector L$2;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowKt__ZipKt$combine$1$1(Function function, Continuation continuation, int i) {
        super(3, continuation);
        this.$r8$classId = i;
        this.$transform = function;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.$transform;
        FlowCollector flowCollector = (FlowCollector) obj;
        switch (i) {
            case 0:
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$1 = new FlowKt__ZipKt$combine$1$1((Function3) function, (Continuation) obj3, 0);
                flowKt__ZipKt$combine$1$1.L$0 = flowCollector;
                flowKt__ZipKt$combine$1$1.L$1 = (Object[]) obj2;
                return flowKt__ZipKt$combine$1$1.invokeSuspend(unit);
            default:
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$12 = new FlowKt__ZipKt$combine$1$1((Function2) function, (Continuation) obj3, 1);
                flowKt__ZipKt$combine$1$12.L$0 = flowCollector;
                flowKt__ZipKt$combine$1$12.L$1 = obj2;
                return flowKt__ZipKt$combine$1$12.invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
    
        if (r11 == r4) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0082, code lost:
    
        if (r11 == r4) goto L30;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            int r0 = r10.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            kotlin.Function r2 = r10.$transform
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r5 = 1
            r6 = 2
            r7 = 0
            switch(r0) {
                case 0: goto L4f;
                default: goto L10;
            }
        L10:
            kotlinx.coroutines.flow.FlowCollector r0 = r10.L$0
            java.lang.Object r8 = r10.L$1
            int r9 = r10.label
            if (r9 == 0) goto L2b
            if (r9 == r5) goto L25
            if (r9 != r6) goto L20
            kotlin.ResultKt.throwOnFailure(r11)
            goto L4e
        L20:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r3)
            r1 = r7
            goto L4e
        L25:
            kotlinx.coroutines.flow.FlowCollector r0 = r10.L$2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L3f
        L2b:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r10.L$0 = r7
            r10.L$1 = r7
            r10.L$2 = r0
            r10.label = r5
            java.lang.Object r11 = r2.invoke(r8, r10)
            if (r11 != r4) goto L3f
            goto L4d
        L3f:
            r10.L$0 = r7
            r10.L$1 = r7
            r10.L$2 = r7
            r10.label = r6
            java.lang.Object r10 = r0.emit(r11, r10)
            if (r10 != r4) goto L4e
        L4d:
            r1 = r4
        L4e:
            return r1
        L4f:
            kotlinx.coroutines.flow.FlowCollector r0 = r10.L$0
            java.lang.Object r8 = r10.L$1
            java.lang.Object[] r8 = (java.lang.Object[]) r8
            int r9 = r10.label
            if (r9 == 0) goto L6c
            if (r9 == r5) goto L66
            if (r9 != r6) goto L61
            kotlin.ResultKt.throwOnFailure(r11)
            goto L94
        L61:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r3)
            r1 = r7
            goto L94
        L66:
            kotlinx.coroutines.flow.FlowCollector r0 = r10.L$2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L85
        L6c:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlin.jvm.functions.Function3 r2 = (kotlin.jvm.functions.Function3) r2
            r11 = 0
            r11 = r8[r11]
            r3 = r8[r5]
            r10.L$0 = r7
            r10.L$1 = r7
            r10.L$2 = r0
            r10.label = r5
            java.lang.Object r11 = r2.invoke(r11, r3, r10)
            if (r11 != r4) goto L85
            goto L93
        L85:
            r10.L$0 = r7
            r10.L$1 = r7
            r10.L$2 = r7
            r10.label = r6
            java.lang.Object r10 = r0.emit(r11, r10)
            if (r10 != r4) goto L94
        L93:
            r1 = r4
        L94:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
