package org.wikipedia.settings;

import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import kotlin.collections.CollectionsKt;
import okhttp3.Headers;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.login.LoginClient;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.util.UriUtil;
import org.wikipedia.yearinreview.YearInReviewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SettingsPreferenceLoader extends BasePreferenceLoader {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SettingsPreferenceLoader(PreferenceFragmentCompat preferenceFragmentCompat, int i) {
        super(0, preferenceFragmentCompat);
        this.$r8$classId = i;
    }

    @Override // org.wikipedia.settings.PreferenceLoader
    public final void loadPreferences() {
        int i = 6;
        switch (this.$r8$classId) {
            case 0:
                PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) this.fragment;
                loadPreferences(R.xml.preferences);
                int i2 = 0;
                if (PrefsIoUtil.getConfig().getDisableReadingListSync()) {
                    findPreference(R.string.preference_category_sync).setVisible(false);
                    findPreference(R.string.preference_key_sync_reading_lists).setVisible(false);
                }
                findPreference(R.string.preference_key_sync_reading_lists).mOnChangeListener = new AvPlayer(21, this);
                loadPreferences(R.xml.preferences_about);
                updateLanguagePrefSummary();
                findPreference(R.string.preference_key_language).mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, i2);
                findPreference(R.string.preference_key_customize_home_feed).mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, 1);
                Preference findPreference = findPreference(R.string.preference_key_color_theme);
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                findPreference.setSummary(findPreference.mContext.getString(Jsoup.getInstance().currentTheme.getNameId()));
                findPreference.mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, 2);
                Preference findPreference2 = findPreference(R.string.preference_key_selected_app_icon);
                Prefs prefs = Prefs.INSTANCE;
                YearInReviewModel yearInReviewModel = (YearInReviewModel) Prefs.getYearInReviewModelData().get(2025);
                findPreference2.setVisible(yearInReviewModel != null && yearInReviewModel.isCustomIconUnlocked);
                findPreference2.setSummary(preferenceFragmentCompat.getString(R.string.settings_app_icon_preference_subtitle, 2025));
                findPreference2.mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, 3);
                Preference findPreference3 = findPreference(R.string.preference_key_year_in_review_is_enabled);
                findPreference3.setVisible(LoginClient.isAccessible());
                if (findPreference3.mVisible) {
                    UriUtil.submit$default(238, null, "impression", null, "setting", null);
                }
                findPreference3.mOnChangeListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, 4);
                findPreference(R.string.preference_key_about_wikipedia_app).mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, 5);
                findPreference(R.string.preference_key_send_feedback).mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, i);
                findPreference(R.string.preference_key_recommended_reading_list_enabled).mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, 7);
                if (Headers.Companion.isLoggedIn()) {
                    loadPreferences(R.xml.preferences_account);
                    ((LogoutPreference) findPreference(R.string.preference_key_logout)).activity = preferenceFragmentCompat.requireActivity();
                }
                Preference findPreference4 = findPreference(R.string.preference_key_donation_reminders);
                int i3 = DonationReminderHelper.validReadCountOnSeconds;
                findPreference4.setVisible(DonationReminderHelper.isEnabled());
                findPreference4.mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, 8);
                findPreference(R.string.preference_key_delete_local_donation_history).mOnClickListener = new SettingsPreferenceLoader$$ExternalSyntheticLambda0(this, 9);
                break;
            default:
                loadPreferences(R.xml.preferences_notifications);
                ((PreferenceMultiLine) findPreference(R.string.preference_key_notification_customize_push)).mOnClickListener = new SearchFragment$$ExternalSyntheticLambda1(i, this);
                break;
        }
    }

    public void updateLanguagePrefSummary() {
        Preference findPreference = findPreference(R.string.preference_key_language);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        AppLanguageState languageState = Jsoup.getInstance().getLanguageState();
        findPreference.setSummary(CollectionsKt.joinToString$default(languageState.getAppLanguageCodes(), ", ", null, null, new MainActivity$$ExternalSyntheticLambda1(17, languageState), 30));
    }
}
