package org.schabi.newpipe.settings;

import android.widget.Toast;
import androidx.preference.Preference;
import org.schabi.newpipe.NewVersionWorker;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class UpdateSettingsFragment$$ExternalSyntheticLambda2 implements Preference.OnPreferenceChangeListener, Preference.OnPreferenceClickListener {
    public final /* synthetic */ UpdateSettingsFragment f$0;

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        int i = UpdateSettingsFragment.$r8$clinit;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        UpdateSettingsFragment updateSettingsFragment = this.f$0;
        updateSettingsFragment.defaultPreferences.edit().putBoolean(updateSettingsFragment.getString(R.string.update_app_key), booleanValue).apply();
        if (booleanValue) {
            NewVersionWorker.enqueueNewVersionCheckingWork(updateSettingsFragment.requireContext(), true);
        }
        return true;
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        int i = UpdateSettingsFragment.$r8$clinit;
        UpdateSettingsFragment updateSettingsFragment = this.f$0;
        Toast.makeText(updateSettingsFragment.getContext(), R.string.checking_updates_toast, 0).show();
        NewVersionWorker.enqueueNewVersionCheckingWork(updateSettingsFragment.requireContext(), true);
        return true;
    }
}
