package net.thunderbird.feature.account.settings.impl.ui.general;

import androidx.lifecycle.ViewModelKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.core.validation.input.IntegerInputField;
import net.thunderbird.core.validation.input.StringInputField;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$UpdateGeneralSettingCommand;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$Effect;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsViewModel extends BaseViewModel {
    public final AccountId accountId;
    public final Logger logger;
    public final UpdateAvatarImage updateAvatarImage;
    public final UpdateGeneralSettings updateGeneralSettings;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralSettingsViewModel(AccountId accountId, GetAccountName getAccountName, GetAccountProfile getAccountProfile, UpdateGeneralSettings updateGeneralSettings, UpdateAvatarImage updateAvatarImage, Logger logger) {
        super(new GeneralSettingsContract$State(null, new StringInputField(null, 7), new IntegerInputField(7, null), GeneralSettingsContract$AvatarType.MONOGRAM, null, new StringInputField(null, 7)));
        Continuation continuation = null;
        this.accountId = accountId;
        this.updateGeneralSettings = updateGeneralSettings;
        this.updateAvatarImage = updateAvatarImage;
        this.logger = logger;
        int i = 2;
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(getAccountName.invoke(accountId), new GeneralSettingsViewModel$observeAccountName$1(this, continuation, 0), i), ViewModelKt.getViewModelScope(this));
        int i2 = 1;
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(new GetAccountName$invoke$$inlined$map$1(getAccountProfile.repository.getById(accountId), accountId, i2), new GeneralSettingsViewModel$observeAccountName$1(this, continuation, i2), i), ViewModelKt.getViewModelScope(this));
    }

    public static final void access$handleError(GeneralSettingsViewModel generalSettingsViewModel, AccountSettingsDomainContract$AccountSettingError accountSettingsDomainContract$AccountSettingError) {
        Logger logger = generalSettingsViewModel.logger;
        if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.NotFound) {
            Sink$CC.error$default(logger, "GeneralSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 4), 2);
            return;
        }
        if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.StorageError) {
            Sink$CC.error$default(logger, "GeneralSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 5), 2);
        } else if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.UnsupportedFormat) {
            Sink$CC.error$default(logger, "GeneralSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 6), 2);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        GeneralSettingsContract$Event generalSettingsContract$Event = (GeneralSettingsContract$Event) obj;
        generalSettingsContract$Event.getClass();
        if (generalSettingsContract$Event instanceof GeneralSettingsContract$Event.OnBackPressed) {
            emitEffect(GeneralSettingsContract$Effect.NavigateBack.INSTANCE);
            return;
        }
        if (generalSettingsContract$Event instanceof GeneralSettingsContract$Event.OnAvatarChange) {
            updateSetting(new AccountSettingsDomainContract$UpdateGeneralSettingCommand.UpdateAvatar(((GeneralSettingsContract$Event.OnAvatarChange) generalSettingsContract$Event).avatar));
            return;
        }
        if (generalSettingsContract$Event instanceof GeneralSettingsContract$Event.OnColorChange) {
            updateSetting(new AccountSettingsDomainContract$UpdateGeneralSettingCommand.UpdateColor(((GeneralSettingsContract$Event.OnColorChange) generalSettingsContract$Event).color));
            return;
        }
        if (generalSettingsContract$Event instanceof GeneralSettingsContract$Event.OnNameChange) {
            updateSetting(new AccountSettingsDomainContract$UpdateGeneralSettingCommand.UpdateName(((GeneralSettingsContract$Event.OnNameChange) generalSettingsContract$Event).name));
            return;
        }
        if (generalSettingsContract$Event instanceof GeneralSettingsContract$Event.OnSelectAvatarImageClick) {
            emitEffect(GeneralSettingsContract$Effect.OpenAvatarImagePicker.INSTANCE);
        } else if (!(generalSettingsContract$Event instanceof GeneralSettingsContract$Event.OnAvatarImagePicked)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        } else {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new Preferences$getAccountsFlow$1(this, (GeneralSettingsContract$Event.OnAvatarImagePicked) generalSettingsContract$Event, (Continuation) null, 27), 3);
        }
    }

    public final void updateSetting(AccountSettingsDomainContract$UpdateGeneralSettingCommand accountSettingsDomainContract$UpdateGeneralSettingCommand) {
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new Preferences$getAccountsFlow$1(this, accountSettingsDomainContract$UpdateGeneralSettingCommand, (Continuation) null, 28), 3);
    }
}
