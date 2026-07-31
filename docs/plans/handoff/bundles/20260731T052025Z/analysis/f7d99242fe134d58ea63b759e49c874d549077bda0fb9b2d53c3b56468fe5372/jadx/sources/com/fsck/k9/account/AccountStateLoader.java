package com.fsck.k9.account;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountStateLoader {
    public final LegacyAccountDtoManager accountManager;
    public final CoroutineDispatcher coroutineDispatcher;

    public AccountStateLoader(LegacyAccountDtoManager legacyAccountDtoManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = legacyAccountDtoManager;
        this.coroutineDispatcher = defaultIoScheduler;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadAccountState(java.lang.String r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.fsck.k9.account.AccountStateLoader$loadAccountState$1
            if (r0 == 0) goto L13
            r0 = r7
            com.fsck.k9.account.AccountStateLoader$loadAccountState$1 r0 = (com.fsck.k9.account.AccountStateLoader$loadAccountState$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.fsck.k9.account.AccountStateLoader$loadAccountState$1 r0 = new com.fsck.k9.account.AccountStateLoader$loadAccountState$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L28
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L26
            goto L45
        L26:
            r5 = move-exception
            goto L48
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.CoroutineDispatcher r7 = r5.coroutineDispatcher     // Catch: java.lang.Exception -> L26
            androidx.datastore.core.DataStoreImpl$data$1$3 r1 = new androidx.datastore.core.DataStoreImpl$data$1$3     // Catch: java.lang.Exception -> L26
            r4 = 27
            r1.<init>(r5, r6, r3, r4)     // Catch: java.lang.Exception -> L26
            r0.label = r2     // Catch: java.lang.Exception -> L26
            java.lang.Object r7 = kotlinx.coroutines.JobKt.withContext(r7, r1, r0)     // Catch: java.lang.Exception -> L26
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r5) goto L45
            return r5
        L45:
            app.k9mail.feature.account.common.domain.entity.AccountState r7 = (app.k9mail.feature.account.common.domain.entity.AccountState) r7     // Catch: java.lang.Exception -> L26
            return r7
        L48:
            r6 = 0
            java.lang.Object[] r6 = new java.lang.Object[r6]
            java.lang.String r7 = "Error while loading account"
            net.thunderbird.core.logging.legacy.Log.e(r5, r7, r6)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.account.AccountStateLoader.loadAccountState(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
