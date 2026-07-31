package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StartedLazily$command$1$1 implements FlowCollector {
    public final /* synthetic */ Ref$BooleanRef $started;
    public final /* synthetic */ FlowCollector $this_unsafeFlow;

    public StartedLazily$command$1$1(Ref$BooleanRef ref$BooleanRef, FlowCollector flowCollector) {
        this.$started = ref$BooleanRef;
        this.$this_unsafeFlow = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(int r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1 r0 = (kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1 r0 = new kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L27
            kotlin.ResultKt.throwOnFailure(r6)
            return r2
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r6)
            if (r5 <= 0) goto L4c
            kotlin.jvm.internal.Ref$BooleanRef r6 = r4.$started
            boolean r1 = r6.element
            if (r1 != 0) goto L4c
            r6.element = r3
            r0.I$0 = r5
            r0.label = r3
            kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
            kotlinx.coroutines.flow.SharingCommand r5 = kotlinx.coroutines.flow.SharingCommand.START
            java.lang.Object r4 = r4.emit(r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L4c
            return r5
        L4c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedLazily$command$1$1.emit(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
        return emit(((Number) obj).intValue(), continuation);
    }
}
