package com.fsck.k9.ui.settings.general;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.ui.settings.general.GeneralSettingsUiState;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.android.logging.LogcatLogFileWriter;
import net.thunderbird.core.logging.file.FileLogSink;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsViewModel extends ViewModel {
    public final LogcatLogFileWriter logFileWriter;
    public StandaloneCoroutine snackbarJob;
    public final FileLogSink syncDebugFileLogSink;
    public final StateFlowImpl uiState;
    public final StateFlowImpl uiStateFlow;

    public GeneralSettingsViewModel(LogcatLogFileWriter logcatLogFileWriter, FileLogSink fileLogSink) {
        this.logFileWriter = logcatLogFileWriter;
        this.syncDebugFileLogSink = fileLogSink;
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(GeneralSettingsUiState.Idle.INSTANCE);
        this.uiStateFlow = MutableStateFlow;
        this.uiState = MutableStateFlow;
    }

    public static final void access$setExportingState(GeneralSettingsViewModel generalSettingsViewModel) {
        StandaloneCoroutine standaloneCoroutine = generalSettingsViewModel.snackbarJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        generalSettingsViewModel.snackbarJob = null;
        GeneralSettingsUiState.Exporting exporting = GeneralSettingsUiState.Exporting.INSTANCE;
        StateFlowImpl stateFlowImpl = generalSettingsViewModel.uiStateFlow;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, exporting);
    }

    public static final void access$showSnackbar(GeneralSettingsViewModel generalSettingsViewModel, GeneralSettingsUiState generalSettingsUiState) {
        StandaloneCoroutine standaloneCoroutine = generalSettingsViewModel.snackbarJob;
        Continuation continuation = null;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        generalSettingsViewModel.snackbarJob = JobKt.launch$default(ViewModelKt.getViewModelScope(generalSettingsViewModel), null, null, new Preferences$getAccountsFlow$1(generalSettingsViewModel, generalSettingsUiState, continuation, 15), 3);
    }
}
