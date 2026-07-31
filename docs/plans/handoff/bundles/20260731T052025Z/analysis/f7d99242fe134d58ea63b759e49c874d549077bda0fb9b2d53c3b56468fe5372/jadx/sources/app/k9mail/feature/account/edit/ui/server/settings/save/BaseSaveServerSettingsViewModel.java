package app.k9mail.feature.account.edit.ui.server.settings.save;

import androidx.lifecycle.ViewModelKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$Effect;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BaseSaveServerSettingsViewModel extends BaseViewModel {
    public final String accountUuid;
    public final boolean isIncoming;
    public final SaveServerSettings saveServerSettings;

    public BaseSaveServerSettingsViewModel(String str, boolean z, SaveServerSettings saveServerSettings, SaveServerSettingsContract$State saveServerSettingsContract$State) {
        super(saveServerSettingsContract$State);
        this.accountUuid = str;
        this.isIncoming = z;
        this.saveServerSettings = saveServerSettings;
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        SaveServerSettingsContract$Event saveServerSettingsContract$Event = (SaveServerSettingsContract$Event) obj;
        saveServerSettingsContract$Event.getClass();
        if (saveServerSettingsContract$Event.equals(SaveServerSettingsContract$Event.SaveServerSettings.INSTANCE)) {
            handleOneTimeEvent(saveServerSettingsContract$Event, new RoomDatabase$closeBarrier$1(0, this, BaseSaveServerSettingsViewModel.class, "onSaveServerSettings", "onSaveServerSettings()V", 0, 5));
            return;
        }
        if (!saveServerSettingsContract$Event.equals(SaveServerSettingsContract$Event.OnBackClicked.INSTANCE)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        ReadonlyStateFlow readonlyStateFlow = this.state;
        if (((SaveServerSettingsContract$State) readonlyStateFlow.$$delegate_0.getValue()).isLoading || ((SaveServerSettingsContract$State) readonlyStateFlow.$$delegate_0.getValue()).error == null) {
            return;
        }
        JobKt.cancelChildren$default(ViewModelKt.getViewModelScope(this).coroutineContext);
        emitEffect(SaveServerSettingsContract$Effect.NavigateBack.INSTANCE);
    }
}
