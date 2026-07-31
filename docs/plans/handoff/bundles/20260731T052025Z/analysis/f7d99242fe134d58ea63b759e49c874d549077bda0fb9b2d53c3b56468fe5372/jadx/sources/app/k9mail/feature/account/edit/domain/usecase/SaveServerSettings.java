package app.k9mail.feature.account.edit.domain.usecase;

import com.fsck.k9.account.AccountServerSettingsUpdater;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveServerSettings {
    public final GetAccountState getAccountState;
    public final AccountServerSettingsUpdater serverSettingsUpdater;

    public SaveServerSettings(GetAccountState getAccountState, AccountServerSettingsUpdater accountServerSettingsUpdater) {
        this.getAccountState = getAccountState;
        this.serverSettingsUpdater = accountServerSettingsUpdater;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0055, code lost:
    
        if (r11 == r7) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(java.lang.String r9, boolean r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$execute$1
            if (r0 == 0) goto L14
            r0 = r11
            app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$execute$1 r0 = (app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$execute$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$execute$1 r0 = new app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$execute$1
            r0.<init>(r8, r11)
            goto L12
        L1a:
            java.lang.Object r11 = r6.result
            int r0 = r6.label
            r1 = 2
            r2 = 1
            r3 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L3c
            if (r0 == r2) goto L33
            if (r0 != r1) goto L2d
            kotlin.ResultKt.throwOnFailure(r11)
            return r11
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r3
        L33:
            boolean r10 = r6.Z$0
            java.lang.String r9 = r6.L$0
            kotlin.ResultKt.throwOnFailure(r11)
        L3a:
            r2 = r9
            goto L58
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            r6.L$0 = r9
            r6.Z$0 = r10
            r6.label = r2
            app.k9mail.feature.account.edit.domain.usecase.GetAccountState r11 = r8.getAccountState
            app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository r11 = r11.accountStateRepository
            app.k9mail.feature.account.common.data.InMemoryAccountStateRepository r11 = (app.k9mail.feature.account.common.data.InMemoryAccountStateRepository) r11
            app.k9mail.feature.account.common.domain.entity.AccountState r11 = r11.state
            java.lang.String r0 = r11.uuid
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r9)
            if (r0 == 0) goto L7d
            if (r11 != r7) goto L3a
            goto L75
        L58:
            app.k9mail.feature.account.common.domain.entity.AccountState r11 = (app.k9mail.feature.account.common.domain.entity.AccountState) r11
            if (r10 == 0) goto L60
            com.fsck.k9.mail.ServerSettings r9 = r11.incomingServerSettings
        L5e:
            r4 = r9
            goto L63
        L60:
            com.fsck.k9.mail.ServerSettings r9 = r11.outgoingServerSettings
            goto L5e
        L63:
            app.k9mail.feature.account.common.domain.entity.AuthorizationState r5 = r11.authorizationState
            if (r4 == 0) goto L77
            r6.L$0 = r3
            r6.Z$0 = r10
            r6.label = r1
            r1 = r8
            r3 = r10
            java.lang.Object r8 = r1.updateServerSettings(r2, r3, r4, r5, r6)
            if (r8 != r7) goto L76
        L75:
            return r7
        L76:
            return r8
        L77:
            java.lang.String r8 = "Server settings not found"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r3
        L7d:
            java.lang.String r8 = "Account state for "
            java.lang.String r10 = " not found"
            kotlin.text.Regex$$ExternalSyntheticBUOutline0.m(r9, r10, r8)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings.execute(java.lang.String, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateServerSettings(java.lang.String r5, boolean r6, com.fsck.k9.mail.ServerSettings r7, app.k9mail.feature.account.common.domain.entity.AuthorizationState r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$updateServerSettings$1
            if (r0 == 0) goto L14
            r0 = r9
            app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$updateServerSettings$1 r0 = (app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$updateServerSettings$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r9 = r0
            goto L1a
        L14:
            app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$updateServerSettings$1 r0 = new app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings$updateServerSettings$1
            r0.<init>(r4, r9)
            goto L12
        L1a:
            java.lang.Object r0 = r9.result
            int r1 = r9.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            kotlin.ResultKt.throwOnFailure(r0)
            goto L3e
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r0)
            r9.label = r3
            com.fsck.k9.account.AccountServerSettingsUpdater r4 = r4.serverSettingsUpdater
            java.lang.Object r0 = r4.updateServerSettings(r5, r6, r7, r8, r9)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r4) goto L3e
            return r4
        L3e:
            app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterResult r0 = (app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterResult) r0
            boolean r4 = r0 instanceof app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterResult.Failure
            if (r4 != 0) goto L47
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L47:
            java.lang.String r4 = "Server settings update failed"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings.updateServerSettings(java.lang.String, boolean, com.fsck.k9.mail.ServerSettings, app.k9mail.feature.account.common.domain.entity.AuthorizationState, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
