package com.fsck.k9.ui.settings;

import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.Preferences;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsViewModel extends ViewModel {
    public final LegacyAccountDtoManager accountManager;
    public final CoroutineLiveData accounts;
    public final CoroutineDispatcher coroutineDispatcher;

    public SettingsViewModel(LegacyAccountDtoManager legacyAccountDtoManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = legacyAccountDtoManager;
        this.coroutineDispatcher = defaultIoScheduler;
        this.accounts = ViewModelKt.asLiveData$default(((Preferences) legacyAccountDtoManager).getAccountsFlow());
    }
}
