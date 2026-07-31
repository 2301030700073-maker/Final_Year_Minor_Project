package org.schabi.newpipe.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentManager;
import androidx.preference.Preference;
import androidx.preference.PreferenceManager;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import okhttp3.Cookie;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda4;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.local.BaseLocalListFragment$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.local.subscription.SubscriptionsImportExportHelper;
import org.schabi.newpipe.settings.export.BackupFileLocator;
import org.schabi.newpipe.settings.export.ImportExportManager;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class BackupRestoreSettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final SimpleDateFormat exportDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US);
    public String importExportDataPathKey;
    public SubscriptionsImportExportHelper importExportHelper;
    public ImportExportManager manager;
    public final ActivityResultLauncher requestExportPathLauncher;
    public final ActivityResultLauncher requestImportPathLauncher;

    public BackupRestoreSettingsFragment() {
        final int i = 0;
        this.requestImportPathLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ BackupRestoreSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.AutoCloseable, java.util.concurrent.ExecutorService] */
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i2 = i;
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i2) {
                    case 0:
                        int i3 = BackupRestoreSettingsFragment.$r8$clinit;
                        int i4 = activityResult.resultCode;
                        Intent intent = activityResult.data;
                        if (i4 != -1 || intent == null) {
                            return;
                        }
                        Uri data = intent.getData();
                        StoredFileHelper storedFileHelper = new StoredFileHelper(backupRestoreSettingsFragment.requireContext(), intent.getData(), "application/zip");
                        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.requireActivity());
                        builder.setMessage(R.string.override_current_data);
                        builder.setPositiveButton(R.string.ok, new ErrorActivity$$ExternalSyntheticLambda4(4, backupRestoreSettingsFragment, storedFileHelper, data)).setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(3)).show();
                        return;
                    default:
                        int i5 = BackupRestoreSettingsFragment.$r8$clinit;
                        int i6 = activityResult.resultCode;
                        Intent intent2 = activityResult.data;
                        if (i6 != -1 || intent2 == null) {
                            return;
                        }
                        Uri data2 = intent2.getData();
                        StoredFileHelper storedFileHelper2 = new StoredFileHelper(backupRestoreSettingsFragment.requireContext(), intent2.getData(), "application/zip");
                        try {
                            ?? newSingleThreadExecutor = Executors.newSingleThreadExecutor();
                            try {
                                newSingleThreadExecutor.submit(new BaseLocalListFragment$$ExternalSyntheticLambda0(2)).get();
                                backupRestoreSettingsFragment.manager.exportDatabase(PreferenceManager.getDefaultSharedPreferences(backupRestoreSettingsFragment.requireContext()), storedFileHelper2);
                                backupRestoreSettingsFragment.defaultPreferences.edit().putString(backupRestoreSettingsFragment.importExportDataPathKey, data2.toString()).apply();
                                Toast.makeText(backupRestoreSettingsFragment.requireContext(), R.string.export_complete_toast, 0).show();
                                if (newSingleThreadExecutor instanceof AutoCloseable) {
                                    newSingleThreadExecutor.close();
                                    return;
                                } else {
                                    OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) newSingleThreadExecutor);
                                    return;
                                }
                            } catch (Throwable th) {
                                if (newSingleThreadExecutor == 0) {
                                    throw th;
                                }
                                try {
                                    if (newSingleThreadExecutor instanceof AutoCloseable) {
                                        newSingleThreadExecutor.close();
                                    } else {
                                        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) newSingleThreadExecutor);
                                    }
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                            }
                        } catch (Exception e) {
                            ErrorInfo errorInfo = new ErrorInfo(e, UserAction.DATABASE_IMPORT_EXPORT, "Exporting database and settings", (Integer) null, 24);
                            ErrorUtil.Companion.getClass();
                            ErrorUtil.Companion.showSnackbar(backupRestoreSettingsFragment, errorInfo);
                            return;
                        }
                }
            }
        });
        final int i2 = 1;
        this.requestExportPathLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ BackupRestoreSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.AutoCloseable, java.util.concurrent.ExecutorService] */
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i22 = i2;
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i22) {
                    case 0:
                        int i3 = BackupRestoreSettingsFragment.$r8$clinit;
                        int i4 = activityResult.resultCode;
                        Intent intent = activityResult.data;
                        if (i4 != -1 || intent == null) {
                            return;
                        }
                        Uri data = intent.getData();
                        StoredFileHelper storedFileHelper = new StoredFileHelper(backupRestoreSettingsFragment.requireContext(), intent.getData(), "application/zip");
                        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.requireActivity());
                        builder.setMessage(R.string.override_current_data);
                        builder.setPositiveButton(R.string.ok, new ErrorActivity$$ExternalSyntheticLambda4(4, backupRestoreSettingsFragment, storedFileHelper, data)).setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(3)).show();
                        return;
                    default:
                        int i5 = BackupRestoreSettingsFragment.$r8$clinit;
                        int i6 = activityResult.resultCode;
                        Intent intent2 = activityResult.data;
                        if (i6 != -1 || intent2 == null) {
                            return;
                        }
                        Uri data2 = intent2.getData();
                        StoredFileHelper storedFileHelper2 = new StoredFileHelper(backupRestoreSettingsFragment.requireContext(), intent2.getData(), "application/zip");
                        try {
                            ?? newSingleThreadExecutor = Executors.newSingleThreadExecutor();
                            try {
                                newSingleThreadExecutor.submit(new BaseLocalListFragment$$ExternalSyntheticLambda0(2)).get();
                                backupRestoreSettingsFragment.manager.exportDatabase(PreferenceManager.getDefaultSharedPreferences(backupRestoreSettingsFragment.requireContext()), storedFileHelper2);
                                backupRestoreSettingsFragment.defaultPreferences.edit().putString(backupRestoreSettingsFragment.importExportDataPathKey, data2.toString()).apply();
                                Toast.makeText(backupRestoreSettingsFragment.requireContext(), R.string.export_complete_toast, 0).show();
                                if (newSingleThreadExecutor instanceof AutoCloseable) {
                                    newSingleThreadExecutor.close();
                                    return;
                                } else {
                                    OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) newSingleThreadExecutor);
                                    return;
                                }
                            } catch (Throwable th) {
                                if (newSingleThreadExecutor == 0) {
                                    throw th;
                                }
                                try {
                                    if (newSingleThreadExecutor instanceof AutoCloseable) {
                                        newSingleThreadExecutor.close();
                                    } else {
                                        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) newSingleThreadExecutor);
                                    }
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                            }
                        } catch (Exception e) {
                            ErrorInfo errorInfo = new ErrorInfo(e, UserAction.DATABASE_IMPORT_EXPORT, "Exporting database and settings", (Integer) null, 24);
                            ErrorUtil.Companion.getClass();
                            ErrorUtil.Companion.showSnackbar(backupRestoreSettingsFragment, errorInfo);
                            return;
                        }
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.importExportHelper = new SubscriptionsImportExportHelper(this);
    }

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        this.manager = new ImportExportManager(new BackupFileLocator(requireContext()));
        this.importExportDataPathKey = getString(R.string.import_export_data_path);
        addPreferencesFromResourceRegistry();
        final int i = 0;
        requirePreference(R.string.import_data).mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ BackupRestoreSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                int i2 = i;
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = this.f$0;
                switch (i2) {
                    case 0:
                        ActivityResultLauncher activityResultLauncher = backupRestoreSettingsFragment.requestImportPathLauncher;
                        Context requireContext = backupRestoreSettingsFragment.requireContext();
                        String string = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher, StoredFileHelper.applyInitialPathToPickerIntent(requireContext, StoredFileHelper.getPicker(requireContext, "application/zip"), Utils.isBlank(string) ? null : Uri.parse(string), null), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 1:
                        ActivityResultLauncher activityResultLauncher2 = backupRestoreSettingsFragment.requestExportPathLauncher;
                        Context requireContext2 = backupRestoreSettingsFragment.requireContext();
                        String str = "NewPipeData-" + backupRestoreSettingsFragment.exportDateFormat.format(new Date()) + ".zip";
                        String string2 = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher2, StoredFileHelper.getNewPicker(requireContext2, str, "application/zip", Utils.isBlank(string2) ? null : Uri.parse(string2)), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 2:
                        int i3 = BackupRestoreSettingsFragment.$r8$clinit;
                        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.getContext());
                        builder.setMessage(R.string.reset_all_settings);
                        builder.setCancelable(true);
                        int i4 = 2;
                        builder.setPositiveButton(R.string.ok, new UpdateSettingsFragment$$ExternalSyntheticLambda0(backupRestoreSettingsFragment, i4));
                        builder.setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(i4));
                        builder.create().show();
                        break;
                    case 3:
                        backupRestoreSettingsFragment.importExportHelper.onExportSelected();
                        break;
                    default:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper = backupRestoreSettingsFragment.importExportHelper;
                        ActivityResultLauncher activityResultLauncher3 = subscriptionsImportExportHelper.requestImportLauncher;
                        Context context = subscriptionsImportExportHelper.context;
                        SubscriptionFragment.Companion.getClass();
                        Cookie.Companion.launchSafe(activityResultLauncher3, StoredFileHelper.getPicker(context, SubscriptionFragment.JSON_MIME_TYPE), SubscriptionsImportExportHelper.TAG, context);
                        break;
                }
                return true;
            }
        };
        final int i2 = 1;
        requirePreference(R.string.export_data).mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ BackupRestoreSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                int i22 = i2;
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = this.f$0;
                switch (i22) {
                    case 0:
                        ActivityResultLauncher activityResultLauncher = backupRestoreSettingsFragment.requestImportPathLauncher;
                        Context requireContext = backupRestoreSettingsFragment.requireContext();
                        String string = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher, StoredFileHelper.applyInitialPathToPickerIntent(requireContext, StoredFileHelper.getPicker(requireContext, "application/zip"), Utils.isBlank(string) ? null : Uri.parse(string), null), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 1:
                        ActivityResultLauncher activityResultLauncher2 = backupRestoreSettingsFragment.requestExportPathLauncher;
                        Context requireContext2 = backupRestoreSettingsFragment.requireContext();
                        String str = "NewPipeData-" + backupRestoreSettingsFragment.exportDateFormat.format(new Date()) + ".zip";
                        String string2 = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher2, StoredFileHelper.getNewPicker(requireContext2, str, "application/zip", Utils.isBlank(string2) ? null : Uri.parse(string2)), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 2:
                        int i3 = BackupRestoreSettingsFragment.$r8$clinit;
                        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.getContext());
                        builder.setMessage(R.string.reset_all_settings);
                        builder.setCancelable(true);
                        int i4 = 2;
                        builder.setPositiveButton(R.string.ok, new UpdateSettingsFragment$$ExternalSyntheticLambda0(backupRestoreSettingsFragment, i4));
                        builder.setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(i4));
                        builder.create().show();
                        break;
                    case 3:
                        backupRestoreSettingsFragment.importExportHelper.onExportSelected();
                        break;
                    default:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper = backupRestoreSettingsFragment.importExportHelper;
                        ActivityResultLauncher activityResultLauncher3 = subscriptionsImportExportHelper.requestImportLauncher;
                        Context context = subscriptionsImportExportHelper.context;
                        SubscriptionFragment.Companion.getClass();
                        Cookie.Companion.launchSafe(activityResultLauncher3, StoredFileHelper.getPicker(context, SubscriptionFragment.JSON_MIME_TYPE), SubscriptionsImportExportHelper.TAG, context);
                        break;
                }
                return true;
            }
        };
        final int i3 = 2;
        requirePreference(R.string.reset_settings).mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ BackupRestoreSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                int i22 = i3;
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = this.f$0;
                switch (i22) {
                    case 0:
                        ActivityResultLauncher activityResultLauncher = backupRestoreSettingsFragment.requestImportPathLauncher;
                        Context requireContext = backupRestoreSettingsFragment.requireContext();
                        String string = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher, StoredFileHelper.applyInitialPathToPickerIntent(requireContext, StoredFileHelper.getPicker(requireContext, "application/zip"), Utils.isBlank(string) ? null : Uri.parse(string), null), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 1:
                        ActivityResultLauncher activityResultLauncher2 = backupRestoreSettingsFragment.requestExportPathLauncher;
                        Context requireContext2 = backupRestoreSettingsFragment.requireContext();
                        String str = "NewPipeData-" + backupRestoreSettingsFragment.exportDateFormat.format(new Date()) + ".zip";
                        String string2 = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher2, StoredFileHelper.getNewPicker(requireContext2, str, "application/zip", Utils.isBlank(string2) ? null : Uri.parse(string2)), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 2:
                        int i32 = BackupRestoreSettingsFragment.$r8$clinit;
                        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.getContext());
                        builder.setMessage(R.string.reset_all_settings);
                        builder.setCancelable(true);
                        int i4 = 2;
                        builder.setPositiveButton(R.string.ok, new UpdateSettingsFragment$$ExternalSyntheticLambda0(backupRestoreSettingsFragment, i4));
                        builder.setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(i4));
                        builder.create().show();
                        break;
                    case 3:
                        backupRestoreSettingsFragment.importExportHelper.onExportSelected();
                        break;
                    default:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper = backupRestoreSettingsFragment.importExportHelper;
                        ActivityResultLauncher activityResultLauncher3 = subscriptionsImportExportHelper.requestImportLauncher;
                        Context context = subscriptionsImportExportHelper.context;
                        SubscriptionFragment.Companion.getClass();
                        Cookie.Companion.launchSafe(activityResultLauncher3, StoredFileHelper.getPicker(context, SubscriptionFragment.JSON_MIME_TYPE), SubscriptionsImportExportHelper.TAG, context);
                        break;
                }
                return true;
            }
        };
        final int i4 = 3;
        requirePreference(R.string.export_subscriptions_key).mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ BackupRestoreSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                int i22 = i4;
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = this.f$0;
                switch (i22) {
                    case 0:
                        ActivityResultLauncher activityResultLauncher = backupRestoreSettingsFragment.requestImportPathLauncher;
                        Context requireContext = backupRestoreSettingsFragment.requireContext();
                        String string = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher, StoredFileHelper.applyInitialPathToPickerIntent(requireContext, StoredFileHelper.getPicker(requireContext, "application/zip"), Utils.isBlank(string) ? null : Uri.parse(string), null), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 1:
                        ActivityResultLauncher activityResultLauncher2 = backupRestoreSettingsFragment.requestExportPathLauncher;
                        Context requireContext2 = backupRestoreSettingsFragment.requireContext();
                        String str = "NewPipeData-" + backupRestoreSettingsFragment.exportDateFormat.format(new Date()) + ".zip";
                        String string2 = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher2, StoredFileHelper.getNewPicker(requireContext2, str, "application/zip", Utils.isBlank(string2) ? null : Uri.parse(string2)), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 2:
                        int i32 = BackupRestoreSettingsFragment.$r8$clinit;
                        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.getContext());
                        builder.setMessage(R.string.reset_all_settings);
                        builder.setCancelable(true);
                        int i42 = 2;
                        builder.setPositiveButton(R.string.ok, new UpdateSettingsFragment$$ExternalSyntheticLambda0(backupRestoreSettingsFragment, i42));
                        builder.setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(i42));
                        builder.create().show();
                        break;
                    case 3:
                        backupRestoreSettingsFragment.importExportHelper.onExportSelected();
                        break;
                    default:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper = backupRestoreSettingsFragment.importExportHelper;
                        ActivityResultLauncher activityResultLauncher3 = subscriptionsImportExportHelper.requestImportLauncher;
                        Context context = subscriptionsImportExportHelper.context;
                        SubscriptionFragment.Companion.getClass();
                        Cookie.Companion.launchSafe(activityResultLauncher3, StoredFileHelper.getPicker(context, SubscriptionFragment.JSON_MIME_TYPE), SubscriptionsImportExportHelper.TAG, context);
                        break;
                }
                return true;
            }
        };
        final int i5 = 4;
        requirePreference(R.string.import_subscriptions_key).mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ BackupRestoreSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                int i22 = i5;
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = this.f$0;
                switch (i22) {
                    case 0:
                        ActivityResultLauncher activityResultLauncher = backupRestoreSettingsFragment.requestImportPathLauncher;
                        Context requireContext = backupRestoreSettingsFragment.requireContext();
                        String string = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher, StoredFileHelper.applyInitialPathToPickerIntent(requireContext, StoredFileHelper.getPicker(requireContext, "application/zip"), Utils.isBlank(string) ? null : Uri.parse(string), null), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 1:
                        ActivityResultLauncher activityResultLauncher2 = backupRestoreSettingsFragment.requestExportPathLauncher;
                        Context requireContext2 = backupRestoreSettingsFragment.requireContext();
                        String str = "NewPipeData-" + backupRestoreSettingsFragment.exportDateFormat.format(new Date()) + ".zip";
                        String string2 = backupRestoreSettingsFragment.defaultPreferences.getString(backupRestoreSettingsFragment.importExportDataPathKey, null);
                        Cookie.Companion.launchSafe(activityResultLauncher2, StoredFileHelper.getNewPicker(requireContext2, str, "application/zip", Utils.isBlank(string2) ? null : Uri.parse(string2)), backupRestoreSettingsFragment.TAG, backupRestoreSettingsFragment.getContext());
                        break;
                    case 2:
                        int i32 = BackupRestoreSettingsFragment.$r8$clinit;
                        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.getContext());
                        builder.setMessage(R.string.reset_all_settings);
                        builder.setCancelable(true);
                        int i42 = 2;
                        builder.setPositiveButton(R.string.ok, new UpdateSettingsFragment$$ExternalSyntheticLambda0(backupRestoreSettingsFragment, i42));
                        builder.setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(i42));
                        builder.create().show();
                        break;
                    case 3:
                        backupRestoreSettingsFragment.importExportHelper.onExportSelected();
                        break;
                    default:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper = backupRestoreSettingsFragment.importExportHelper;
                        ActivityResultLauncher activityResultLauncher3 = subscriptionsImportExportHelper.requestImportLauncher;
                        Context context = subscriptionsImportExportHelper.context;
                        SubscriptionFragment.Companion.getClass();
                        Cookie.Companion.launchSafe(activityResultLauncher3, StoredFileHelper.getPicker(context, SubscriptionFragment.JSON_MIME_TYPE), SubscriptionsImportExportHelper.TAG, context);
                        break;
                }
                return true;
            }
        };
    }
}
