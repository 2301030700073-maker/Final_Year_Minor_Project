package org.wikipedia.settings.dev;

import android.os.Handler;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.lifecycle.LiveData$1;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceGroupAdapter;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceScreen;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.enums.EnumEntries;
import kotlin.text.StringsKt;
import org.wikipedia.R;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;
import org.wikipedia.settings.BasePreferenceLoader;
import org.wikipedia.settings.Prefs;
import org.wikipedia.yearinreview.YearInReviewSurveyState;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeveloperSettingsPreferenceLoader extends BasePreferenceLoader {
    public final Utils$$ExternalSyntheticBUOutline0 setMediaWikiBaseUriChangeListener;
    public final Utils$$ExternalSyntheticBUOutline0 setMediaWikiMultiLangSupportChangeListener;

    public DeveloperSettingsPreferenceLoader(PreferenceFragmentCompat preferenceFragmentCompat) {
        super(0, preferenceFragmentCompat);
        this.setMediaWikiBaseUriChangeListener = new Utils$$ExternalSyntheticBUOutline0(3, this);
        this.setMediaWikiMultiLangSupportChangeListener = new Utils$$ExternalSyntheticBUOutline0(6, this);
    }

    public static boolean filterPreferenceGroupItems(Preference preference, String str) {
        CharSequence summary;
        String obj;
        String obj2;
        if (!(preference instanceof PreferenceGroup)) {
            CharSequence charSequence = preference.mTitle;
            if ((charSequence != null && (obj2 = charSequence.toString()) != null && StringsKt.contains(obj2, str, true)) || ((summary = preference.getSummary()) != null && (obj = summary.toString()) != null && StringsKt.contains(obj, str, true))) {
                r1 = true;
            }
            preference.setVisible(r1);
            return r1;
        }
        PreferenceGroup preferenceGroup = (PreferenceGroup) preference;
        int size = preferenceGroup.mPreferences.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Preference preference2 = preferenceGroup.getPreference(i2);
            preference2.getClass();
            if (filterPreferenceGroupItems(preference2, str)) {
                i++;
            }
        }
        preferenceGroup.setVisible(i > 0);
        return preferenceGroup.mVisible;
    }

    public final void filterPreferences(String str) {
        PreferenceManager preferenceManager = ((PreferenceFragmentCompat) this.fragment).mPreferenceManager;
        if (str != null) {
            int size = ((PreferenceScreen) preferenceManager.mPreferenceScreen).mPreferences.size();
            for (int i = 0; i < size; i++) {
                Preference preference = ((PreferenceScreen) ((PreferenceFragmentCompat) this.fragment).mPreferenceManager.mPreferenceScreen).getPreference(i);
                preference.getClass();
                filterPreferenceGroupItems(preference, str);
            }
            return;
        }
        PreferenceScreen preferenceScreen = (PreferenceScreen) preferenceManager.mPreferenceScreen;
        synchronized (preferenceScreen) {
            try {
                ArrayList arrayList = preferenceScreen.mPreferences;
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    preferenceScreen.removePreferenceInt((Preference) arrayList.get(0));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        PreferenceGroupAdapter preferenceGroupAdapter = preferenceScreen.mListener;
        if (preferenceGroupAdapter != null) {
            Handler handler = preferenceGroupAdapter.mHandler;
            LiveData$1 liveData$1 = preferenceGroupAdapter.mSyncRunnable;
            handler.removeCallbacks(liveData$1);
            handler.post(liveData$1);
        }
        loadPreferences();
    }

    @Override // org.wikipedia.settings.PreferenceLoader
    public final void loadPreferences() {
        loadPreferences(R.xml.developer_preferences);
        findPreference(R.string.preference_key_mediawiki_base_uri).mOnChangeListener = this.setMediaWikiBaseUriChangeListener;
        findPreference(R.string.preference_key_mediawiki_base_uri_supports_lang_code).mOnChangeListener = this.setMediaWikiMultiLangSupportChangeListener;
        findPreference(R.string.preferences_developer_crash_key).mOnClickListener = new Utils$$ExternalSyntheticBUOutline0(7);
        findPreference(R.string.preference_key_add_articles).mOnChangeListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 3);
        findPreference(R.string.preference_key_add_reading_lists).mOnChangeListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 7);
        findPreference(R.string.preference_key_delete_reading_lists).mOnChangeListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 8);
        findPreference(R.string.preference_key_delete_test_reading_lists).mOnChangeListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 9);
        findPreference(R.string.preference_key_add_malformed_reading_list_page).mOnChangeListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 10);
        findPreference(R.string.preference_key_missing_description_test).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 11);
        findPreference(R.string.preference_key_missing_description_test2).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 12);
        Preference findPreference = findPreference(R.string.preference_key_announcement_shown_dialogs);
        AppCompatActivity requireActivity = ((PreferenceFragmentCompat) this.fragment).requireActivity();
        Prefs prefs = Prefs.INSTANCE;
        boolean z = true;
        z = true;
        z = true;
        findPreference.setSummary(requireActivity.getString(R.string.preferences_developer_announcement_reset_shown_dialogs_summary, Integer.valueOf(Prefs.getAnnouncementShownDialogs().size())));
        findPreference(R.string.preference_key_announcement_shown_dialogs).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 13);
        findPreference(R.string.preference_key_suggested_edits_reactivation_test).mOnChangeListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 14);
        findPreference(R.string.preferences_developer_suggested_edits_reactivation_notification_stage_one).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 0);
        findPreference(R.string.preferences_developer_suggested_edits_reactivation_notification_stage_two).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 15);
        findPreference(R.string.preference_developer_clear_all_talk_topics).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 16);
        findPreference(R.string.preference_developer_clear_last_location_and_zoom_level).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 17);
        findPreference(R.string.preference_key_memory_leak_test).mOnChangeListener = new Utils$$ExternalSyntheticBUOutline0(8);
        findPreference(R.string.preferences_developer_otd_show_notification).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 18);
        findPreference(R.string.preference_key_otd_notification_state).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 19);
        findPreference(R.string.preference_key_playground_category).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, z ? 1 : 0);
        ListPreference listPreference = (ListPreference) findPreference(R.string.preference_key_recommended_reading_list_notification_simulator);
        EnumEntries entries = RecommendedReadingListUpdateFrequency.getEntries();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entries, 10));
        Iterator<E> it = entries.iterator();
        while (it.hasNext()) {
            arrayList.add(((RecommendedReadingListUpdateFrequency) it.next()).name());
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        listPreference.setEntries(strArr);
        listPreference.mEntryValues = strArr;
        listPreference.mOnChangeListener = new TextLinkScope$$ExternalSyntheticLambda3(13, listPreference, this);
        findPreference(R.string.preference_key_donation_reminders_dev_reset).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 2);
        findPreference(R.string.preference_key_donation_reminders_dev_reset_seen_date).mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 4);
        ListPreference listPreference2 = (ListPreference) findPreference(R.string.preference_key_yir_survey_state);
        EnumEntries entries2 = YearInReviewSurveyState.getEntries();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entries2, 10));
        Iterator<E> it2 = entries2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((YearInReviewSurveyState) it2.next()).name());
        }
        String[] strArr2 = (String[]) arrayList2.toArray(new String[0]);
        listPreference2.setEntries(strArr2);
        listPreference2.mEntryValues = strArr2;
        listPreference2.mOnChangeListener = new Utils$$ExternalSyntheticBUOutline0(4);
        ((ListPreference) findPreference(R.string.preference_key_event_platform_intake_base_uri_list)).mOnChangeListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 5);
        Preference findPreference2 = findPreference(R.string.preference_key_reading_challenge_widgets);
        if (!StringsKt.contains("org.wikipedia", "beta", false) && !StringsKt.contains("org.wikipedia", "alpha", false) && !StringsKt.contains("org.wikipedia", "dev", false)) {
            z = false;
        }
        findPreference2.setVisible(z);
        findPreference2.mOnClickListener = new DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(this, 6);
        ListPreference listPreference3 = (ListPreference) findPreference(R.string.preference_key_home_preference_selection);
        Prefs prefs2 = Prefs.INSTANCE;
        listPreference3.setValue(Prefs.getHomePreferenceSelection().name());
        EnumEntries entries3 = HomePreferenceType.getEntries();
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entries3, 10));
        Iterator<E> it3 = entries3.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((HomePreferenceType) it3.next()).name());
        }
        String[] strArr3 = (String[]) arrayList3.toArray(new String[0]);
        listPreference3.setEntries(strArr3);
        listPreference3.mEntryValues = strArr3;
        listPreference3.mOnChangeListener = new Utils$$ExternalSyntheticBUOutline0(5);
    }
}
