package net.thunderbird.feature.account.core.data;

import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
import net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAccountProfileRepository {
    public final DefaultAccountProfileLocalDataSource localDataSource;

    public DefaultAccountProfileRepository(DefaultAccountProfileLocalDataSource defaultAccountProfileLocalDataSource) {
        this.localDataSource = defaultAccountProfileLocalDataSource;
    }

    public final Flow getById(AccountId accountId) {
        accountId.getClass();
        DefaultAccountProfileLocalDataSource defaultAccountProfileLocalDataSource = this.localDataSource;
        return FlowKt.distinctUntilChanged(new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(5, defaultAccountProfileLocalDataSource.accountManager.getById(accountId), defaultAccountProfileLocalDataSource));
    }
}
