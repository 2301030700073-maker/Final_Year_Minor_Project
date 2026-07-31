package org.schabi.newpipe.settings;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.documentfile.provider.TreeDocumentFile;
import androidx.fragment.app.FragmentManager;
import androidx.preference.Preference;
import j$.nio.file.Files;
import java.io.File;
import java.io.IOException;
import kotlin.ranges.RangesKt;
import okhttp3.Cookie;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.streams.io.StoredDirectoryHelper;
import org.schabi.newpipe.util.FilePickerActivityHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class DownloadSettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Context ctx;
    public String downloadPathAudioPreference;
    public String downloadPathVideoPreference;
    public Preference prefPathAudio;
    public Preference prefPathVideo;
    public Preference prefStorageAsk;
    public final ActivityResultLauncher requestDownloadAudioPathLauncher;
    public final ActivityResultLauncher requestDownloadVideoPathLauncher;
    public String storageUseSafPreference;

    public DownloadSettingsFragment() {
        final int i = 0;
        this.requestDownloadVideoPathLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.settings.DownloadSettingsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ DownloadSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i2 = i;
                DownloadSettingsFragment downloadSettingsFragment = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i2) {
                    case 0:
                        downloadSettingsFragment.requestDownloadPathResult(activityResult, downloadSettingsFragment.downloadPathVideoPreference);
                        break;
                    default:
                        downloadSettingsFragment.requestDownloadPathResult(activityResult, downloadSettingsFragment.downloadPathAudioPreference);
                        break;
                }
            }
        });
        final int i2 = 1;
        this.requestDownloadAudioPathLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.settings.DownloadSettingsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ DownloadSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i22 = i2;
                DownloadSettingsFragment downloadSettingsFragment = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i22) {
                    case 0:
                        downloadSettingsFragment.requestDownloadPathResult(activityResult, downloadSettingsFragment.downloadPathVideoPreference);
                        break;
                    default:
                        downloadSettingsFragment.requestDownloadPathResult(activityResult, downloadSettingsFragment.downloadPathAudioPreference);
                        break;
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.ctx = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00a5, code lost:
    
        if (r0.isEmpty() == false) goto L15;
     */
    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreatePreferences() {
        /*
            r5 = this;
            r5.addPreferencesFromResourceRegistry()
            r0 = 2131951900(0x7f13011c, float:1.9540228E38)
            java.lang.String r0 = r5.getString(r0)
            r5.downloadPathVideoPreference = r0
            r0 = 2131951894(0x7f130116, float:1.9540215E38)
            java.lang.String r0 = r5.getString(r0)
            r5.downloadPathAudioPreference = r0
            r0 = 2131952842(0x7f1304ca, float:1.9542138E38)
            java.lang.String r0 = r5.getString(r0)
            r5.storageUseSafPreference = r0
            r0 = 2131951908(0x7f130124, float:1.9540244E38)
            java.lang.String r0 = r5.getString(r0)
            java.lang.String r1 = r5.downloadPathVideoPreference
            androidx.preference.Preference r1 = r5.findPreference(r1)
            r5.prefPathVideo = r1
            java.lang.String r1 = r5.downloadPathAudioPreference
            androidx.preference.Preference r1 = r5.findPreference(r1)
            r5.prefPathAudio = r1
            androidx.preference.Preference r1 = r5.findPreference(r0)
            r5.prefStorageAsk = r1
            java.lang.String r1 = r5.storageUseSafPreference
            androidx.preference.Preference r1 = r5.findPreference(r1)
            androidx.preference.SwitchPreferenceCompat r1 = (androidx.preference.SwitchPreferenceCompat) r1
            android.content.Context r2 = r5.ctx
            boolean r2 = okio.Options.Companion.useStorageAccessFramework(r2)
            r1.setChecked(r2)
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 29
            r4 = 0
            if (r2 < r3) goto L70
            r1.setEnabled(r4)
            r2 = 2131951913(0x7f130129, float:1.9540254E38)
            android.content.Context r3 = r1.mContext
            java.lang.String r2 = r3.getString(r2)
            r1.setSummary(r2)
            androidx.preference.Preference r1 = r5.prefStorageAsk
            r2 = 2131951910(0x7f130126, float:1.9540248E38)
            android.content.Context r3 = r1.mContext
            java.lang.String r2 = r3.getString(r2)
            r1.setSummary(r2)
        L70:
            r5.updatePreferencesSummary()
            android.content.SharedPreferences r1 = r5.defaultPreferences
            boolean r0 = r1.getBoolean(r0, r4)
            r0 = r0 ^ 1
            androidx.preference.Preference r1 = r5.prefPathVideo
            r1.setEnabled(r0)
            androidx.preference.Preference r1 = r5.prefPathAudio
            r1.setEnabled(r0)
            java.lang.String r0 = r5.downloadPathVideoPreference
            android.content.SharedPreferences r1 = r5.defaultPreferences
            r2 = 0
            java.lang.String r0 = r1.getString(r0, r2)
            if (r0 == 0) goto La7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L97
            goto La7
        L97:
            java.lang.String r0 = r5.downloadPathAudioPreference
            android.content.SharedPreferences r1 = r5.defaultPreferences
            java.lang.String r0 = r1.getString(r0, r2)
            if (r0 == 0) goto La7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Laa
        La7:
            r5.updatePreferencesSummary()
        Laa:
            androidx.preference.Preference r0 = r5.prefStorageAsk
            org.schabi.newpipe.settings.SettingsActivity$$ExternalSyntheticLambda0 r1 = new org.schabi.newpipe.settings.SettingsActivity$$ExternalSyntheticLambda0
            r1.<init>(r5)
            r0.mOnChangeListener = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.settings.DownloadSettingsFragment.onCreatePreferences():void");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.ctx = null;
        this.prefStorageAsk.mOnChangeListener = null;
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public final boolean onPreferenceTreeClick(Preference preference) {
        String str = preference.mKey;
        if (str.equals(this.storageUseSafPreference)) {
            if (Options.Companion.useStorageAccessFramework(this.ctx)) {
                this.defaultPreferences.edit().putString(this.downloadPathVideoPreference, null).putString(this.downloadPathAudioPreference, null).apply();
            } else {
                Options.Companion.saveDefaultDirectory(this.ctx, R.string.download_path_video_key, Environment.DIRECTORY_MOVIES);
                Options.Companion.saveDefaultDirectory(this.ctx, R.string.download_path_audio_key, Environment.DIRECTORY_MUSIC);
            }
            updatePreferencesSummary();
            return true;
        }
        boolean equals = str.equals(this.downloadPathVideoPreference);
        String str2 = this.TAG;
        if (equals) {
            Cookie.Companion.launchSafe(this.requestDownloadVideoPathLauncher, StoredDirectoryHelper.getPicker(this.ctx), str2, this.ctx);
            return true;
        }
        if (!str.equals(this.downloadPathAudioPreference)) {
            return super.onPreferenceTreeClick(preference);
        }
        Cookie.Companion.launchSafe(this.requestDownloadAudioPathLauncher, StoredDirectoryHelper.getPicker(this.ctx), str2, this.ctx);
        return true;
    }

    public final void requestDownloadPathResult(ActivityResult activityResult, String str) {
        String str2 = this.TAG;
        if (activityResult.resultCode != -1) {
            return;
        }
        Intent intent = activityResult.data;
        Uri data = intent != null ? intent.getData() : null;
        if (data == null) {
            showMessageDialog(R.string.general_error, R.string.invalid_directory);
            return;
        }
        Context requireContext = requireContext();
        this.defaultPreferences.getString(str, "");
        if (FilePickerActivityHelper.isOwnFileUri(requireContext, data)) {
            File fileForUri = RangesKt.getFileForUri(data);
            if (!fileForUri.canWrite()) {
                showMessageDialog(R.string.download_to_sdcard_error_title, R.string.download_to_sdcard_error_message);
                return;
            }
            data = Uri.fromFile(fileForUri);
        } else {
            try {
                requireContext.grantUriPermission(requireContext.getPackageName(), data, 3);
                StoredDirectoryHelper storedDirectoryHelper = new StoredDirectoryHelper(requireContext, data, null);
                Log.i(str2, "Acquiring tree success from " + data.toString());
                TreeDocumentFile treeDocumentFile = storedDirectoryHelper.docTree;
                if (!(treeDocumentFile == null ? Files.isWritable(storedDirectoryHelper.ioTree) : treeDocumentFile.canWrite())) {
                    throw new IOException("No write permissions on " + data.toString());
                }
            } catch (IOException e) {
                Log.e(str2, "Error acquiring tree from " + data.toString(), e);
                showMessageDialog(R.string.general_error, R.string.no_available_dir);
                return;
            }
        }
        this.defaultPreferences.edit().putString(str, data.toString()).apply();
        updatePreferencesSummary();
    }

    public final void showMessageDialog(int i, int i2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.ctx);
        builder.setTitle(i);
        builder.setMessage(i2);
        String string = getString(R.string.ok);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mPositiveButtonText = string;
        alertParams.mPositiveButtonListener = null;
        builder.show();
    }

    public final void showPathInSummary(String str, int i, Preference preference) {
        Uri parse = Uri.parse(this.defaultPreferences.getString(str, ""));
        if (parse.equals(Uri.EMPTY)) {
            preference.setSummary(getString(i));
        } else {
            preference.setSummary("file".equals(parse.getScheme()) ? parse.getPath() : parse.toString());
        }
    }

    public final void updatePreferencesSummary() {
        showPathInSummary(this.downloadPathVideoPreference, R.string.download_path_summary, this.prefPathVideo);
        showPathInSummary(this.downloadPathAudioPreference, R.string.download_path_audio_summary, this.prefPathAudio);
    }
}
