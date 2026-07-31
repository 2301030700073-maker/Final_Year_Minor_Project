package org.schabi.newpipe.settings;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.preference.PreferenceScreen;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.util.ReleaseVersionUtil;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class MainSettingsFragment extends BasePreferenceFragment {
    public SettingsActivity settingsActivity;

    static {
        int i = MainActivity.$r8$clinit;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        this.settingsActivity = (SettingsActivity) getActivity();
        menuInflater.inflate(R.menu.menu_settings_main_fragment, menu);
        MenuItem item = menu.getItem(0);
        this.settingsActivity.menuSearchItem = item;
        if (item != null) {
            item.setVisible(!r3.isSearchActive());
        }
        item.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: org.schabi.newpipe.settings.MainSettingsFragment$$ExternalSyntheticLambda0
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                MainSettingsFragment.this.settingsActivity.setSearchActive(true);
                return true;
            }
        });
    }

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        addPreferencesFromResourceRegistry();
        setHasOptionsMenu(true);
        if (!ReleaseVersionUtil.isReleaseApk()) {
            ((PreferenceScreen) this.mPreferenceManager.mPreferenceScreen).removePreference(requirePreference(R.string.update_pref_screen_key));
            this.defaultPreferences.edit().putBoolean(getString(R.string.update_app_key), false).apply();
        }
        ((PreferenceScreen) this.mPreferenceManager.mPreferenceScreen).removePreference(requirePreference(R.string.debug_pref_screen_key));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        SettingsActivity settingsActivity = this.settingsActivity;
        if (settingsActivity != null) {
            settingsActivity.menuSearchItem = null;
            this.settingsActivity = null;
        }
        super.onDestroy();
    }
}
