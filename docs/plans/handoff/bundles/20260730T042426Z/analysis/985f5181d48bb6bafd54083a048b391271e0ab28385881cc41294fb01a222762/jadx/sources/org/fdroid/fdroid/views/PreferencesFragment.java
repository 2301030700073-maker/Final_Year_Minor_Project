package org.fdroid.fdroid.views;

import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Supplier;
import androidx.lifecycle.Observer;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroup;
import androidx.preference.SeekBarPreference;
import androidx.preference.SwitchPreferenceCompat;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.request.RequestOptions;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import fi.iki.elonen.NanoHTTPD;
import info.guardianproject.netcipher.proxy.OrbotHelper;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.io.IOUtils;
import org.fdroid.fdroid.AppUpdateStatusManager;
import org.fdroid.fdroid.FDroidApp;
import org.fdroid.fdroid.Languages;
import org.fdroid.fdroid.Preferences;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.RepoUpdateManager;
import org.fdroid.fdroid.Utils;
import org.fdroid.fdroid.UtilsKt;
import org.fdroid.fdroid.installer.InstallHistoryService;
import org.fdroid.fdroid.installer.PrivilegedInstaller;
import org.fdroid.fdroid.installer.SessionInstallManager;
import org.fdroid.fdroid.views.LiveSeekBarPreference;
import org.fdroid.fdroid.work.CleanCacheWorker;
import org.fdroid.fdroid.work.FDroidMetricsWorker;
import org.fdroid.fdroid.work.RepoUpdateWorker;

/* loaded from: classes2.dex */
public class PreferencesFragment extends PreferenceFragmentCompat implements SharedPreferences.OnSharedPreferenceChangeListener {
    private static final int REQUEST_INSTALL_ORBOT = 4660;
    public static final String TAG = "PreferencesFragment";
    private final Preference.OnPreferenceClickListener aboutPrefClickedListener;
    private final ActivityResultLauncher createFileLauncher;
    private long currentKeepCacheTime;
    private SwitchPreferenceCompat enableProxyCheckPref;
    private RequestManager glideRequestManager;
    private Preference installHistoryPref;
    private Preference ipfsGateways;
    private SwitchPreferenceCompat keepInstallHistoryPref;
    private long nextUpdateCheck = Preferences.UPDATE_INTERVAL_DISABLED;
    private PreferenceGroup otherPrefGroup;
    private LiveSeekBarPreference overDataSeekBar;
    private LiveSeekBarPreference overWifiSeekBar;
    private SwitchPreferenceCompat preferForeignCheckPref;
    private final Preference.OnPreferenceChangeListener proxyEnabledChangedListener;
    private RepoUpdateManager repoUpdateManager;
    private SwitchPreferenceCompat sendToFDroidMetricsPref;
    private LinearSmoothScroller topScroller;
    private Preference updateAutoDownloadPref;
    private LiveSeekBarPreference updateIntervalSeekBar;
    private SwitchPreferenceCompat useDnsCacheCheckPref;
    private final Preference.OnPreferenceChangeListener useTorChangedListener;
    private SwitchPreferenceCompat useTorCheckPref;
    private static final String[] SUMMARIES_TO_UPDATE = {Preferences.PREF_OVER_WIFI, Preferences.PREF_OVER_DATA, Preferences.PREF_UPDATE_INTERVAL, Preferences.PREF_UPDATE_NOTIFICATION_ENABLED, Preferences.PREF_SHOW_ANTI_FEATURES, Preferences.PREF_SHOW_INCOMPAT_VERSIONS, Preferences.PREF_THEME, Preferences.PREF_USE_PURE_BLACK_DARK_THEME, Preferences.PREF_FORCE_TOUCH_APPS, Preferences.PREF_LOCAL_REPO_NAME, Preferences.PREF_LANGUAGE, Preferences.PREF_KEEP_CACHE_TIME, Preferences.PREF_EXPERT, Preferences.PREF_PRIVILEGED_INSTALLER, Preferences.PREF_ENABLE_PROXY, Preferences.PREF_PROXY_HOST, Preferences.PREF_PROXY_PORT};
    private static final int[] UPDATE_INTERVAL_NAMES = {R.string.interval_never, R.string.interval_2w, R.string.interval_1w, R.string.interval_1d, R.string.interval_12h, R.string.interval_4h, R.string.interval_1h};

