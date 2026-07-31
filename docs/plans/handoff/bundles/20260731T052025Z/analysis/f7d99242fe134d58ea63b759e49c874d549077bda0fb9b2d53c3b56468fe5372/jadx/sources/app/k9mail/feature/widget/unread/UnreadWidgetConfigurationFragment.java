package app.k9mail.feature.widget.unread;

import android.os.Bundle;
import android.view.View;
import androidx.activity.result.ActivityResultCallback;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity;
import com.fsck.k9.ui.choosefolder.ChooseFolderResultContract;
import com.takisoft.preferencex.PreferenceFragmentCompat;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetConfigurationFragment extends PreferenceFragmentCompat {
    public static final /* synthetic */ int $r8$clinit = 0;
    public int appWidgetId;
    public final Fragment.AnonymousClass10 chooseAccountLauncher;
    public final Fragment.AnonymousClass10 chooseFolderLauncher;
    public final Lazy preferences$delegate;
    public final Lazy repository$delegate;
    public String selectedAccountUuid;
    public String selectedFolderDisplayName;
    public Long selectedFolderId;
    public Preference unreadAccount;
    public Preference unreadFolder;
    public CheckBoxPreference unreadFolderEnabled;
    public final Lazy unreadWidgetUpdater$delegate;

    public UnreadWidgetConfigurationFragment() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: app.k9mail.feature.widget.unread.UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1
            public final /* synthetic */ UnreadWidgetConfigurationFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetRepository.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetUpdater.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.preferences$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.repository$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: app.k9mail.feature.widget.unread.UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1
            public final /* synthetic */ UnreadWidgetConfigurationFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetRepository.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetUpdater.class), null, null);
                }
            }
        });
        final int i3 = 2;
        this.unreadWidgetUpdater$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: app.k9mail.feature.widget.unread.UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1
            public final /* synthetic */ UnreadWidgetConfigurationFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetRepository.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(unreadWidgetConfigurationFragment).resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetUpdater.class), null, null);
                }
            }
        });
        this.chooseAccountLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: app.k9mail.feature.widget.unread.UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3
            public final /* synthetic */ UnreadWidgetConfigurationFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i4 = i;
                UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment = this.f$0;
                switch (i4) {
                    case 0:
                        int i5 = UnreadWidgetConfigurationFragment.$r8$clinit;
                        unreadWidgetConfigurationFragment.handleChooseAccount((String) obj);
                        return;
                    default:
                        ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                        int i6 = UnreadWidgetConfigurationFragment.$r8$clinit;
                        if (result != null) {
                            long j = result.folderId;
                            String str = result.folderDisplayName;
                            unreadWidgetConfigurationFragment.selectedFolderId = Long.valueOf(j);
                            unreadWidgetConfigurationFragment.selectedFolderDisplayName = str;
                            Preference preference = unreadWidgetConfigurationFragment.unreadFolder;
                            if (preference != null) {
                                preference.setSummary(str);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("unreadFolder");
                                throw null;
                            }
                        }
                        return;
                }
            }
        }, new AuthorizationContract(10));
        this.chooseFolderLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: app.k9mail.feature.widget.unread.UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3
            public final /* synthetic */ UnreadWidgetConfigurationFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i4 = i2;
                UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment = this.f$0;
                switch (i4) {
                    case 0:
                        int i5 = UnreadWidgetConfigurationFragment.$r8$clinit;
                        unreadWidgetConfigurationFragment.handleChooseAccount((String) obj);
                        return;
                    default:
                        ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                        int i6 = UnreadWidgetConfigurationFragment.$r8$clinit;
                        if (result != null) {
                            long j = result.folderId;
                            String str = result.folderDisplayName;
                            unreadWidgetConfigurationFragment.selectedFolderId = Long.valueOf(j);
                            unreadWidgetConfigurationFragment.selectedFolderDisplayName = str;
                            Preference preference = unreadWidgetConfigurationFragment.unreadFolder;
                            if (preference != null) {
                                preference.setSummary(str);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("unreadFolder");
                                throw null;
                            }
                        }
                        return;
                }
            }
        }, new ChooseFolderResultContract(ChooseFolderActivity.Action.CHOOSE));
    }

    public final void handleChooseAccount(String str) {
        if (Intrinsics.areEqual(str, this.selectedAccountUuid)) {
            return;
        }
        this.selectedAccountUuid = str;
        this.selectedFolderId = null;
        this.selectedFolderDisplayName = null;
        Preference preference = this.unreadFolder;
        if (preference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unreadFolder");
            throw null;
        }
        preference.setSummary(getString(R.string.unread_widget_folder_summary));
        if ("unified_folders".equals(this.selectedAccountUuid)) {
            if ("unified_folders".equals(this.selectedAccountUuid)) {
                Preference preference2 = this.unreadAccount;
                if (preference2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("unreadAccount");
                    throw null;
                }
                preference2.setSummary(preference2.mContext.getString(R.string.unread_widget_unified_inbox_account_summary));
            }
            CheckBoxPreference checkBoxPreference = this.unreadFolderEnabled;
            if (checkBoxPreference == null) {
                Intrinsics.throwUninitializedPropertyAccessException("unreadFolderEnabled");
                throw null;
            }
            checkBoxPreference.setEnabled(false);
            CheckBoxPreference checkBoxPreference2 = this.unreadFolderEnabled;
            if (checkBoxPreference2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("unreadFolderEnabled");
                throw null;
            }
            checkBoxPreference2.setChecked(false);
            Preference preference3 = this.unreadFolder;
            if (preference3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("unreadFolder");
                throw null;
            }
            preference3.setEnabled(false);
            this.selectedFolderId = null;
            this.selectedFolderDisplayName = null;
            return;
        }
        Preferences preferences = (Preferences) this.preferences$delegate.getValue();
        String str2 = this.selectedAccountUuid;
        str2.getClass();
        LegacyAccountDto account = preferences.getAccount(str2);
        if (account == null) {
            throw new IllegalStateException(("Account " + this.selectedAccountUuid + " not found").toString());
        }
        Preference preference4 = this.unreadAccount;
        if (preference4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unreadAccount");
            throw null;
        }
        preference4.setSummary(account.getDisplayName());
        CheckBoxPreference checkBoxPreference3 = this.unreadFolderEnabled;
        if (checkBoxPreference3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unreadFolderEnabled");
            throw null;
        }
        checkBoxPreference3.setEnabled(true);
        Preference preference5 = this.unreadFolder;
        if (preference5 != null) {
            preference5.setEnabled(true);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("unreadFolder");
            throw null;
        }
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat
    public final void onCreatePreferencesFix(String str, Bundle bundle) {
        String string;
        setPreferencesFromResource(str, R.xml.unread_widget_configuration);
        Bundle bundle2 = this.mArguments;
        if (bundle2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument 'app_widget_id'");
            return;
        }
        this.appWidgetId = bundle2.getInt("app_widget_id");
        Preference findPreference = findPreference("unread_account");
        findPreference.getClass();
        this.unreadAccount = findPreference;
        findPreference.mOnClickListener = new UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0(this, 0);
        Preference findPreference2 = findPreference("unread_folder_enabled");
        findPreference2.getClass();
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference2;
        this.unreadFolderEnabled = checkBoxPreference;
        checkBoxPreference.mOnChangeListener = new UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0(this, 1);
        Preference findPreference3 = findPreference("unread_folder");
        findPreference3.getClass();
        this.unreadFolder = findPreference3;
        findPreference3.mOnClickListener = new UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0(this, 2);
        if (bundle == null || (string = bundle.getString("com.fsck.k9.widget.unread.selectedAccountUuid")) == null) {
            return;
        }
        handleChooseAccount(string);
        Long valueOf = bundle.containsKey("com.fsck.k9.widget.unread.selectedFolderId") ? Long.valueOf(bundle.getLong("com.fsck.k9.widget.unread.selectedFolderId")) : null;
        String string2 = bundle.getString("com.fsck.k9.widget.unread.selectedFolderDisplayName");
        if (valueOf == null || string2 == null) {
            return;
        }
        this.selectedFolderId = valueOf;
        this.selectedFolderDisplayName = string2;
        Preference preference = this.unreadFolder;
        if (preference != null) {
            preference.setSummary(string2);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("unreadFolder");
            throw null;
        }
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("com.fsck.k9.widget.unread.selectedAccountUuid", this.selectedAccountUuid);
        Long l = this.selectedFolderId;
        if (l != null) {
            bundle.putLong("com.fsck.k9.widget.unread.selectedFolderId", l.longValue());
        }
        bundle.putString("com.fsck.k9.widget.unread.selectedFolderDisplayName", this.selectedFolderDisplayName);
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat, androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        requireActivity().addMenuProvider(new FragmentManager.AnonymousClass2(1, this), getViewLifecycleOwner());
    }
}
