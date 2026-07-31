package com.fsck.k9.account;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountServerSettingsUpdater {
    public final LegacyAccountDtoManager accountManager;
    public final CoroutineDispatcher coroutineDispatcher;

    public AccountServerSettingsUpdater(LegacyAccountDtoManager legacyAccountDtoManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = legacyAccountDtoManager;
        this.coroutineDispatcher = defaultIoScheduler;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateServerSettings(java.lang.String r11, boolean r12, com.fsck.k9.mail.ServerSettings r13, app.k9mail.feature.account.common.domain.entity.AuthorizationState r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            r10 = this;
            boolean r0 = r15 instanceof com.fsck.k9.account.AccountServerSettingsUpdater$updateServerSettings$1
            if (r0 == 0) goto L13
            r0 = r15
            com.fsck.k9.account.AccountServerSettingsUpdater$updateServerSettings$1 r0 = (com.fsck.k9.account.AccountServerSettingsUpdater$updateServerSettings$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.fsck.k9.account.AccountServerSettingsUpdater$updateServerSettings$1 r0 = new com.fsck.k9.account.AccountServerSettingsUpdater$updateServerSettings$1
            r0.<init>(r10, r15)
        L18:
            java.lang.Object r15 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L2a
            java.lang.String r11 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r15)     // Catch: java.lang.Exception -> L27
            goto L4f
        L27:
            r0 = move-exception
        L28:
            r10 = r0
            goto L59
        L2a:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            r10 = 0
            return r10
        L31:
            kotlin.ResultKt.throwOnFailure(r15)
            kotlinx.coroutines.CoroutineDispatcher r15 = r10.coroutineDispatcher     // Catch: java.lang.Exception -> L56
            com.fsck.k9.account.AccountServerSettingsUpdater$updateServerSettings$2 r3 = new com.fsck.k9.account.AccountServerSettingsUpdater$updateServerSettings$2     // Catch: java.lang.Exception -> L56
            r9 = 0
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r13
            r8 = r14
            r3.<init>(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L52
            r0.L$0 = r5     // Catch: java.lang.Exception -> L52
            r0.label = r2     // Catch: java.lang.Exception -> L52
            java.lang.Object r15 = kotlinx.coroutines.JobKt.withContext(r15, r3, r0)     // Catch: java.lang.Exception -> L52
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r15 != r10) goto L4e
            return r10
        L4e:
            r11 = r5
        L4f:
            app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterResult r15 = (app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterResult) r15     // Catch: java.lang.Exception -> L27
            return r15
        L52:
            r0 = move-exception
            r10 = r0
            r11 = r5
            goto L59
        L56:
            r0 = move-exception
            r5 = r11
            goto L28
        L59:
            java.lang.Object[] r12 = new java.lang.Object[r2]
            r13 = 0
            r12[r13] = r11
            java.lang.String r11 = "Error while updating account server settings with UUID %s"
            net.thunderbird.core.logging.legacy.Log.e(r10, r11, r12)
            app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterResult$Failure r11 = new app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterResult$Failure
            app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterFailure$UnknownError r12 = new app.k9mail.feature.account.edit.AccountEditExternalContract$AccountUpdaterFailure$UnknownError
            r12.<init>(r10)
            r11.<init>(r12)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.account.AccountServerSettingsUpdater.updateServerSettings(java.lang.String, boolean, com.fsck.k9.mail.ServerSettings, app.k9mail.feature.account.common.domain.entity.AuthorizationState, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
