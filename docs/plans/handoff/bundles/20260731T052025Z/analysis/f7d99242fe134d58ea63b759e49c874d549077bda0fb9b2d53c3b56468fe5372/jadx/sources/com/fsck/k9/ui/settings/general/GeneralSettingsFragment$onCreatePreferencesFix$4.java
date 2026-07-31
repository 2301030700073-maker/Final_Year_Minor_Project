package com.fsck.k9.ui.settings.general;

import android.view.View;
import androidx.lifecycle.ViewModelKt;
import androidx.work.WorkInfo;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagelist.MessageListFragment$onCreate$2;
import com.google.android.material.snackbar.Snackbar;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsFragment$onCreatePreferencesFix$4 implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GeneralSettingsFragment this$0;

    public /* synthetic */ GeneralSettingsFragment$onCreatePreferencesFix$4(GeneralSettingsFragment generalSettingsFragment, int i) {
        this.$r8$classId = i;
        this.this$0 = generalSettingsFragment;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        GeneralSettingsFragment generalSettingsFragment = this.this$0;
        switch (i) {
            case 0:
                GeneralSettingsUiState generalSettingsUiState = (GeneralSettingsUiState) obj;
                GeneralSettingsUiState generalSettingsUiState2 = generalSettingsFragment.currentUiState;
                generalSettingsFragment.currentUiState = generalSettingsUiState;
                if (generalSettingsUiState2 == null || generalSettingsUiState2.isExportLogsMenuEnabled() != generalSettingsUiState.isExportLogsMenuEnabled()) {
                    generalSettingsFragment.requireActivity().invalidateOptionsMenu();
                }
                if ((generalSettingsUiState2 != null ? generalSettingsUiState2.getSnackbarState() : null) != generalSettingsUiState.getSnackbarState()) {
                    int ordinal = generalSettingsUiState.getSnackbarState().ordinal();
                    if (ordinal == 0) {
                        Snackbar snackbar = generalSettingsFragment.snackbar;
                        if (snackbar != null) {
                            snackbar.dispatchDismiss(3);
                        }
                        generalSettingsFragment.snackbar = null;
                        break;
                    } else if (ordinal == 1) {
                        View requireView = generalSettingsFragment.requireView();
                        int[] iArr = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
                        Snackbar make = Snackbar.make(requireView, requireView.getResources().getText(R.string.debug_export_logs_success), -2);
                        generalSettingsFragment.snackbar = make;
                        make.show();
                        break;
                    } else if (ordinal != 2) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        break;
                    } else {
                        View requireView2 = generalSettingsFragment.requireView();
                        int[] iArr2 = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
                        Snackbar make2 = Snackbar.make(requireView2, requireView2.getResources().getText(R.string.debug_export_logs_failure), -2);
                        generalSettingsFragment.snackbar = make2;
                        make2.show();
                        break;
                    }
                }
                break;
            default:
                WorkInfo workInfo = (WorkInfo) obj;
                if (workInfo != null) {
                    WorkInfo.State state = workInfo.state;
                    if (state != WorkInfo.State.SUCCEEDED) {
                        if (state == WorkInfo.State.FAILED) {
                            int i2 = GeneralSettingsFragment.$r8$clinit;
                            GeneralSettingsViewModel viewModel = generalSettingsFragment.getViewModel();
                            viewModel.getClass();
                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageListFragment$onCreate$2(viewModel, false, (Continuation) null), 3);
                            break;
                        }
                    } else {
                        int i3 = GeneralSettingsFragment.$r8$clinit;
                        GeneralSettingsViewModel viewModel2 = generalSettingsFragment.getViewModel();
                        viewModel2.getClass();
                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), null, null, new MessageListFragment$onCreate$2(viewModel2, true, (Continuation) null), 3);
                        break;
                    }
                }
                break;
        }
        return unit;
    }
}
