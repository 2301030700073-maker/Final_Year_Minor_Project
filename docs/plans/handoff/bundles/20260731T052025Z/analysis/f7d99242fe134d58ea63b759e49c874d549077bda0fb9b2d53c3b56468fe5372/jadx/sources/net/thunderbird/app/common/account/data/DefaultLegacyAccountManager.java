package net.thunderbird.app.common.account.data;

import com.fsck.k9.Preferences;
import com.fsck.k9.Preferences$getAccountFlow$1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlinx.coroutines.flow.FlowKt;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultLegacyAccountDataMapper;
import net.thunderbird.feature.mail.account.api.AccountManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultLegacyAccountManager implements AccountManager {
    public final DefaultLegacyAccountDataMapper accountDataMapper;
    public final LegacyAccountDtoManager accountManager;

    public DefaultLegacyAccountManager(LegacyAccountDtoManager legacyAccountDtoManager, DefaultLegacyAccountDataMapper defaultLegacyAccountDataMapper) {
        this.accountManager = legacyAccountDtoManager;
        this.accountDataMapper = defaultLegacyAccountDataMapper;
    }

    public final LegacyAccount getAccount(String str) {
        str.getClass();
        LegacyAccountDto account = ((Preferences) this.accountManager).getAccount(str);
        if (account != null) {
            return (LegacyAccount) this.accountDataMapper.toDomain(account);
        }
        return null;
    }

    public final List getAccounts() {
        List accounts = ((Preferences) this.accountManager).getAccounts();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(accounts, 10));
        Iterator it = accounts.iterator();
        while (it.hasNext()) {
            arrayList.add((LegacyAccount) this.accountDataMapper.toDomain((LegacyAccountDto) it.next()));
        }
        return arrayList;
    }

    public final DefaultLegacyAccountManager$getAll$$inlined$map$1 getById(AccountId accountId) {
        accountId.getClass();
        String obj = accountId.value.toString();
        Preferences preferences = (Preferences) this.accountManager;
        obj.getClass();
        return new DefaultLegacyAccountManager$getAll$$inlined$map$1(FlowKt.flowOn(FlowKt.buffer$default(FlowKt.callbackFlow(new Preferences$getAccountFlow$1(preferences, obj, null, 0)), -1), preferences.backgroundDispatcher), this, 2);
    }

    public final LegacyAccount getByIdSync(AccountId accountId) {
        accountId.getClass();
        return getAccount(accountId.value.toString());
    }

    public final void saveAccount(LegacyAccount legacyAccount) {
        legacyAccount.getClass();
        ((Preferences) this.accountManager).saveAccount((LegacyAccountDto) this.accountDataMapper.toDto(legacyAccount));
    }
}
