package org.wikipedia.settings;

import android.content.Intent;
import android.os.Build;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.Modifier;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import kotlin.collections.EmptyList;
import okhttp3.Cache;
import okio.Okio__OkioKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.donate.donationreminder.DonationReminderActivity;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.readinglist.recommended.RecommendedReadingListHelper;
import org.wikipedia.readinglist.recommended.RecommendedReadingListOnboardingActivity;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSource;
import org.wikipedia.settings.homefeed.HomeFeedSettingsActivity;
import org.wikipedia.settings.homefeed.HomeFeedSettingsStartDestination;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.theme.ThemeFittingRoomActivity;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SettingsPreferenceLoader$$ExternalSyntheticLambda0 implements Preference.OnPreferenceClickListener, Preference.OnPreferenceChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SettingsPreferenceLoader f$0;

    public /* synthetic */ SettingsPreferenceLoader$$ExternalSyntheticLambda0(SettingsPreferenceLoader settingsPreferenceLoader, int i) {
        this.$r8$classId = i;
        this.f$0 = settingsPreferenceLoader;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        obj.getClass();
        if (((Boolean) obj).booleanValue()) {
            UriUtil.submit$default(238, null, "yir_on_click", null, "setting", null);
            return true;
        }
        UriUtil.submit$default(238, null, "yir_off_click", null, "setting", null);
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(((PreferenceFragmentCompat) this.f$0.fragment).requireActivity(), 0);
        materialAlertDialogBuilder.setTitle(R.string.year_in_review_disable_title);
        materialAlertDialogBuilder.setMessage(R.string.year_in_review_setting_subtitle);
        materialAlertDialogBuilder.setPositiveButton(R.string.year_in_review_disable_positive_button, new PageFragment$$ExternalSyntheticLambda28(9, preference));
        materialAlertDialogBuilder.setNegativeButton(R.string.year_in_review_disable_negative_button, new TextInputDialog$$ExternalSyntheticLambda2(8));
        materialAlertDialogBuilder.show();
        return false;
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        int i = this.$r8$classId;
        SettingsPreferenceLoader settingsPreferenceLoader = this.f$0;
        switch (i) {
            case 0:
                PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) settingsPreferenceLoader.fragment;
                AppCompatActivity requireActivity = preferenceFragmentCompat.requireActivity();
                int i2 = WikipediaLanguagesActivity.$r8$clinit;
                requireActivity.startActivityForResult(Cache.Companion.newIntent(preferenceFragmentCompat.requireActivity(), Constants.InvokeSource.SETTINGS), 59);
                break;
            case 1:
                PreferenceFragmentCompat preferenceFragmentCompat2 = (PreferenceFragmentCompat) settingsPreferenceLoader.fragment;
                AppCompatActivity requireActivity2 = preferenceFragmentCompat2.requireActivity();
                int i3 = HomeFeedSettingsActivity.$r8$clinit;
                AppCompatActivity requireActivity3 = preferenceFragmentCompat2.requireActivity();
                HomeFeedSettingsStartDestination homeFeedSettingsStartDestination = HomeFeedSettingsStartDestination.ROOT;
                homeFeedSettingsStartDestination.getClass();
                Intent putExtra = new Intent(requireActivity3, (Class<?>) HomeFeedSettingsActivity.class).putExtra("start_destination", homeFeedSettingsStartDestination.name());
                putExtra.getClass();
                requireActivity2.startActivityForResult(putExtra, 58);
                break;
            case 2:
                PreferenceFragmentCompat preferenceFragmentCompat3 = (PreferenceFragmentCompat) settingsPreferenceLoader.fragment;
                AppCompatActivity requireActivity4 = preferenceFragmentCompat3.requireActivity();
                int i4 = ThemeFittingRoomActivity.$r8$clinit;
                requireActivity4.startActivity(new Intent(preferenceFragmentCompat3.requireActivity(), (Class<?>) ThemeFittingRoomActivity.class));
                break;
            case 3:
                Okio__OkioKt.show(((PreferenceFragmentCompat) settingsPreferenceLoader.fragment).getParentFragmentManager(), new AppIconDialog());
                break;
            case 4:
            default:
                PreferenceFragmentCompat preferenceFragmentCompat4 = (PreferenceFragmentCompat) settingsPreferenceLoader.fragment;
                Cache.Companion.logDonationReminderAction$default("clear_donation_hist_click", "global_setting", null, null, null, null, null, 252);
                Prefs prefs = Prefs.INSTANCE;
                boolean isEmpty = Prefs.getDonationResults().isEmpty();
                if (!isEmpty) {
                    Prefs.setDonationResults(EmptyList.INSTANCE);
                }
                int i5 = !isEmpty ? R.string.donation_history_deleted_message_snackbar : R.string.donation_history_no_history_message_snackbar;
                AppCompatActivity requireActivity5 = preferenceFragmentCompat4.requireActivity();
                String string = preferenceFragmentCompat4.requireActivity().getResources().getString(i5);
                string.getClass();
                ShareUtil.showMessage(requireActivity5, string, 0);
                break;
            case 5:
                PreferenceFragmentCompat preferenceFragmentCompat5 = (PreferenceFragmentCompat) settingsPreferenceLoader.fragment;
                preferenceFragmentCompat5.requireActivity().startActivity(new Intent(preferenceFragmentCompat5.requireActivity(), (Class<?>) AboutActivity.class));
                break;
            case 6:
                ShareUtil.composeEmail$default(((PreferenceFragmentCompat) settingsPreferenceLoader.fragment).requireActivity(), null, "Android App r/50598-r-2026-07-13 Feedback", Modifier.CC.m(Modifier.CC.m352m("\n\nVersion: r/50598-r-2026-07-13 \nDevice: ", Build.BRAND, " ", Build.MODEL, " (SDK: "), Build.VERSION.SDK_INT, ")\n"), 2);
                break;
            case 7:
                PreferenceFragmentCompat preferenceFragmentCompat6 = (PreferenceFragmentCompat) settingsPreferenceLoader.fragment;
                WikiGamesEvent.submit$default("discover_click", "global_settings", null, null, null, null, null, null, 508);
                Prefs prefs2 = Prefs.INSTANCE;
                if (!Prefs.getRecommendedReadingListInterests().isEmpty() || Prefs.getRecommendedReadingListSource() != RecommendedReadingListSource.INTERESTS) {
                    AppCompatActivity requireActivity6 = preferenceFragmentCompat6.requireActivity();
                    int i6 = RecommendedReadingListSettingsActivity.$r8$clinit;
                    requireActivity6.startActivity(new Intent(preferenceFragmentCompat6.requireActivity(), (Class<?>) RecommendedReadingListSettingsActivity.class));
                    break;
                } else {
                    AppCompatActivity requireActivity7 = preferenceFragmentCompat6.requireActivity();
                    int i7 = RecommendedReadingListOnboardingActivity.$r8$clinit;
                    requireActivity7.startActivity(RecommendedReadingListHelper.newIntent$default(preferenceFragmentCompat6.requireActivity()));
                    break;
                }
            case 8:
                PreferenceFragmentCompat preferenceFragmentCompat7 = (PreferenceFragmentCompat) settingsPreferenceLoader.fragment;
                AppCompatActivity requireActivity8 = preferenceFragmentCompat7.requireActivity();
                int i8 = DonationReminderActivity.$r8$clinit;
                requireActivity8.startActivity(DonationReminderScreenKt.newIntent(preferenceFragmentCompat7.requireActivity(), true));
                break;
        }
        return true;
    }
}
