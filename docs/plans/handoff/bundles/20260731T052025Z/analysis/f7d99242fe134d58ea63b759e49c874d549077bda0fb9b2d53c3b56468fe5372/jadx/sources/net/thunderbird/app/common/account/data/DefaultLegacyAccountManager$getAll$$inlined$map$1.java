package net.thunderbird.app.common.account.data;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultLegacyAccountManager$getAll$$inlined$map$1 implements Flow {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;
    public final /* synthetic */ DefaultLegacyAccountManager this$0;

    /* renamed from: net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$1, reason: invalid class name */
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
            return DefaultLegacyAccountManager$getAll$$inlined$map$1.this.collect(null, this);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$2, reason: invalid class name */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ FlowCollector $this_unsafeFlow;
        public final /* synthetic */ DefaultLegacyAccountManager this$0;

        /* renamed from: net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1, reason: invalid class name */
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
                return AnonymousClass2.this.emit(null, this);
            }
        }

        public /* synthetic */ AnonymousClass2(FlowCollector flowCollector, DefaultLegacyAccountManager defaultLegacyAccountManager, int i) {
            this.$r8$classId = i;
            this.$this_unsafeFlow = flowCollector;
            this.this$0 = defaultLegacyAccountManager;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00bc  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
            /*
                Method dump skipped, instructions count: 250
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public /* synthetic */ DefaultLegacyAccountManager$getAll$$inlined$map$1(Flow flow, DefaultLegacyAccountManager defaultLegacyAccountManager, int i) {
        this.$r8$classId = i;
        this.$this_unsafeTransform$inlined = flow;
        this.this$0 = defaultLegacyAccountManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ad  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r12, kotlin.coroutines.Continuation r13) {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager r2 = r11.this$0
            kotlinx.coroutines.flow.Flow r3 = r11.$this_unsafeTransform$inlined
            r4 = 0
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            r8 = 1
            switch(r0) {
                case 0: goto L86;
                case 1: goto L4d;
                default: goto L13;
            }
        L13:
            boolean r0 = r13 instanceof net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getById$$inlined$map$1$1
            if (r0 == 0) goto L24
            r0 = r13
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getById$$inlined$map$1$1 r0 = (net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getById$$inlined$map$1$1) r0
            int r9 = r0.label
            r10 = r9 & r7
            if (r10 == 0) goto L24
            int r9 = r9 - r7
            r0.label = r9
            goto L29
        L24:
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getById$$inlined$map$1$1 r0 = new net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getById$$inlined$map$1$1
            r0.<init>(r11, r13)
        L29:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L3a
            if (r13 != r8) goto L35
            kotlin.ResultKt.throwOnFailure(r11)
            goto L4c
        L35:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto L4c
        L3a:
            kotlin.ResultKt.throwOnFailure(r11)
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$2 r11 = new net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$2
            r13 = 2
            r11.<init>(r12, r2, r13)
            r0.label = r8
            java.lang.Object r11 = r3.collect(r11, r0)
            if (r11 != r6) goto L4c
            r1 = r6
        L4c:
            return r1
        L4d:
            boolean r0 = r13 instanceof net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1
            if (r0 == 0) goto L5e
            r0 = r13
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1 r0 = (net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1) r0
            int r9 = r0.label
            r10 = r9 & r7
            if (r10 == 0) goto L5e
            int r9 = r9 - r7
            r0.label = r9
            goto L63
        L5e:
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1 r0 = new net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1
            r0.<init>(r11, r13)
        L63:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L74
            if (r13 != r8) goto L6f
            kotlin.ResultKt.throwOnFailure(r11)
            goto L85
        L6f:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto L85
        L74:
            kotlin.ResultKt.throwOnFailure(r11)
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$2 r11 = new net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$2
            r11.<init>(r12, r2, r8)
            r0.label = r8
            java.lang.Object r11 = r3.collect(r11, r0)
            if (r11 != r6) goto L85
            r1 = r6
        L85:
            return r1
        L86:
            boolean r0 = r13 instanceof net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1.AnonymousClass1
            if (r0 == 0) goto L97
            r0 = r13
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$1 r0 = (net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1.AnonymousClass1) r0
            int r9 = r0.label
            r10 = r9 & r7
            if (r10 == 0) goto L97
            int r9 = r9 - r7
            r0.label = r9
            goto L9c
        L97:
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$1 r0 = new net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$1
            r0.<init>(r13)
        L9c:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto Lad
            if (r13 != r8) goto La8
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lbf
        La8:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto Lbf
        Lad:
            kotlin.ResultKt.throwOnFailure(r11)
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$2 r11 = new net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1$2
            r13 = 0
            r11.<init>(r12, r2, r13)
            r0.label = r8
            java.lang.Object r11 = r3.collect(r11, r0)
            if (r11 != r6) goto Lbf
            r1 = r6
        Lbf:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
