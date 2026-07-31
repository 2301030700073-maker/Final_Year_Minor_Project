package net.thunderbird.feature.account.settings.impl.domain.usecase;

import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.core.data.DefaultAccountProfileRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetAccountName {
    public final DefaultAccountProfileRepository repository;

    public GetAccountName(DefaultAccountProfileRepository defaultAccountProfileRepository) {
        this.repository = defaultAccountProfileRepository;
    }

    public final GetAccountName$invoke$$inlined$map$1 invoke(AccountId accountId) {
        accountId.getClass();
        return new GetAccountName$invoke$$inlined$map$1(this.repository.getById(accountId), accountId, 0);
    }
}
