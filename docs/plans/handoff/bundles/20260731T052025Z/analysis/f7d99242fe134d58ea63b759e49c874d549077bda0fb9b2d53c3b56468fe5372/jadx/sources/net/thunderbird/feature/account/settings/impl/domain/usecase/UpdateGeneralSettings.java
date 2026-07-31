package net.thunderbird.feature.account.settings.impl.domain.usecase;

import net.thunderbird.feature.account.core.data.DefaultAccountProfileRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UpdateGeneralSettings {
    public final DefaultAccountProfileRepository repository;

    public UpdateGeneralSettings(DefaultAccountProfileRepository defaultAccountProfileRepository) {
        this.repository = defaultAccountProfileRepository;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007e, code lost:
    
        if (r6.localDataSource.update(r7, r0) == r5) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0080, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
    
        if (r9 == r5) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateAccountProfile(net.thunderbird.feature.account.AccountId r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings$updateAccountProfile$1
            if (r0 == 0) goto L13
            r0 = r9
            net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings$updateAccountProfile$1 r0 = (net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings$updateAccountProfile$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings$updateAccountProfile$1 r0 = new net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings$updateAccountProfile$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            net.thunderbird.feature.account.core.data.DefaultAccountProfileRepository r6 = r6.repository
            r2 = 1
            r3 = 2
            r4 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3b
            if (r1 == r2) goto L33
            if (r1 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r9)
            goto L81
        L2d:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r4
        L33:
            kotlin.jvm.functions.Function1 r8 = r0.L$1
            net.thunderbird.feature.account.AccountId r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4f
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.flow.Flow r9 = r6.getById(r7)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r2
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r9, r0)
            if (r9 != r5) goto L4f
            goto L80
        L4f:
            net.thunderbird.feature.account.profile.AccountProfile r9 = (net.thunderbird.feature.account.profile.AccountProfile) r9
            if (r9 != 0) goto L6c
            net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$NotFound r6 = new net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError$NotFound
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r9 = "Account profile not found for accountId: "
            r8.<init>(r9)
            r8.append(r7)
            java.lang.String r7 = r8.toString()
            r6.<init>(r7)
            net.thunderbird.core.outcome.Outcome$Failure r7 = new net.thunderbird.core.outcome.Outcome$Failure
            r7.<init>(r6, r4)
            return r7
        L6c:
            java.lang.Object r7 = r8.invoke(r9)
            net.thunderbird.feature.account.profile.AccountProfile r7 = (net.thunderbird.feature.account.profile.AccountProfile) r7
            r0.L$0 = r4
            r0.L$1 = r4
            r0.label = r3
            net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource r6 = r6.localDataSource
            java.lang.Object r6 = r6.update(r7, r0)
            if (r6 != r5) goto L81
        L80:
            return r5
        L81:
            net.thunderbird.core.outcome.Outcome$Success r6 = new net.thunderbird.core.outcome.Outcome$Success
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r6.<init>(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings.updateAccountProfile(net.thunderbird.feature.account.AccountId, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
