package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.ui.setting.SettingValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FetchingMailSettingsViewModel f$0;

    public /* synthetic */ FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0(FetchingMailSettingsViewModel fetchingMailSettingsViewModel, int i) {
        this.$r8$classId = i;
        this.f$0 = fetchingMailSettingsViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object value;
        Object value2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        FetchingMailSettingsViewModel fetchingMailSettingsViewModel = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj;
                StateFlowImpl stateFlowImpl = fetchingMailSettingsViewModel._state;
                do {
                    value = stateFlowImpl.getValue();
                } while (!stateFlowImpl.compareAndSet(value, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value, str, null, null, null, null, false, false, null, null, null, null, 2046)));
            default:
                LegacyAccount legacyAccount = (LegacyAccount) obj;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = fetchingMailSettingsViewModel.fetchingMailSettingsOptionsMapper;
                SettingValue.Select.SelectOption selectOption = (SettingValue.Select.SelectOption) fetchingMailSettingsOptionsMapper.localFolderSizeOptionsById.get(String.valueOf(legacyAccount.displayCount));
                if (selectOption == null) {
                    selectOption = fetchingMailSettingsOptionsMapper.defaultLocalFolderSizeOption;
                }
                SettingValue.Select.SelectOption selectOption2 = selectOption;
                SettingValue.Select.SelectOption selectOption3 = (SettingValue.Select.SelectOption) fetchingMailSettingsOptionsMapper.fetchMessageUpToOptionsById.get(String.valueOf(legacyAccount.maximumAutoDownloadMessageSize));
                if (selectOption3 == null) {
                    selectOption3 = fetchingMailSettingsOptionsMapper.defaultFetchMessageUpToOption;
                }
                SettingValue.Select.SelectOption selectOption4 = selectOption3;
                SettingValue.Select.SelectOption selectOption5 = (SettingValue.Select.SelectOption) fetchingMailSettingsOptionsMapper.syncMessageFromOptionsById.get(String.valueOf(legacyAccount.maximumPolledMessageAge));
                if (selectOption5 == null) {
                    selectOption5 = fetchingMailSettingsOptionsMapper.defaultSyncMessageFromOption;
                }
                SettingValue.Select.SelectOption selectOption6 = selectOption5;
                SettingValue.Select.SelectOption selectOption7 = (SettingValue.Select.SelectOption) fetchingMailSettingsOptionsMapper.folderPollFrequencyOptionsById.get(String.valueOf(legacyAccount.automaticCheckIntervalMinutes));
                if (selectOption7 == null) {
                    selectOption7 = fetchingMailSettingsOptionsMapper.defaultFolderPollFrequencyOption;
                }
                SettingValue.Select.SelectOption selectOption8 = selectOption7;
                boolean z = legacyAccount.isSyncRemoteDeletions;
                boolean z2 = legacyAccount.isMarkMessageAsReadOnDelete;
                String name = legacyAccount.deletePolicy.name();
                name.getClass();
                SettingValue.Select.SelectOption selectOption9 = (SettingValue.Select.SelectOption) fetchingMailSettingsOptionsMapper.whenIDeleteAMessageOptionsById.get(name);
                if (selectOption9 == null) {
                    selectOption9 = fetchingMailSettingsOptionsMapper.defaultWhenIDeleteAMessageOption;
                }
                SettingValue.Select.SelectOption selectOption10 = selectOption9;
                String name2 = legacyAccount.expungePolicy.name();
                name2.getClass();
                SettingValue.Select.SelectOption selectOption11 = (SettingValue.Select.SelectOption) fetchingMailSettingsOptionsMapper.eraseDeletedMessageOnServerOptionsById.get(name2);
                if (selectOption11 == null) {
                    selectOption11 = fetchingMailSettingsOptionsMapper.defaultEraseDeletedMessageOnServerOption;
                }
                SettingValue.Select.SelectOption selectOption12 = selectOption11;
                String valueOf = String.valueOf(legacyAccount.maxPushFolders);
                valueOf.getClass();
                SettingValue.Select.SelectOption selectOption13 = (SettingValue.Select.SelectOption) fetchingMailSettingsOptionsMapper.maxFolderToCheckWithPushOptionsById.get(valueOf);
                if (selectOption13 == null) {
                    selectOption13 = fetchingMailSettingsOptionsMapper.defaultMaxFolderToCheckWithPushOption;
                }
                SettingValue.Select.SelectOption selectOption14 = selectOption13;
                String valueOf2 = String.valueOf(legacyAccount.idleRefreshMinutes);
                valueOf2.getClass();
                SettingValue.Select.SelectOption selectOption15 = (SettingValue.Select.SelectOption) fetchingMailSettingsOptionsMapper.refreshIdleConnectionOptionsById.get(valueOf2);
                if (selectOption15 == null) {
                    selectOption15 = fetchingMailSettingsOptionsMapper.defaultRefreshIdleConnectionOption;
                }
                SettingValue.Select.SelectOption selectOption16 = selectOption15;
                StateFlowImpl stateFlowImpl2 = fetchingMailSettingsViewModel._state;
                do {
                    value2 = stateFlowImpl2.getValue();
                } while (!stateFlowImpl2.compareAndSet(value2, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value2, null, selectOption2, selectOption6, selectOption4, selectOption8, z, z2, selectOption10, selectOption12, selectOption14, selectOption16, 1)));
        }
        return unit;
    }
}
