package com.fsck.k9.ui.settings.account;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.Toast;
import androidx.activity.compose.ActivityResultRegistryKt$$ExternalSyntheticLambda2;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.SwitchPreference;
import androidx.room.util.RelationUtil;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.feature.launcher.FeatureLauncherTarget$AccountEditIncomingSettings;
import app.k9mail.feature.launcher.FeatureLauncherTarget$AccountEditOutgoingSettings;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.Preferences;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.account.DefaultBackgroundAccountRemover;
import com.fsck.k9.activity.ManageIdentities;
import com.fsck.k9.activity.setup.AccountSetupComposition;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.fragment.ConfirmationDialogFragment;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.notification.NotificationSettingsUpdater;
import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import com.fsck.k9.ui.endtoend.AutocryptKeyTransferActivity;
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import com.takisoft.preferencex.PreferenceFragmentCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.JobKt;
import net.openid.appauth.JsonUtil$Field;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$FetchingMailSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$GeneralSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$ReadingMailSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$SearchSettings;
import net.thunderbird.feature.mail.folder.api.FolderType;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.notification.NotificationSettings;
import net.thunderbird.feature.notification.NotificationVibration;
import net.thunderbird.feature.notification.VibratePattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;
import okio.Options;
import org.openintents.openpgp.OpenPgpApiManager;
import org.openintents.openpgp.util.OpenPgpKeyPreference;
import org.openintents.openpgp.util.OpenPgpProviderUtil;
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsFragment extends PreferenceFragmentCompat implements ConfirmationDialogFragment.ConfirmationDialogFragmentListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy accountRemover$delegate;
    public final SynchronizedLazyImpl accountUuid$delegate;
    public final Lazy appNameProvider$delegate;
    public AccountSettingsDataStore dataStore;
    public final Lazy dataStoreFactory$delegate;
    public final Fragment.AnonymousClass10 launcherForActivityResult;
    public final Lazy messagingController$delegate;
    public final Lazy notificationChannelManager$delegate;
    public ListPreference notificationLightPreference;
    public final Lazy notificationSettingsUpdater$delegate;
    public NotificationSoundPreference notificationSoundPreference;
    public VibrationPreference notificationVibrationPreference;
    public final Lazy openPgpApiManager$delegate;
    public CharSequence title;
    public final Lazy vibrator$delegate;
    public final Lazy viewModel$delegate;

    public AccountSettingsFragment() {
        final int i = 1;
        this.viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(23, this, new AccountSettingsFragment$special$$inlined$inject$default$1(this, i)));
        final int i2 = 0;
        AccountSettingsFragment$special$$inlined$inject$default$1 accountSettingsFragment$special$$inlined$inject$default$1 = new AccountSettingsFragment$special$$inlined$inject$default$1(this, i2);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.dataStoreFactory$delegate = ResultKt.lazy(lazyThreadSafetyMode, accountSettingsFragment$special$$inlined$inject$default$1);
        this.openPgpApiManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(24, this, new Function0(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ AccountSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                AccountSettingsFragment accountSettingsFragment = this.f$0;
                switch (i3) {
                    case 0:
                        int i4 = AccountSettingsFragment.$r8$clinit;
                        return Options.Companion.parametersOf(accountSettingsFragment);
                    default:
                        int i5 = AccountSettingsFragment.$r8$clinit;
                        Bundle bundle = accountSettingsFragment.mArguments;
                        String string = bundle != null ? bundle.getString("accountUuid") : null;
                        if (string != null) {
                            return string;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("accountUuid == null");
                        return null;
                }
            }
        }));
        int i3 = 2;
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new AccountSettingsFragment$special$$inlined$inject$default$1(this, i3));
        this.accountRemover$delegate = ResultKt.lazy(lazyThreadSafetyMode, new AccountSettingsFragment$special$$inlined$inject$default$1(this, 3));
        this.notificationChannelManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new AccountSettingsFragment$special$$inlined$inject$default$1(this, 4));
        this.notificationSettingsUpdater$delegate = ResultKt.lazy(lazyThreadSafetyMode, new AccountSettingsFragment$special$$inlined$inject$default$1(this, 5));
        int i4 = 6;
        this.vibrator$delegate = ResultKt.lazy(lazyThreadSafetyMode, new AccountSettingsFragment$special$$inlined$inject$default$1(this, i4));
        this.appNameProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new AccountSettingsFragment$special$$inlined$inject$default$1(this, 7));
        this.launcherForActivityResult = registerForActivityResult(new ActivityResultRegistryKt$$ExternalSyntheticLambda2(i3, this), new AuthorizationContract(i4));
        this.accountUuid$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ AccountSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i;
                AccountSettingsFragment accountSettingsFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i42 = AccountSettingsFragment.$r8$clinit;
                        return Options.Companion.parametersOf(accountSettingsFragment);
                    default:
                        int i5 = AccountSettingsFragment.$r8$clinit;
                        Bundle bundle = accountSettingsFragment.mArguments;
                        String string = bundle != null ? bundle.getString("accountUuid") : null;
                        if (string != null) {
                            return string;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("accountUuid == null");
                        return null;
                }
            }
        });
    }

    public final void configureCryptoPreferences(final LegacyAccountDto legacyAccountDto) {
        String openPgpProvider = legacyAccountDto.getOpenPgpProvider();
        final int i = 0;
        final int i2 = 1;
        boolean z = openPgpProvider != null;
        String str = null;
        if (z) {
            String openPgpProviderName = OpenPgpProviderUtil.getOpenPgpProviderName(requireActivity().getPackageManager(), openPgpProvider);
            if (openPgpProviderName == null) {
                Toast.makeText(requireContext(), R.string.account_settings_openpgp_missing, 1).show();
                legacyAccountDto.setOpenPgpProvider(null);
                legacyAccountDto.setOpenPgpKey(0L);
                AccountSettingsDataStore accountSettingsDataStore = this.dataStore;
                if (accountSettingsDataStore == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("dataStore");
                    throw null;
                }
                accountSettingsDataStore.saveSettingsInBackground();
                openPgpProvider = null;
            }
            str = openPgpProviderName;
        }
        Preference findPreference = findPreference("openpgp_provider");
        findPreference.getClass();
        SwitchPreference switchPreference = (SwitchPreference) findPreference;
        if (z) {
            switchPreference.setChecked(true);
            switchPreference.setSummary(getString(R.string.account_settings_crypto_summary_on, str));
            switchPreference.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i3 = i2;
                    LegacyAccountDto legacyAccountDto2 = legacyAccountDto;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i3) {
                        case 0:
                            int i4 = AutocryptKeyTransferActivity.$r8$clinit;
                            Context requireContext = accountSettingsFragment.requireContext();
                            String str2 = legacyAccountDto2.uuid;
                            str2.getClass();
                            Intent intent = new Intent(requireContext, (Class<?>) AutocryptKeyTransferActivity.class);
                            intent.putExtra("account", str2);
                            accountSettingsFragment.startActivity(intent);
                            return true;
                        default:
                            preference.mOnClickListener = null;
                            int i5 = AccountSettingsFragment.$r8$clinit;
                            legacyAccountDto2.setOpenPgpProvider(null);
                            legacyAccountDto2.setOpenPgpKey(0L);
                            AccountSettingsDataStore accountSettingsDataStore2 = accountSettingsFragment.dataStore;
                            if (accountSettingsDataStore2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("dataStore");
                                throw null;
                            }
                            accountSettingsDataStore2.saveSettingsInBackground();
                            accountSettingsFragment.configureCryptoPreferences(legacyAccountDto2);
                            return true;
                    }
                }
            };
        } else {
            switchPreference.setChecked(false);
            switchPreference.setSummary(switchPreference.mContext.getString(R.string.account_settings_crypto_summary_off));
            EventRecodingLogger eventRecodingLogger = new EventRecodingLogger();
            eventRecodingLogger.name = this;
            eventRecodingLogger.logger = legacyAccountDto;
            eventRecodingLogger.eventQueue = switchPreference;
            switchPreference.mOnClickListener = eventRecodingLogger;
        }
        Preference findPreference2 = findPreference("openpgp_key");
        findPreference2.getClass();
        OpenPgpKeyPreference openPgpKeyPreference = (OpenPgpKeyPreference) findPreference2;
        openPgpKeyPreference.setAndPersist(legacyAccountDto.getOpenPgpKey());
        openPgpKeyPreference.refreshTitleAndSummary();
        OpenPgpApiManager openPgpApiManager = (OpenPgpApiManager) this.openPgpApiManager$delegate.getValue();
        openPgpKeyPreference.openPgpApiManager = openPgpApiManager;
        openPgpApiManager.setOpenPgpProvider(openPgpProvider, openPgpKeyPreference);
        openPgpKeyPreference.refreshTitleAndSummary();
        openPgpKeyPreference.intentSenderFragment = this;
        Identity identity = legacyAccountDto.getIdentity(0);
        StringBuilder sb = new StringBuilder();
        String str2 = identity.name;
        if (str2 != null && str2.length() != 0) {
            sb.append(str2);
            sb.append(" ");
        }
        sb.append("<");
        openPgpKeyPreference.defaultUserId = CameraDevices$CC.m(sb, identity.email, ">");
        openPgpKeyPreference.showAutocryptHint = true;
        Preference findPreference3 = findPreference("autocrypt_transfer");
        findPreference3.getClass();
        findPreference3.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1
            public final /* synthetic */ AccountSettingsFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                int i3 = i;
                LegacyAccountDto legacyAccountDto2 = legacyAccountDto;
                AccountSettingsFragment accountSettingsFragment = this.this$0;
                switch (i3) {
                    case 0:
                        int i4 = AutocryptKeyTransferActivity.$r8$clinit;
                        Context requireContext = accountSettingsFragment.requireContext();
                        String str22 = legacyAccountDto2.uuid;
                        str22.getClass();
                        Intent intent = new Intent(requireContext, (Class<?>) AutocryptKeyTransferActivity.class);
                        intent.putExtra("account", str22);
                        accountSettingsFragment.startActivity(intent);
                        return true;
                    default:
                        preference.mOnClickListener = null;
                        int i5 = AccountSettingsFragment.$r8$clinit;
                        legacyAccountDto2.setOpenPgpProvider(null);
                        legacyAccountDto2.setOpenPgpKey(0L);
                        AccountSettingsDataStore accountSettingsDataStore2 = accountSettingsFragment.dataStore;
                        if (accountSettingsDataStore2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("dataStore");
                            throw null;
                        }
                        accountSettingsDataStore2.saveSettingsInBackground();
                        accountSettingsFragment.configureCryptoPreferences(legacyAccountDto2);
                        return true;
                }
            }
        };
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doPositiveClick(int i) {
        requireActivity().finish();
        ((DefaultBackgroundAccountRemover) this.accountRemover$delegate.getValue()).removeAccountAsync(getAccountUuid());
    }

    public final LegacyAccountDto getAccount() {
        AccountSettingsViewModel accountSettingsViewModel = (AccountSettingsViewModel) this.viewModel$delegate.getValue();
        String accountUuid = getAccountUuid();
        accountSettingsViewModel.getClass();
        accountUuid.getClass();
        MutableLiveData mutableLiveData = accountSettingsViewModel.accountLiveData;
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) mutableLiveData.getValue();
        if (legacyAccountDto != null) {
            return legacyAccountDto;
        }
        LegacyAccountDto account = ((Preferences) accountSettingsViewModel.accountManager).getAccount(accountUuid);
        accountSettingsViewModel.accountUuid = accountUuid;
        mutableLiveData.setValue(account);
        if (account != null) {
            return account;
        }
        Regex$$ExternalSyntheticBUOutline0.m(accountUuid, " not found", "Account ");
        return null;
    }

    public final String getAccountUuid() {
        return (String) this.accountUuid$delegate.getValue();
    }

    public final MessagingController getMessagingController$4() {
        return (MessagingController) this.messagingController$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated() {
        this.mCalled = true;
        requireActivity().setTitle(this.title);
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        Preference findPreference = findPreference("openpgp_key");
        OpenPgpKeyPreference openPgpKeyPreference = findPreference instanceof OpenPgpKeyPreference ? (OpenPgpKeyPreference) findPreference : null;
        if (openPgpKeyPreference != null) {
            if (i == 9998) {
                OpenPgpApiManager openPgpApiManager = openPgpKeyPreference.openPgpApiManager;
                openPgpApiManager.userInteractionPendingIntent = null;
                openPgpApiManager.refreshConnection();
                return;
            } else if (i == 9999) {
                if (i2 == -1) {
                    openPgpKeyPreference.cachedActivityResultData = intent;
                    OpenPgpApiManager.OpenPgpProviderState openPgpProviderState = openPgpKeyPreference.openPgpApiManager.openPgpProviderState;
                    if (openPgpProviderState == OpenPgpApiManager.OpenPgpProviderState.OK || openPgpProviderState == OpenPgpApiManager.OpenPgpProviderState.UI_REQUIRED) {
                        openPgpKeyPreference.apiRetrievePendingIntentAndKeyInfo();
                        return;
                    }
                    return;
                }
                return;
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat
    public final void onCreatePreferencesFix(String str, Bundle bundle) {
        Preference findPreference;
        Preference findPreference2;
        final LegacyAccountDto account = getAccount();
        AccountSettingsDataStoreFactory accountSettingsDataStoreFactory = (AccountSettingsDataStoreFactory) this.dataStoreFactory$delegate.getValue();
        accountSettingsDataStoreFactory.getClass();
        AccountSettingsDataStore accountSettingsDataStore = new AccountSettingsDataStore(accountSettingsDataStoreFactory.preferences, accountSettingsDataStoreFactory.executorService, account, accountSettingsDataStoreFactory.jobManager, accountSettingsDataStoreFactory.notificationChannelManager, accountSettingsDataStoreFactory.notificationController, accountSettingsDataStoreFactory.messagingController);
        this.dataStore = accountSettingsDataStore;
        this.mPreferenceManager.mPreferenceDataStore = accountSettingsDataStore;
        setPreferencesFromResource(str, R.xml.account_settings);
        this.title = this.mPreferenceManager.mPreferenceScreen.mTitle;
        Preference findPreference3 = findPreference("general");
        final int i = 3;
        if (findPreference3 != null) {
            findPreference3.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$initializeSearch$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i2 = i;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i2) {
                        case 0:
                            int i3 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSearchSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/search/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$SearchSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSearchSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSearchSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSearchSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 1:
                            int i4 = AccountSetupComposition.$r8$clinit;
                            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
                            String accountUuid = accountSettingsFragment.getAccountUuid();
                            Intent intent = new Intent(requireActivity, (Class<?>) AccountSetupComposition.class);
                            intent.setAction("android.intent.action.EDIT");
                            intent.putExtra("account", accountUuid);
                            requireActivity.startActivity(intent);
                            break;
                        case 2:
                            int i5 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountFetchingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/fetching_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$FetchingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountFetchingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountFetchingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountFetchingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 3:
                            int i6 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/general/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$GeneralSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSettings(accountUuid=", this.accountUuid, ")");
                                }
                            });
                            break;
                        case 4:
                            int i7 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditIncomingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        case 5:
                            AppCompatActivity requireActivity2 = accountSettingsFragment.requireActivity();
                            String accountUuid2 = accountSettingsFragment.getAccountUuid();
                            int i8 = ManageIdentities.$r8$clinit;
                            Intent intent2 = new Intent(requireActivity2, (Class<?>) ManageIdentities.class);
                            intent2.putExtra("com.fsck.k9.ChooseIdentity_account", accountUuid2);
                            requireActivity2.startActivity(intent2);
                            break;
                        case 6:
                            int i9 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditOutgoingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        default:
                            int i10 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountReadingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/reading_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$ReadingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountReadingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountReadingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountReadingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                    }
                    return true;
                }
            };
        }
        Preference findPreference4 = findPreference("reading_mail");
        if (findPreference4 != null) {
            final int i2 = 7;
            findPreference4.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$initializeSearch$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i22 = i2;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i22) {
                        case 0:
                            int i3 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSearchSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/search/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$SearchSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSearchSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSearchSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSearchSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 1:
                            int i4 = AccountSetupComposition.$r8$clinit;
                            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
                            String accountUuid = accountSettingsFragment.getAccountUuid();
                            Intent intent = new Intent(requireActivity, (Class<?>) AccountSetupComposition.class);
                            intent.setAction("android.intent.action.EDIT");
                            intent.putExtra("account", accountUuid);
                            requireActivity.startActivity(intent);
                            break;
                        case 2:
                            int i5 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountFetchingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/fetching_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$FetchingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountFetchingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountFetchingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountFetchingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 3:
                            int i6 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/general/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$GeneralSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSettings(accountUuid=", this.accountUuid, ")");
                                }
                            });
                            break;
                        case 4:
                            int i7 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditIncomingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        case 5:
                            AppCompatActivity requireActivity2 = accountSettingsFragment.requireActivity();
                            String accountUuid2 = accountSettingsFragment.getAccountUuid();
                            int i8 = ManageIdentities.$r8$clinit;
                            Intent intent2 = new Intent(requireActivity2, (Class<?>) ManageIdentities.class);
                            intent2.putExtra("com.fsck.k9.ChooseIdentity_account", accountUuid2);
                            requireActivity2.startActivity(intent2);
                            break;
                        case 6:
                            int i9 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditOutgoingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        default:
                            int i10 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountReadingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/reading_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$ReadingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountReadingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountReadingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountReadingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                    }
                    return true;
                }
            };
        }
        Preference findPreference5 = findPreference("fetching_mail");
        final int i3 = 2;
        if (findPreference5 != null) {
            findPreference5.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$initializeSearch$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i22 = i3;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i22) {
                        case 0:
                            int i32 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSearchSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/search/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$SearchSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSearchSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSearchSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSearchSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 1:
                            int i4 = AccountSetupComposition.$r8$clinit;
                            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
                            String accountUuid = accountSettingsFragment.getAccountUuid();
                            Intent intent = new Intent(requireActivity, (Class<?>) AccountSetupComposition.class);
                            intent.setAction("android.intent.action.EDIT");
                            intent.putExtra("account", accountUuid);
                            requireActivity.startActivity(intent);
                            break;
                        case 2:
                            int i5 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountFetchingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/fetching_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$FetchingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountFetchingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountFetchingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountFetchingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 3:
                            int i6 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/general/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$GeneralSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSettings(accountUuid=", this.accountUuid, ")");
                                }
                            });
                            break;
                        case 4:
                            int i7 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditIncomingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        case 5:
                            AppCompatActivity requireActivity2 = accountSettingsFragment.requireActivity();
                            String accountUuid2 = accountSettingsFragment.getAccountUuid();
                            int i8 = ManageIdentities.$r8$clinit;
                            Intent intent2 = new Intent(requireActivity2, (Class<?>) ManageIdentities.class);
                            intent2.putExtra("com.fsck.k9.ChooseIdentity_account", accountUuid2);
                            requireActivity2.startActivity(intent2);
                            break;
                        case 6:
                            int i9 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditOutgoingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        default:
                            int i10 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountReadingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/reading_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$ReadingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountReadingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountReadingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountReadingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                    }
                    return true;
                }
            };
        }
        Preference findPreference6 = findPreference("search");
        final int i4 = 0;
        if (findPreference6 != null) {
            findPreference6.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$initializeSearch$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i22 = i4;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i22) {
                        case 0:
                            int i32 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSearchSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/search/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$SearchSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSearchSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSearchSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSearchSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 1:
                            int i42 = AccountSetupComposition.$r8$clinit;
                            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
                            String accountUuid = accountSettingsFragment.getAccountUuid();
                            Intent intent = new Intent(requireActivity, (Class<?>) AccountSetupComposition.class);
                            intent.setAction("android.intent.action.EDIT");
                            intent.putExtra("account", accountUuid);
                            requireActivity.startActivity(intent);
                            break;
                        case 2:
                            int i5 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountFetchingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/fetching_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$FetchingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountFetchingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountFetchingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountFetchingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 3:
                            int i6 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/general/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$GeneralSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSettings(accountUuid=", this.accountUuid, ")");
                                }
                            });
                            break;
                        case 4:
                            int i7 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditIncomingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        case 5:
                            AppCompatActivity requireActivity2 = accountSettingsFragment.requireActivity();
                            String accountUuid2 = accountSettingsFragment.getAccountUuid();
                            int i8 = ManageIdentities.$r8$clinit;
                            Intent intent2 = new Intent(requireActivity2, (Class<?>) ManageIdentities.class);
                            intent2.putExtra("com.fsck.k9.ChooseIdentity_account", accountUuid2);
                            requireActivity2.startActivity(intent2);
                            break;
                        case 6:
                            int i9 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditOutgoingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        default:
                            int i10 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountReadingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/reading_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$ReadingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountReadingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountReadingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountReadingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                    }
                    return true;
                }
            };
        }
        Preference findPreference7 = findPreference("incoming");
        if (findPreference7 != null) {
            final int i5 = 4;
            findPreference7.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$initializeSearch$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i22 = i5;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i22) {
                        case 0:
                            int i32 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSearchSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/search/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$SearchSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSearchSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSearchSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSearchSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 1:
                            int i42 = AccountSetupComposition.$r8$clinit;
                            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
                            String accountUuid = accountSettingsFragment.getAccountUuid();
                            Intent intent = new Intent(requireActivity, (Class<?>) AccountSetupComposition.class);
                            intent.setAction("android.intent.action.EDIT");
                            intent.putExtra("account", accountUuid);
                            requireActivity.startActivity(intent);
                            break;
                        case 2:
                            int i52 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountFetchingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/fetching_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$FetchingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountFetchingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountFetchingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountFetchingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 3:
                            int i6 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/general/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$GeneralSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSettings(accountUuid=", this.accountUuid, ")");
                                }
                            });
                            break;
                        case 4:
                            int i7 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditIncomingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        case 5:
                            AppCompatActivity requireActivity2 = accountSettingsFragment.requireActivity();
                            String accountUuid2 = accountSettingsFragment.getAccountUuid();
                            int i8 = ManageIdentities.$r8$clinit;
                            Intent intent2 = new Intent(requireActivity2, (Class<?>) ManageIdentities.class);
                            intent2.putExtra("com.fsck.k9.ChooseIdentity_account", accountUuid2);
                            requireActivity2.startActivity(intent2);
                            break;
                        case 6:
                            int i9 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditOutgoingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        default:
                            int i10 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountReadingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/reading_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$ReadingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountReadingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountReadingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountReadingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                    }
                    return true;
                }
            };
        }
        Preference findPreference8 = findPreference("composition");
        final int i6 = 1;
        if (findPreference8 != null) {
            findPreference8.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$initializeSearch$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i22 = i6;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i22) {
                        case 0:
                            int i32 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSearchSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/search/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$SearchSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSearchSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSearchSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSearchSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 1:
                            int i42 = AccountSetupComposition.$r8$clinit;
                            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
                            String accountUuid = accountSettingsFragment.getAccountUuid();
                            Intent intent = new Intent(requireActivity, (Class<?>) AccountSetupComposition.class);
                            intent.setAction("android.intent.action.EDIT");
                            intent.putExtra("account", accountUuid);
                            requireActivity.startActivity(intent);
                            break;
                        case 2:
                            int i52 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountFetchingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/fetching_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$FetchingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountFetchingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountFetchingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountFetchingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 3:
                            int i62 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/general/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$GeneralSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSettings(accountUuid=", this.accountUuid, ")");
                                }
                            });
                            break;
                        case 4:
                            int i7 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditIncomingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        case 5:
                            AppCompatActivity requireActivity2 = accountSettingsFragment.requireActivity();
                            String accountUuid2 = accountSettingsFragment.getAccountUuid();
                            int i8 = ManageIdentities.$r8$clinit;
                            Intent intent2 = new Intent(requireActivity2, (Class<?>) ManageIdentities.class);
                            intent2.putExtra("com.fsck.k9.ChooseIdentity_account", accountUuid2);
                            requireActivity2.startActivity(intent2);
                            break;
                        case 6:
                            int i9 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditOutgoingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        default:
                            int i10 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountReadingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/reading_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$ReadingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountReadingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountReadingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountReadingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                    }
                    return true;
                }
            };
        }
        Preference findPreference9 = findPreference("manage_identities");
        if (findPreference9 != null) {
            final int i7 = 5;
            findPreference9.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$initializeSearch$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i22 = i7;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i22) {
                        case 0:
                            int i32 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSearchSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/search/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$SearchSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSearchSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSearchSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSearchSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 1:
                            int i42 = AccountSetupComposition.$r8$clinit;
                            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
                            String accountUuid = accountSettingsFragment.getAccountUuid();
                            Intent intent = new Intent(requireActivity, (Class<?>) AccountSetupComposition.class);
                            intent.setAction("android.intent.action.EDIT");
                            intent.putExtra("account", accountUuid);
                            requireActivity.startActivity(intent);
                            break;
                        case 2:
                            int i52 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountFetchingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/fetching_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$FetchingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountFetchingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountFetchingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountFetchingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 3:
                            int i62 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/general/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$GeneralSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSettings(accountUuid=", this.accountUuid, ")");
                                }
                            });
                            break;
                        case 4:
                            int i72 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditIncomingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        case 5:
                            AppCompatActivity requireActivity2 = accountSettingsFragment.requireActivity();
                            String accountUuid2 = accountSettingsFragment.getAccountUuid();
                            int i8 = ManageIdentities.$r8$clinit;
                            Intent intent2 = new Intent(requireActivity2, (Class<?>) ManageIdentities.class);
                            intent2.putExtra("com.fsck.k9.ChooseIdentity_account", accountUuid2);
                            requireActivity2.startActivity(intent2);
                            break;
                        case 6:
                            int i9 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditOutgoingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        default:
                            int i10 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountReadingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/reading_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$ReadingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountReadingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountReadingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountReadingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                    }
                    return true;
                }
            };
        }
        Preference findPreference10 = findPreference("upload_sent_messages");
        if (findPreference10 != null && !getMessagingController$4().getBackend(account).getSupportsUpload()) {
            RelationUtil.remove(findPreference10);
        }
        Preference findPreference11 = findPreference("outgoing");
        if (findPreference11 != null) {
            final int i8 = 6;
            findPreference11.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$initializeSearch$$inlined$onClick$1
                public final /* synthetic */ AccountSettingsFragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    int i22 = i8;
                    AccountSettingsFragment accountSettingsFragment = this.this$0;
                    switch (i22) {
                        case 0:
                            int i32 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSearchSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/search/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$SearchSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSearchSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSearchSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSearchSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 1:
                            int i42 = AccountSetupComposition.$r8$clinit;
                            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
                            String accountUuid = accountSettingsFragment.getAccountUuid();
                            Intent intent = new Intent(requireActivity, (Class<?>) AccountSetupComposition.class);
                            intent.setAction("android.intent.action.EDIT");
                            intent.putExtra("account", accountUuid);
                            requireActivity.startActivity(intent);
                            break;
                        case 2:
                            int i52 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountFetchingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/fetching_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$FetchingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountFetchingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountFetchingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountFetchingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                        case 3:
                            int i62 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/general/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$GeneralSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountSettings(accountUuid=", this.accountUuid, ")");
                                }
                            });
                            break;
                        case 4:
                            int i72 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditIncomingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        case 5:
                            AppCompatActivity requireActivity2 = accountSettingsFragment.requireActivity();
                            String accountUuid2 = accountSettingsFragment.getAccountUuid();
                            int i82 = ManageIdentities.$r8$clinit;
                            Intent intent2 = new Intent(requireActivity2, (Class<?>) ManageIdentities.class);
                            intent2.putExtra("com.fsck.k9.ChooseIdentity_account", accountUuid2);
                            requireActivity2.startActivity(intent2);
                            break;
                        case 6:
                            int i9 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new FeatureLauncherTarget$AccountEditOutgoingSettings(accountSettingsFragment.getAccountUuid()));
                            break;
                        default:
                            int i10 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(accountSettingsFragment.requireActivity(), new JsonUtil$Field(accountSettingsFragment.getAccountUuid()) { // from class: app.k9mail.feature.launcher.FeatureLauncherTarget$AccountReadingMailSettings
                                public final String accountUuid;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(Uri.parse("app://account/settings/reading_mail/".concat(r3)), null);
                                    r3.getClass();
                                    new AccountSettingsRoute$ReadingMailSettings(r3);
                                    this.accountUuid = r3;
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return (obj instanceof FeatureLauncherTarget$AccountReadingMailSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountReadingMailSettings) obj).accountUuid);
                                }

                                public final int hashCode() {
                                    return this.accountUuid.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("AccountReadingMailSettings(accountUuid=", this.accountUuid, ")");
                                }
                            }, accountSettingsFragment.launcherForActivityResult);
                            break;
                    }
                    return true;
                }
            };
        }
        Preference findPreference12 = findPreference("quote_style");
        if (findPreference12 != null) {
            findPreference12.mOnChangeListener = new MaterialButton$$ExternalSyntheticLambda0(i3, findPreference12);
        }
        Preference findPreference13 = findPreference("delete_policy");
        Continuation continuation = null;
        ListPreference listPreference = findPreference13 instanceof ListPreference ? (ListPreference) findPreference13 : null;
        if (listPreference != null && !getMessagingController$4().getBackend(account).getSupportsFlags()) {
            CharSequence[] charSequenceArr = listPreference.mEntryValues;
            charSequenceArr.getClass();
            int indexOf = ArraysKt___ArraysKt.indexOf(charSequenceArr, "MARK_AS_READ");
            CharSequence[] charSequenceArr2 = listPreference.mEntries;
            charSequenceArr2.getClass();
            ArrayList arrayList = new ArrayList();
            int length = charSequenceArr2.length;
            int i9 = 0;
            int i10 = 0;
            while (i9 < length) {
                CharSequence charSequence = charSequenceArr2[i9];
                int i11 = i10 + 1;
                if (i10 != indexOf) {
                    arrayList.add(charSequence);
                }
                i9++;
                i10 = i11;
            }
            listPreference.setEntries((CharSequence[]) arrayList.toArray(new CharSequence[0]));
            CharSequence[] charSequenceArr3 = listPreference.mEntryValues;
            charSequenceArr3.getClass();
            ArrayList arrayList2 = new ArrayList();
            int length2 = charSequenceArr3.length;
            int i12 = 0;
            int i13 = 0;
            while (i12 < length2) {
                CharSequence charSequence2 = charSequenceArr3[i12];
                int i14 = i13 + 1;
                if (i13 != indexOf) {
                    arrayList2.add(charSequence2);
                }
                i12++;
                i13 = i14;
            }
            listPreference.mEntryValues = (CharSequence[]) arrayList2.toArray(new CharSequence[0]);
        }
        Preference findPreference14 = findPreference("expunge_policy");
        if (findPreference14 != null && !getMessagingController$4().getBackend(account).getSupportsExpunge()) {
            RelationUtil.remove(findPreference14);
        }
        Preference findPreference15 = findPreference("account_message_age");
        if (findPreference15 != null && !getMessagingController$4().getBackend(account).getSupportsSearchByDate()) {
            RelationUtil.remove(findPreference15);
        }
        if (!getMessagingController$4().getBackend(account).isPushCapable() && (findPreference2 = findPreference("push_advanced")) != null) {
            RelationUtil.remove(findPreference2);
        }
        if (findPreference("openpgp") != null) {
            configureCryptoPreferences(account);
        }
        if (findPreference("folders") != null) {
            if (!getMessagingController$4().getBackend(account).getSupportsFolderSubscriptions()) {
                RelationUtil.remove(findPreference("subscribed_folders_only"));
            }
            if (!getMessagingController$4().getBackend(account).getSupportsMove()) {
                RelationUtil.remove(findPreference("archive_folder"));
                RelationUtil.remove(findPreference("drafts_folder"));
                RelationUtil.remove(findPreference("sent_folder"));
                RelationUtil.remove(findPreference("spam_folder"));
                RelationUtil.remove(findPreference("trash_folder"));
            }
            AccountSettingsViewModel accountSettingsViewModel = (AccountSettingsViewModel) this.viewModel$delegate.getValue();
            accountSettingsViewModel.getClass();
            MutableLiveData mutableLiveData = accountSettingsViewModel.foldersLiveData;
            if (mutableLiveData.getValue() == null) {
                JobKt.launch$default(ViewModelKt.getViewModelScope(accountSettingsViewModel), null, null, new Preferences$getAccountsFlow$1(accountSettingsViewModel, account, continuation, 12), 3);
            }
            mutableLiveData.observe(this, new BaseActivity$sam$androidx_lifecycle_Observer$0(10, new AbstractMap$$ExternalSyntheticLambda0(19, this)));
        }
        if (!((AndroidVibrator) ((Vibrator) this.vibrator$delegate.getValue())).vibrator.hasVibrator() && (findPreference = findPreference("account_combined_vibration")) != null) {
            RelationUtil.remove(findPreference);
        }
        if (Build.VERSION.SDK_INT < 26) {
            RelationUtil.remove(findPreference("notification_channels"));
            return;
        }
        NotificationSoundPreference notificationSoundPreference = (NotificationSoundPreference) findPreference("account_ringtone");
        if (notificationSoundPreference != null) {
            this.notificationSoundPreference = notificationSoundPreference;
        }
        ListPreference listPreference2 = (ListPreference) findPreference("notification_light");
        if (listPreference2 != null) {
            this.notificationLightPreference = listPreference2;
        }
        VibrationPreference vibrationPreference = (VibrationPreference) findPreference("account_combined_vibration");
        if (vibrationPreference != null) {
            this.notificationVibrationPreference = vibrationPreference;
        }
        NotificationsPreference notificationsPreference = (NotificationsPreference) findPreference("open_notification_settings_messages");
        if (notificationsPreference != null) {
            notificationsPreference.notificationChannelIdProvider = new Function0(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$$ExternalSyntheticLambda0
                public final /* synthetic */ AccountSettingsFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i15 = i4;
                    LegacyAccountDto legacyAccountDto = account;
                    AccountSettingsFragment accountSettingsFragment = this.f$0;
                    switch (i15) {
                        case 0:
                            int i16 = AccountSettingsFragment.$r8$clinit;
                            ((NotificationChannelManager) accountSettingsFragment.notificationChannelManager$delegate.getValue()).getClass();
                            return NotificationChannelManager.getChannelIdFor(legacyAccountDto, NotificationChannelManager.ChannelType.MESSAGES);
                        default:
                            int i17 = AccountSettingsFragment.$r8$clinit;
                            ((NotificationChannelManager) accountSettingsFragment.notificationChannelManager$delegate.getValue()).getClass();
                            return NotificationChannelManager.getChannelIdFor(legacyAccountDto, NotificationChannelManager.ChannelType.MISCELLANEOUS);
                    }
                }
            };
        }
        NotificationsPreference notificationsPreference2 = (NotificationsPreference) findPreference("open_notification_settings_miscellaneous");
        if (notificationsPreference2 != null) {
            notificationsPreference2.notificationChannelIdProvider = new Function0(this) { // from class: com.fsck.k9.ui.settings.account.AccountSettingsFragment$$ExternalSyntheticLambda0
                public final /* synthetic */ AccountSettingsFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i15 = i6;
                    LegacyAccountDto legacyAccountDto = account;
                    AccountSettingsFragment accountSettingsFragment = this.f$0;
                    switch (i15) {
                        case 0:
                            int i16 = AccountSettingsFragment.$r8$clinit;
                            ((NotificationChannelManager) accountSettingsFragment.notificationChannelManager$delegate.getValue()).getClass();
                            return NotificationChannelManager.getChannelIdFor(legacyAccountDto, NotificationChannelManager.ChannelType.MESSAGES);
                        default:
                            int i17 = AccountSettingsFragment.$r8$clinit;
                            ((NotificationChannelManager) accountSettingsFragment.notificationChannelManager$delegate.getValue()).getClass();
                            return NotificationChannelManager.getChannelIdFor(legacyAccountDto, NotificationChannelManager.ChannelType.MISCELLANEOUS);
                    }
                }
            };
        }
        updateNotificationPreferences(account);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        LegacyAccountDto account = getAccount();
        if (findPreference("openpgp") != null) {
            configureCryptoPreferences(account);
        }
        NotificationSoundPreference notificationSoundPreference = this.notificationSoundPreference;
        if (notificationSoundPreference != null) {
            if (notificationSoundPreference.receivedActivityResultJustNow) {
                notificationSoundPreference.receivedActivityResultJustNow = false;
            } else {
                updateNotificationPreferences(account);
            }
        }
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat, androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        requireActivity().addMenuProvider(new FragmentManager.AnonymousClass2(7, this), getViewLifecycleOwner());
    }

    public final void setFolders(String str, RemoteFolderInfo remoteFolderInfo, FolderType folderType) {
        String string;
        String str2;
        Preference findPreference = findPreference(str);
        FolderListPreference folderListPreference = findPreference instanceof FolderListPreference ? (FolderListPreference) findPreference : null;
        if (folderListPreference == null) {
            return;
        }
        RemoteFolder remoteFolder = (RemoteFolder) remoteFolderInfo.automaticSpecialFolders.get(folderType);
        List list = remoteFolderInfo.folders;
        Context context = folderListPreference.mContext;
        if (remoteFolder != null) {
            string = ((FolderNameFormatter) folderListPreference.folderNameFormatter$delegate.getValue()).displayName(remoteFolder);
        } else {
            string = context.getString(R.string.account_settings_no_folder_selected);
            string.getClass();
        }
        if (remoteFolder == null || (str2 = String.valueOf(remoteFolder.id)) == null) {
            str2 = "";
        }
        String concat = "AUTOMATIC|".concat(str2);
        String string2 = context.getString(R.string.account_settings_automatic_special_folder, string);
        string2.getClass();
        SpannableString spannableString = new SpannableString(string2);
        spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 0);
        folderListPreference.automaticFolderOption = spannableString;
        folderListPreference.mEntries = (CharSequence[]) CollectionsKt.plus((Collection) CollectionsKt.plus(IntOffsetKt.listOf(spannableString), folderListPreference.noFolderSelectedName), (Iterable) folderListPreference.getFolderDisplayNames(list)).toArray(new CharSequence[0]);
        folderListPreference.mEntryValues = (CharSequence[]) CollectionsKt.plus((Collection) CollectionsKt.plus(IntOffsetKt.listOf(concat), "MANUAL|"), (Iterable) FolderListPreference.getFolderValues(list)).toArray(new String[0]);
        folderListPreference.setEnabled(true);
    }

    public final void updateNotificationPreferences(LegacyAccountDto legacyAccountDto) {
        ((NotificationSettingsUpdater) this.notificationSettingsUpdater$delegate.getValue()).updateNotificationSettings(legacyAccountDto);
        NotificationSettings notificationSettings = legacyAccountDto.getNotificationSettings();
        NotificationSoundPreference notificationSoundPreference = this.notificationSoundPreference;
        if (notificationSoundPreference != null) {
            String str = notificationSettings.ringtone;
            Uri parse = str != null ? Uri.parse(str) : null;
            String uri = parse != null ? parse.toString() : null;
            if (uri == null) {
                uri = "";
            }
            notificationSoundPreference.persistString(uri);
        }
        ListPreference listPreference = this.notificationLightPreference;
        if (listPreference != null) {
            listPreference.setValue(notificationSettings.light.name());
        }
        VibrationPreference vibrationPreference = this.notificationVibrationPreference;
        if (vibrationPreference != null) {
            NotificationVibration notificationVibration = notificationSettings.vibration;
            boolean z = notificationVibration.isEnabled;
            VibratePattern vibratePattern = notificationVibration.pattern;
            int i = notificationVibration.repeatCount;
            vibratePattern.getClass();
            vibrationPreference.isVibrationEnabled = z;
            vibrationPreference.vibratePattern = vibratePattern;
            vibrationPreference.vibrationTimes = i;
            vibrationPreference.persistString(ActionBar.encode(z, vibratePattern, i));
            vibrationPreference.updateSummary();
        }
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void dialogCancelled(int i) {
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doNegativeClick(int i) {
    }
}
