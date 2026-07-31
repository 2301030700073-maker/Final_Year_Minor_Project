package org.wikipedia.settings;

import android.location.Location;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.paging.PageFetcher$flow$1;
import coil3.size.ViewSizeResolver$CC;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.CallbackFlowBuilder;
import kotlinx.coroutines.flow.DistinctFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.ActivityTabModules;
import org.wikipedia.donate.DonationResult;
import org.wikipedia.donate.donationreminder.DonationReminderConfig;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.games.onthisday.OnThisDayGameNotificationState;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.action.PageActionItem;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSource;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;
import org.wikipedia.readinglist.recommended.SourceWithOffset;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterTypes;
import org.wikipedia.theme.Theme;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.watchlist.WatchlistFilterTypes;
import org.wikipedia.yearinreview.YearInReviewModel;
import org.wikipedia.yearinreview.YearInReviewSurveyState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Prefs {
    public static final Prefs INSTANCE = new Prefs();
    public static final DistinctFlowImpl placesLastLocationFlow;
    public static final CallbackFlowBuilder preferenceKeyChangeFlow;

    static {
        int i = 2;
        Continuation continuation = null;
        CallbackFlowBuilder callbackFlow = StateFlowKt.callbackFlow(new PageFetcher$flow$1.AnonymousClass1(i, 3, continuation));
        Prefs$$ExternalSyntheticLambda0 prefs$$ExternalSyntheticLambda0 = new Prefs$$ExternalSyntheticLambda0(0);
        SaversKt$$ExternalSyntheticLambda2 saversKt$$ExternalSyntheticLambda2 = StateFlowKt.defaultKeySelector;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, prefs$$ExternalSyntheticLambda0);
        placesLastLocationFlow = StateFlowKt.distinctUntilChangedBy$FlowKt__DistinctKt(callbackFlow, saversKt$$ExternalSyntheticLambda2, prefs$$ExternalSyntheticLambda0);
        preferenceKeyChangeFlow = StateFlowKt.callbackFlow(new PageFetcher$flow$1.AnonymousClass1(i, 4, continuation));
    }

    public static ActivityTabModules getActivityTabModules() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_activity_tab_modules, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(ActivityTabModules.Companion.serializer()));
            } catch (Exception e) {
                L.w(e);
            }
        }
        ActivityTabModules activityTabModules = (ActivityTabModules) obj;
        return activityTabModules == null ? new ActivityTabModules(true, true, true, true, true, false, true) : activityTabModules;
    }

    public static Set getAnnouncementShownDialogs() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_announcement_shown_dialogs, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(StringSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set = (Set) obj;
        return set == null ? EmptySet.INSTANCE : set;
    }

    public static boolean getAutoShowEditNotices() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_auto_show_edit_notices), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r7v5, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map getCookies() {
        /*
            android.content.SharedPreferences r0 = org.wikipedia.settings.PrefsIoUtil.getPreferences()
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            r3 = 2131887575(0x7f1205d7, float:1.940976E38)
            java.lang.String r2 = org.wikipedia.settings.PrefsIoUtil.getKey(r3, r2)
            boolean r0 = r0.contains(r2)
            kotlin.collections.EmptyMap r2 = kotlin.collections.EmptyMap.INSTANCE
            if (r0 != 0) goto L17
            return r2
        L17:
            kotlinx.serialization.json.JsonImpl r0 = org.wikipedia.json.JsonUtil.json
            java.lang.String r0 = ""
            java.lang.String r3 = org.wikipedia.settings.PrefsIoUtil.getString(r3, r0)
            if (r3 != 0) goto L22
            goto L23
        L22:
            r0 = r3
        L23:
            int r3 = r0.length()
            r4 = 0
            if (r3 != 0) goto L2c
        L2a:
            r0 = r4
            goto L4e
        L2c:
            kotlinx.serialization.json.JsonImpl r3 = org.wikipedia.json.JsonUtil.json     // Catch: java.lang.Exception -> L49
            r3.getClass()     // Catch: java.lang.Exception -> L49
            kotlinx.serialization.internal.HashMapSerializer r5 = new kotlinx.serialization.internal.HashMapSerializer     // Catch: java.lang.Exception -> L49
            kotlinx.serialization.internal.StringSerializer r6 = kotlinx.serialization.internal.StringSerializer.INSTANCE     // Catch: java.lang.Exception -> L49
            kotlinx.serialization.internal.HashSetSerializer r7 = new kotlinx.serialization.internal.HashSetSerializer     // Catch: java.lang.Exception -> L49
            r8 = 1
            r7.<init>(r6, r8)     // Catch: java.lang.Exception -> L49
            r5.<init>(r6, r7, r8)     // Catch: java.lang.Exception -> L49
            kotlinx.serialization.KSerializer r5 = kotlin.UnsignedKt.getNullable(r5)     // Catch: java.lang.Exception -> L49
            kotlinx.serialization.KSerializer r5 = (kotlinx.serialization.KSerializer) r5     // Catch: java.lang.Exception -> L49
            java.lang.Object r0 = r3.decodeFromString(r0, r5)     // Catch: java.lang.Exception -> L49
            goto L4e
        L49:
            r0 = move-exception
            org.wikipedia.util.log.L.w(r0)
            goto L2a
        L4e:
            java.util.Map r0 = (java.util.Map) r0
            if (r0 != 0) goto L53
            goto L54
        L53:
            r2 = r0
        L54:
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            int r3 = r2.size()
            int r3 = kotlin.collections.MapsKt__MapsKt.mapCapacity(r3)
            r0.<init>(r3)
            java.util.Set r2 = r2.entrySet()
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r2 = r2.iterator()
        L6b:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto Lcc
            java.lang.Object r3 = r2.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r5 = r3.getKey()
            java.lang.Object r6 = r3.getKey()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r3 = r3.getValue()
            java.util.List r3 = (java.util.List) r3
            java.lang.String r7 = "https://"
            java.lang.String r6 = androidx.compose.ui.Modifier.CC.m(r7, r6)
            okhttp3.HttpUrl$Builder r7 = new okhttp3.HttpUrl$Builder     // Catch: java.lang.IllegalArgumentException -> L9a
            r7.<init>(r1)     // Catch: java.lang.IllegalArgumentException -> L9a
            r7.parse$okhttp(r4, r6)     // Catch: java.lang.IllegalArgumentException -> L9a
            okhttp3.HttpUrl r6 = r7.m872build()     // Catch: java.lang.IllegalArgumentException -> L9a
            goto L9b
        L9a:
            r6 = r4
        L9b:
            if (r6 == 0) goto Lbe
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r3 = r3.iterator()
        La6:
            boolean r8 = r3.hasNext()
            if (r8 == 0) goto Lbf
            java.lang.Object r8 = r3.next()
            java.lang.String r8 = (java.lang.String) r8
            java.util.regex.Pattern r9 = okhttp3.Cookie.YEAR_PATTERN
            okhttp3.Cookie r8 = okhttp3.Cookie.Companion.parse(r6, r8)
            if (r8 == 0) goto La6
            r7.add(r8)
            goto La6
        Lbe:
            r7 = r4
        Lbf:
            if (r7 != 0) goto Lc3
            kotlin.collections.EmptyList r7 = kotlin.collections.EmptyList.INSTANCE
        Lc3:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>(r7)
            r0.put(r5, r3)
            goto L6b
        Lcc:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.Prefs.getCookies():java.util.Map");
    }

    public static List getCustomizeToolbarMenuOrder() {
        EnumEntries entries = PageActionItem.getEntries();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entries, 10));
        Iterator<E> it = entries.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((PageActionItem) it.next()).ordinal()));
        }
        LinkedHashSet subtract = CollectionsKt.subtract(arrayList, CollectionsKt.toSet(getCustomizeToolbarOrder()));
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_customize_toolbar_menu_order, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(IntSerializer.INSTANCE, 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        List list = (List) obj;
        if (list == null) {
            PageActionItem.Companion.getClass();
            list = PageActionItem.DEFAULT_OVERFLOW_MENU_LIST;
        }
        return CollectionsKt.toList(CollectionsKt.union(list, subtract));
    }

    public static List getCustomizeToolbarOrder() {
        List list;
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_customize_toolbar_order, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(IntSerializer.INSTANCE, 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        List list2 = (List) obj;
        if (list2 != null) {
            return list2;
        }
        PageActionItem.Companion.getClass();
        list = PageActionItem.DEFAULT_TOOLBAR_LIST;
        return list;
    }

    public static boolean getDimDarkModeImages() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_dim_dark_mode_images), true);
    }

    public static DonationReminderConfig getDonationReminderConfig() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_donation_reminder_config, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(DonationReminderConfig.Companion.serializer()));
            } catch (Exception e) {
                L.w(e);
            }
        }
        DonationReminderConfig donationReminderConfig = (DonationReminderConfig) obj;
        return donationReminderConfig == null ? new DonationReminderConfig() : donationReminderConfig;
    }

    public static List getDonationResults() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_donation_results, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(DonationResult.Companion.serializer(), 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        List list = (List) obj;
        return list == null ? EmptyList.INSTANCE : list;
    }

    public static String getEditHistoryFilterType() {
        String string = PrefsIoUtil.getString(R.string.preference_key_edit_history_filter_type, null);
        return string == null ? "" : string;
    }

    public static boolean getEditLineNumbersEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_edit_line_numbers), false);
    }

    public static boolean getEditMonoSpaceFontEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_edit_monospace_font), false);
    }

    public static boolean getEditSyntaxHighlightEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_edit_syntax_highlight), true);
    }

    public static boolean getEditTypingSuggestionsEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_edit_typing_suggestions), true);
    }

    public static List getFeedCardsEnabled() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_feed_cards_enabled, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(BooleanSerializer.INSTANCE, 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        List list = (List) obj;
        return list == null ? EmptyList.INSTANCE : list;
    }

    public static List getFeedCardsOrder() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_feed_cards_order, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(IntSerializer.INSTANCE, 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        List list = (List) obj;
        return list == null ? EmptyList.INSTANCE : list;
    }

    public static String getFontFamily() {
        String string = PrefsIoUtil.getString(R.string.preference_key_font_family, "");
        String str = string != null ? string : "";
        return str.length() == 0 ? "sans-serif" : str;
    }

    public static String getGeoIPCountryOverride() {
        return PrefsIoUtil.getString(R.string.preference_key_announcement_country_override, null);
    }

    public static String getHomeLanguageCode() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String string = PrefsIoUtil.getString(R.string.preference_key_home_language_code, Jsoup.getInstance().getAppOrSystemLanguageCode());
        string.getClass();
        return string;
    }

    public static HomePreferenceType getHomePreferenceSelection() {
        HomePreferenceType valueOf;
        String string = PrefsIoUtil.getString(R.string.preference_key_home_preference_selection, null);
        return (string == null || (valueOf = HomePreferenceType.valueOf(string)) == null) ? HomePreferenceType.COMMUNITY : valueOf;
    }

    public static boolean getIgnoreDateForAnnouncements() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_announcement_ignore_date), false);
    }

    public static Map getImpactLastResponseBody() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_impact_last_response_body, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashMapSerializer(stringSerializer, stringSerializer, 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Map map = (Map) obj;
        return map == null ? EmptyMap.INSTANCE : map;
    }

    public static Set getNotificationExcludedTypeCodes() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_excluded_type_codes_notification, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(StringSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set = (Set) obj;
        return set == null ? EmptySet.INSTANCE : set;
    }

    public static Set getNotificationExcludedWikiCodes() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_excluded_wiki_codes_notification, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(StringSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set = (Set) obj;
        return set == null ? EmptySet.INSTANCE : set;
    }

    public static int getNotificationUnreadCount() {
        return PrefsIoUtil.getInt(R.string.preference_key_notification_unread_count, 0);
    }

    public static int getOtdGameQuestionsPerDay() {
        return PrefsIoUtil.getInt(R.string.preference_key_otd_game_num_questions, 5);
    }

    public static Pair getPlacesLastLocationAndZoomLevel() {
        ArrayList arrayList;
        String string = PrefsIoUtil.getString(R.string.preference_key_places_last_location_and_zoom_level, null);
        if (string != null) {
            List split$default = StringsKt.split$default(string, new String[]{"|"});
            arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(split$default, 10));
            Iterator it = split$default.iterator();
            while (it.hasNext()) {
                arrayList.add(Double.valueOf(Double.parseDouble((String) it.next())));
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        Location location = new Location("");
        location.setLatitude(((Number) arrayList.get(0)).doubleValue());
        location.setLongitude(((Number) arrayList.get(1)).doubleValue());
        return new Pair(location, Double.valueOf(((Number) arrayList.get(2)).doubleValue()));
    }

    public static String getPlacesWikiCode() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String string = PrefsIoUtil.getString(R.string.preference_key_places_wiki_code, Jsoup.getInstance().getAppOrSystemLanguageCode());
        return string == null ? "" : string;
    }

    public static int getPreviousThemeId() {
        Theme.Companion.getClass();
        return PrefsIoUtil.getInt(R.string.preference_key_previous_color_theme, Theme.LIGHT.getMarshallingId());
    }

    public static boolean getReadingChallengeEnrolled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_challenge_enrolled), false);
    }

    public static boolean getReadingChallengeInstallPromptShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_challenge_install_prompt_shown), false);
    }

    public static String getReadingChallengeLastReadDate() {
        String string = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_last_read_date, "");
        return string == null ? "" : string;
    }

    public static boolean getReadingChallengeOnboardingShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_challenge_onboarding_shown), false);
    }

    public static int getReadingChallengeStreak() {
        return PrefsIoUtil.getInt(R.string.preference_key_reading_challenge_streak, 0);
    }

    public static boolean getReadingChallengeWidgetFastCycle() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_challenge_widget_fast_cycle), false);
    }

    public static boolean getReadingFocusModeEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_focus_mode), false);
    }

    public static Set getReadingListPagesDeletedIds() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_reading_list_pages_deleted_ids, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(StringSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set = (Set) obj;
        return set == null ? EmptySet.INSTANCE : set;
    }

    public static Set getReadingListsDeletedIds() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_reading_lists_deleted_ids, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(LongSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set = (Set) obj;
        return set == null ? EmptySet.INSTANCE : set;
    }

    public static Collection getRecentEditsIncludedTypeCodes() {
        Set set;
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_recent_edits_included_type_codes, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(StringSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set2 = (Set) obj;
        if (set2 != null) {
            return set2;
        }
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        set = SuggestedEditsRecentEditsFilterTypes.DEFAULT_FILTER_TYPE_SET;
        Set set3 = set;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set3, 10));
        Iterator it = set3.iterator();
        while (it.hasNext()) {
            arrayList.add(((SuggestedEditsRecentEditsFilterTypes) it.next()).getId());
        }
        return arrayList;
    }

    public static boolean getRecentEditsOnboardingShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_recent_edits_onboarding_shown), false);
    }

    public static String getRecentEditsWikiCode() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String string = PrefsIoUtil.getString(R.string.preference_key_recent_edits_wiki_code, Jsoup.getInstance().getAppOrSystemLanguageCode());
        return string == null ? "" : string;
    }

    public static Set getRecentUsedTemplates() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_recent_used_templates, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(PageTitle.Companion.serializer(), 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set = (Set) obj;
        return set == null ? EmptySet.INSTANCE : set;
    }

    public static int getRecommendedReadingListArticlesNumber() {
        return PrefsIoUtil.getInt(R.string.preference_key_recommended_reading_list_articles_number, 5);
    }

    public static List getRecommendedReadingListInterests() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_recommended_reading_list_interests, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(PageTitle.Companion.serializer(), 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        List list = (List) obj;
        return list == null ? EmptyList.INSTANCE : list;
    }

    public static RecommendedReadingListSource getRecommendedReadingListSource() {
        RecommendedReadingListSource valueOf;
        String string = PrefsIoUtil.getString(R.string.preference_key_recommended_reading_list_source, null);
        return (string == null || (valueOf = RecommendedReadingListSource.valueOf(string)) == null) ? RecommendedReadingListSource.INTERESTS : valueOf;
    }

    public static List getRecommendedReadingListSourceTitlesWithOffset() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_recommended_reading_list_titles_with_offset, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(SourceWithOffset.Companion.serializer(), 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        List list = (List) obj;
        return list == null ? EmptyList.INSTANCE : list;
    }

    public static RecommendedReadingListUpdateFrequency getRecommendedReadingListUpdateFrequency() {
        RecommendedReadingListUpdateFrequency valueOf;
        String string = PrefsIoUtil.getString(R.string.preference_key_recommended_reading_list_update_frequency, null);
        return (string == null || (valueOf = RecommendedReadingListUpdateFrequency.valueOf(string)) == null) ? RecommendedReadingListUpdateFrequency.WEEKLY : valueOf;
    }

    public static boolean getResetRecommendedReadingList() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_recommended_reading_list_reset), false);
    }

    public static boolean getShouldMatchSystemTheme() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_match_system_theme), true);
    }

    public static boolean getShowImageTagsOnboarding() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_image_tags_onboarding_shown), true);
    }

    public static boolean getShowImageZoomTooltip() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_image_zoom_tooltip_shown), true);
    }

    public static boolean getShowOneTimeRecentEditsFeedbackForm() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_recent_edits_feedback_form), true);
    }

    public static boolean getShowReadingListSyncEnablePrompt() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_reading_lists_sync_prompt), true);
    }

    public static boolean getSuggestedEditsImageRecsOnboardingShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_se_image_recs_onboarding_shown), false);
    }

    public static boolean getTempAccountDialogShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_temp_account_dialog_shown), false);
    }

    public static int getTextSizeMultiplier() {
        return PrefsIoUtil.getInt(R.string.preference_key_text_size_multiplier, 0);
    }

    public static Set getUserContribFilterExcludedNs() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_user_contrib_filter_excluded_ns, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(IntSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set = (Set) obj;
        return set == null ? EmptySet.INSTANCE : set;
    }

    public static String getUserContribFilterLangCode() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String string = PrefsIoUtil.getString(R.string.preference_key_user_contrib_filter_lang_code, Jsoup.getInstance().getAppOrSystemLanguageCode());
        string.getClass();
        return string;
    }

    public static Set getWatchlistExcludedWikiCodes() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_excluded_wiki_codes_watchlist, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(StringSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set = (Set) obj;
        return set == null ? EmptySet.INSTANCE : set;
    }

    public static Collection getWatchlistIncludedTypeCodes() {
        Set set;
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_included_type_codes_watchlist, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashSetSerializer(StringSerializer.INSTANCE, 2)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Set set2 = (Set) obj;
        if (set2 != null) {
            return set2;
        }
        WatchlistFilterTypes.Companion.getClass();
        set = WatchlistFilterTypes.DEFAULT_FILTER_TYPE_SET;
        Set set3 = set;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set3, 10));
        Iterator it = set3.iterator();
        while (it.hasNext()) {
            arrayList.add(((WatchlistFilterTypes) it.next()).getId());
        }
        return arrayList;
    }

    public static Map getYearInReviewModelData() {
        JsonImpl jsonImpl = JsonUtil.json;
        Object obj = null;
        String string = PrefsIoUtil.getString(R.string.preference_key_yir_model_data, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(new HashMapSerializer(IntSerializer.INSTANCE, YearInReviewModel.Companion.serializer(), 1)));
            } catch (Exception e) {
                L.w(e);
            }
        }
        Map map = (Map) obj;
        return map == null ? EmptyMap.INSTANCE : map;
    }

    public static YearInReviewSurveyState getYearInReviewSurveyState() {
        YearInReviewSurveyState valueOf;
        String string = PrefsIoUtil.getString(R.string.preference_key_yir_survey_state, null);
        return (string == null || (valueOf = YearInReviewSurveyState.valueOf(string)) == null) ? YearInReviewSurveyState.NOT_TRIGGERED : valueOf;
    }

    public static boolean getYearInReviewVisited() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_year_in_review_visited), false);
    }

    public static boolean isActivityTabOnboardingShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_activity_tab_onboarding_shown), false);
    }

    public static boolean isDownloadOnlyOverWiFiEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_download_only_over_wifi), false);
    }

    public static boolean isDownloadingReadingListArticlesEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_download_reading_list_articles), true);
    }

    public static boolean isExploreFeedUpdatePromptShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_explore_feed_update_prompt_shown), false);
    }

    public static boolean isHomeFeedUpdateTooltipShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_home_feed_update_tooltip_shown), false);
    }

    public static boolean isHybridSearchEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_hybrid_search_enabled), false);
    }

    public static boolean isHybridSearchOnboardingShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_hybrid_search_onboarding_shown), false);
    }

    public static boolean isImageDownloadEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_images), true);
    }

    public static boolean isInitialOnboardingEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_initial_onboarding_enabled), true);
    }

    public static boolean isLinkPreviewEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_link_previews), true);
    }

    public static boolean isNewRecommendedReadingListGenerated() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_recommended_reading_list_new_list_generated), false);
    }

    public static boolean isOtdSoundOn() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_otd_sound_on), true);
    }

    public static boolean isReadingListSyncEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_sync_reading_lists), false);
    }

    public static boolean isReadingListsRemoteDeletePending() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_lists_remote_delete_pending), false);
    }

    public static boolean isReadingListsRemoteSetupPending() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_lists_remote_setup_pending), false);
    }

    public static boolean isRecommendedReadingListEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_recommended_reading_list_enabled), false);
    }

    public static boolean isRecommendedReadingListNotificationEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_recommended_reading_list_notification_enabled), false);
    }

    public static boolean isRecommendedReadingListOnboardingShown() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_recommended_reading_list_onboarding_shown), false);
    }

    public static boolean isShowDeveloperSettingsEnabled() {
        boolean z = (StringsKt.contains("org.wikipedia", "beta", false) || StringsKt.contains("org.wikipedia", "alpha", false) || !StringsKt.contains("org.wikipedia", "dev", false)) ? false : true;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_developer_settings), z);
    }

    public static boolean isSuggestedEditsHighestPriorityEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_suggested_edits_highest_priority_enabled), false);
    }

    public static boolean isSuggestedEditsReactivationPassStageOne() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_suggested_edits_reactivation_pass_stage_one), true);
    }

    public static boolean isSuggestedEditsReactivationTestEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_suggested_edits_reactivation_test), false);
    }

    public static boolean isYearInReviewEnabled() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_year_in_review_is_enabled), true);
    }

    public static void setActivityTabModules(ActivityTabModules activityTabModules) {
        String str;
        activityTabModules.getClass();
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(ActivityTabModules.Companion.serializer(), activityTabModules);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_activity_tab_modules, str);
    }

    public static void setAnnouncementShownDialogs(Set set) {
        String str;
        Set mutableSet = CollectionsKt.toMutableSet(getAnnouncementShownDialogs());
        mutableSet.addAll(set);
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 2), mutableSet);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_announcement_shown_dialogs, str);
    }

    public static void setAppLanguageCodeList(List list) {
        list.getClass();
        StringUtil stringUtil = StringUtil.INSTANCE;
        PrefsIoUtil.setString(R.string.preference_key_language_app, CollectionsKt.joinToString$default(list, ",", null, null, null, 62));
    }

    public static void setDonationReminderConfig(DonationReminderConfig donationReminderConfig) {
        String str;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(DonationReminderConfig.Companion.serializer(), donationReminderConfig);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_donation_reminder_config, str);
    }

    public static void setDonationResults(List list) {
        String str;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(DonationResult.Companion.serializer(), 1), list);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_donation_results, str);
    }

    public static void setImpactLastResponseBody(Map map) {
        String str;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            str = jsonImpl.encodeToString(new HashMapSerializer(stringSerializer, stringSerializer, 1), map);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_impact_last_response_body, str);
    }

    public static void setOtdNotificationState(OnThisDayGameNotificationState onThisDayGameNotificationState) {
        onThisDayGameNotificationState.getClass();
        PrefsIoUtil.setString(R.string.preference_key_otd_notification_state, onThisDayGameNotificationState.name());
    }

    public static void setPlacesWikiCode(String str) {
        str.getClass();
        PrefsIoUtil.setString(R.string.preference_key_places_wiki_code, str);
    }

    public static void setQueueLoggedOutInBackgroundDialog(boolean z) {
        PrefsIoUtil.setBoolean(R.string.preference_key_logged_out_in_background, z);
    }

    public static void setReadingListPagesDeletedIds(Set set) {
        String str;
        set.getClass();
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 2), set);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_reading_list_pages_deleted_ids, str);
    }

    public static void setReadingListSyncEnabled(boolean z) {
        PrefsIoUtil.setBoolean(R.string.preference_key_sync_reading_lists, z);
    }

    public static void setReadingListsDeletedIds(Set set) {
        String str;
        set.getClass();
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(LongSerializer.INSTANCE, 2), set);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_reading_lists_deleted_ids, str);
    }

    public static void setRecentEditsIncludedTypeCodes(Collection collection) {
        String str;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 1), collection);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_recent_edits_included_type_codes, str);
    }

    public static void setRecommendedReadingListNotificationEnabled(boolean z) {
        PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_notification_enabled, z);
    }

    public static void setRecommendedReadingListSourceTitlesWithOffset(List list) {
        String str;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(SourceWithOffset.Companion.serializer(), 1), list);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_titles_with_offset, str);
    }

    public static void setSuggestedEditsPauseDate(Date date) {
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        Locale locale = Locale.ROOT;
        locale.getClass();
        String format = DateUtil.getCachedDateFormat("yyyyMMddHHmmss", locale, true, false).format(date);
        format.getClass();
        PrefsIoUtil.setString(R.string.preference_key_suggested_edits_pause_date, format);
    }

    public static void setWatchlistExcludedWikiCodes(Set set) {
        String str;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 2), set);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_excluded_wiki_codes_watchlist, str);
    }

    public static void setWatchlistIncludedTypeCodes(Collection collection) {
        String str;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 1), collection);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_included_type_codes_watchlist, str);
    }

    public static void setYearInReviewModelData(Map map) {
        String str;
        map.getClass();
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashMapSerializer(IntSerializer.INSTANCE, YearInReviewModel.Companion.serializer(), 1), map);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_yir_model_data, str);
    }

    public static void setYearInReviewSurveyState(YearInReviewSurveyState yearInReviewSurveyState) {
        yearInReviewSurveyState.getClass();
        PrefsIoUtil.setString(R.string.preference_key_yir_survey_state, yearInReviewSurveyState.name());
    }
}
