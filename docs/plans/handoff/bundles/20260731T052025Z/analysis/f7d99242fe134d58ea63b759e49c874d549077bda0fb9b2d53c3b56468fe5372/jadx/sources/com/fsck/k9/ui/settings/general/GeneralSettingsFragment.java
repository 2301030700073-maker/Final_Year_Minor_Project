package com.fsck.k9.ui.settings.general;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.Preference;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLite;
import androidx.work.BackoffPolicy;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import app.k9mail.feature.telemetry.noop.NoOpTelemetryManager;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.job.FileLogLimitWorkManager;
import com.fsck.k9.job.K9JobManager;
import com.fsck.k9.job.SyncDebugWorker;
import com.google.android.material.snackbar.Snackbar;
import com.takisoft.preferencex.PreferenceFragmentCompat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SafeFlow;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsFragment extends PreferenceFragmentCompat {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Fragment.AnonymousClass10 choseFileSyncDebugLogsResultContract;
    public GeneralSettingsUiState currentUiState;
    public final Lazy dataStore$delegate;
    public final Fragment.AnonymousClass10 exportLogsResultContract;
    public final Fragment.AnonymousClass10 exportSyncDebugLogsResultContract;
    public final Lazy featureFlagProvider$delegate;
    public final Lazy jobManager$delegate;
    public String rootKey;
    public Snackbar snackbar;
    public final Lazy telemetryManager$delegate;
    public final Lazy viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(26, this, new GeneralSettingsFragment$special$$inlined$inject$default$1(this, 4)));

    public GeneralSettingsFragment() {
        final int i = 0;
        GeneralSettingsFragment$special$$inlined$inject$default$1 generalSettingsFragment$special$$inlined$inject$default$1 = new GeneralSettingsFragment$special$$inlined$inject$default$1(this, i);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.dataStore$delegate = ResultKt.lazy(lazyThreadSafetyMode, generalSettingsFragment$special$$inlined$inject$default$1);
        final int i2 = 1;
        this.telemetryManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new GeneralSettingsFragment$special$$inlined$inject$default$1(this, i2));
        final int i3 = 2;
        this.featureFlagProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new GeneralSettingsFragment$special$$inlined$inject$default$1(this, i3));
        this.jobManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new GeneralSettingsFragment$special$$inlined$inject$default$1(this, 3));
        this.exportLogsResultContract = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.settings.general.GeneralSettingsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ GeneralSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ContentResolver contentResolver;
                int i4 = i;
                GeneralSettingsFragment generalSettingsFragment = this.f$0;
                Uri uri = (Uri) obj;
                switch (i4) {
                    case 0:
                        int i5 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            GeneralSettingsViewModel viewModel = generalSettingsFragment.getViewModel();
                            viewModel.getClass();
                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new Preferences$getAccountsFlow$1(viewModel, uri, (Continuation) null, 13), 3);
                            break;
                        }
                        break;
                    case 1:
                        int i6 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            GeneralSettingsViewModel viewModel2 = generalSettingsFragment.getViewModel();
                            String uri2 = uri.toString();
                            uri2.getClass();
                            viewModel2.getClass();
                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), null, null, new Preferences$getAccountsFlow$1(viewModel2, uri2, (Continuation) null, 14), 3);
                            break;
                        }
                        break;
                    default:
                        int i7 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            Context context = generalSettingsFragment.getContext();
                            if (context != null && (contentResolver = context.getContentResolver()) != null) {
                                contentResolver.takePersistableUriPermission(uri, 3);
                            }
                            K9JobManager k9JobManager = (K9JobManager) generalSettingsFragment.jobManager$delegate.getValue();
                            String uri3 = uri.toString();
                            uri3.getClass();
                            k9JobManager.getClass();
                            FileLogLimitWorkManager fileLogLimitWorkManager = k9JobManager.syncDebugFileLogManager;
                            Pair[] pairArr = {new Pair("exportUriString", uri3)};
                            Data.Builder builder = new Data.Builder(0);
                            Pair pair = pairArr[0];
                            builder.put(pair.second, (String) pair.first);
                            Data m823build = builder.m823build();
                            OneTimeWorkRequest.Builder builder2 = (OneTimeWorkRequest.Builder) new OneTimeWorkRequest.Builder(SyncDebugWorker.class).setInitialDelay(24L, TimeUnit.HOURS);
                            ((WorkSpec) builder2.workSpec).input = m823build;
                            ((Set) builder2.tags).add("sync_debug_timer");
                            OneTimeWorkRequest oneTimeWorkRequest = (OneTimeWorkRequest) ((OneTimeWorkRequest.Builder) builder2.setBackoffCriteria(BackoffPolicy.LINEAR)).build();
                            WorkManagerImpl workManagerImpl = fileLogLimitWorkManager.workManager;
                            oneTimeWorkRequest.getClass();
                            new WorkContinuationImpl(workManagerImpl, "sync_debug_timer", ExistingWorkPolicy.REPLACE, IntOffsetKt.listOf(oneTimeWorkRequest), 0).enqueue();
                            UUID uuid = oneTimeWorkRequest.id;
                            WorkSpecDao_Impl workSpecDao = workManagerImpl.mWorkDatabase.workSpecDao();
                            workSpecDao.getClass();
                            uuid.getClass();
                            List listOf = IntOffsetKt.listOf(String.valueOf(uuid));
                            StringBuilder m = Modifier.CC.m("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
                            Utf8.SafeProcessor.appendPlaceholders(listOf.size(), m);
                            m.append(")");
                            Data.Companion.observe(FlowKt.distinctUntilChanged(new SafeFlow(3, SQLite.createFlow(workSpecDao.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec"}, new SimpleActor$$ExternalSyntheticLambda0(m.toString(), listOf, workSpecDao, 23)))), generalSettingsFragment, new GeneralSettingsFragment$onCreatePreferencesFix$4(generalSettingsFragment, 1));
                            break;
                        }
                        break;
                }
            }
        }, new AuthorizationContract(i2));
        this.exportSyncDebugLogsResultContract = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.settings.general.GeneralSettingsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ GeneralSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ContentResolver contentResolver;
                int i4 = i2;
                GeneralSettingsFragment generalSettingsFragment = this.f$0;
                Uri uri = (Uri) obj;
                switch (i4) {
                    case 0:
                        int i5 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            GeneralSettingsViewModel viewModel = generalSettingsFragment.getViewModel();
                            viewModel.getClass();
                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new Preferences$getAccountsFlow$1(viewModel, uri, (Continuation) null, 13), 3);
                            break;
                        }
                        break;
                    case 1:
                        int i6 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            GeneralSettingsViewModel viewModel2 = generalSettingsFragment.getViewModel();
                            String uri2 = uri.toString();
                            uri2.getClass();
                            viewModel2.getClass();
                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), null, null, new Preferences$getAccountsFlow$1(viewModel2, uri2, (Continuation) null, 14), 3);
                            break;
                        }
                        break;
                    default:
                        int i7 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            Context context = generalSettingsFragment.getContext();
                            if (context != null && (contentResolver = context.getContentResolver()) != null) {
                                contentResolver.takePersistableUriPermission(uri, 3);
                            }
                            K9JobManager k9JobManager = (K9JobManager) generalSettingsFragment.jobManager$delegate.getValue();
                            String uri3 = uri.toString();
                            uri3.getClass();
                            k9JobManager.getClass();
                            FileLogLimitWorkManager fileLogLimitWorkManager = k9JobManager.syncDebugFileLogManager;
                            Pair[] pairArr = {new Pair("exportUriString", uri3)};
                            Data.Builder builder = new Data.Builder(0);
                            Pair pair = pairArr[0];
                            builder.put(pair.second, (String) pair.first);
                            Data m823build = builder.m823build();
                            OneTimeWorkRequest.Builder builder2 = (OneTimeWorkRequest.Builder) new OneTimeWorkRequest.Builder(SyncDebugWorker.class).setInitialDelay(24L, TimeUnit.HOURS);
                            ((WorkSpec) builder2.workSpec).input = m823build;
                            ((Set) builder2.tags).add("sync_debug_timer");
                            OneTimeWorkRequest oneTimeWorkRequest = (OneTimeWorkRequest) ((OneTimeWorkRequest.Builder) builder2.setBackoffCriteria(BackoffPolicy.LINEAR)).build();
                            WorkManagerImpl workManagerImpl = fileLogLimitWorkManager.workManager;
                            oneTimeWorkRequest.getClass();
                            new WorkContinuationImpl(workManagerImpl, "sync_debug_timer", ExistingWorkPolicy.REPLACE, IntOffsetKt.listOf(oneTimeWorkRequest), 0).enqueue();
                            UUID uuid = oneTimeWorkRequest.id;
                            WorkSpecDao_Impl workSpecDao = workManagerImpl.mWorkDatabase.workSpecDao();
                            workSpecDao.getClass();
                            uuid.getClass();
                            List listOf = IntOffsetKt.listOf(String.valueOf(uuid));
                            StringBuilder m = Modifier.CC.m("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
                            Utf8.SafeProcessor.appendPlaceholders(listOf.size(), m);
                            m.append(")");
                            Data.Companion.observe(FlowKt.distinctUntilChanged(new SafeFlow(3, SQLite.createFlow(workSpecDao.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec"}, new SimpleActor$$ExternalSyntheticLambda0(m.toString(), listOf, workSpecDao, 23)))), generalSettingsFragment, new GeneralSettingsFragment$onCreatePreferencesFix$4(generalSettingsFragment, 1));
                            break;
                        }
                        break;
                }
            }
        }, new AuthorizationContract(i2));
        this.choseFileSyncDebugLogsResultContract = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.settings.general.GeneralSettingsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ GeneralSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ContentResolver contentResolver;
                int i4 = i3;
                GeneralSettingsFragment generalSettingsFragment = this.f$0;
                Uri uri = (Uri) obj;
                switch (i4) {
                    case 0:
                        int i5 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            GeneralSettingsViewModel viewModel = generalSettingsFragment.getViewModel();
                            viewModel.getClass();
                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new Preferences$getAccountsFlow$1(viewModel, uri, (Continuation) null, 13), 3);
                            break;
                        }
                        break;
                    case 1:
                        int i6 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            GeneralSettingsViewModel viewModel2 = generalSettingsFragment.getViewModel();
                            String uri2 = uri.toString();
                            uri2.getClass();
                            viewModel2.getClass();
                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), null, null, new Preferences$getAccountsFlow$1(viewModel2, uri2, (Continuation) null, 14), 3);
                            break;
                        }
                        break;
                    default:
                        int i7 = GeneralSettingsFragment.$r8$clinit;
                        if (uri != null) {
                            Context context = generalSettingsFragment.getContext();
                            if (context != null && (contentResolver = context.getContentResolver()) != null) {
                                contentResolver.takePersistableUriPermission(uri, 3);
                            }
                            K9JobManager k9JobManager = (K9JobManager) generalSettingsFragment.jobManager$delegate.getValue();
                            String uri3 = uri.toString();
                            uri3.getClass();
                            k9JobManager.getClass();
                            FileLogLimitWorkManager fileLogLimitWorkManager = k9JobManager.syncDebugFileLogManager;
                            Pair[] pairArr = {new Pair("exportUriString", uri3)};
                            Data.Builder builder = new Data.Builder(0);
                            Pair pair = pairArr[0];
                            builder.put(pair.second, (String) pair.first);
                            Data m823build = builder.m823build();
                            OneTimeWorkRequest.Builder builder2 = (OneTimeWorkRequest.Builder) new OneTimeWorkRequest.Builder(SyncDebugWorker.class).setInitialDelay(24L, TimeUnit.HOURS);
                            ((WorkSpec) builder2.workSpec).input = m823build;
                            ((Set) builder2.tags).add("sync_debug_timer");
                            OneTimeWorkRequest oneTimeWorkRequest = (OneTimeWorkRequest) ((OneTimeWorkRequest.Builder) builder2.setBackoffCriteria(BackoffPolicy.LINEAR)).build();
                            WorkManagerImpl workManagerImpl = fileLogLimitWorkManager.workManager;
                            oneTimeWorkRequest.getClass();
                            new WorkContinuationImpl(workManagerImpl, "sync_debug_timer", ExistingWorkPolicy.REPLACE, IntOffsetKt.listOf(oneTimeWorkRequest), 0).enqueue();
                            UUID uuid = oneTimeWorkRequest.id;
                            WorkSpecDao_Impl workSpecDao = workManagerImpl.mWorkDatabase.workSpecDao();
                            workSpecDao.getClass();
                            uuid.getClass();
                            List listOf = IntOffsetKt.listOf(String.valueOf(uuid));
                            StringBuilder m = Modifier.CC.m("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
                            Utf8.SafeProcessor.appendPlaceholders(listOf.size(), m);
                            m.append(")");
                            Data.Companion.observe(FlowKt.distinctUntilChanged(new SafeFlow(3, SQLite.createFlow(workSpecDao.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec"}, new SimpleActor$$ExternalSyntheticLambda0(m.toString(), listOf, workSpecDao, 23)))), generalSettingsFragment, new GeneralSettingsFragment$onCreatePreferencesFix$4(generalSettingsFragment, 1));
                            break;
                        }
                        break;
                }
            }
        }, new AuthorizationContract(i2));
    }

    public static String formatFileExportUriString() {
        Calendar calendar = Calendar.getInstance();
        Locale locale = Locale.US;
        return String.format(locale, "%s_%s.txt", Arrays.copyOf(new Object[]{"thunderbird-sync-logs", new SimpleDateFormat("yyyy-MM-dd", locale).format(calendar.getTime())}, 2));
    }

    public final GeneralSettingsViewModel getViewModel() {
        return (GeneralSettingsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat
    public final void onCreatePreferencesFix(String str, Bundle bundle) {
        this.mPreferenceManager.mPreferenceDataStore = (GeneralSettingsDataStore) this.dataStore$delegate.getValue();
        this.rootKey = str;
        setPreferencesFromResource(str, R.xml.general_settings);
        Preference findPreference = findPreference("notification_actions_settings");
        if (findPreference != null) {
            findPreference.mOnClickListener = new GeneralSettingsFragment$$ExternalSyntheticLambda3(this);
        }
        GeneralSettingsFragment$$ExternalSyntheticLambda3 generalSettingsFragment$$ExternalSyntheticLambda3 = new GeneralSettingsFragment$$ExternalSyntheticLambda3(this);
        Preference findPreference2 = findPreference("sync_debug_logging");
        if (findPreference2 != null) {
            findPreference2.mOnChangeListener = generalSettingsFragment$$ExternalSyntheticLambda3;
        }
        ((InMemoryFeatureFlagProvider) this.featureFlagProvider$delegate.getValue()).m1030providedj3aFNw("disable_font_size_config").onEnabled(new K9$$ExternalSyntheticLambda0(20, this));
        Preference findPreference3 = findPreference("debug_secret_debug_screen");
        if (findPreference3 != null) {
            RelationUtil.remove(findPreference3);
            findPreference3.mOnClickListener = null;
        }
        ((NoOpTelemetryManager) this.telemetryManager$delegate.getValue()).getClass();
        Preference findPreference4 = findPreference("data_collection");
        if (findPreference4 != null) {
            RelationUtil.remove(findPreference4);
        }
        Data.Companion.observe(getViewModel().uiState, this, new GeneralSettingsFragment$onCreatePreferencesFix$4(this, 0));
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        Snackbar snackbar = this.snackbar;
        if (snackbar != null) {
            snackbar.dispatchDismiss(3);
        }
        this.snackbar = null;
    }

    @Override // com.takisoft.preferencex.PreferenceFragmentCompat, androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        AppCompatActivity activity = getActivity();
        if (activity != null) {
            activity.setTitle(this.mPreferenceManager.mPreferenceScreen.mTitle);
        }
        requireActivity().addMenuProvider(new FragmentManager.AnonymousClass2(8, this), getViewLifecycleOwner());
    }
}
