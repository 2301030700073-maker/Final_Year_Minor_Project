package net.thunderbird.feature.account.settings.impl.domain.usecase;

import net.thunderbird.app.common.account.data.DefaultLegacyAccountRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetLegacyAccount {
    public final DefaultLegacyAccountRepository repository;

    public GetLegacyAccount(DefaultLegacyAccountRepository defaultLegacyAccountRepository) {
        this.repository = defaultLegacyAccountRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(net.thunderbird.feature.account.AccountId r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount$invoke$1
            if (r0 == 0) goto L13
            r0 = r6
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount$invoke$1 r0 = (net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount$invoke$1 r0 = new net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount$invoke$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L2c:
            kotlin.ResultKt.throwOnFailure(r6)
            r5.getClass()
            net.thunderbird.app.common.account.data.DefaultLegacyAccountRepository r4 = r4.repository
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager r4 = r4.accountManager
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1 r4 = r4.getById(r5)
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r4, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r4) goto L45
            return r4
        L45:
            net.thunderbird.core.android.account.LegacyAccount r6 = (net.thunderbird.core.android.account.LegacyAccount) r6
            if (r6 == 0) goto L4f
            net.thunderbird.core.outcome.Outcome$Success r4 = new net.thunderbird.core.outcome.Outcome$Success
            r4.<init>(r6)
            return r4
        L4f:
            net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$NotFound r4 = new net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$NotFound
            java.lang.String r5 = "Account not found"
            r4.<init>(r5)
            net.thunderbird.core.outcome.Outcome$Failure r5 = new net.thunderbird.core.outcome.Outcome$Failure
            r5.<init>(r4, r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount.invoke(net.thunderbird.feature.account.AccountId, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
