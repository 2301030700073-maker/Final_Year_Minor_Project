package com.fsck.k9.backends;

import com.fsck.k9.mail.oauth.AuthStateStorage;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.account.AccountId;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountAuthStateStorage implements AuthStateStorage {
    public final AccountId accountId;
    public final DefaultLegacyAccountManager accountManager;

    public AccountAuthStateStorage(DefaultLegacyAccountManager defaultLegacyAccountManager, AccountId accountId) {
        accountId.getClass();
        this.accountManager = defaultLegacyAccountManager;
        this.accountId = accountId;
    }

    public final LegacyAccount getAccountById(AccountId accountId) {
        LegacyAccount byIdSync = this.accountManager.getByIdSync(accountId);
        if (byIdSync != null) {
            return byIdSync;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) accountId, "Account not found: ");
        return null;
    }

    @Override // com.fsck.k9.mail.oauth.AuthStateStorage
    public final String getAuthorizationState() {
        return getAccountById(this.accountId).oAuthState;
    }

    @Override // com.fsck.k9.mail.oauth.AuthStateStorage
    public final void updateAuthorizationState(String str) {
        this.accountManager.saveAccount(LegacyAccount.copy$default(getAccountById(this.accountId), null, null, null, str, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -257, -1, 8388607));
    }
}
