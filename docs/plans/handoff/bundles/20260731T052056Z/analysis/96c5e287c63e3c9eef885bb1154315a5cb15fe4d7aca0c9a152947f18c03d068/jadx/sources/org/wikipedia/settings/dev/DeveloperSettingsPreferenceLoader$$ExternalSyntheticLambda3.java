package org.wikipedia.settings.dev;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.IntIterator;
import kotlin.coroutines.Continuation;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okio.Okio__OkioKt;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.R;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.donate.donationreminder.DonationReminderConfig;
import org.wikipedia.games.onthisday.OnThisDayGameNotificationState;
import org.wikipedia.notifications.NotificationPollBroadcastReceiver;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.search.SearchResultsViewModel$loadHybridSearchResults$2;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround;
import org.wikipedia.settings.dev.playground.ReadingChallengePlayGroundDialog;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3 implements Preference.OnPreferenceClickListener, Preference.OnPreferenceChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DeveloperSettingsPreferenceLoader f$0;

    public /* synthetic */ DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3(DeveloperSettingsPreferenceLoader developerSettingsPreferenceLoader, int i) {
        this.$r8$classId = i;
        this.f$0 = developerSettingsPreferenceLoader;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        int intValue;
        int i = this.$r8$classId;
        DeveloperSettingsPreferenceLoader developerSettingsPreferenceLoader = this.f$0;
        switch (i) {
            case 3:
                obj.getClass();
                Integer intOrNull = StringsKt__StringsJVMKt.toIntOrNull(StringsKt.trim(obj.toString()).toString());
                int intValue2 = intOrNull != null ? intOrNull.intValue() : 0;
                if (intValue2 != 0) {
                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment), new DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1(developerSettingsPreferenceLoader, 0), null, new DeveloperSettingsPreferenceLoader$createTestReadingList$2(1, "Test reading list", intValue2, null), 2);
                    break;
                }
                break;
            case 4:
            case 6:
            default:
                int i2 = NotificationPollBroadcastReceiver.$r8$clinit;
                PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment;
                AppCompatActivity requireActivity = preferenceFragmentCompat.requireActivity();
                Object systemService = requireActivity.getSystemService("alarm");
                systemService.getClass();
                Intent intent = new Intent(requireActivity, (Class<?>) NotificationPollBroadcastReceiver.class);
                intent.setAction("action_notification_poll");
                PendingIntent broadcast = PendingIntent.getBroadcast(requireActivity, 0, intent, 201326592);
                broadcast.getClass();
                ((AlarmManager) systemService).cancel(broadcast);
                ReadingListFragment.MultiSelectCallback.startPollTask(preferenceFragmentCompat.requireActivity());
                break;
            case 5:
                obj.getClass();
                String str = (String) obj;
                Prefs prefs = Prefs.INSTANCE;
                PrefsIoUtil.setString(R.string.preference_key_event_platform_intake_base_uri, str);
                developerSettingsPreferenceLoader.findPreference(R.string.preference_key_event_platform_intake_base_uri).setSummary(str);
                break;
            case 7:
                obj.getClass();
                Integer intOrNull2 = StringsKt__StringsJVMKt.toIntOrNull(StringsKt.trim(obj.toString()).toString());
                int intValue3 = intOrNull2 != null ? intOrNull2.intValue() : 0;
                if (intValue3 != 0) {
                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment), new DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1(developerSettingsPreferenceLoader, 0), null, new DeveloperSettingsPreferenceLoader$createTestReadingList$2(intValue3, "Reading list", 10, null), 2);
                    break;
                }
                break;
            case 8:
                obj.getClass();
                Integer intOrNull3 = StringsKt__StringsJVMKt.toIntOrNull(StringsKt.trim(obj.toString()).toString());
                intValue = intOrNull3 != null ? intOrNull3.intValue() : 0;
                if (intValue != 0) {
                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment), new DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1(developerSettingsPreferenceLoader, 1), null, new SearchResultsViewModel$loadHybridSearchResults$2("Reading list", intValue, null), 2);
                    break;
                }
                break;
            case 9:
                obj.getClass();
                Integer intOrNull4 = StringsKt__StringsJVMKt.toIntOrNull(StringsKt.trim(obj.toString()).toString());
                intValue = intOrNull4 != null ? intOrNull4.intValue() : 0;
                if (intValue != 0) {
                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment), new DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1(developerSettingsPreferenceLoader, 1), null, new SearchResultsViewModel$loadHybridSearchResults$2("Test reading list", intValue, null), 2);
                    break;
                }
                break;
            case 10:
                obj.getClass();
                Integer intOrNull5 = StringsKt__StringsJVMKt.toIntOrNull(StringsKt.trim(obj.toString()).toString());
                IntRange until = RegexKt.until(0, intOrNull5 != null ? intOrNull5.intValue() : 1);
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(until, 10));
                Iterator it = until.iterator();
                while (((IntProgressionIterator) it).hasNext) {
                    String m = Animation.CC.m(((IntIterator) it).nextInt(), "Malformed page ");
                    WikiSite.Companion.getClass();
                    arrayList.add(new ReadingListPage(new PageTitle(m, WikiSite.Companion.forLanguageCode("foo"), (String) null)));
                }
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment), new DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1(developerSettingsPreferenceLoader, 2), null, new TalkReplyViewModel$loadTemplates$2(arrayList, null), 2);
                break;
        }
        return true;
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        int i = this.$r8$classId;
        int i2 = 2;
        Continuation continuation = null;
        int i3 = 0;
        DeveloperSettingsPreferenceLoader developerSettingsPreferenceLoader = this.f$0;
        int i4 = 1;
        switch (i) {
            case 0:
                int i5 = NotificationPollBroadcastReceiver.$r8$clinit;
                ReadingListFragment.MultiSelectCallback.showSuggestedEditsLocalNotification(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), R.string.suggested_edits_reactivation_notification_stage_one);
                break;
            case 1:
                PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment;
                preferenceFragmentCompat.requireActivity().startActivity(new Intent(preferenceFragmentCompat.requireActivity(), (Class<?>) CategoryDeveloperPlayGround.class));
                break;
            case 2:
                Prefs prefs = Prefs.INSTANCE;
                Prefs.setDonationReminderConfig(new DonationReminderConfig());
                PreferenceFragmentCompat preferenceFragmentCompat2 = (PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment;
                Toast.makeText(preferenceFragmentCompat2.requireActivity(), "donationReminderConfig has been reset", 0).show();
                preferenceFragmentCompat2.requireActivity().finish();
                break;
            case 3:
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            default:
                Prefs prefs2 = Prefs.INSTANCE;
                Prefs.setOtdNotificationState(OnThisDayGameNotificationState.NO_INTERACTED);
                PreferenceFragmentCompat preferenceFragmentCompat3 = (PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment;
                AppCompatActivity requireActivity = preferenceFragmentCompat3.requireActivity();
                Object systemService = requireActivity.getSystemService("alarm");
                systemService.getClass();
                Intent action = new Intent(requireActivity, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_daily_game");
                action.getClass();
                ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(requireActivity, 0, action, 67108864));
                ShareUtil.showMessage(preferenceFragmentCompat3.requireActivity(), "Notification state reset.", 0);
                break;
            case 4:
                Prefs prefs3 = Prefs.INSTANCE;
                Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(Prefs.getDonationReminderConfig(), false, 0L, 0L, 0, 0, RecyclerView.DECELERATION_RATE, false, 0, 0, 509));
                PreferenceFragmentCompat preferenceFragmentCompat4 = (PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment;
                Toast.makeText(preferenceFragmentCompat4.requireActivity(), "promptLastSeen has been reset", 0).show();
                preferenceFragmentCompat4.requireActivity().finish();
                break;
            case 6:
                Okio__OkioKt.show(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity().getSupportFragmentManager(), new ReadingChallengePlayGroundDialog());
                break;
            case 11:
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment), new DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1(developerSettingsPreferenceLoader, 3), null, new DeveloperSettingsPreferenceLoader$loadPreferences$7$2(developerSettingsPreferenceLoader, continuation, i3), 2);
                break;
            case 12:
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment), new DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1(developerSettingsPreferenceLoader, 4), null, new DeveloperSettingsPreferenceLoader$loadPreferences$7$2(developerSettingsPreferenceLoader, continuation, i2), 2);
                break;
            case IMAGE_VALUE:
                Prefs prefs4 = Prefs.INSTANCE;
                PrefsIoUtil.remove(R.string.preference_key_announcement_shown_dialogs);
                developerSettingsPreferenceLoader.loadPreferences();
                break;
            case 15:
                int i6 = NotificationPollBroadcastReceiver.$r8$clinit;
                ReadingListFragment.MultiSelectCallback.showSuggestedEditsLocalNotification(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), R.string.suggested_edits_reactivation_notification_stage_two);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                AwaitKt.launch$default(AwaitKt.CoroutineScope(MainDispatcherLoader.dispatcher), null, null, new DeveloperSettingsPreferenceLoader$loadPreferences$7$2(developerSettingsPreferenceLoader, continuation, i4), 3);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                Prefs prefs5 = Prefs.INSTANCE;
                PrefsIoUtil.setString(R.string.preference_key_places_last_location_and_zoom_level, null);
                Toast.makeText(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), "Reset complete.", 0).show();
                break;
            case RADIO_GROUP_VALUE:
                NodeUtils.showNotification(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity());
                break;
        }
        return true;
    }
}
