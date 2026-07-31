package net.thunderbird.feature.account.settings.impl.ui.readingMail;

import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.ViewModelKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateReadEmailSettings;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReadingMailSettingsViewModel extends BaseViewModel {
    public final AccountId accountId;
    public final GetLegacyAccount getLegacyAccount;
    public final Logger logger;
    public final StringsResourceManager resources;
    public final UpdateReadEmailSettings updateReadMailSettings;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingMailSettingsViewModel(AccountId accountId, GetAccountName getAccountName, GetLegacyAccount getLegacyAccount, UpdateReadEmailSettings updateReadEmailSettings, Logger logger, StringsResourceManager stringsResourceManager) {
        super(new ReadingMailSettingsContract$State(null, new SettingValue.Select.SelectOption("NEVER", new SearchSettingsViewModel$$ExternalSyntheticLambda0(stringsResourceManager, 1)), false));
        Continuation continuation = null;
        this.accountId = accountId;
        this.getLegacyAccount = getLegacyAccount;
        this.updateReadMailSettings = updateReadEmailSettings;
        this.logger = logger;
        this.resources = stringsResourceManager;
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(getAccountName.invoke(accountId), new InterruptibleKt$runInterruptible$2(this, continuation, 18), 2), ViewModelKt.getViewModelScope(this));
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$cancel$1(this, continuation, 24), 3);
    }

    public static final void access$handleError(ReadingMailSettingsViewModel readingMailSettingsViewModel, AccountSettingsDomainContract$AccountSettingError accountSettingsDomainContract$AccountSettingError) {
        if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.NotFound) {
            Sink$CC.error$default(readingMailSettingsViewModel.logger, "ReadingMailSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 7), 2);
            return;
        }
        if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.StorageError) {
            Sink$CC.error$default(readingMailSettingsViewModel.logger, "ReadingMailSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 8), 2);
        } else if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.UnsupportedFormat) {
            Sink$CC.error$default(readingMailSettingsViewModel.logger, "ReadingMailSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 9), 2);
        } else {
            readingMailSettingsViewModel.getClass();
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        ReadingMailSettingsContract$State readingMailSettingsContract$State;
        ReadingMailSettingsContract$Event readingMailSettingsContract$Event = (ReadingMailSettingsContract$Event) obj;
        readingMailSettingsContract$Event.getClass();
        if (readingMailSettingsContract$Event instanceof ReadingMailSettingsContract$Event.OnBackPressed) {
            emitEffect(ReadingMailSettingsContract$Effect$NavigateBack.INSTANCE);
            return;
        }
        Continuation continuation = null;
        if (readingMailSettingsContract$Event instanceof ReadingMailSettingsContract$Event.OnShowPicturesChange) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new ReadingMailSettingsViewModel$event$1(this, readingMailSettingsContract$Event, continuation, 0), 3);
            return;
        }
        if (!(readingMailSettingsContract$Event instanceof ReadingMailSettingsContract$Event.OnIsMarkMessageAsReadOnViewToggle)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new ReadingMailSettingsViewModel$event$1(this, readingMailSettingsContract$Event, continuation, 1), 3);
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            readingMailSettingsContract$State = (ReadingMailSettingsContract$State) value;
            readingMailSettingsContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, ReadingMailSettingsContract$State.copy$default(readingMailSettingsContract$State, null, null, ((ReadingMailSettingsContract$Event.OnIsMarkMessageAsReadOnViewToggle) readingMailSettingsContract$Event).isMarkMessageAsReadOnView, 3)));
    }
}