    public PreferencesFragment() {
        final String str = NanoHTTPD.MIME_PLAINTEXT;
        this.createFileLauncher = registerForActivityResult(new ActivityResultContract(str) { // from class: androidx.activity.result.contract.ActivityResultContracts$CreateDocument
            private final String mimeType;

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final ActivityResultContract.SynchronousResult getSynchronousResult(Context context, String input) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(input, "input");
                return null;
            }

            {
                Intrinsics.checkNotNullParameter(str, "mimeType");
                this.mimeType = str;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public Intent createIntent(Context context, String input) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(input, "input");
                Intent putExtra = new Intent("android.intent.action.CREATE_DOCUMENT").setType(this.mimeType).putExtra("android.intent.extra.TITLE", input);
                Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(Intent.ACTION_CRE…ntent.EXTRA_TITLE, input)");
                return putExtra;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Uri parseResult(int i, Intent intent) {
                if (i != -1) {
                    intent = null;
                }
                if (intent != null) {
                    return intent.getData();
                }
                return null;
            }
        }, new ActivityResultCallback() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                PreferencesFragment.this.saveLogcat((Uri) obj);
            }
        });
        this.aboutPrefClickedListener = new Preference.OnPreferenceClickListener() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda1
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                boolean lambda$new$3;
                lambda$new$3 = PreferencesFragment.this.lambda$new$3(preference);
                return lambda$new$3;
            }
        };
        this.useTorChangedListener = new Preference.OnPreferenceChangeListener() { // from class: org.fdroid.fdroid.views.PreferencesFragment.2
            @Override // androidx.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (!((Boolean) obj).booleanValue()) {
                    return true;
                }
                PreferencesFragment.this.enableProxyCheckPref.setChecked(false);
                AppCompatActivity appCompatActivity = (AppCompatActivity) PreferencesFragment.this.requireActivity();
                if (OrbotHelper.isOrbotInstalled(appCompatActivity)) {
                    return true;
                }
                appCompatActivity.startActivityForResult(OrbotHelper.getOrbotInstallIntent(appCompatActivity), PreferencesFragment.REQUEST_INSTALL_ORBOT);
                return true;
            }
        };
        this.proxyEnabledChangedListener = new Preference.OnPreferenceChangeListener() { // from class: org.fdroid.fdroid.views.PreferencesFragment.3
            @Override // androidx.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (!((Boolean) obj).booleanValue()) {
                    return true;
                }
                PreferencesFragment.this.useTorCheckPref.setChecked(false);
                return true;
            }
        };
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public void onCreatePreferences(Bundle bundle, String str) {
        Preferences preferences = Preferences.get();
        preferences.migrateOldPreferences();
        addPreferencesFromResource(R.xml.preferences);
        this.otherPrefGroup = (PreferenceGroup) findPreference("pref_category_other");
        this.repoUpdateManager = FDroidApp.getRepoUpdateManager(requireContext());
        Preference findPreference = findPreference("pref_about");
        if (findPreference != null) {
            findPreference.setOnPreferenceClickListener(this.aboutPrefClickedListener);
        }
        this.keepInstallHistoryPref = (SwitchPreferenceCompat) findPreference(Preferences.PREF_KEEP_INSTALL_HISTORY);
        SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) ObjectsCompat.requireNonNull((SwitchPreferenceCompat) findPreference(Preferences.PREF_SEND_TO_FDROID_METRICS));
        this.sendToFDroidMetricsPref = switchPreferenceCompat;
        switchPreferenceCompat.setEnabled(this.keepInstallHistoryPref.isChecked());
        Preference preference = (Preference) ObjectsCompat.requireNonNull(findPreference("installHistory"));
        this.installHistoryPref = preference;
        preference.setVisible(this.keepInstallHistoryPref.isChecked());
        if (preferences.isSendingToFDroidMetrics()) {
            this.installHistoryPref.setTitle(R.string.install_history_and_metrics);
        } else {
            this.installHistoryPref.setTitle(R.string.install_history);
        }
        this.useDnsCacheCheckPref = (SwitchPreferenceCompat) ObjectsCompat.requireNonNull((SwitchPreferenceCompat) findPreference(Preferences.PREF_USE_DNS_CACHE));
        this.preferForeignCheckPref = (SwitchPreferenceCompat) ObjectsCompat.requireNonNull((SwitchPreferenceCompat) findPreference(Preferences.PREF_PREFER_FOREIGN));
        SwitchPreferenceCompat switchPreferenceCompat2 = (SwitchPreferenceCompat) ObjectsCompat.requireNonNull((SwitchPreferenceCompat) findPreference(Preferences.PREF_USE_TOR));
        this.useTorCheckPref = switchPreferenceCompat2;
        switchPreferenceCompat2.setOnPreferenceChangeListener(this.useTorChangedListener);
        SwitchPreferenceCompat switchPreferenceCompat3 = (SwitchPreferenceCompat) ObjectsCompat.requireNonNull((SwitchPreferenceCompat) findPreference(Preferences.PREF_ENABLE_PROXY));
        this.enableProxyCheckPref = switchPreferenceCompat3;
        switchPreferenceCompat3.setOnPreferenceChangeListener(this.proxyEnabledChangedListener);
        this.updateAutoDownloadPref = findPreference(Preferences.PREF_AUTO_DOWNLOAD_INSTALL_UPDATES);
        LiveSeekBarPreference liveSeekBarPreference = (LiveSeekBarPreference) ObjectsCompat.requireNonNull((LiveSeekBarPreference) findPreference(Preferences.PREF_OVER_WIFI));
        this.overWifiSeekBar = liveSeekBarPreference;
        liveSeekBarPreference.setSeekBarLiveUpdater(new LiveSeekBarPreference.SeekBarLiveUpdater() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda6
            @Override // org.fdroid.fdroid.views.LiveSeekBarPreference.SeekBarLiveUpdater
            public final String seekBarUpdated(int i) {
                String networkSeekBarSummary;
                networkSeekBarSummary = PreferencesFragment.this.getNetworkSeekBarSummary(i);
                return networkSeekBarSummary;
            }
        });
        LiveSeekBarPreference liveSeekBarPreference2 = (LiveSeekBarPreference) ObjectsCompat.requireNonNull((LiveSeekBarPreference) findPreference(Preferences.PREF_OVER_DATA));
        this.overDataSeekBar = liveSeekBarPreference2;
        liveSeekBarPreference2.setSeekBarLiveUpdater(new LiveSeekBarPreference.SeekBarLiveUpdater() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda6
            @Override // org.fdroid.fdroid.views.LiveSeekBarPreference.SeekBarLiveUpdater
            public final String seekBarUpdated(int i) {
                String networkSeekBarSummary;
                networkSeekBarSummary = PreferencesFragment.this.getNetworkSeekBarSummary(i);
                return networkSeekBarSummary;
            }
        });
        LiveSeekBarPreference liveSeekBarPreference3 = (LiveSeekBarPreference) ObjectsCompat.requireNonNull((LiveSeekBarPreference) findPreference(Preferences.PREF_UPDATE_INTERVAL));
        this.updateIntervalSeekBar = liveSeekBarPreference3;
        liveSeekBarPreference3.setSeekBarLiveUpdater(new LiveSeekBarPreference.SeekBarLiveUpdater() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda7
            @Override // org.fdroid.fdroid.views.LiveSeekBarPreference.SeekBarLiveUpdater
            public final String seekBarUpdated(int i) {
                String updateIntervalSeekbarSummary;
                updateIntervalSeekbarSummary = PreferencesFragment.this.getUpdateIntervalSeekbarSummary(i);
                return updateIntervalSeekbarSummary;
            }
        });
        this.ipfsGateways = (Preference) ObjectsCompat.requireNonNull(findPreference("ipfsGateways"));
        updateIpfsGatewaySummary();
        Preference preference2 = (Preference) ObjectsCompat.requireNonNull(findPreference("debugLog"));
        preference2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda8
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference3) {
                boolean lambda$onCreatePreferences$0;
                lambda$onCreatePreferences$0 = PreferencesFragment.this.lambda$onCreatePreferences$0(preference3);
                return lambda$onCreatePreferences$0;
            }
        });
        int i = Build.VERSION.SDK_INT;
        if (i <= 23) {
            preference2.setVisible(false);
        }
        ListPreference listPreference = (ListPreference) ObjectsCompat.requireNonNull((ListPreference) findPreference(Preferences.PREF_LANGUAGE));
        if (i >= 24) {
            ((PreferenceCategory) ObjectsCompat.requireNonNull((PreferenceCategory) findPreference("pref_category_display"))).removePreference(listPreference);
        } else {
            Languages languages = Languages.get((AppCompatActivity) getActivity());
            listPreference.setDefaultValue("");
            listPreference.setEntries(languages.getAllNames());
            listPreference.setEntryValues(languages.getSupportedLocales());
        }
        if (requireActivity().getPackageManager().hasSystemFeature("android.hardware.touchscreen")) {
            ((PreferenceCategory) ObjectsCompat.requireNonNull((PreferenceCategory) findPreference("pref_category_appcompatibility"))).removePreference((Preference) ObjectsCompat.requireNonNull(findPreference(Preferences.PREF_FORCE_TOUCH_APPS)));
        }
        this.topScroller = new LinearSmoothScroller(requireActivity()) { // from class: org.fdroid.fdroid.views.PreferencesFragment.1
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected int getVerticalSnapPreference() {
                return -1;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onCreatePreferences$0(Preference preference) {
        return exportLogcat();
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.repoUpdateManager.getNextUpdateLiveData().observe(getViewLifecycleOwner(), new Observer() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PreferencesFragment.this.lambda$onViewCreated$1((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(Long l) {
        this.nextUpdateCheck = l.longValue();
        updateSummary(Preferences.PREF_UPDATE_INTERVAL, false);
    }

    private void checkSummary(String str, int i) {
        Preference findPreference = findPreference(str);
        if (findPreference != null) {
            findPreference.setSummary(i);
        }
    }

    private void entrySummary(String str) {
        ListPreference listPreference = (ListPreference) findPreference(str);
        if (listPreference != null) {
            listPreference.setSummary(listPreference.getEntry());
        }
    }

    private void textSummary(String str, int i) {
        EditTextPreference editTextPreference = (EditTextPreference) findPreference(str);
        if (editTextPreference != null) {
            editTextPreference.setSummary(getString(i, editTextPreference.getText()));
            return;
        }
        Utils.debugLog(TAG, "null preference found for " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getNetworkSeekBarSummary(int i) {
        if (i == 0) {
            return getString(R.string.over_network_never_summary);
        }
        if (i == 1) {
            return getString(R.string.over_network_on_demand_summary);
        }
        if (i == 2) {
            return getString(R.string.over_network_always_summary);
        }
        throw new IllegalArgumentException("Unknown seekbar position");
    }

    private void setNetworkSeekBarSummary(SeekBarPreference seekBarPreference) {
        seekBarPreference.setSummary(getNetworkSeekBarSummary(seekBarPreference.getValue()));
    }

    private void enableUpdateInterval() {
        if (this.overWifiSeekBar.getValue() == 0 && this.overDataSeekBar.getValue() == 0) {
            this.updateIntervalSeekBar.setEnabled(false);
            this.updateIntervalSeekBar.setSummary(UPDATE_INTERVAL_NAMES[0]);
        } else {
            this.updateIntervalSeekBar.setEnabled(true);
            LiveSeekBarPreference liveSeekBarPreference = this.updateIntervalSeekBar;
            liveSeekBarPreference.setSummary(getUpdateIntervalSeekbarSummary(liveSeekBarPreference.getValue()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUpdateIntervalSeekbarSummary(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(getString(UPDATE_INTERVAL_NAMES[i]));
        long j = this.nextUpdateCheck;
        if (j < 0) {
            sb.append("\n");
            sb.append(getString(R.string.auto_update_time_past));
        } else if (j < Preferences.UPDATE_INTERVAL_DISABLED) {
            sb.append("\n");
            sb.append(getString(R.string.auto_update_time, UtilsKt.asRelativeTimeString(this.nextUpdateCheck)));
        } else if (i != 0) {
            sb.append("\n");
            sb.append(getString(R.string.auto_update_time, getString(R.string.repositories_last_update_never)));
        }
        return sb.toString();
    }

    private void updateSummary(String str, boolean z) {
        AppCompatActivity appCompatActivity;
        str.hashCode();
        switch (str) {
            case "localRepoHttps":
                checkSummary(str, R.string.local_repo_https_on);
                break;
            case "privilegedInstaller":
                if (((SwitchPreferenceCompat) findPreference(Preferences.PREF_PRIVILEGED_INSTALLER)) != null) {
                    checkSummary(str, R.string.system_installer_on);
                    break;
                }
                break;
            case "localRepoName":
                textSummary(str, R.string.local_repo_name_summary);
                break;
            case "sendToFdroidMetrics":
                setFDroidMetricsWorker();
                break;
            case "language":
                entrySummary(str);
                if (z) {
                    AppCompatActivity appCompatActivity2 = (AppCompatActivity) requireActivity();
                    Languages.setLanguage(appCompatActivity2);
                    FDroidApp.onLanguageChanged(appCompatActivity2.getApplicationContext());
                    Languages.forceChangeLanguage(appCompatActivity2);
                    break;
                }
                break;
            case "ignoreTouchscreen":
                checkSummary(str, R.string.force_touch_apps_on);
                break;
            case "usePureBlackDarkTheme":
                if (z && (appCompatActivity = (AppCompatActivity) getActivity()) != null) {
                    ActivityCompat.recreate(appCompatActivity);
                    break;
                }
                break;
            case "incompatibleVersions":
                checkSummary(str, R.string.show_incompat_versions_on);
                break;
            case "keepInstallHistory":
                if (this.keepInstallHistoryPref.isChecked()) {
                    InstallHistoryService.register(getActivity());
                    this.installHistoryPref.setVisible(true);
                    this.sendToFDroidMetricsPref.setEnabled(true);
                } else {
                    InstallHistoryService.unregister(getActivity());
                    this.installHistoryPref.setVisible(false);
                    this.sendToFDroidMetricsPref.setEnabled(false);
                }
                setFDroidMetricsWorker();
                break;
            case "enableProxy":
                ((SwitchPreferenceCompat) ObjectsCompat.requireNonNull((SwitchPreferenceCompat) findPreference(str))).setSummary(R.string.enable_proxy_summary);
                break;
            case "expert":
                checkSummary(str, R.string.expert_on);
                boolean expertMode = Preferences.get().expertMode();
                int i = 0;
                for (int i2 = 0; i2 < this.otherPrefGroup.getPreferenceCount(); i2++) {
                    Preference preference = this.otherPrefGroup.getPreference(i2);
                    if (TextUtils.equals(Preferences.PREF_EXPERT, preference.getDependency())) {
                        preference.setVisible(expertMode);
                        i++;
                    }
                }
                if (z) {
                    RecyclerView listView = getListView();
                    this.topScroller.setTargetPosition((listView.getAdapter().getItemCount() - (expertMode ? i : 0)) - 1);
                    listView.getLayoutManager().startSmoothScroll(this.topScroller);
                    break;
                }
                break;
            case "updateNotify":
                checkSummary(str, R.string.notify_on);
                break;
            case "proxyHost":
                EditTextPreference editTextPreference = (EditTextPreference) ObjectsCompat.requireNonNull((EditTextPreference) findPreference(str));
                String proxyHost = Preferences.get().getProxyHost();
                if (TextUtils.isEmpty(proxyHost) || proxyHost.equals(Preferences.DEFAULT_PROXY_HOST)) {
                    editTextPreference.setSummary(R.string.proxy_host_summary);
                    break;
                } else {
                    editTextPreference.setSummary(proxyHost);
                    break;
                }
                break;
            case "proxyPort":
                EditTextPreference editTextPreference2 = (EditTextPreference) ObjectsCompat.requireNonNull((EditTextPreference) findPreference(str));
                int proxyPort = Preferences.get().getProxyPort();
                if (proxyPort == 8118) {
                    editTextPreference2.setSummary(R.string.proxy_port_summary);
                    break;
                } else {
                    editTextPreference2.setSummary(String.valueOf(proxyPort));
                    break;
                }
            case "showAntiFeatures":
                checkSummary(str, R.string.show_anti_feature_apps_on);
                break;
            case "theme":
                entrySummary(str);
                if (z) {
                    FDroidApp.applyTheme();
                    break;
                }
                break;
            case "keepCacheFor":
                entrySummary(str);
                if (z && this.currentKeepCacheTime != Preferences.get().getKeepCacheTime()) {
                    CleanCacheWorker.schedule(requireContext());
                    break;
                }
                break;
            case "overData":
                this.overDataSeekBar.setMax(2);
                setNetworkSeekBarSummary(this.overDataSeekBar);
                enableUpdateInterval();
                break;
            case "overWifi":
                this.overWifiSeekBar.setMax(2);
                setNetworkSeekBarSummary(this.overWifiSeekBar);
                enableUpdateInterval();
                break;
            case "updateIntervalSeekBarPosition":
                this.updateIntervalSeekBar.setMax(Preferences.UPDATE_INTERVAL_VALUES.length - 1);
                this.updateIntervalSeekBar.setSummary(getUpdateIntervalSeekbarSummary(this.updateIntervalSeekBar.getValue()));
                break;
        }
    }

    private void setFDroidMetricsWorker() {
        if (this.sendToFDroidMetricsPref.isEnabled() && this.sendToFDroidMetricsPref.isChecked()) {
            FDroidMetricsWorker.schedule(getContext());
        } else {
            FDroidMetricsWorker.cancel(getContext());
        }
    }

    private void updateIpfsGatewaySummary() {
        Preferences preferences = Preferences.get();
        if (preferences.isIpfsEnabled()) {
            int size = preferences.getActiveIpfsGateways().size();
            this.ipfsGateways.setSummary(getResources().getQuantityString(R.plurals.ipfsgw_summary, size, Integer.valueOf(size)));
        } else {
            this.ipfsGateways.setSummary(getString(R.string.ipfsgw_summary_disabled));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$3(Preference preference) {
        View inflate = getLayoutInflater().inflate(R.layout.about, (ViewGroup) null);
        Context requireContext = requireContext();
        String versionName = Utils.getVersionName(requireContext);
        if (versionName != null) {
            TextView textView = (TextView) inflate.findViewById(R.id.version);
            textView.setText(versionName);
            textView.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda10
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$new$2;
                    lambda$new$2 = PreferencesFragment.lambda$new$2(view);
                    return lambda$new$2;
                }
            });
        }
        new MaterialAlertDialogBuilder(requireContext).setView(inflate).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$2(View view) {
        throw new RuntimeException("BOOM!");
    }

    private void initPrivilegedInstallerPreference() {
        final SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) findPreference(Preferences.PREF_PRIVILEGED_INSTALLER);
        if (switchPreferenceCompat == null) {
            return;
        }
        boolean isPrivilegedInstallerEnabled = Preferences.get().isPrivilegedInstallerEnabled();
        if (PrivilegedInstaller.isExtensionInstalledCorrectly(getActivity()) != 1) {
            this.otherPrefGroup.removePreference(switchPreferenceCompat);
            return;
        }
        switchPreferenceCompat.setEnabled(true);
        switchPreferenceCompat.setDefaultValue(Boolean.TRUE);
        switchPreferenceCompat.setChecked(isPrivilegedInstallerEnabled);
        switchPreferenceCompat.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda9
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                boolean lambda$initPrivilegedInstallerPreference$4;
                lambda$initPrivilegedInstallerPreference$4 = PreferencesFragment.lambda$initPrivilegedInstallerPreference$4(SwitchPreferenceCompat.this, preference);
                return lambda$initPrivilegedInstallerPreference$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$initPrivilegedInstallerPreference$4(SwitchPreferenceCompat switchPreferenceCompat, Preference preference) {
        SharedPreferences.Editor edit = switchPreferenceCompat.getSharedPreferences().edit();
        if (switchPreferenceCompat.isChecked()) {
            edit.remove(Preferences.PREF_PRIVILEGED_INSTALLER);
        } else {
            edit.putBoolean(Preferences.PREF_PRIVILEGED_INSTALLER, false);
        }
        edit.apply();
        return true;
    }

    private void initAutoFetchUpdatesPreference() {
        this.updateAutoDownloadPref.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda2
            @Override // androidx.preference.Preference.OnPreferenceChangeListener
            public final boolean onPreferenceChange(Preference preference, Object obj) {
                boolean lambda$initAutoFetchUpdatesPreference$5;
                lambda$initAutoFetchUpdatesPreference$5 = PreferencesFragment.this.lambda$initAutoFetchUpdatesPreference$5(preference, obj);
                return lambda$initAutoFetchUpdatesPreference$5;
            }
        });
        if (PrivilegedInstaller.isDefault(getActivity()) || SessionInstallManager.canBeUsed(getContext())) {
            this.updateAutoDownloadPref.setTitle(R.string.update_auto_install);
            this.updateAutoDownloadPref.setSummary(R.string.update_auto_install_summary);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initAutoFetchUpdatesPreference$5(Preference preference, Object obj) {
        if (!(obj instanceof Boolean) || !((Boolean) obj).booleanValue()) {
            return true;
        }
        AppUpdateStatusManager.getInstance(getActivity()).checkForUpdatesAndInstall();
        return true;
    }

    private void initUseDnsCachePreference() {
        this.useDnsCacheCheckPref.setDefaultValue(Boolean.FALSE);
        this.useDnsCacheCheckPref.setChecked(Preferences.get().isDnsCacheEnabled());
    }

    private void initPreferForeignPreference() {
        this.preferForeignCheckPref.setDefaultValue(Boolean.FALSE);
        this.preferForeignCheckPref.setChecked(Preferences.get().isPreferForeignSet());
    }

    private void initUseTorPreference(Context context) {
        this.useTorCheckPref.setDefaultValue(Boolean.valueOf(OrbotHelper.isOrbotInstalled(context)));
        this.useTorCheckPref.setChecked(Preferences.get().isTorEnabled());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        for (String str : SUMMARIES_TO_UPDATE) {
            updateSummary(str, false);
        }
        this.currentKeepCacheTime = Preferences.get().getKeepCacheTime();
        initAutoFetchUpdatesPreference();
        initPrivilegedInstallerPreference();
        initUseDnsCachePreference();
        initPreferForeignPreference();
        initUseTorPreference(requireContext().getApplicationContext());
        updateIpfsGatewaySummary();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        FDroidApp.configureProxy(Preferences.get());
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        updateSummary(str, true);
        if (str.equals(Preferences.PREF_PREVENT_SCREENSHOTS)) {
            if (Preferences.get().preventScreenshots()) {
                requireActivity().getWindow().addFlags(8192);
                return;
            } else {
                requireActivity().getWindow().clearFlags(8192);
                return;
            }
        }
        if (Preferences.PREF_SEND_TO_FDROID_METRICS.equals(str)) {
            if (Preferences.get().isSendingToFDroidMetrics()) {
                Toast.makeText(getContext(), getString(R.string.toast_metrics_in_install_history, requireContext().getString(R.string.app_name)), 1).show();
                this.installHistoryPref.setTitle(R.string.install_history_and_metrics);
                Intent intent = new Intent(getActivity(), (Class<?>) InstallHistoryActivity.class);
                intent.putExtra("showFDroidMetrics", true);
                startActivity(intent);
                return;
            }
            this.installHistoryPref.setTitle(R.string.install_history);
            return;
        }
        if (Preferences.PREF_OVER_DATA.equals(str) || Preferences.PREF_OVER_WIFI.equals(str)) {
            if (this.glideRequestManager == null) {
                this.glideRequestManager = Glide.with(requireContext());
            }
            this.glideRequestManager.applyDefaultRequestOptions((RequestOptions) new RequestOptions().onlyRetrieveFromCache(Preferences.get().isBackgroundDownloadAllowed()));
            RepoUpdateWorker.scheduleOrCancel(requireContext());
            return;
        }
        if (Preferences.PREF_UPDATE_INTERVAL.equals(str)) {
            RepoUpdateWorker.scheduleOrCancel(requireContext());
        }
    }

    private boolean exportLogcat() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.createFileLauncher.launch(requireContext().getPackageName() + "-" + simpleDateFormat.format(new Date()) + ".txt");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveLogcat(final Uri uri) {
        final ContentResolver contentResolver = requireContext().getContentResolver();
        Utils.runOffUiThread(new Supplier() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda3
            @Override // androidx.core.util.Supplier
            public final Object get() {
                Boolean lambda$saveLogcat$6;
                lambda$saveLogcat$6 = PreferencesFragment.lambda$saveLogcat$6(contentResolver, uri);
                return lambda$saveLogcat$6;
            }
        }, new Consumer() { // from class: org.fdroid.fdroid.views.PreferencesFragment$$ExternalSyntheticLambda4
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                PreferencesFragment.this.lambda$saveLogcat$7((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$saveLogcat$6(ContentResolver contentResolver, Uri uri) {
        String str = "logcat -d --pid=" + Process.myPid() + " *:V";
        try {
            OutputStream openOutputStream = contentResolver.openOutputStream(uri, "wt");
            try {
                InputStream inputStream = Runtime.getRuntime().exec(str).getInputStream();
                try {
                    openOutputStream.write((str + "\n\n").getBytes(StandardCharsets.UTF_8));
                    IOUtils.copy(inputStream, openOutputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    Boolean bool = Boolean.TRUE;
                    openOutputStream.close();
                    return bool;
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            Log.e(TAG, "Error saving logcat ", e);
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveLogcat$7(Boolean bool) {
        int i = bool.booleanValue() ? R.string.export_log_success : R.string.export_log_error;
        Context context = getContext();
        if (context != null) {
            Toast.makeText(context, i, 1).show();
        }
    }
}
