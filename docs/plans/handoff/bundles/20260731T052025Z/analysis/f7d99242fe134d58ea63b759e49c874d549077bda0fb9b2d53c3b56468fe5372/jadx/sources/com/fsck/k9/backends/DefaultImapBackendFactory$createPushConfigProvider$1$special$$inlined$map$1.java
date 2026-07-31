package com.fsck.k9.backends;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1 implements Flow {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 $this_unsafeTransform$inlined;

    /* renamed from: com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends ContinuationImpl {
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1.this.collect(null, this);
        }
    }

    public /* synthetic */ DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1(FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 flowKt__LimitKt$drop$$inlined$unsafeFlow$1, int i) {
        this.$r8$classId = i;
        this.$this_unsafeTransform$inlined = flowKt__LimitKt$drop$$inlined$unsafeFlow$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0072  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            int r0 = r10.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 r2 = r10.$this_unsafeTransform$inlined
            r3 = 0
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = 1
            switch(r0) {
                case 0: goto L4b;
                default: goto L11;
            }
        L11:
            boolean r0 = r12 instanceof com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$1
            if (r0 == 0) goto L22
            r0 = r12
            com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$1 r0 = (com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$1) r0
            int r8 = r0.label
            r9 = r8 & r6
            if (r9 == 0) goto L22
            int r8 = r8 - r6
            r0.label = r8
            goto L27
        L22:
            com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$1 r0 = new com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$1
            r0.<init>(r10, r12)
        L27:
            java.lang.Object r10 = r0.result
            int r12 = r0.label
            if (r12 == 0) goto L38
            if (r12 != r7) goto L33
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4a
        L33:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r1 = r3
            goto L4a
        L38:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1 r10 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1
            r12 = 6
            r10.<init>(r11, r12)
            r0.label = r7
            java.lang.Object r10 = r2.collect(r10, r0)
            if (r10 != r5) goto L4a
            r1 = r5
        L4a:
            return r1
        L4b:
            boolean r0 = r12 instanceof com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1.AnonymousClass1
            if (r0 == 0) goto L5c
            r0 = r12
            com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$1 r0 = (com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1.AnonymousClass1) r0
            int r8 = r0.label
            r9 = r8 & r6
            if (r9 == 0) goto L5c
            int r8 = r8 - r6
            r0.label = r8
            goto L61
        L5c:
            com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$1 r0 = new com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$1
            r0.<init>(r12)
        L61:
            java.lang.Object r10 = r0.result
            int r12 = r0.label
            if (r12 == 0) goto L72
            if (r12 != r7) goto L6d
            kotlin.ResultKt.throwOnFailure(r10)
            goto L84
        L6d:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r1 = r3
            goto L84
        L72:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1 r10 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1
            r12 = 5
            r10.<init>(r11, r12)
            r0.label = r7
            java.lang.Object r10 = r2.collect(r10, r0)
            if (r10 != r5) goto L84
            r1 = r5
        L84:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
