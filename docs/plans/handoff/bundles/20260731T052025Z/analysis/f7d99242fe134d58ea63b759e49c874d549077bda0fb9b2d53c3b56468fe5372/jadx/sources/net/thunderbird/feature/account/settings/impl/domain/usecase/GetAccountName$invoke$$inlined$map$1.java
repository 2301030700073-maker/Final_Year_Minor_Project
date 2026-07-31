package net.thunderbird.feature.account.settings.impl.domain.usecase;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetAccountName$invoke$$inlined$map$1 implements Flow {
    public final /* synthetic */ AccountId $accountId$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;

    /* renamed from: net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$1, reason: invalid class name */
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
            return GetAccountName$invoke$$inlined$map$1.this.collect(null, this);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2, reason: invalid class name */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ AccountId $accountId$inlined;
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ FlowCollector $this_unsafeFlow;

        /* renamed from: net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2$1, reason: invalid class name */
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

        public /* synthetic */ AnonymousClass2(FlowCollector flowCollector, AccountId accountId, int i) {
            this.$r8$classId = i;
            this.$this_unsafeFlow = flowCollector;
            this.$accountId$inlined = accountId;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0091  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
            /*
                r11 = this;
                int r0 = r11.$r8$classId
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                net.thunderbird.feature.account.AccountId r2 = r11.$accountId$inlined
                kotlinx.coroutines.flow.FlowCollector r3 = r11.$this_unsafeFlow
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                r6 = -2147483648(0xffffffff80000000, float:-0.0)
                r7 = 1
                r8 = 0
                switch(r0) {
                    case 0: goto L6a;
                    default: goto L13;
                }
            L13:
                boolean r0 = r13 instanceof net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$2$1
                if (r0 == 0) goto L24
                r0 = r13
                net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$2$1 r0 = (net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$2$1) r0
                int r9 = r0.label
                r10 = r9 & r6
                if (r10 == 0) goto L24
                int r9 = r9 - r6
                r0.label = r9
                goto L29
            L24:
                net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$2$1 r0 = new net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$2$1
                r0.<init>(r11, r13)
            L29:
                java.lang.Object r11 = r0.result
                int r13 = r0.label
                if (r13 == 0) goto L3a
                if (r13 != r7) goto L35
                kotlin.ResultKt.throwOnFailure(r11)
                goto L69
            L35:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
                r1 = r8
                goto L69
            L3a:
                kotlin.ResultKt.throwOnFailure(r11)
                net.thunderbird.feature.account.profile.AccountProfile r12 = (net.thunderbird.feature.account.profile.AccountProfile) r12
                if (r12 == 0) goto L47
                net.thunderbird.core.outcome.Outcome$Success r11 = new net.thunderbird.core.outcome.Outcome$Success
                r11.<init>(r12)
                goto L60
            L47:
                net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$NotFound r11 = new net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$NotFound
                java.lang.StringBuilder r12 = new java.lang.StringBuilder
                java.lang.String r13 = "AccountProfile not found for accountId: "
                r12.<init>(r13)
                r12.append(r2)
                java.lang.String r12 = r12.toString()
                r11.<init>(r12)
                net.thunderbird.core.outcome.Outcome$Failure r12 = new net.thunderbird.core.outcome.Outcome$Failure
                r12.<init>(r11, r8)
                r11 = r12
            L60:
                r0.label = r7
                java.lang.Object r11 = r3.emit(r11, r0)
                if (r11 != r5) goto L69
                r1 = r5
            L69:
                return r1
            L6a:
                boolean r0 = r13 instanceof net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L7b
                r0 = r13
                net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2$1 r0 = (net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r9 = r0.label
                r10 = r9 & r6
                if (r10 == 0) goto L7b
                int r9 = r9 - r6
                r0.label = r9
                goto L80
            L7b:
                net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2$1 r0 = new net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2$1
                r0.<init>(r13)
            L80:
                java.lang.Object r11 = r0.result
                int r13 = r0.label
                if (r13 == 0) goto L91
                if (r13 != r7) goto L8c
                kotlin.ResultKt.throwOnFailure(r11)
                goto Lc1
            L8c:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
                r1 = r8
                goto Lc1
            L91:
                kotlin.ResultKt.throwOnFailure(r11)
                net.thunderbird.feature.account.profile.AccountProfile r12 = (net.thunderbird.feature.account.profile.AccountProfile) r12
                if (r12 == 0) goto La0
                java.lang.String r11 = r12.name
                net.thunderbird.core.outcome.Outcome$Success r12 = new net.thunderbird.core.outcome.Outcome$Success
                r12.<init>(r11)
                goto Lb8
            La0:
                net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$NotFound r11 = new net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$NotFound
                java.lang.StringBuilder r12 = new java.lang.StringBuilder
                java.lang.String r13 = "Account profile not found for accountId: "
                r12.<init>(r13)
                r12.append(r2)
                java.lang.String r12 = r12.toString()
                r11.<init>(r12)
                net.thunderbird.core.outcome.Outcome$Failure r12 = new net.thunderbird.core.outcome.Outcome$Failure
                r12.<init>(r11, r8)
            Lb8:
                r0.label = r7
                java.lang.Object r11 = r3.emit(r12, r0)
                if (r11 != r5) goto Lc1
                r1 = r5
            Lc1:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public /* synthetic */ GetAccountName$invoke$$inlined$map$1(Flow flow, AccountId accountId, int i) {
        this.$r8$classId = i;
        this.$this_unsafeTransform$inlined = flow;
        this.$accountId$inlined = accountId;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0073  */
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
            net.thunderbird.feature.account.AccountId r2 = r11.$accountId$inlined
            kotlinx.coroutines.flow.Flow r3 = r11.$this_unsafeTransform$inlined
            r4 = 0
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            r8 = 1
            switch(r0) {
                case 0: goto L4c;
                default: goto L13;
            }
        L13:
            boolean r0 = r13 instanceof net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$1
            if (r0 == 0) goto L24
            r0 = r13
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$1 r0 = (net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$1) r0
            int r9 = r0.label
            r10 = r9 & r7
            if (r10 == 0) goto L24
            int r9 = r9 - r7
            r0.label = r9
            goto L29
        L24:
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$1 r0 = new net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile$invoke$$inlined$map$1$1
            r0.<init>(r11, r13)
        L29:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L3a
            if (r13 != r8) goto L35
            kotlin.ResultKt.throwOnFailure(r11)
            goto L4b
        L35:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto L4b
        L3a:
            kotlin.ResultKt.throwOnFailure(r11)
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2 r11 = new net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2
            r11.<init>(r12, r2, r8)
            r0.label = r8
            java.lang.Object r11 = r3.collect(r11, r0)
            if (r11 != r6) goto L4b
            r1 = r6
        L4b:
            return r1
        L4c:
            boolean r0 = r13 instanceof net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1.AnonymousClass1
            if (r0 == 0) goto L5d
            r0 = r13
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$1 r0 = (net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1.AnonymousClass1) r0
            int r9 = r0.label
            r10 = r9 & r7
            if (r10 == 0) goto L5d
            int r9 = r9 - r7
            r0.label = r9
            goto L62
        L5d:
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$1 r0 = new net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$1
            r0.<init>(r13)
        L62:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L73
            if (r13 != r8) goto L6e
            kotlin.ResultKt.throwOnFailure(r11)
            goto L85
        L6e:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto L85
        L73:
            kotlin.ResultKt.throwOnFailure(r11)
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2 r11 = new net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1$2
            r13 = 0
            r11.<init>(r12, r2, r13)
            r0.label = r8
            java.lang.Object r11 = r3.collect(r11, r0)
            if (r11 != r6) goto L85
            r1 = r6
        L85:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
