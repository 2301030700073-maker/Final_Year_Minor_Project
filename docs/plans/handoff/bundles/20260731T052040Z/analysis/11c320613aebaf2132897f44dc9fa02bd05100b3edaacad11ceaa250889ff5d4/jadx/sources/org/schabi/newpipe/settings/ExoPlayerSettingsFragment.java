package org.schabi.newpipe.settings;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.preference.PreferenceManager;
import androidx.preference.SwitchPreferenceCompat;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class ExoPlayerSettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        addPreferencesFromResourceRegistry();
        String string = getString(R.string.disabled_media_tunneling_automatically_key);
        SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) requirePreference(R.string.disable_media_tunneling_key);
        boolean z = PreferenceManager.getDefaultSharedPreferences(requireContext()).getInt(string, -1) == 1;
        String string2 = getString(R.string.disable_media_tunneling_summary);
        if (z) {
            StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(string2, " ");
            m.append(getString(R.string.disable_media_tunneling_automatic_info));
            string2 = m.toString();
        }
        switchPreferenceCompat.setSummary(string2);
        switchPreferenceCompat.mOnChangeListener = new RxConvertKt$$ExternalSyntheticLambda0(this, string, 27);
    }
}
