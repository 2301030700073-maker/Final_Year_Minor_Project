package org.schabi.newpipe.settings;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.provider.Settings;
import android.widget.Toast;
import androidx.preference.ListPreference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import org.schabi.newpipe.R;
import org.schabi.newpipe.util.ListHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class VideoAudioSettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public VideoAudioSettingsFragment$$ExternalSyntheticLambda0 listener;

    /* JADX WARN: Type inference failed for: r0v0, types: [org.schabi.newpipe.settings.VideoAudioSettingsFragment$$ExternalSyntheticLambda0] */
    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        addPreferencesFromResourceRegistry();
        updateSeekOptions();
        updateResolutionOptions();
        this.listener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: org.schabi.newpipe.settings.VideoAudioSettingsFragment$$ExternalSyntheticLambda0
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                int i = VideoAudioSettingsFragment.$r8$clinit;
                VideoAudioSettingsFragment videoAudioSettingsFragment = VideoAudioSettingsFragment.this;
                if (!videoAudioSettingsFragment.getString(R.string.minimize_on_exit_key).equals(str)) {
                    if (videoAudioSettingsFragment.getString(R.string.use_inexact_seek_key).equals(str)) {
                        videoAudioSettingsFragment.updateSeekOptions();
                        return;
                    } else {
                        if (videoAudioSettingsFragment.getString(R.string.show_higher_resolutions_key).equals(str)) {
                            videoAudioSettingsFragment.updateResolutionOptions();
                            return;
                        }
                        return;
                    }
                }
                String string = sharedPreferences.getString(str, null);
                if (string == null || !string.equals(videoAudioSettingsFragment.getString(R.string.minimize_on_exit_popup_key)) || Settings.canDrawOverlays(videoAudioSettingsFragment.getContext())) {
                    return;
                }
                RecyclerView recyclerView = videoAudioSettingsFragment.mList;
                int[] iArr = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
                Snackbar make = Snackbar.make(recyclerView, recyclerView.getResources().getText(R.string.permission_display_over_apps), -2);
                make.setAction(make.context.getText(R.string.settings), new SettingsActivity$$ExternalSyntheticLambda1(videoAudioSettingsFragment, 2));
                make.show();
            }
        };
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.mPreferenceManager.getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this.listener);
    }

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.mPreferenceManager.getSharedPreferences().registerOnSharedPreferenceChangeListener(this.listener);
    }

    public final void updateResolutionOptions() {
        Resources resources = getResources();
        boolean z = this.mPreferenceManager.getSharedPreferences().getBoolean(resources.getString(R.string.show_higher_resolutions_key), false);
        ArrayList sortedResolutionList = ListHelper.getSortedResolutionList(resources, R.array.resolution_list_description, R.array.high_resolution_list_descriptions, z);
        ArrayList sortedResolutionList2 = ListHelper.getSortedResolutionList(resources, R.array.resolution_list_values, R.array.high_resolution_list_values, z);
        ArrayList sortedResolutionList3 = ListHelper.getSortedResolutionList(resources, R.array.limit_data_usage_values_list, R.array.high_resolution_limit_data_usage_values_list, z);
        ArrayList sortedResolutionList4 = ListHelper.getSortedResolutionList(resources, R.array.limit_data_usage_description_list, R.array.high_resolution_list_descriptions, z);
        ListPreference listPreference = (ListPreference) requirePreference(R.string.default_resolution_key);
        ListPreference listPreference2 = (ListPreference) requirePreference(R.string.default_popup_resolution_key);
        ListPreference listPreference3 = (ListPreference) requirePreference(R.string.limit_mobile_data_usage_key);
        listPreference.setEntries((CharSequence[]) sortedResolutionList.toArray(new String[0]));
        listPreference.mEntryValues = (CharSequence[]) sortedResolutionList2.toArray(new String[0]);
        listPreference2.setEntries((CharSequence[]) sortedResolutionList.toArray(new String[0]));
        listPreference2.mEntryValues = (CharSequence[]) sortedResolutionList2.toArray(new String[0]);
        listPreference3.setEntries((CharSequence[]) sortedResolutionList4.toArray(new String[0]));
        listPreference3.mEntryValues = (CharSequence[]) sortedResolutionList3.toArray(new String[0]);
        if (z) {
            return;
        }
        if (Arrays.asList(resources.getStringArray(R.array.high_resolution_list_values)).contains(listPreference.mValue)) {
            listPreference.setValueIndex();
        }
        if (Arrays.asList(resources.getStringArray(R.array.high_resolution_list_values)).contains(listPreference2.mValue)) {
            listPreference2.setValueIndex();
        }
        if (Arrays.asList(resources.getStringArray(R.array.high_resolution_limit_data_usage_values_list)).contains(listPreference3.mValue)) {
            listPreference3.setValueIndex();
        }
    }

    public final void updateSeekOptions() {
        Resources resources = getResources();
        String[] stringArray = resources.getStringArray(R.array.seek_duration_value);
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z = this.mPreferenceManager.getSharedPreferences().getBoolean(resources.getString(R.string.use_inexact_seek_key), false);
        for (String str : stringArray) {
            int parseInt = Integer.parseInt(str) / 1000;
            if (!z || parseInt % 10 != 5) {
                linkedList.add(str);
                try {
                    linkedList2.add(String.format(resources.getQuantityString(R.plurals.seconds, parseInt), Integer.valueOf(parseInt)));
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        ListPreference listPreference = (ListPreference) requirePreference(R.string.seek_duration_key);
        listPreference.mEntryValues = (CharSequence[]) linkedList.toArray(new CharSequence[0]);
        listPreference.setEntries((CharSequence[]) linkedList2.toArray(new CharSequence[0]));
        int parseInt2 = Integer.parseInt(listPreference.mValue);
        if (z) {
            int i = parseInt2 / 1000;
            if (i % 10 == 5) {
                int i2 = i + 5;
                listPreference.setValue(Integer.toString(i2 * 1000));
                Toast.makeText(getContext(), getString(R.string.new_seek_duration_toast, Integer.valueOf(i2)), 1).show();
            }
        }
    }
}
