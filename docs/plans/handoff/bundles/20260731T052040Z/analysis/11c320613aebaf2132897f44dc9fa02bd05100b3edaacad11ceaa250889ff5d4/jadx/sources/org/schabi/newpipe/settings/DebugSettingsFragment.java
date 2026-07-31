package org.schabi.newpipe.settings;

import androidx.preference.Preference;
import j$.util.Optional;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DebugSettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        Optional empty;
        addPreferencesFromResourceRegistry();
        Preference requirePreference = requirePreference(R.string.allow_heap_dumping_key);
        Preference requirePreference2 = requirePreference(R.string.show_memory_leaks_key);
        Preference requirePreference3 = requirePreference(R.string.check_new_streams_key);
        Preference requirePreference4 = requirePreference(R.string.crash_the_app_key);
        Preference requirePreference5 = requirePreference(R.string.show_error_snackbar_key);
        Preference requirePreference6 = requirePreference(R.string.create_error_notification_key);
        try {
        } catch (Exception unused) {
            empty = Optional.empty();
        }
        if (Class.forName("org.schabi.newpipe.settings.DebugSettingsBVDLeakCanary").getDeclaredConstructor(null).newInstance(null) != null) {
            throw new ClassCastException();
        }
        empty = Optional.of(null);
        requirePreference.setEnabled(empty.isPresent());
        requirePreference2.setEnabled(empty.isPresent());
        if (!empty.isPresent()) {
            requirePreference.setSummary(requirePreference.mContext.getString(R.string.leak_canary_not_available));
            requirePreference2.setSummary(requirePreference2.mContext.getString(R.string.leak_canary_not_available));
        } else {
            if (empty.get() != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                return;
            }
            requirePreference2.mOnClickListener = new FeedViewModel$$ExternalSyntheticLambda0(this);
        }
        requirePreference3.mOnClickListener = new FeedViewModel$$ExternalSyntheticLambda0(22);
        requirePreference4.mOnClickListener = new FeedViewModel$$ExternalSyntheticLambda0(23);
        final int i = 0;
        requirePreference5.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: org.schabi.newpipe.settings.DebugSettingsFragment$$ExternalSyntheticLambda3
            public final /* synthetic */ DebugSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                int i2 = i;
                DebugSettingsFragment debugSettingsFragment = this.f$0;
                switch (i2) {
                    case 0:
                        int i3 = DebugSettingsFragment.$r8$clinit;
                        ErrorUtil.showUiErrorSnackbar(debugSettingsFragment, "Dummy", new RuntimeException("Dummy"));
                        break;
                    default:
                        int i4 = DebugSettingsFragment.$r8$clinit;
                        ErrorUtil.createNotification(debugSettingsFragment.requireContext(), new ErrorInfo(new RuntimeException("Dummy"), UserAction.UI_ERROR, "Dummy", (Integer) null, 24));
                        break;
                }
                return true;
            }
        };
        final int i2 = 1;
        requirePreference6.mOnClickListener = new Preference.OnPreferenceClickListener(this) { // from class: org.schabi.newpipe.settings.DebugSettingsFragment$$ExternalSyntheticLambda3
            public final /* synthetic */ DebugSettingsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                int i22 = i2;
                DebugSettingsFragment debugSettingsFragment = this.f$0;
                switch (i22) {
                    case 0:
                        int i3 = DebugSettingsFragment.$r8$clinit;
                        ErrorUtil.showUiErrorSnackbar(debugSettingsFragment, "Dummy", new RuntimeException("Dummy"));
                        break;
                    default:
                        int i4 = DebugSettingsFragment.$r8$clinit;
                        ErrorUtil.createNotification(debugSettingsFragment.requireContext(), new ErrorInfo(new RuntimeException("Dummy"), UserAction.UI_ERROR, "Dummy", (Integer) null, 24));
                        break;
                }
                return true;
            }
        };
    }
}
