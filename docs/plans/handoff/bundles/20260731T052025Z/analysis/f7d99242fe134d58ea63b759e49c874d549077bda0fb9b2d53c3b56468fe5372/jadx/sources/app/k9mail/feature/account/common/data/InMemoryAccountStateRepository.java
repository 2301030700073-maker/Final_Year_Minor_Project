package app.k9mail.feature.account.common.data;

import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.AuthorizationState;
import com.fsck.k9.mail.oauth.AuthStateStorage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InMemoryAccountStateRepository implements AccountDomainContract$AccountStateRepository, AuthStateStorage {
    public AccountState state;

    @Override // com.fsck.k9.mail.oauth.AuthStateStorage
    public final String getAuthorizationState() {
        AuthorizationState authorizationState = this.state.authorizationState;
        if (authorizationState != null) {
            return authorizationState.value;
        }
        return null;
    }

    @Override // com.fsck.k9.mail.oauth.AuthStateStorage
    public final void updateAuthorizationState(String str) {
        this.state = AccountState.copy$default(this.state, null, null, new AuthorizationState(str), null, null, null, 239);
    }
}
