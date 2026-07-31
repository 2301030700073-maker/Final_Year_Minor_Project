package net.thunderbird.feature.account.settings.impl.ui.search;

import androidx.compose.foundation.text.selection.SelectionAdjustmentKt$$ExternalSyntheticLambda0;
import androidx.lifecycle.ViewModelKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateSearchSettings;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$Event;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SearchSettingsViewModel extends BaseViewModel {
    public final AccountId accountId;
    public final CoroutineDispatcher dispatcher;
    public final GetLegacyAccount getLegacyAccount;
    public final Logger logger;
    public final StringsResourceManager resources;
    public final UpdateSearchSettings updateSearchSettings;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SearchSettingsViewModel(net.thunderbird.feature.account.AccountId r6, net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName r7, net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateSearchSettings r8, net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount r9, net.thunderbird.core.logging.Logger r10, net.thunderbird.core.common.resources.StringsResourceManager r11) {
        /*
            r5 = this;
            kotlinx.coroutines.scheduling.DefaultScheduler r0 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.android.HandlerContext r0 = kotlinx.coroutines.internal.MainDispatcherLoader.dispatcher
            net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$State r1 = new net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$State
            net.thunderbird.core.ui.setting.SettingValue$Select$SelectOption r2 = new net.thunderbird.core.ui.setting.SettingValue$Select$SelectOption
            net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel$$ExternalSyntheticLambda0 r3 = new net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel$$ExternalSyntheticLambda0
            r4 = 0
            r3.<init>(r11, r4)
            java.lang.String r4 = "25"
            r2.<init>(r4, r3)
            r3 = 0
            r1.<init>(r3, r2)
            r0.getClass()
            r5.<init>(r1)
            r5.accountId = r6
            r5.updateSearchSettings = r8
            r5.getLegacyAccount = r9
            r5.logger = r10
            r5.resources = r11
            r5.dispatcher = r0
            net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName$invoke$$inlined$map$1 r6 = r7.invoke(r6)
            kotlinx.coroutines.InterruptibleKt$runInterruptible$2 r7 = new kotlinx.coroutines.InterruptibleKt$runInterruptible$2
            r8 = 19
            r7.<init>(r5, r3, r8)
            kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1 r8 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1
            r9 = 2
            r8.<init>(r6, r7, r9)
            androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope r6 = androidx.lifecycle.ViewModelKt.getViewModelScope(r5)
            kotlinx.coroutines.flow.FlowKt.launchIn(r8, r6)
            androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope r6 = androidx.lifecycle.ViewModelKt.getViewModelScope(r5)
            androidx.lifecycle.BlockRunner$cancel$1 r7 = new androidx.lifecycle.BlockRunner$cancel$1
            r8 = 25
            r7.<init>(r5, r3, r8)
            kotlinx.coroutines.JobKt.launch$default(r6, r0, r3, r7, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel.<init>(net.thunderbird.feature.account.AccountId, net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName, net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateSearchSettings, net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount, net.thunderbird.core.logging.Logger, net.thunderbird.core.common.resources.StringsResourceManager):void");
    }

    public static final void access$handleError(SearchSettingsViewModel searchSettingsViewModel, AccountSettingsDomainContract$AccountSettingError accountSettingsDomainContract$AccountSettingError) {
        Logger logger = searchSettingsViewModel.logger;
        if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.NotFound) {
            Sink$CC.error$default(logger, "SearchSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 0), 2);
            return;
        }
        if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.StorageError) {
            Sink$CC.error$default(logger, "SearchSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 10), 2);
        } else if (accountSettingsDomainContract$AccountSettingError instanceof AccountSettingsDomainContract$AccountSettingError.UnsupportedFormat) {
            Sink$CC.error$default(logger, "SearchSettingsViewModel", null, new SearchSettingsViewModel$$ExternalSyntheticLambda1(accountSettingsDomainContract$AccountSettingError, 11), 2);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }

    public static final SettingValue.Select.SelectOption access$selectOptionForServerSearchLimit(SearchSettingsViewModel searchSettingsViewModel, int i) {
        int i2;
        if (i == 0) {
            i2 = R.string.account_settings_remote_search_num_results_entries_all;
        } else if (i == 10) {
            i2 = R.string.account_settings_remote_search_num_results_entries_10;
        } else if (i == 25) {
            i2 = R.string.account_settings_remote_search_num_results_entries_25;
        } else if (i == 50) {
            i2 = R.string.account_settings_remote_search_num_results_entries_50;
        } else if (i == 100) {
            i2 = R.string.account_settings_remote_search_num_results_entries_100;
        } else if (i == 250) {
            i2 = R.string.account_settings_remote_search_num_results_entries_250;
        } else if (i == 500) {
            i2 = R.string.account_settings_remote_search_num_results_entries_500;
        } else {
            if (i != 1000) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Invalid serverSearchLimit value: ", i);
                return null;
            }
            i2 = R.string.account_settings_remote_search_num_results_entries_1000;
        }
        return new SettingValue.Select.SelectOption(String.valueOf(i), new SelectionAdjustmentKt$$ExternalSyntheticLambda0(i2, 2, searchSettingsViewModel));
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        SearchSettingsContract$Event searchSettingsContract$Event = (SearchSettingsContract$Event) obj;
        searchSettingsContract$Event.getClass();
        if (searchSettingsContract$Event instanceof SearchSettingsContract$Event.OnBackPressed) {
            emitEffect(SearchSettingsContract$Effect$NavigateBack.INSTANCE);
        } else {
            if (!(searchSettingsContract$Event instanceof SearchSettingsContract$Event.OnServerSearchLimitChange)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), this.dispatcher, null, new OutboxFolderManager$getOutboxFolderIdSync$1(this, searchSettingsContract$Event, (Continuation) null, 2), 2);
        }
    }
}
