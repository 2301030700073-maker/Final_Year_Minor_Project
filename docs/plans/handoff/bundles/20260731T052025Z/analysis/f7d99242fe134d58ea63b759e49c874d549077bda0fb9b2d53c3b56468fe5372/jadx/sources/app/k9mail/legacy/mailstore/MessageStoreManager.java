package app.k9mail.legacy.mailstore;

import com.fsck.k9.Preferences;
import com.fsck.k9.mailstore.AndroidStorageFilesProviderFactory;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.storage.messages.K9MessageStoreFactory;
import com.fsck.k9.storage.messages.K9MessageStoreFactoryKt;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.feature.account.AccountId;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageStoreManager {
    public final LegacyAccountDtoManager accountManager;
    public final K9MessageStoreFactory messageStoreFactory;
    public final ConcurrentHashMap messageStores = new ConcurrentHashMap();

    public MessageStoreManager(LegacyAccountDtoManager legacyAccountDtoManager, K9MessageStoreFactory k9MessageStoreFactory) {
        this.accountManager = legacyAccountDtoManager;
        this.messageStoreFactory = k9MessageStoreFactory;
        ((Preferences) legacyAccountDtoManager).accountRemovedListeners.add(new MessageStoreManager$$ExternalSyntheticLambda0(this));
    }

    public final ListenableMessageStore getMessageStore(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        AccountId accountId = legacyAccountDto.id;
        ConcurrentHashMap concurrentHashMap = this.messageStores;
        Object obj = concurrentHashMap.get(accountId);
        if (obj == null) {
            K9MessageStoreFactory k9MessageStoreFactory = this.messageStoreFactory;
            LocalStore localStoreProvider = k9MessageStoreFactory.localStoreProvider.getInstance(legacyAccountDto);
            LockableDatabase lockableDatabase = localStoreProvider.database;
            if (K9MessageStoreFactoryKt.access$isGoogle(legacyAccountDto.getIncomingServerSettings().host) || K9MessageStoreFactoryKt.access$isGoogle(legacyAccountDto.getOutgoingServerSettings().host)) {
                lockableDatabase.getClass();
                lockableDatabase.execute(false, new Regex$$ExternalSyntheticBUOutline0(10));
            }
            AndroidStorageFilesProviderFactory androidStorageFilesProviderFactory = k9MessageStoreFactory.storageFilesProviderFactory;
            String str = legacyAccountDto.uuid;
            str.getClass();
            LocalStore.AnonymousClass1 anonymousClass1 = new LocalStore.AnonymousClass1(androidStorageFilesProviderFactory.context, str);
            lockableDatabase.getClass();
            ListenableMessageStore listenableMessageStore = new ListenableMessageStore(new LocalStore.AnonymousClass1(11, new K9MessageStore(lockableDatabase, anonymousClass1, k9MessageStoreFactory.basicPartInfoExtractor, k9MessageStoreFactory.generalSettingsManager, legacyAccountDto.id, k9MessageStoreFactory.localMessageUidPrefixProvider), localStoreProvider));
            Object putIfAbsent = concurrentHashMap.putIfAbsent(accountId, listenableMessageStore);
            obj = putIfAbsent == null ? listenableMessageStore : putIfAbsent;
        }
        return (ListenableMessageStore) obj;
    }

    public final ListenableMessageStore getMessageStore(String str) {
        str.getClass();
        LegacyAccountDto account = ((Preferences) this.accountManager).getAccount(str);
        if (account != null) {
            return getMessageStore(account);
        }
        Regex$$ExternalSyntheticBUOutline0.m((Object) "Account not found: ".concat(str));
        return null;
    }

    public final ListenableMessageStore getMessageStore(AccountId accountId) {
        accountId.getClass();
        LegacyAccountDto account = ((Preferences) this.accountManager).getAccount(accountId.value.toString());
        if (account != null) {
            return getMessageStore(account);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) accountId, "Account not found: ");
        return null;
    }
}
