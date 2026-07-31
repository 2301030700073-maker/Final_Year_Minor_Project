package app.k9mail.feature.account.edit.domain.usecase;

import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import com.fsck.k9.account.AccountStateLoader;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoadAccountState {
    public final AccountStateLoader accountStateLoader;
    public final AccountDomainContract$AccountStateRepository accountStateRepository;

    public LoadAccountState(AccountStateLoader accountStateLoader, AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository) {
        this.accountStateLoader = accountStateLoader;
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(java.lang.String r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof app.k9mail.feature.account.edit.domain.usecase.LoadAccountState$execute$1
            if (r0 == 0) goto L13
            r0 = r6
            app.k9mail.feature.account.edit.domain.usecase.LoadAccountState$execute$1 r0 = (app.k9mail.feature.account.edit.domain.usecase.LoadAccountState$execute$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.feature.account.edit.domain.usecase.LoadAccountState$execute$1 r0 = new app.k9mail.feature.account.edit.domain.usecase.LoadAccountState$execute$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            java.lang.String r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L40
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r5
            r0.label = r3
            com.fsck.k9.account.AccountStateLoader r6 = r4.accountStateLoader
            java.lang.Object r6 = r6.loadAccountState(r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r0) goto L40
            return r0
        L40:
            app.k9mail.feature.account.common.domain.entity.AccountState r6 = (app.k9mail.feature.account.common.domain.entity.AccountState) r6
            if (r6 == 0) goto L4b
            app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository r4 = r4.accountStateRepository
            app.k9mail.feature.account.common.data.InMemoryAccountStateRepository r4 = (app.k9mail.feature.account.common.data.InMemoryAccountStateRepository) r4
            r4.state = r6
            return r6
        L4b:
            java.lang.String r4 = "Account state for "
            java.lang.String r6 = " not found"
            kotlin.text.Regex$$ExternalSyntheticBUOutline0.m(r5, r6, r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.edit.domain.usecase.LoadAccountState.execute(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
