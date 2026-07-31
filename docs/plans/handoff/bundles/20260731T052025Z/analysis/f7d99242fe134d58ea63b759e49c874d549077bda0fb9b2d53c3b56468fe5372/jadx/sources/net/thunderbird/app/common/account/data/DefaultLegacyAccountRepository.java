package net.thunderbird.app.common.account.data;

import com.fsck.k9.Preferences;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultLegacyAccountRepository {
    public final DefaultLegacyAccountManager accountManager;

    public DefaultLegacyAccountRepository(DefaultLegacyAccountManager defaultLegacyAccountManager) {
        this.accountManager = defaultLegacyAccountManager;
    }

    public final void update(LegacyAccount legacyAccount) {
        DefaultLegacyAccountManager defaultLegacyAccountManager = this.accountManager;
        ((Preferences) defaultLegacyAccountManager.accountManager).saveAccount((LegacyAccountDto) defaultLegacyAccountManager.accountDataMapper.toDto(legacyAccount));
    }
}
