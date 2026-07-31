package androidx.activity.compose;

import android.net.Uri;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.feature.settings.p000import.ui.Action;
import app.k9mail.feature.settings.p000import.ui.SettingsImportAction;
import app.k9mail.feature.settings.p000import.ui.SettingsImportFragment;
import app.k9mail.feature.settings.p000import.ui.SettingsImportUiModel;
import app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel;
import com.fsck.k9.account.DefaultBackgroundAccountRemover;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment;
import com.fsck.k9.ui.settings.export.ButtonState;
import com.fsck.k9.ui.settings.export.SettingsExportFragment;
import com.fsck.k9.ui.settings.export.SettingsExportUiModel;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel$onDocumentPicked$2;
import com.fsck.k9.ui.settings.export.StatusText;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityResultRegistryKt$$ExternalSyntheticLambda2 implements ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ActivityResultRegistryKt$$ExternalSyntheticLambda2(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((Function1) ((MutableState) obj2).getValue()).invoke(obj);
                break;
            case 1:
                SettingsImportFragment settingsImportFragment = (SettingsImportFragment) obj2;
                Uri uri = (Uri) obj;
                if (uri == null) {
                    SettingsImportViewModel viewModel = settingsImportFragment.getViewModel();
                    if (viewModel.action != SettingsImportAction.ScanQrCode) {
                        SettingsImportUiModel settingsImportUiModel = viewModel.uiModel;
                        settingsImportUiModel.getClass();
                        settingsImportUiModel.isPickDocumentButtonEnabled = true;
                        settingsImportUiModel.isScanQrCodeButtonEnabled = true;
                        if (!settingsImportUiModel.isPickAppButtonPermanentlyDisabled) {
                            settingsImportUiModel.isPickAppButtonEnabled = true;
                        }
                        viewModel.uiModelLiveData.setValue(settingsImportUiModel);
                        break;
                    } else {
                        viewModel.sendActionEvent(new Action.Close(false));
                        break;
                    }
                } else {
                    SettingsImportViewModel viewModel2 = settingsImportFragment.getViewModel();
                    viewModel2.getClass();
                    SettingsImportUiModel settingsImportUiModel2 = viewModel2.uiModel;
                    settingsImportUiModel2.getClass();
                    settingsImportUiModel2.showLoadingProgress();
                    viewModel2.uiModelLiveData.setValue(settingsImportUiModel2);
                    viewModel2.contentUri = uri;
                    JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), null, null, new ScrollableKt$semanticsScrollBy$2(viewModel2, uri, null), 3);
                    break;
                }
            case 2:
                AccountSettingsFragment accountSettingsFragment = (AccountSettingsFragment) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                int i2 = AccountSettingsFragment.$r8$clinit;
                activityResult.getClass();
                if (activityResult.resultCode == -1) {
                    accountSettingsFragment.requireActivity().finish();
                    ((DefaultBackgroundAccountRemover) accountSettingsFragment.accountRemover$delegate.getValue()).removeAccountAsync(accountSettingsFragment.getAccountUuid());
                    break;
                }
                break;
            default:
                SettingsExportFragment settingsExportFragment = (SettingsExportFragment) obj2;
                Uri uri2 = (Uri) obj;
                if (uri2 == null) {
                    SettingsExportViewModel viewModel3 = settingsExportFragment.getViewModel();
                    SettingsExportUiModel settingsExportUiModel = viewModel3.uiModel;
                    settingsExportUiModel.getClass();
                    settingsExportUiModel.exportButton = ButtonState.ENABLED;
                    settingsExportUiModel.isShareButtonVisible = false;
                    settingsExportUiModel.isProgressVisible = false;
                    settingsExportUiModel.isSettingsListEnabled = true;
                    viewModel3.uiModelLiveData.setValue(settingsExportUiModel);
                    break;
                } else {
                    SettingsExportViewModel viewModel4 = settingsExportFragment.getViewModel();
                    viewModel4.getClass();
                    viewModel4.contentUri = uri2;
                    SettingsExportUiModel settingsExportUiModel2 = viewModel4.uiModel;
                    settingsExportUiModel2.getClass();
                    settingsExportUiModel2.isProgressVisible = true;
                    settingsExportUiModel2.exportButton = ButtonState.INVISIBLE;
                    settingsExportUiModel2.isShareButtonVisible = false;
                    settingsExportUiModel2.statusText = StatusText.PROGRESS;
                    settingsExportUiModel2.isSettingsListEnabled = false;
                    viewModel4.uiModelLiveData.setValue(settingsExportUiModel2);
                    JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel4), null, null, new SettingsExportViewModel$onDocumentPicked$2(viewModel4, viewModel4.getIncludeGeneralSettings$1(), viewModel4.getSelectedAccounts$1(), uri2, null), 3);
                    break;
                }
        }
    }
}
