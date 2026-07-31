package com.fsck.k9.ui.settings.account;

import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import com.fsck.k9.Preferences;
import com.fsck.k9.mailstore.SpecialFolderSelectionStrategy;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsViewModel extends ViewModel {
    public final MutableLiveData accountLiveData;
    public final LegacyAccountDtoManager accountManager;
    public String accountUuid;
    public final CoroutineLiveData accounts;
    public final CoroutineDispatcher backgroundDispatcher;
    public final DefaultFolderRepository folderRepository;
    public final MutableLiveData foldersLiveData;
    public final SpecialFolderSelectionStrategy specialFolderSelectionStrategy;

    public AccountSettingsViewModel(LegacyAccountDtoManager legacyAccountDtoManager, DefaultFolderRepository defaultFolderRepository, SpecialFolderSelectionStrategy specialFolderSelectionStrategy) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = legacyAccountDtoManager;
        this.folderRepository = defaultFolderRepository;
        this.specialFolderSelectionStrategy = specialFolderSelectionStrategy;
        this.backgroundDispatcher = defaultIoScheduler;
        this.accounts = ViewModelKt.asLiveData$default(((Preferences) legacyAccountDtoManager).getAccountsFlow());
        this.accountLiveData = new MutableLiveData();
        this.foldersLiveData = new MutableLiveData();
    }
}
