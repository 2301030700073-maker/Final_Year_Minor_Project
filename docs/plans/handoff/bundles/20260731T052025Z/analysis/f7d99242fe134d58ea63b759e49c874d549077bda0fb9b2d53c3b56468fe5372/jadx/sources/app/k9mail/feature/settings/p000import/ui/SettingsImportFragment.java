package app.k9mail.feature.settings.p000import.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.compose.ActivityResultRegistryKt$$ExternalSyntheticLambda2;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.TreeIterator;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentKt$$ExternalSyntheticLambda0;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import androidx.sqlite.SQLite;
import androidx.work.Operation$State;
import app.k9mail.feature.migration.launcher.k9.K9MigrationManager;
import app.k9mail.feature.settings.p000import.ui.Action;
import app.k9mail.feature.settings.p000import.ui.SettingsListItem;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.export.CheckBoxClickEvent;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.TakeWhileSequence;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImportFragment extends Fragment {
    public ItemAdapter itemAdapter;
    public final Fragment.AnonymousClass10 pickDocumentLauncher;
    public final Fragment.AnonymousClass10 qrCodeScannerLauncher;
    public final Lazy viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(2, this, new SettingsImportFragment$special$$inlined$inject$default$1(this, 1)));

    public SettingsImportFragment() {
        Lazy lazy = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new SettingsImportFragment$special$$inlined$inject$default$1(this, 0));
        ActivityResultRegistryKt$$ExternalSyntheticLambda2 activityResultRegistryKt$$ExternalSyntheticLambda2 = new ActivityResultRegistryKt$$ExternalSyntheticLambda2(1, this);
        this.pickDocumentLauncher = registerForActivityResult(activityResultRegistryKt$$ExternalSyntheticLambda2, new AuthorizationContract(2));
        ((K9MigrationManager) lazy.getValue()).getClass();
        this.qrCodeScannerLauncher = registerForActivityResult(activityResultRegistryKt$$ExternalSyntheticLambda2, new AuthorizationContract(9));
    }

    public final SettingsImportViewModel getViewModel() {
        return (SettingsImportViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        SettingsImportViewModel viewModel;
        String str;
        ImportStatus importStatus = ImportStatus.IMPORT_SUCCESS;
        int i3 = 2;
        Continuation continuation = null;
        int i4 = 1;
        if (i != 1) {
            if (i == 2 && i2 == -1 && (str = (viewModel = getViewModel()).currentlyAuthorizingAccountUuid) != null) {
                viewModel.currentlyAuthorizingAccountUuid = null;
                SettingsImportUiModel settingsImportUiModel = viewModel.uiModel;
                settingsImportUiModel.getClass();
                settingsImportUiModel.setSettingsListState(viewModel.getListIndexOfAccount(str), importStatus);
                settingsImportUiModel.updateCloseButtonAndImportStatusText();
                viewModel.uiModelLiveData.setValue(settingsImportUiModel);
                JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.backgroundDispatcher, null, new Preferences$getAccountsFlow$1(viewModel, str, continuation, i3), 2);
                return;
            }
            return;
        }
        if (i2 == -1) {
            if (intent == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No result intent received");
                return;
            }
            String stringExtra = intent.getStringExtra("accountUuid");
            if (stringExtra == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing account UUID");
                return;
            }
            PasswordPromptResult passwordPromptResult = new PasswordPromptResult(stringExtra, intent.getStringExtra("incomingServerPassword"), intent.getStringExtra("outgoingServerPassword"));
            SettingsImportViewModel viewModel2 = getViewModel();
            viewModel2.getClass();
            SettingsImportUiModel settingsImportUiModel2 = viewModel2.uiModel;
            settingsImportUiModel2.getClass();
            settingsImportUiModel2.setSettingsListState(viewModel2.getListIndexOfAccount(stringExtra), importStatus);
            settingsImportUiModel2.updateCloseButtonAndImportStatusText();
            viewModel2.uiModelLiveData.setValue(settingsImportUiModel2);
            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), viewModel2.backgroundDispatcher, null, new Preferences$getAccountsFlow$1(passwordPromptResult, viewModel2, continuation, i4), 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SettingsImportViewModel viewModel = getViewModel();
        if (!viewModel.isInitialized) {
            viewModel.migrationManager.getClass();
            viewModel.isInitialized = true;
        }
        getParentFragmentManager().setFragmentResultListener("pickApp", this, new FragmentKt$$ExternalSyntheticLambda0(0, new ComposerKt$$ExternalSyntheticLambda0(24, this)));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.fragment_settings_import, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        SettingsImportViewModel viewModel = getViewModel();
        viewModel.getClass();
        SettingsImportUiModel settingsImportUiModel = viewModel.uiModel;
        bundle.putBoolean("settingsListVisible", settingsImportUiModel.isSettingsListVisible);
        bundle.putBoolean("settingsListEnabled", settingsImportUiModel.isSettingsListEnabled);
        Operation$State.putEnum(bundle, "importButton", settingsImportUiModel.importButton);
        Operation$State.putEnum(bundle, "closeButton", settingsImportUiModel.closeButton);
        Operation$State.putEnum(bundle, "closeButtonLabel", settingsImportUiModel.closeButtonLabel);
        bundle.putBoolean("pickDocumentButtonVisible", settingsImportUiModel.isPickDocumentButtonVisible);
        bundle.putBoolean("pickDocumentButtonEnabled", settingsImportUiModel.isPickDocumentButtonEnabled);
        bundle.putBoolean("scanQrCodeButtonVisible", settingsImportUiModel.isScanQrCodeButtonVisible);
        bundle.putBoolean("scanQrCodeButtonEnabled", settingsImportUiModel.isScanQrCodeButtonEnabled);
        bundle.putBoolean("loadingProgressVisible", settingsImportUiModel.isLoadingProgressVisible);
        bundle.putBoolean("importProgressVisible", settingsImportUiModel.isImportProgressVisible);
        Operation$State.putEnum(bundle, "statusText", settingsImportUiModel.statusText);
        bundle.putString("currentlyAuthorizingAccountUuid", viewModel.currentlyAuthorizingAccountUuid);
        if (settingsImportUiModel.isSettingsListVisible) {
            boolean containsGeneralSettings = viewModel.getContainsGeneralSettings();
            bundle.putBoolean("containsGeneralSettings", containsGeneralSettings);
            if (containsGeneralSettings) {
                bundle.putBoolean("includeGeneralSettings", viewModel.getIncludeGeneralSettings());
                for (SettingsListItem settingsListItem : settingsImportUiModel.settingsList) {
                    if (settingsListItem instanceof SettingsListItem.GeneralSettings) {
                        Operation$State.putEnum(bundle, "generalSettingsImportStatus", settingsListItem.importStatus);
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Collection contains no element matching the predicate.");
                return;
            }
            TakeWhileSequence takeWhileSequence = new TakeWhileSequence(new FilteringSequence(CollectionsKt.asSequence(settingsImportUiModel.settingsList), true, SettingsImportViewModel$special$$inlined$filterIsInstance$1.INSTANCE$1), new SettingsImportViewModel$$ExternalSyntheticLambda1(viewModel, 1), 2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(settingsImportUiModel.settingsList.size() - 1);
            Iterator it = takeWhileSequence.iterator();
            while (true) {
                TreeIterator treeIterator = (TreeIterator) it;
                if (!treeIterator.hasNext()) {
                    break;
                } else {
                    arrayList.add(treeIterator.next());
                }
            }
            bundle.putParcelableArrayList("accountList", arrayList);
        }
        bundle.putParcelable("contentUri", viewModel.contentUri);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        final int i = 1;
        if (bundle != null) {
            SettingsImportViewModel viewModel = getViewModel();
            viewModel.getClass();
            viewModel.wasActionHandled = true;
            viewModel.contentUri = (Uri) SQLite.getParcelable(bundle, "contentUri", Uri.class);
            viewModel.currentlyAuthorizingAccountUuid = bundle.getString("currentlyAuthorizingAccountUuid");
            DI$$ExternalSyntheticLambda0 dI$$ExternalSyntheticLambda0 = new DI$$ExternalSyntheticLambda0(17, bundle, viewModel);
            SettingsImportUiModel settingsImportUiModel = viewModel.uiModel;
            dI$$ExternalSyntheticLambda0.invoke(settingsImportUiModel);
            viewModel.uiModelLiveData.setValue(settingsImportUiModel);
        }
        ViewHolder viewHolder = new ViewHolder(view);
        ItemAdapter itemAdapter = new ItemAdapter();
        this.itemAdapter = itemAdapter;
        FastAdapter fastAdapter = new FastAdapter();
        ArrayList arrayList = fastAdapter.adapters;
        final int i2 = 0;
        arrayList.add(0, itemAdapter);
        BinaryBitmap binaryBitmap = itemAdapter.itemList;
        if (ImageAnalysis$$ExternalSyntheticLambda3.m(binaryBitmap)) {
            binaryBitmap.binarizer = fastAdapter;
        }
        itemAdapter.fastAdapter = fastAdapter;
        Iterator it = arrayList.iterator();
        int i3 = 0;
        while (true) {
            Object obj = null;
            if (!it.hasNext()) {
                fastAdapter.cacheSizes();
                fastAdapter.setHasStableIds(true);
                fastAdapter.onClickListener = new CoilImageKt$$ExternalSyntheticLambda11(6, this);
                fastAdapter.addEventHook(new CheckBoxClickEvent(new SettingsImportFragment$$ExternalSyntheticLambda6(this, i), i));
                viewHolder.settingsImportList.setAdapter(fastAdapter);
                viewHolder.pickDocumentButton.setOnClickListener(new View.OnClickListener(this) { // from class: app.k9mail.feature.settings.import.ui.SettingsImportFragment$$ExternalSyntheticLambda0
                    public final /* synthetic */ SettingsImportFragment f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        List list;
                        int i4 = i2;
                        boolean z = false;
                        SettingsImportFragment settingsImportFragment = this.f$0;
                        switch (i4) {
                            case 0:
                                SettingsImportViewModel viewModel2 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel2 = viewModel2.uiModel;
                                settingsImportUiModel2.getClass();
                                settingsImportUiModel2.disablePickButtons();
                                viewModel2.uiModelLiveData.setValue(settingsImportUiModel2);
                                viewModel2.sendActionEvent(Action.PickDocument.INSTANCE);
                                break;
                            case 1:
                                SettingsImportViewModel viewModel3 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel3 = viewModel3.uiModel;
                                settingsImportUiModel3.getClass();
                                settingsImportUiModel3.disablePickButtons();
                                viewModel3.uiModelLiveData.setValue(settingsImportUiModel3);
                                viewModel3.sendActionEvent(Action.ScanQrCode.INSTANCE);
                                break;
                            case 2:
                                SettingsImportViewModel viewModel4 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel4 = viewModel4.uiModel;
                                settingsImportUiModel4.getClass();
                                settingsImportUiModel4.disablePickButtons();
                                viewModel4.uiModelLiveData.setValue(settingsImportUiModel4);
                                viewModel4.sendActionEvent(Action.PickApp.INSTANCE);
                                break;
                            case 3:
                                SettingsImportViewModel viewModel5 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel5 = viewModel5.uiModel;
                                settingsImportUiModel5.getClass();
                                settingsImportUiModel5.isImportProgressVisible = true;
                                settingsImportUiModel5.isSettingsListEnabled = false;
                                settingsImportUiModel5.importButton = ButtonState.INVISIBLE;
                                settingsImportUiModel5.statusText = StatusText.IMPORTING_PROGRESS;
                                viewModel5.uiModelLiveData.setValue(settingsImportUiModel5);
                                Uri uri = viewModel5.contentUri;
                                if (uri == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("contentUri is missing");
                                    break;
                                } else {
                                    JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel5), null, null, new SettingsImportViewModel$startImportSettings$1(viewModel5, uri, null), 3);
                                    break;
                                }
                            default:
                                SettingsImportViewModel viewModel6 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel6 = viewModel6.uiModel;
                                if (settingsImportUiModel6.importButton == ButtonState.GONE && ((list = settingsImportUiModel6.settingsList) == null || !list.isEmpty())) {
                                    Iterator it2 = list.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            SettingsListItem settingsListItem = (SettingsListItem) it2.next();
                                            if (!(settingsListItem instanceof SettingsListItem.GeneralSettings) && settingsListItem.importStatus.isSuccess) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                                viewModel6.sendActionEvent(new Action.Close(z));
                                break;
                        }
                    }
                });
                viewHolder.scanQrCodeButton.setOnClickListener(new View.OnClickListener(this) { // from class: app.k9mail.feature.settings.import.ui.SettingsImportFragment$$ExternalSyntheticLambda0
                    public final /* synthetic */ SettingsImportFragment f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        List list;
                        int i4 = i;
                        boolean z = false;
                        SettingsImportFragment settingsImportFragment = this.f$0;
                        switch (i4) {
                            case 0:
                                SettingsImportViewModel viewModel2 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel2 = viewModel2.uiModel;
                                settingsImportUiModel2.getClass();
                                settingsImportUiModel2.disablePickButtons();
                                viewModel2.uiModelLiveData.setValue(settingsImportUiModel2);
                                viewModel2.sendActionEvent(Action.PickDocument.INSTANCE);
                                break;
                            case 1:
                                SettingsImportViewModel viewModel3 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel3 = viewModel3.uiModel;
                                settingsImportUiModel3.getClass();
                                settingsImportUiModel3.disablePickButtons();
                                viewModel3.uiModelLiveData.setValue(settingsImportUiModel3);
                                viewModel3.sendActionEvent(Action.ScanQrCode.INSTANCE);
                                break;
                            case 2:
                                SettingsImportViewModel viewModel4 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel4 = viewModel4.uiModel;
                                settingsImportUiModel4.getClass();
                                settingsImportUiModel4.disablePickButtons();
                                viewModel4.uiModelLiveData.setValue(settingsImportUiModel4);
                                viewModel4.sendActionEvent(Action.PickApp.INSTANCE);
                                break;
                            case 3:
                                SettingsImportViewModel viewModel5 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel5 = viewModel5.uiModel;
                                settingsImportUiModel5.getClass();
                                settingsImportUiModel5.isImportProgressVisible = true;
                                settingsImportUiModel5.isSettingsListEnabled = false;
                                settingsImportUiModel5.importButton = ButtonState.INVISIBLE;
                                settingsImportUiModel5.statusText = StatusText.IMPORTING_PROGRESS;
                                viewModel5.uiModelLiveData.setValue(settingsImportUiModel5);
                                Uri uri = viewModel5.contentUri;
                                if (uri == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("contentUri is missing");
                                    break;
                                } else {
                                    JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel5), null, null, new SettingsImportViewModel$startImportSettings$1(viewModel5, uri, null), 3);
                                    break;
                                }
                            default:
                                SettingsImportViewModel viewModel6 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel6 = viewModel6.uiModel;
                                if (settingsImportUiModel6.importButton == ButtonState.GONE && ((list = settingsImportUiModel6.settingsList) == null || !list.isEmpty())) {
                                    Iterator it2 = list.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            SettingsListItem settingsListItem = (SettingsListItem) it2.next();
                                            if (!(settingsListItem instanceof SettingsListItem.GeneralSettings) && settingsListItem.importStatus.isSuccess) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                                viewModel6.sendActionEvent(new Action.Close(z));
                                break;
                        }
                    }
                });
                final int i4 = 2;
                viewHolder.pickAppButton.setOnClickListener(new View.OnClickListener(this) { // from class: app.k9mail.feature.settings.import.ui.SettingsImportFragment$$ExternalSyntheticLambda0
                    public final /* synthetic */ SettingsImportFragment f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        List list;
                        int i42 = i4;
                        boolean z = false;
                        SettingsImportFragment settingsImportFragment = this.f$0;
                        switch (i42) {
                            case 0:
                                SettingsImportViewModel viewModel2 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel2 = viewModel2.uiModel;
                                settingsImportUiModel2.getClass();
                                settingsImportUiModel2.disablePickButtons();
                                viewModel2.uiModelLiveData.setValue(settingsImportUiModel2);
                                viewModel2.sendActionEvent(Action.PickDocument.INSTANCE);
                                break;
                            case 1:
                                SettingsImportViewModel viewModel3 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel3 = viewModel3.uiModel;
                                settingsImportUiModel3.getClass();
                                settingsImportUiModel3.disablePickButtons();
                                viewModel3.uiModelLiveData.setValue(settingsImportUiModel3);
                                viewModel3.sendActionEvent(Action.ScanQrCode.INSTANCE);
                                break;
                            case 2:
                                SettingsImportViewModel viewModel4 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel4 = viewModel4.uiModel;
                                settingsImportUiModel4.getClass();
                                settingsImportUiModel4.disablePickButtons();
                                viewModel4.uiModelLiveData.setValue(settingsImportUiModel4);
                                viewModel4.sendActionEvent(Action.PickApp.INSTANCE);
                                break;
                            case 3:
                                SettingsImportViewModel viewModel5 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel5 = viewModel5.uiModel;
                                settingsImportUiModel5.getClass();
                                settingsImportUiModel5.isImportProgressVisible = true;
                                settingsImportUiModel5.isSettingsListEnabled = false;
                                settingsImportUiModel5.importButton = ButtonState.INVISIBLE;
                                settingsImportUiModel5.statusText = StatusText.IMPORTING_PROGRESS;
                                viewModel5.uiModelLiveData.setValue(settingsImportUiModel5);
                                Uri uri = viewModel5.contentUri;
                                if (uri == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("contentUri is missing");
                                    break;
                                } else {
                                    JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel5), null, null, new SettingsImportViewModel$startImportSettings$1(viewModel5, uri, null), 3);
                                    break;
                                }
                            default:
                                SettingsImportViewModel viewModel6 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel6 = viewModel6.uiModel;
                                if (settingsImportUiModel6.importButton == ButtonState.GONE && ((list = settingsImportUiModel6.settingsList) == null || !list.isEmpty())) {
                                    Iterator it2 = list.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            SettingsListItem settingsListItem = (SettingsListItem) it2.next();
                                            if (!(settingsListItem instanceof SettingsListItem.GeneralSettings) && settingsListItem.importStatus.isSuccess) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                                viewModel6.sendActionEvent(new Action.Close(z));
                                break;
                        }
                    }
                });
                final int i5 = 3;
                viewHolder.importButton.setOnClickListener(new View.OnClickListener(this) { // from class: app.k9mail.feature.settings.import.ui.SettingsImportFragment$$ExternalSyntheticLambda0
                    public final /* synthetic */ SettingsImportFragment f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        List list;
                        int i42 = i5;
                        boolean z = false;
                        SettingsImportFragment settingsImportFragment = this.f$0;
                        switch (i42) {
                            case 0:
                                SettingsImportViewModel viewModel2 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel2 = viewModel2.uiModel;
                                settingsImportUiModel2.getClass();
                                settingsImportUiModel2.disablePickButtons();
                                viewModel2.uiModelLiveData.setValue(settingsImportUiModel2);
                                viewModel2.sendActionEvent(Action.PickDocument.INSTANCE);
                                break;
                            case 1:
                                SettingsImportViewModel viewModel3 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel3 = viewModel3.uiModel;
                                settingsImportUiModel3.getClass();
                                settingsImportUiModel3.disablePickButtons();
                                viewModel3.uiModelLiveData.setValue(settingsImportUiModel3);
                                viewModel3.sendActionEvent(Action.ScanQrCode.INSTANCE);
                                break;
                            case 2:
                                SettingsImportViewModel viewModel4 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel4 = viewModel4.uiModel;
                                settingsImportUiModel4.getClass();
                                settingsImportUiModel4.disablePickButtons();
                                viewModel4.uiModelLiveData.setValue(settingsImportUiModel4);
                                viewModel4.sendActionEvent(Action.PickApp.INSTANCE);
                                break;
                            case 3:
                                SettingsImportViewModel viewModel5 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel5 = viewModel5.uiModel;
                                settingsImportUiModel5.getClass();
                                settingsImportUiModel5.isImportProgressVisible = true;
                                settingsImportUiModel5.isSettingsListEnabled = false;
                                settingsImportUiModel5.importButton = ButtonState.INVISIBLE;
                                settingsImportUiModel5.statusText = StatusText.IMPORTING_PROGRESS;
                                viewModel5.uiModelLiveData.setValue(settingsImportUiModel5);
                                Uri uri = viewModel5.contentUri;
                                if (uri == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("contentUri is missing");
                                    break;
                                } else {
                                    JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel5), null, null, new SettingsImportViewModel$startImportSettings$1(viewModel5, uri, null), 3);
                                    break;
                                }
                            default:
                                SettingsImportViewModel viewModel6 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel6 = viewModel6.uiModel;
                                if (settingsImportUiModel6.importButton == ButtonState.GONE && ((list = settingsImportUiModel6.settingsList) == null || !list.isEmpty())) {
                                    Iterator it2 = list.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            SettingsListItem settingsListItem = (SettingsListItem) it2.next();
                                            if (!(settingsListItem instanceof SettingsListItem.GeneralSettings) && settingsListItem.importStatus.isSuccess) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                                viewModel6.sendActionEvent(new Action.Close(z));
                                break;
                        }
                    }
                });
                final int i6 = 4;
                viewHolder.closeButton.setOnClickListener(new View.OnClickListener(this) { // from class: app.k9mail.feature.settings.import.ui.SettingsImportFragment$$ExternalSyntheticLambda0
                    public final /* synthetic */ SettingsImportFragment f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        List list;
                        int i42 = i6;
                        boolean z = false;
                        SettingsImportFragment settingsImportFragment = this.f$0;
                        switch (i42) {
                            case 0:
                                SettingsImportViewModel viewModel2 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel2 = viewModel2.uiModel;
                                settingsImportUiModel2.getClass();
                                settingsImportUiModel2.disablePickButtons();
                                viewModel2.uiModelLiveData.setValue(settingsImportUiModel2);
                                viewModel2.sendActionEvent(Action.PickDocument.INSTANCE);
                                break;
                            case 1:
                                SettingsImportViewModel viewModel3 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel3 = viewModel3.uiModel;
                                settingsImportUiModel3.getClass();
                                settingsImportUiModel3.disablePickButtons();
                                viewModel3.uiModelLiveData.setValue(settingsImportUiModel3);
                                viewModel3.sendActionEvent(Action.ScanQrCode.INSTANCE);
                                break;
                            case 2:
                                SettingsImportViewModel viewModel4 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel4 = viewModel4.uiModel;
                                settingsImportUiModel4.getClass();
                                settingsImportUiModel4.disablePickButtons();
                                viewModel4.uiModelLiveData.setValue(settingsImportUiModel4);
                                viewModel4.sendActionEvent(Action.PickApp.INSTANCE);
                                break;
                            case 3:
                                SettingsImportViewModel viewModel5 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel5 = viewModel5.uiModel;
                                settingsImportUiModel5.getClass();
                                settingsImportUiModel5.isImportProgressVisible = true;
                                settingsImportUiModel5.isSettingsListEnabled = false;
                                settingsImportUiModel5.importButton = ButtonState.INVISIBLE;
                                settingsImportUiModel5.statusText = StatusText.IMPORTING_PROGRESS;
                                viewModel5.uiModelLiveData.setValue(settingsImportUiModel5);
                                Uri uri = viewModel5.contentUri;
                                if (uri == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("contentUri is missing");
                                    break;
                                } else {
                                    JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel5), null, null, new SettingsImportViewModel$startImportSettings$1(viewModel5, uri, null), 3);
                                    break;
                                }
                            default:
                                SettingsImportViewModel viewModel6 = settingsImportFragment.getViewModel();
                                SettingsImportUiModel settingsImportUiModel6 = viewModel6.uiModel;
                                if (settingsImportUiModel6.importButton == ButtonState.GONE && ((list = settingsImportUiModel6.settingsList) == null || !list.isEmpty())) {
                                    Iterator it2 = list.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            SettingsListItem settingsListItem = (SettingsListItem) it2.next();
                                            if (!(settingsListItem instanceof SettingsListItem.GeneralSettings) && settingsListItem.importStatus.isSuccess) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                                viewModel6.sendActionEvent(new Action.Close(z));
                                break;
                        }
                    }
                });
                SettingsImportViewModel viewModel2 = getViewModel();
                MutableLiveData mutableLiveData = viewModel2.uiModelLiveData;
                if (mutableLiveData.getValue() == null) {
                    mutableLiveData.setValue(viewModel2.uiModel);
                }
                IntOffsetKt.observeNotNull(mutableLiveData, this, new DI$$ExternalSyntheticLambda0(16, this, viewHolder));
                IntOffsetKt.observeNotNull(getViewModel().actionLiveData, this, new SettingsImportFragment$$ExternalSyntheticLambda6(this, i2));
                Bundle bundle2 = this.mArguments;
                if (bundle2 != null) {
                    SettingsImportAction.Companion.getClass();
                    String string = bundle2.getString("action");
                    Iterator it2 = SettingsImportAction.$ENTRIES.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        Object next = it2.next();
                        if (((SettingsImportAction) next).bundleValue.equals(string)) {
                            obj = next;
                            break;
                        }
                    }
                    SettingsImportAction settingsImportAction = (SettingsImportAction) obj;
                    if (settingsImportAction == null) {
                        settingsImportAction = SettingsImportAction.Overview;
                    }
                    SettingsImportViewModel viewModel3 = getViewModel();
                    viewModel3.getClass();
                    viewModel3.action = settingsImportAction;
                    if (viewModel3.wasActionHandled) {
                        return;
                    }
                    viewModel3.wasActionHandled = true;
                    int ordinal = settingsImportAction.ordinal();
                    if (ordinal != 0) {
                        if (ordinal != 1) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return;
                        }
                        SettingsImportUiModel settingsImportUiModel2 = viewModel3.uiModel;
                        settingsImportUiModel2.getClass();
                        settingsImportUiModel2.disablePickButtons();
                        viewModel3.uiModelLiveData.setValue(settingsImportUiModel2);
                        viewModel3.sendActionEvent(Action.ScanQrCode.INSTANCE);
                        return;
                    }
                    return;
                }
                return;
            }
            Object next2 = it.next();
            int i7 = i3 + 1;
            if (i3 < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            ((ItemAdapter) next2).order = i3;
            i3 = i7;
        }
    }
}
