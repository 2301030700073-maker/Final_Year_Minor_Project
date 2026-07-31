package com.fsck.k9.ui.settings.export;

import android.net.Uri;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.fsck.k9.helper.SingleLiveEvent;
import com.fsck.k9.preferences.SettingsExporter;
import com.fsck.k9.ui.settings.export.SettingsListItem;
import java.util.Map;
import java.util.Set;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsExportViewModel extends ViewModel {
    public final LegacyAccountDtoManager accountManager;
    public Map accountsMap;
    public Uri contentUri;
    public SavedListItemSelection savedSelection;
    public final SettingsExporter settingsExporter;
    public final SettingsExportUiModel uiModel;
    public final MutableLiveData uiModelLiveData = new MutableLiveData();
    public final SingleLiveEvent actionLiveData = new SingleLiveEvent(0);

    public SettingsExportViewModel(LegacyAccountDtoManager legacyAccountDtoManager, SettingsExporter settingsExporter) {
        this.accountManager = legacyAccountDtoManager;
        this.settingsExporter = settingsExporter;
        SettingsExportUiModel settingsExportUiModel = new SettingsExportUiModel();
        settingsExportUiModel.settingsList = EmptyList.INSTANCE;
        settingsExportUiModel.isSettingsListEnabled = true;
        settingsExportUiModel.exportButton = ButtonState.DISABLED;
        settingsExportUiModel.statusText = StatusText.HIDDEN;
        this.uiModel = settingsExportUiModel;
        this.accountsMap = EmptyMap.INSTANCE;
    }

    public final boolean getIncludeGeneralSettings$1() {
        SavedListItemSelection savedListItemSelection = this.savedSelection;
        if (savedListItemSelection != null) {
            return savedListItemSelection.includeGeneralSettings;
        }
        for (SettingsListItem settingsListItem : this.uiModel.settingsList) {
            if (settingsListItem instanceof SettingsListItem.GeneralSettings) {
                return settingsListItem.selected;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Collection contains no element matching the predicate.");
        return false;
    }

    public final Set getSelectedAccounts$1() {
        SavedListItemSelection savedListItemSelection = this.savedSelection;
        return savedListItemSelection != null ? savedListItemSelection.selectedAccountUuids : SequencesKt.toSet(new TakeWhileSequence(new FilteringSequence(new FilteringSequence(CollectionsKt.asSequence(this.uiModel.settingsList), true, SettingsExportViewModel$special$$inlined$filterIsInstance$1.INSTANCE), true, new InstantKt$$ExternalSyntheticLambda0(10)), new AbstractMap$$ExternalSyntheticLambda0(21, this), 2));
    }
}
