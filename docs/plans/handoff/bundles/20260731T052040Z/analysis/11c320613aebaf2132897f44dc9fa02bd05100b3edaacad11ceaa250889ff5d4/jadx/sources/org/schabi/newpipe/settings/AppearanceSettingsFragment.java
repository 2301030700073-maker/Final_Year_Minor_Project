package org.schabi.newpipe.settings;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.preference.Preference;
import androidx.transition.FragmentTransitionSupport$$ExternalSyntheticLambda0;
import okio.Options;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class AppearanceSettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;

    public final void applyThemeChange(String str, String str2, Object obj) {
        this.defaultPreferences.edit().putBoolean("key_theme_change", true).apply();
        this.defaultPreferences.edit().putString(str2, obj.toString()).apply();
        Options.Companion.setDayNightMode(requireContext(), obj.toString());
        if (obj.equals(str) || getActivity() == null) {
            return;
        }
        ActivityCompat.recreate(getActivity());
    }

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        addPreferencesFromResourceRegistry();
        final String string = getString(R.string.theme_key);
        final String string2 = this.defaultPreferences.getString(string, getString(R.string.default_theme_value));
        final String string3 = getString(R.string.auto_device_theme_key);
        findPreference(string).mOnChangeListener = new Preference.OnPreferenceChangeListener() { // from class: org.schabi.newpipe.settings.AppearanceSettingsFragment$$ExternalSyntheticLambda0
            @Override // androidx.preference.Preference.OnPreferenceChangeListener
            public final boolean onPreferenceChange(Preference preference, Object obj) {
                int i = AppearanceSettingsFragment.$r8$clinit;
                boolean equals = obj.toString().equals(string3);
                AppearanceSettingsFragment appearanceSettingsFragment = AppearanceSettingsFragment.this;
                if (equals) {
                    Toast.makeText(appearanceSettingsFragment.getContext(), appearanceSettingsFragment.getString(R.string.select_night_theme_toast), 1).show();
                }
                appearanceSettingsFragment.applyThemeChange(string2, string, obj);
                return false;
            }
        };
        String string4 = getString(R.string.night_theme_key);
        if (string2.equals(string3)) {
            findPreference(string4).mOnChangeListener = new FragmentTransitionSupport$$ExternalSyntheticLambda0(this, this.defaultPreferences.getString(string4, getString(R.string.default_night_theme_value)), string4);
            return;
        }
        Preference findPreference = findPreference(string4);
        if (findPreference != null) {
            findPreference.setEnabled(false);
            findPreference.setSummary(getString(R.string.night_theme_available, getString(R.string.auto_device_theme_title)));
        }
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public final boolean onPreferenceTreeClick(Preference preference) {
        if (getString(R.string.caption_settings_key).equals(preference.mKey)) {
            try {
                startActivity(new Intent("android.settings.CAPTIONING_SETTINGS"));
            } catch (ActivityNotFoundException unused) {
                Toast.makeText(getActivity(), R.string.general_error, 0).show();
            }
        }
        return super.onPreferenceTreeClick(preference);
    }
}
