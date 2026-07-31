package com.fsck.k9.ui.managefolders;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroupAdapter;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda0;
import com.fsck.k9.fragment.ConfirmationDialogFragment;
import com.takisoft.preferencex.PreferenceFragmentCompat;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.mail.folder.api.Folder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderSettingsFragment extends PreferenceFragmentCompat implements ConfirmationDialogFragment.ConfirmationDialogFragmentListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(8, this, new FolderSettingsFragment$special$$inlined$inject$default$1(this, 1)));
    public final Lazy folderNameFormatter$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new FolderSettingsFragment$special$$inlined$inject$default$1(this, 0));

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doPositiveClick(int i) {
        if (i == 1) {
            FolderSettingsViewModel viewModel = getViewModel();
            MessagingController messagingController = viewModel.messagingController;
            LegacyAccountDto legacyAccountDto = viewModel.account;
            if (legacyAccountDto == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            long j = viewModel.folderId;
            messagingController.getClass();
            messagingController.putBackground("clearFolder", new MessagingController$$ExternalSyntheticLambda0(messagingController, legacyAccountDto, j, 1));
        }
    }

    public final FolderSettingsViewModel getViewModel() {
        return (FolderSettingsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat
    public final void onCreatePreferencesFix(String str, Bundle bundle) {
        setPreferencesFromResource(null, R.xml.empty_preferences);
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat, androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        requireActivity().addMenuProvider(new FragmentManager.AnonymousClass2(2, this), getViewLifecycleOwner());
        Bundle bundle2 = this.mArguments;
        if (bundle2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Arguments missing");
            return;
        }
        String string = bundle2.getString("account");
        if (string == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument 'account'");
            return;
        }
        long j = bundle2.getLong("folderId");
        FolderSettingsViewModel viewModel = getViewModel();
        viewModel.getClass();
        CoroutineLiveData coroutineLiveData = viewModel.folderSettingsLiveData;
        if (coroutineLiveData == null) {
            coroutineLiveData = ViewModelKt.liveData(ViewModelKt.getViewModelScope(viewModel).coroutineContext, new ContentInViewNode$launchAnimation$2(viewModel, string, j, null));
            viewModel.folderSettingsLiveData = coroutineLiveData;
        }
        final int i = 0;
        IntOffsetKt.observeNotNull(coroutineLiveData, getViewLifecycleOwner(), new Function1(this) { // from class: com.fsck.k9.ui.managefolders.FolderSettingsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ FolderSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i2 = i;
                Unit unit = Unit.INSTANCE;
                FolderSettingsFragment folderSettingsFragment = this.f$0;
                switch (i2) {
                    case 0:
                        FolderSettingsResult folderSettingsResult = (FolderSettingsResult) obj;
                        int i3 = FolderSettingsFragment.$r8$clinit;
                        folderSettingsResult.getClass();
                        if (!(folderSettingsResult instanceof FolderNotFound)) {
                            if (!(folderSettingsResult instanceof FolderSettingsData)) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                break;
                            } else {
                                FolderSettingsData folderSettingsData = (FolderSettingsData) folderSettingsResult;
                                folderSettingsFragment.mPreferenceManager.mPreferenceDataStore = folderSettingsData.dataStore;
                                folderSettingsFragment.setPreferencesFromResource(null, R.xml.folder_settings_preferences);
                                FolderNameFormatter folderNameFormatter = (FolderNameFormatter) folderSettingsFragment.folderNameFormatter$delegate.getValue();
                                Folder folder = folderSettingsData.folder;
                                String displayName = folderNameFormatter.displayName(folder);
                                Preference findPreference = folderSettingsFragment.findPreference("folder_settings");
                                findPreference.getClass();
                                findPreference.setTitle(displayName);
                                folderSettingsFragment.requireActivity().invalidateOptionsMenu();
                                if (folder.isLocalOnly) {
                                    Preference requirePreference = folderSettingsFragment.requirePreference("folder_settings_sync");
                                    if (requirePreference.mVisible) {
                                        requirePreference.mVisible = false;
                                        PreferenceGroupAdapter preferenceGroupAdapter = requirePreference.mListener;
                                        if (preferenceGroupAdapter != null) {
                                            Handler handler = preferenceGroupAdapter.mHandler;
                                            Fragment.AnonymousClass1 anonymousClass1 = preferenceGroupAdapter.mSyncRunnable;
                                            handler.removeCallbacks(anonymousClass1);
                                            handler.post(anonymousClass1);
                                        }
                                    }
                                    Preference requirePreference2 = folderSettingsFragment.requirePreference("folder_settings_push");
                                    if (requirePreference2.mVisible) {
                                        requirePreference2.mVisible = false;
                                        PreferenceGroupAdapter preferenceGroupAdapter2 = requirePreference2.mListener;
                                        if (preferenceGroupAdapter2 != null) {
                                            Handler handler2 = preferenceGroupAdapter2.mHandler;
                                            Fragment.AnonymousClass1 anonymousClass12 = preferenceGroupAdapter2.mSyncRunnable;
                                            handler2.removeCallbacks(anonymousClass12);
                                            handler2.post(anonymousClass12);
                                        }
                                    }
                                    Preference requirePreference3 = folderSettingsFragment.requirePreference("folder_settings_notifications");
                                    if (requirePreference3.mVisible) {
                                        requirePreference3.mVisible = false;
                                        PreferenceGroupAdapter preferenceGroupAdapter3 = requirePreference3.mListener;
                                        if (preferenceGroupAdapter3 != null) {
                                            Handler handler3 = preferenceGroupAdapter3.mHandler;
                                            Fragment.AnonymousClass1 anonymousClass13 = preferenceGroupAdapter3.mSyncRunnable;
                                            handler3.removeCallbacks(anonymousClass13);
                                            handler3.post(anonymousClass13);
                                            break;
                                        }
                                    }
                                }
                            }
                        } else {
                            MathKt.findNavController(folderSettingsFragment).popBackStack();
                            break;
                        }
                        break;
                    default:
                        Action$ShowClearFolderConfirmationDialog action$ShowClearFolderConfirmationDialog = (Action$ShowClearFolderConfirmationDialog) obj;
                        int i4 = FolderSettingsFragment.$r8$clinit;
                        action$ShowClearFolderConfirmationDialog.getClass();
                        if (!(action$ShowClearFolderConfirmationDialog instanceof Action$ShowClearFolderConfirmationDialog)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            ConfirmationDialogFragment newInstance = ConfirmationDialogFragment.newInstance(1, folderSettingsFragment.getString(R.string.dialog_confirm_clear_local_folder_title), folderSettingsFragment.getString(R.string.dialog_confirm_clear_local_folder_message), folderSettingsFragment.getString(R.string.dialog_confirm_clear_local_folder_action), folderSettingsFragment.getString(R.string.cancel_action));
                            newInstance.setTargetFragment(1, folderSettingsFragment);
                            newInstance.show(folderSettingsFragment.getParentFragmentManager(), "clear_folder_confirmation");
                            break;
                        }
                }
                return null;
            }
        });
        final int i2 = 1;
        IntOffsetKt.observeNotNull(getViewModel().actionLiveData, this, new Function1(this) { // from class: com.fsck.k9.ui.managefolders.FolderSettingsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ FolderSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i22 = i2;
                Unit unit = Unit.INSTANCE;
                FolderSettingsFragment folderSettingsFragment = this.f$0;
                switch (i22) {
                    case 0:
                        FolderSettingsResult folderSettingsResult = (FolderSettingsResult) obj;
                        int i3 = FolderSettingsFragment.$r8$clinit;
                        folderSettingsResult.getClass();
                        if (!(folderSettingsResult instanceof FolderNotFound)) {
                            if (!(folderSettingsResult instanceof FolderSettingsData)) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                break;
                            } else {
                                FolderSettingsData folderSettingsData = (FolderSettingsData) folderSettingsResult;
                                folderSettingsFragment.mPreferenceManager.mPreferenceDataStore = folderSettingsData.dataStore;
                                folderSettingsFragment.setPreferencesFromResource(null, R.xml.folder_settings_preferences);
                                FolderNameFormatter folderNameFormatter = (FolderNameFormatter) folderSettingsFragment.folderNameFormatter$delegate.getValue();
                                Folder folder = folderSettingsData.folder;
                                String displayName = folderNameFormatter.displayName(folder);
                                Preference findPreference = folderSettingsFragment.findPreference("folder_settings");
                                findPreference.getClass();
                                findPreference.setTitle(displayName);
                                folderSettingsFragment.requireActivity().invalidateOptionsMenu();
                                if (folder.isLocalOnly) {
                                    Preference requirePreference = folderSettingsFragment.requirePreference("folder_settings_sync");
                                    if (requirePreference.mVisible) {
                                        requirePreference.mVisible = false;
                                        PreferenceGroupAdapter preferenceGroupAdapter = requirePreference.mListener;
                                        if (preferenceGroupAdapter != null) {
                                            Handler handler = preferenceGroupAdapter.mHandler;
                                            Fragment.AnonymousClass1 anonymousClass1 = preferenceGroupAdapter.mSyncRunnable;
                                            handler.removeCallbacks(anonymousClass1);
                                            handler.post(anonymousClass1);
                                        }
                                    }
                                    Preference requirePreference2 = folderSettingsFragment.requirePreference("folder_settings_push");
                                    if (requirePreference2.mVisible) {
                                        requirePreference2.mVisible = false;
                                        PreferenceGroupAdapter preferenceGroupAdapter2 = requirePreference2.mListener;
                                        if (preferenceGroupAdapter2 != null) {
                                            Handler handler2 = preferenceGroupAdapter2.mHandler;
                                            Fragment.AnonymousClass1 anonymousClass12 = preferenceGroupAdapter2.mSyncRunnable;
                                            handler2.removeCallbacks(anonymousClass12);
                                            handler2.post(anonymousClass12);
                                        }
                                    }
                                    Preference requirePreference3 = folderSettingsFragment.requirePreference("folder_settings_notifications");
                                    if (requirePreference3.mVisible) {
                                        requirePreference3.mVisible = false;
                                        PreferenceGroupAdapter preferenceGroupAdapter3 = requirePreference3.mListener;
                                        if (preferenceGroupAdapter3 != null) {
                                            Handler handler3 = preferenceGroupAdapter3.mHandler;
                                            Fragment.AnonymousClass1 anonymousClass13 = preferenceGroupAdapter3.mSyncRunnable;
                                            handler3.removeCallbacks(anonymousClass13);
                                            handler3.post(anonymousClass13);
                                            break;
                                        }
                                    }
                                }
                            }
                        } else {
                            MathKt.findNavController(folderSettingsFragment).popBackStack();
                            break;
                        }
                        break;
                    default:
                        Action$ShowClearFolderConfirmationDialog action$ShowClearFolderConfirmationDialog = (Action$ShowClearFolderConfirmationDialog) obj;
                        int i4 = FolderSettingsFragment.$r8$clinit;
                        action$ShowClearFolderConfirmationDialog.getClass();
                        if (!(action$ShowClearFolderConfirmationDialog instanceof Action$ShowClearFolderConfirmationDialog)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            break;
                        } else {
                            ConfirmationDialogFragment newInstance = ConfirmationDialogFragment.newInstance(1, folderSettingsFragment.getString(R.string.dialog_confirm_clear_local_folder_title), folderSettingsFragment.getString(R.string.dialog_confirm_clear_local_folder_message), folderSettingsFragment.getString(R.string.dialog_confirm_clear_local_folder_action), folderSettingsFragment.getString(R.string.cancel_action));
                            newInstance.setTargetFragment(1, folderSettingsFragment);
                            newInstance.show(folderSettingsFragment.getParentFragmentManager(), "clear_folder_confirmation");
                            break;
                        }
                }
                return null;
            }
        });
    }

    public final Preference requirePreference(String str) {
        Preference findPreference = findPreference(str);
        if (findPreference != null) {
            return findPreference;
        }
        Regex$$ExternalSyntheticBUOutline0.m(str, "' not found", "Preference '");
        return null;
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void dialogCancelled(int i) {
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doNegativeClick(int i) {
    }
}
