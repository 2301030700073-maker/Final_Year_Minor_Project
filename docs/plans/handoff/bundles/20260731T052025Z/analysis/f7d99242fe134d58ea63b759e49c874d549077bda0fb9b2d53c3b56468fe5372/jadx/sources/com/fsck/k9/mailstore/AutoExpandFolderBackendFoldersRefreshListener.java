package com.fsck.k9.mailstore;

import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.storage.messages.K9MessageStore;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.account.AccountId;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoExpandFolderBackendFoldersRefreshListener implements BackendFoldersRefreshListener {
    public final AccountId accountId;
    public final DefaultLegacyAccountManager accountManager;
    public final DefaultFolderRepository folderRepository;
    public boolean isFirstSync;

    public AutoExpandFolderBackendFoldersRefreshListener(DefaultLegacyAccountManager defaultLegacyAccountManager, AccountId accountId, DefaultFolderRepository defaultFolderRepository) {
        accountId.getClass();
        this.accountManager = defaultLegacyAccountManager;
        this.accountId = accountId;
        this.folderRepository = defaultFolderRepository;
    }

    public final LegacyAccount getAccountById(AccountId accountId) {
        LegacyAccount byIdSync = this.accountManager.getByIdSync(accountId);
        if (byIdSync != null) {
            return byIdSync;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) accountId, "Account not found with ID: ");
        return null;
    }

    @Override // com.fsck.k9.mailstore.BackendFoldersRefreshListener
    public final void onAfterFolderListRefresh() {
        LegacyAccount legacyAccount;
        LegacyAccount copy$default;
        AccountId accountId = this.accountId;
        LegacyAccount accountById = getAccountById(accountId);
        MessageStoreManager messageStoreManager = this.folderRepository.messageStoreManager;
        String str = accountById.importedAutoExpandFolder;
        if (str != null) {
            copy$default = str.length() == 0 ? LegacyAccount.copy$default(accountById, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -9, 8388607) : LegacyAccount.copy$default(accountById, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, ((K9MessageStore) messageStoreManager.getMessageStore(accountId).messageStore.val$folders).getFolderId(str), null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -9, 8388607);
        } else {
            Long l = accountById.autoExpandFolderId;
            if (l != null) {
                Boolean bool = (Boolean) ((K9MessageStore) messageStoreManager.getMessageStore(accountId).messageStore.val$folders).getFolder(l.longValue(), new UriKt$$ExternalSyntheticBUOutline0(8));
                if (!(bool != null ? bool.booleanValue() : false)) {
                    accountById = LegacyAccount.copy$default(accountById, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -9, 8388607);
                }
            }
            LegacyAccount legacyAccount2 = accountById;
            if (!this.isFirstSync || legacyAccount2.autoExpandFolderId != null) {
                legacyAccount = legacyAccount2;
                LegacyAccount.copy$default(legacyAccount, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -5, 8388607);
                this.accountManager.saveAccount(legacyAccount);
            }
            copy$default = LegacyAccount.copy$default(legacyAccount2, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, legacyAccount2.inboxFolderId, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -9, 8388607);
        }
        legacyAccount = copy$default;
        LegacyAccount.copy$default(legacyAccount, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -5, 8388607);
        this.accountManager.saveAccount(legacyAccount);
    }

    @Override // com.fsck.k9.mailstore.BackendFoldersRefreshListener
    public final void onBeforeFolderListRefresh() {
        this.isFirstSync = getAccountById(this.accountId).inboxFolderId == null;
    }
}
