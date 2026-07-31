package com.fsck.k9.mailstore;

import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import com.fsck.k9.Preferences;
import com.fsck.k9.backend.imap.ImapSync;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.feature.account.AccountId;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9BackendStorageFactory {
    public final DefaultLegacyAccountManager accountManager;
    public final DefaultFolderRepository folderRepository;
    public final MessageStoreManager messageStoreManager;
    public final Preferences preferences;
    public final SaveMessageDataCreator saveMessageDataCreator;
    public final DefaultSpecialFolderUpdater$Factory specialFolderUpdaterFactory;

    public K9BackendStorageFactory(Preferences preferences, DefaultLegacyAccountManager defaultLegacyAccountManager, DefaultFolderRepository defaultFolderRepository, MessageStoreManager messageStoreManager, DefaultSpecialFolderUpdater$Factory defaultSpecialFolderUpdater$Factory, SaveMessageDataCreator saveMessageDataCreator) {
        this.preferences = preferences;
        this.accountManager = defaultLegacyAccountManager;
        this.folderRepository = defaultFolderRepository;
        this.messageStoreManager = messageStoreManager;
        this.specialFolderUpdaterFactory = defaultSpecialFolderUpdater$Factory;
        this.saveMessageDataCreator = saveMessageDataCreator;
    }

    public final Dispatcher createBackendStorage$1(AccountId accountId) {
        accountId.getClass();
        ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(accountId);
        Preferences preferences = this.preferences;
        DefaultLegacyAccountManager defaultLegacyAccountManager = this.accountManager;
        return new Dispatcher(messageStore, new ImapSync(preferences, defaultLegacyAccountManager, accountId), this.saveMessageDataCreator, IntOffsetKt.listOf((Object[]) new BackendFoldersRefreshListener[]{new SpecialFolderBackendFoldersRefreshListener(this.specialFolderUpdaterFactory.create(accountId)), new AutoExpandFolderBackendFoldersRefreshListener(defaultLegacyAccountManager, accountId, this.folderRepository)}), 22);
    }
}
