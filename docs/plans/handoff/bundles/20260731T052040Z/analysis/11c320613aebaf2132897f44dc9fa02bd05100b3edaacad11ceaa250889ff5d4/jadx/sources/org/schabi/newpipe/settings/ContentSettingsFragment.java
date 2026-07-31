package org.schabi.newpipe.settings;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroupAdapter;
import java.util.Locale;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.util.Localization;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ContentSettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public String youtubeRestrictedModeEnabledKey;

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        this.youtubeRestrictedModeEnabledKey = getString(R.string.youtube_restricted_mode_enabled);
        addPreferencesFromResourceRegistry();
        Preference requirePreference = requirePreference(R.string.app_language_key);
        int i = 0;
        if (Build.VERSION.SDK_INT >= 33) {
            if (requirePreference.mVisible) {
                requirePreference.mVisible = false;
                PreferenceGroupAdapter preferenceGroupAdapter = requirePreference.mListener;
                if (preferenceGroupAdapter != null) {
                    Handler handler = preferenceGroupAdapter.mHandler;
                    LiveData.AnonymousClass1 anonymousClass1 = preferenceGroupAdapter.mSyncRunnable;
                    handler.removeCallbacks(anonymousClass1);
                    handler.post(anonymousClass1);
                }
            }
            Preference requirePreference2 = requirePreference(R.string.app_language_android_13_and_up_key);
            requirePreference2.mSummaryProvider = new ContentSettingsFragment$$ExternalSyntheticLambda0(this, 1);
            requirePreference2.notifyChanged();
            requirePreference2.mOnClickListener = new ContentSettingsFragment$$ExternalSyntheticLambda0(this, 2);
            if (!requirePreference2.mVisible) {
                requirePreference2.mVisible = true;
                PreferenceGroupAdapter preferenceGroupAdapter2 = requirePreference2.mListener;
                if (preferenceGroupAdapter2 != null) {
                    Handler handler2 = preferenceGroupAdapter2.mHandler;
                    LiveData.AnonymousClass1 anonymousClass12 = preferenceGroupAdapter2.mSyncRunnable;
                    handler2.removeCallbacks(anonymousClass12);
                    handler2.post(anonymousClass12);
                }
            }
        } else {
            requirePreference.mOnChangeListener = new ContentSettingsFragment$$ExternalSyntheticLambda0(this, 3);
        }
        requirePreference(R.string.image_quality_key).mOnChangeListener = new ContentSettingsFragment$$ExternalSyntheticLambda0(this, i);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        Context requireContext = requireContext();
        Locale preferredLocale = Localization.getPreferredLocale(requireContext);
        org.schabi.newpipe.extractor.localization.Localization localization = new org.schabi.newpipe.extractor.localization.Localization(preferredLocale.getLanguage(), preferredLocale.getCountry());
        ContentCountry preferredContentCountry = Localization.getPreferredContentCountry(requireContext);
        Utility.preferredLocalization = localization;
        Utility.preferredContentCountry = preferredContentCountry;
        PlayerHelper.FORMATTERS_PROVIDER.this$0 = null;
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public final boolean onPreferenceTreeClick(Preference preference) {
        if (preference.mKey.equals(this.youtubeRestrictedModeEnabledKey)) {
            Context context = getContext();
            if (context != null) {
                DownloaderImpl.instance.updateYoutubeRestrictedModeCookies(context);
            } else {
                Log.w(this.TAG, "onPreferenceTreeClick: null context");
            }
        }
        return super.onPreferenceTreeClick(preference);
    }
}
