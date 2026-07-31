package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.ViewModelKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateFetchingMailSettings;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$Effect;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FetchingMailSettingsViewModel extends BaseViewModel {
    public final AccountId accountId;
    public final FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper;
    public final GetLegacyAccount getLegacyAccount;
    public final Logger logger;
    public final UpdateFetchingMailSettings updateFetchingMailSettings;

    public FetchingMailSettingsViewModel(AccountId accountId, Logger logger, GetAccountName getAccountName, GetLegacyAccount getLegacyAccount, UpdateFetchingMailSettings updateFetchingMailSettings, FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper) {
        super(new FetchingMailSettingsContract$State(null, fetchingMailSettingsOptionsMapper.defaultLocalFolderSizeOption, fetchingMailSettingsOptionsMapper.defaultSyncMessageFromOption, fetchingMailSettingsOptionsMapper.defaultFetchMessageUpToOption, fetchingMailSettingsOptionsMapper.defaultFolderPollFrequencyOption, false, false, fetchingMailSettingsOptionsMapper.defaultWhenIDeleteAMessageOption, fetchingMailSettingsOptionsMapper.defaultEraseDeletedMessageOnServerOption, fetchingMailSettingsOptionsMapper.defaultMaxFolderToCheckWithPushOption, fetchingMailSettingsOptionsMapper.defaultRefreshIdleConnectionOption));
        this.accountId = accountId;
        this.logger = logger;
        this.getLegacyAccount = getLegacyAccount;
        this.updateFetchingMailSettings = updateFetchingMailSettings;
        this.fetchingMailSettingsOptionsMapper = fetchingMailSettingsOptionsMapper;
        Continuation continuation = null;
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$cancel$1(this, continuation, 23), 3);
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(getAccountName.invoke(accountId), new InterruptibleKt$runInterruptible$2(this, continuation, 17), 2), ViewModelKt.getViewModelScope(this));
    }

    public static final void access$handleError(FetchingMailSettingsViewModel fetchingMailSettingsViewModel, AccountSettingsDomainContract$AccountSettingError accountSettingsDomainContract$AccountSettingError) {
        if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.NotFound) {
            Sink$CC.error$default(fetchingMailSettingsViewModel.logger, "FetchingMailSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 1), 2);
            return;
        }
        if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.StorageError) {
            Sink$CC.error$default(fetchingMailSettingsViewModel.logger, "FetchingMailSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 2), 2);
        } else if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.UnsupportedFormat) {
            Sink$CC.error$default(fetchingMailSettingsViewModel.logger, "FetchingMailSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 3), 2);
        } else {
            fetchingMailSettingsViewModel.getClass();
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        FetchingMailSettingsContract$Event fetchingMailSettingsContract$Event = (FetchingMailSettingsContract$Event) obj;
        fetchingMailSettingsContract$Event.getClass();
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnBackPressed) {
            emitEffect(FetchingMailSettingsContract$Effect.NavigateBack.INSTANCE);
            return;
        }
        int i = 3;
        Continuation continuation = null;
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnLocalFolderSizeChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 0), 3);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnSyncMessageFromChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 2), 3);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnFetchMessageUpToChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, i), 3);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnFolderPollFrequencyChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 4), 3);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnSyncServerDeletionsToggle) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 5), 3);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnMarkAsReadWhenDeletedToggle) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 6), 3);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnWhenIDeleteAMessageChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 7), 3);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnEraseDeletedMessageOnServerChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 8), 3);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnInComingServerClick) {
            emitEffect(FetchingMailSettingsContract$Effect.NavigateToIncomingServerSettings.INSTANCE);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnAdvanceClick) {
            emitEffect(FetchingMailSettingsContract$Effect.NavigateToAdvancedFetchingMailSettings.INSTANCE);
            return;
        }
        if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnMaxFolderToCheckWithPushChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 9), 3);
        } else if (fetchingMailSettingsContract$Event instanceof FetchingMailSettingsContract$Event.OnRefreshIdleConnectionFrequencyChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new FetchingMailSettingsViewModel$event$1(this, fetchingMailSettingsContract$Event, continuation, 1), 3);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }
}
