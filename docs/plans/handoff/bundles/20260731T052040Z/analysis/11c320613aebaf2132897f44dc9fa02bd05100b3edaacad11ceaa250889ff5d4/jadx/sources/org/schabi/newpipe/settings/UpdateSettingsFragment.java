package org.schabi.newpipe.settings;

import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class UpdateSettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final UpdateSettingsFragment$$ExternalSyntheticLambda2 updatePreferenceChange = new UpdateSettingsFragment$$ExternalSyntheticLambda2(this);
    public final UpdateSettingsFragment$$ExternalSyntheticLambda2 manualUpdateClick = new UpdateSettingsFragment$$ExternalSyntheticLambda2(this);

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        addPreferencesFromResourceRegistry();
        requirePreference(R.string.update_app_key).mOnChangeListener = this.updatePreferenceChange;
        requirePreference(R.string.manual_update_key).mOnClickListener = this.manualUpdateClick;
    }
}
