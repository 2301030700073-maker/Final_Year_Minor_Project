package com.fsck.k9.ui.settings.export;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.compose.ActivityResultRegistryKt$$ExternalSyntheticLambda2;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import app.k9mail.provider.K9AppNameProvider;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.preferences.SettingsExporter;
import com.fsck.k9.ui.settings.export.Action;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptySet;
import kotlinx.coroutines.JobKt;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsExportFragment extends Fragment {
    public ItemAdapter itemAdapter;
    public final Lazy viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(25, this, new GapPending$keyMap$2(13, this)));
    public final Fragment.AnonymousClass10 createDocumentLauncher = registerForActivityResult(new ActivityResultRegistryKt$$ExternalSyntheticLambda2(3, this), new AuthorizationContract(8));

    public final SettingsExportViewModel getViewModel() {
        return (SettingsExportViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.fragment_settings_export, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        SettingsExportViewModel viewModel = getViewModel();
        viewModel.getClass();
        SettingsExportUiModel settingsExportUiModel = viewModel.uiModel;
        bundle.putBoolean("settingsListEnabled", settingsExportUiModel.isSettingsListEnabled);
        bundle.putString("exportButton", settingsExportUiModel.exportButton.name());
        bundle.putBoolean("shareButtonVisible", settingsExportUiModel.isShareButtonVisible);
        bundle.putBoolean("progressVisible", settingsExportUiModel.isProgressVisible);
        bundle.putString("statusText", settingsExportUiModel.statusText.name());
        bundle.putBoolean("includeGeneralSettings", viewModel.getIncludeGeneralSettings$1());
        bundle.putStringArray("selectedAccounts", (String[]) viewModel.getSelectedAccounts$1().toArray(new String[0]));
        bundle.putParcelable("contentUri", viewModel.contentUri);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        if (bundle != null) {
            SettingsExportViewModel viewModel = getViewModel();
            viewModel.getClass();
            boolean z = bundle.getBoolean("includeGeneralSettings");
            String[] stringArray = bundle.getStringArray("selectedAccounts");
            viewModel.savedSelection = new SavedListItemSelection(stringArray != null ? ArraysKt___ArraysKt.toSet(stringArray) : EmptySet.INSTANCE, z);
            SettingsExportUiModel settingsExportUiModel = viewModel.uiModel;
            settingsExportUiModel.isSettingsListEnabled = bundle.getBoolean("settingsListEnabled");
            String string = bundle.getString("exportButton", "DISABLED");
            string.getClass();
            ButtonState valueOf = ButtonState.valueOf(string);
            valueOf.getClass();
            settingsExportUiModel.exportButton = valueOf;
            settingsExportUiModel.isShareButtonVisible = bundle.getBoolean("shareButtonVisible");
            settingsExportUiModel.isProgressVisible = bundle.getBoolean("progressVisible");
            String string2 = bundle.getString("statusText", "HIDDEN");
            string2.getClass();
            StatusText valueOf2 = StatusText.valueOf(string2);
            valueOf2.getClass();
            settingsExportUiModel.statusText = valueOf2;
            viewModel.contentUri = (Uri) SQLite.getParcelable(bundle, "contentUri", Uri.class);
        }
        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(view);
        RecyclerView recyclerView = (RecyclerView) anonymousClass7.this$0;
        ItemAdapter itemAdapter = new ItemAdapter();
        this.itemAdapter = itemAdapter;
        FastAdapter fastAdapter = new FastAdapter();
        ArrayList arrayList = fastAdapter.adapters;
        final int i = 0;
        arrayList.add(0, itemAdapter);
        BinaryBitmap binaryBitmap = itemAdapter.itemList;
        if (ImageAnalysis$$ExternalSyntheticLambda3.m(binaryBitmap)) {
            binaryBitmap.binarizer = fastAdapter;
        }
        itemAdapter.fastAdapter = fastAdapter;
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i3 = i2 + 1;
            if (i2 < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            ((ItemAdapter) next).order = i2;
            i2 = i3;
        }
        fastAdapter.cacheSizes();
        final int i4 = 1;
        fastAdapter.setHasStableIds(true);
        fastAdapter.onClickListener = new CoilImageKt$$ExternalSyntheticLambda11(10, this);
        fastAdapter.addEventHook(new CheckBoxClickEvent(new ComposerKt$$ExternalSyntheticLambda0(28, this), 0));
        recyclerView.setAdapter(fastAdapter);
        ((View) anonymousClass7.val$queryString).setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.settings.export.SettingsExportFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SettingsExportFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i5 = i;
                SettingsExportFragment settingsExportFragment = this.f$0;
                switch (i5) {
                    case 0:
                        SettingsExportViewModel viewModel2 = settingsExportFragment.getViewModel();
                        SettingsExportUiModel settingsExportUiModel2 = viewModel2.uiModel;
                        settingsExportUiModel2.getClass();
                        settingsExportUiModel2.exportButton = ButtonState.DISABLED;
                        settingsExportUiModel2.isShareButtonVisible = false;
                        settingsExportUiModel2.isProgressVisible = false;
                        viewModel2.uiModelLiveData.setValue(settingsExportUiModel2);
                        SettingsExporter settingsExporter = viewModel2.settingsExporter;
                        settingsExporter.getClass();
                        Calendar calendar = Calendar.getInstance();
                        Locale locale = Locale.US;
                        viewModel2.actionLiveData.setValue(new Action.PickDocument(String.format(locale, "%s_%s_%s.%s", Arrays.copyOf(new Object[]{((K9AppNameProvider) settingsExporter.filePrefixProvider).filePrefix, "settings_export", new SimpleDateFormat("yyyy-MM-dd", locale).format(calendar.getTime()), "k9s"}, 4))));
                        break;
                    default:
                        SettingsExportViewModel viewModel3 = settingsExportFragment.getViewModel();
                        Uri uri = viewModel3.contentUri;
                        uri.getClass();
                        viewModel3.actionLiveData.setValue(new Action.ShareDocument(uri));
                        break;
                }
            }
        });
        ((View) anonymousClass7.val$placeHolders).setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.settings.export.SettingsExportFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SettingsExportFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i5 = i4;
                SettingsExportFragment settingsExportFragment = this.f$0;
                switch (i5) {
                    case 0:
                        SettingsExportViewModel viewModel2 = settingsExportFragment.getViewModel();
                        SettingsExportUiModel settingsExportUiModel2 = viewModel2.uiModel;
                        settingsExportUiModel2.getClass();
                        settingsExportUiModel2.exportButton = ButtonState.DISABLED;
                        settingsExportUiModel2.isShareButtonVisible = false;
                        settingsExportUiModel2.isProgressVisible = false;
                        viewModel2.uiModelLiveData.setValue(settingsExportUiModel2);
                        SettingsExporter settingsExporter = viewModel2.settingsExporter;
                        settingsExporter.getClass();
                        Calendar calendar = Calendar.getInstance();
                        Locale locale = Locale.US;
                        viewModel2.actionLiveData.setValue(new Action.PickDocument(String.format(locale, "%s_%s_%s.%s", Arrays.copyOf(new Object[]{((K9AppNameProvider) settingsExporter.filePrefixProvider).filePrefix, "settings_export", new SimpleDateFormat("yyyy-MM-dd", locale).format(calendar.getTime()), "k9s"}, 4))));
                        break;
                    default:
                        SettingsExportViewModel viewModel3 = settingsExportFragment.getViewModel();
                        Uri uri = viewModel3.contentUri;
                        uri.getClass();
                        viewModel3.actionLiveData.setValue(new Action.ShareDocument(uri));
                        break;
                }
            }
        });
        SettingsExportViewModel viewModel2 = getViewModel();
        MutableLiveData mutableLiveData = viewModel2.uiModelLiveData;
        if (mutableLiveData.getValue() == null) {
            mutableLiveData.setValue(viewModel2.uiModel);
            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), null, null, new BlockRunner$cancel$1(viewModel2, null, 19), 3);
        }
        IntOffsetKt.observeNotNull(mutableLiveData, this, new DI$$ExternalSyntheticLambda0(25, this, anonymousClass7));
        IntOffsetKt.observeNotNull(getViewModel().actionLiveData, this, new AbstractMap$$ExternalSyntheticLambda0(20, this));
    }
}
