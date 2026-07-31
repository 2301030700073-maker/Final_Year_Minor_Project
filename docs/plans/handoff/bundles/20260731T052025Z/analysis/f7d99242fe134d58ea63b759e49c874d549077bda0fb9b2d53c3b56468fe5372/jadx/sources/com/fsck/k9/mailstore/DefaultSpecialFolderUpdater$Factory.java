package com.fsck.k9.mailstore;

import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import com.eygraber.uri.Uri;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultSpecialFolderUpdater$Factory {
    public final DefaultLegacyAccountManager accountManager;
    public final CoroutineScope coroutineScope;
    public final DefaultFolderRepository folderRepository;
    public final CoroutineDispatcher ioDispatcher;
    public final SpecialFolderSelectionStrategy specialFolderSelectionStrategy;

    public DefaultSpecialFolderUpdater$Factory(DefaultLegacyAccountManager defaultLegacyAccountManager, DefaultFolderRepository defaultFolderRepository, SpecialFolderSelectionStrategy specialFolderSelectionStrategy, CoroutineScope coroutineScope) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = defaultLegacyAccountManager;
        this.folderRepository = defaultFolderRepository;
        this.specialFolderSelectionStrategy = specialFolderSelectionStrategy;
        this.coroutineScope = coroutineScope;
        this.ioDispatcher = defaultIoScheduler;
    }

    public final Uri.Builder create(AccountId accountId) {
        accountId.getClass();
        return new Uri.Builder(this.accountManager, this.folderRepository, this.specialFolderSelectionStrategy, accountId, this.coroutineScope, this.ioDispatcher);
    }
}
