package com.fsck.k9.account;

import com.fsck.k9.LocalKeyStoreManager;
import com.fsck.k9.Preferences;
import com.fsck.k9.backend.BackendManager;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.preferences.UnifiedInboxConfigurator;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.avatar.data.DefaultAvatarImageRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountRemover {
    public final DefaultAvatarImageRepository avatarImageRepository;
    public final BackendManager backendManager;
    public final LocalKeyStoreManager localKeyStoreManager;
    public final LocalStoreProvider localStoreProvider;
    public final MessagingController messagingController;
    public final Preferences preferences;
    public final UnifiedInboxConfigurator unifiedInboxConfigurator;

    public AccountRemover(LocalStoreProvider localStoreProvider, MessagingController messagingController, BackendManager backendManager, LocalKeyStoreManager localKeyStoreManager, Preferences preferences, UnifiedInboxConfigurator unifiedInboxConfigurator, DefaultAvatarImageRepository defaultAvatarImageRepository) {
        this.localStoreProvider = localStoreProvider;
        this.messagingController = messagingController;
        this.backendManager = backendManager;
        this.localKeyStoreManager = localKeyStoreManager;
        this.preferences = preferences;
        this.unifiedInboxConfigurator = unifiedInboxConfigurator;
        this.avatarImageRepository = defaultAvatarImageRepository;
    }

    public final void removeBackend(LegacyAccountDto legacyAccountDto) {
        try {
            BackendManager backendManager = this.backendManager;
            AccountId accountId = legacyAccountDto.id;
            accountId.getClass();
            synchronized (backendManager.backendCache) {
            }
            backendManager.notifyListeners(accountId);
        } catch (Exception e) {
            Log.e(e, "Failed to reset remote store for account %s", legacyAccountDto);
        }
    }
}
