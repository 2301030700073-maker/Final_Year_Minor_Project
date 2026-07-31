package org.wikipedia.yearinreview;

import android.content.res.Resources;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.room.Room;
import j$.time.DayOfWeek;
import j$.time.Month;
import j$.time.format.TextStyle;
import java.text.NumberFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.settings.RemoteConfig$RemoteConfigYearInReview;
import org.wikipedia.settings.RemoteConfig$TopReadPercentage;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class YearInReviewSlides {
    public final RemoteConfig$RemoteConfigYearInReview config;
    public final WikipediaApp context;
    public final boolean isEditor;
    public final boolean isEnglishWiki;
    public final boolean isFundraisingAllowed;
    public final boolean isLoggedIn;
    public final NumberFormat numberFormatter;
    public final List pagesWithCoordinates;
    public final YearInReviewModel yearInReviewModel;

    public YearInReviewSlides(WikipediaApp wikipediaApp, boolean z, boolean z2, boolean z3, boolean z4, RemoteConfig$RemoteConfigYearInReview remoteConfig$RemoteConfigYearInReview, List list, YearInReviewModel yearInReviewModel) {
        list.getClass();
        this.context = wikipediaApp;
        this.isEditor = z;
        this.isLoggedIn = z2;
        this.isEnglishWiki = z3;
        this.isFundraisingAllowed = z4;
        this.config = remoteConfig$RemoteConfigYearInReview;
        this.pagesWithCoordinates = list;
        this.yearInReviewModel = yearInReviewModel;
        this.numberFormatter = NumberFormat.getNumberInstance();
    }

    public static String buildListWithNumbers(List list) {
        String str = "<br /><br />";
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            str = ((Object) str) + i2 + ". " + ((String) obj) + "<br />";
            i = i2;
        }
        return str;
    }

    public final YearInReviewScreenData.StandardScreen appSavedArticlesScreen() {
        boolean z = this.isEnglishWiki;
        boolean z2 = this.isLoggedIn;
        String str = z ? z2 ? "li_en_collrlists" : "lo_en_collrlists" : z2 ? "li_non_collrlists" : "lo_non_collrlists";
        WikipediaApp wikipediaApp = this.context;
        Resources resources = wikipediaApp.getResources();
        long j = this.config.savedArticlesApps;
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_cloud, null, resources.getQuantityString(R.plurals.year_in_review_slide_global_saved_articles_headline, (int) j, Long.valueOf(j)), wikipediaApp.getString(R.string.year_in_review_slide_global_saved_articles_body), str, false, 68);
    }

    public final YearInReviewScreenData.StandardScreen availableLanguagesScreen() {
        WikipediaApp wikipediaApp = this.context;
        Resources resources = wikipediaApp.getResources();
        RemoteConfig$RemoteConfigYearInReview remoteConfig$RemoteConfigYearInReview = this.config;
        long j = remoteConfig$RemoteConfigYearInReview.articles;
        String quantityString = resources.getQuantityString(R.plurals.year_in_review_slide_available_languages_body_first, (int) j, Long.valueOf(j));
        Resources resources2 = wikipediaApp.getResources();
        int i = remoteConfig$RemoteConfigYearInReview.languages;
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_stone, null, wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_available_languages_headline, i, Integer.valueOf(i)), quantityString + " " + resources2.getQuantityString(R.plurals.year_in_review_slide_available_languages_body_second, i, Integer.valueOf(i), 2025), this.isLoggedIn ? "li_non_langs" : "lo_non_langs", false, 68);
    }

    public final List editorRoutes() {
        YearInReviewScreenData.StandardScreen standardScreen;
        YearInReviewModel yearInReviewModel = this.yearInReviewModel;
        int i = yearInReviewModel.userEditsCount;
        RemoteConfig$RemoteConfigYearInReview remoteConfig$RemoteConfigYearInReview = this.config;
        long j = remoteConfig$RemoteConfigYearInReview.edits;
        boolean z = this.isEnglishWiki;
        WikipediaApp wikipediaApp = this.context;
        boolean z2 = this.isEditor;
        if (z2) {
            String format = NumberFormat.getNumberInstance(Locale.getDefault()).format(Integer.valueOf(i));
            if (i > 500) {
                format = "500+";
            }
            YearInReviewScreenData.StandardScreen standardScreen2 = new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_worker, null, wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_edited_times_headline, i, format), wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_edited_times_body, (int) j, Long.valueOf(j)), z ? "li_en_editedcount" : "li_non_editedcount", false, 68);
            long j2 = yearInReviewModel.userEditsViewedTimes;
            if (j2 <= 0) {
                standardScreen = null;
            } else {
                int i2 = (int) j2;
                standardScreen = new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_pencil, null, wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_edits_viewed_times_headline, i2, Long.valueOf(j2)), wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_edits_viewed_times_body, i2, Long.valueOf(j2)), z ? "li_en_editviewcount" : "li_non_editviewcount", false, 68);
            }
            return Room.listOf((Object[]) new YearInReviewScreenData.StandardScreen[]{standardScreen2, standardScreen});
        }
        boolean z3 = this.isLoggedIn;
        if (!z2 && !z) {
            YearInReviewScreenData.StandardScreen standardScreen3 = new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_worker, null, wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_app_edited_times_headline, (int) j, Long.valueOf(j)), wikipediaApp.getString(R.string.year_in_review_slide_app_edited_times_body), z3 ? "li_non_appcolledits" : "lo_non_appcolledits", false, 68);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            Resources resources = wikipediaApp.getResources();
            int i3 = remoteConfig$RemoteConfigYearInReview.editsPerMinute;
            return Room.listOf((Object[]) new YearInReviewScreenData.StandardScreen[]{standardScreen3, new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_bytes, fillElement, resources.getQuantityString(R.plurals.year_in_review_slide_edited_per_minute_headline, i3, Integer.valueOf(i3)), wikipediaApp.getString(R.string.year_in_review_slide_edited_per_minute_body, wikipediaApp.getString(R.string.editing_learn_more_url)), z3 ? "li_non_colleditspm" : "lo_non_colleditspm", false, 64)});
        }
        Resources resources2 = wikipediaApp.getResources();
        long j3 = remoteConfig$RemoteConfigYearInReview.editsEN;
        String str = resources2.getQuantityString(R.plurals.year_in_review_slide_english_edited_times_body_first, (int) j, Long.valueOf(j), Long.valueOf(j3)) + " " + wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_english_edited_times_body_second, (int) j3, Long.valueOf(j3));
        FillElement fillElement2 = SizeKt.FillWholeMaxSize;
        YearInReviewScreenData.StandardScreen standardScreen4 = new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_worker, fillElement2, wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_english_edited_times_headline, (int) j, Long.valueOf(j)), str, z3 ? "li_en_changes" : "lo_en_changes", false, 64);
        Resources resources3 = wikipediaApp.getResources();
        long j4 = remoteConfig$RemoteConfigYearInReview.bytesAddedEN;
        return Room.listOf((Object[]) new YearInReviewScreenData.StandardScreen[]{standardScreen4, new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_bytes, fillElement2, resources3.getQuantityString(R.plurals.year_in_review_slide_bytes_added_headline, (int) j4, Long.valueOf(j4)), wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_bytes_added_body, (int) j4, 2025, Long.valueOf(j4), wikipediaApp.getString(R.string.editing_learn_more_url)), z3 ? "li_en_bytes" : "lo_en_bytes", false, 64)});
    }

    public final YearInReviewScreenData.StandardScreen englishReadingHoursScreen() {
        WikipediaApp wikipediaApp = this.context;
        Resources resources = wikipediaApp.getResources();
        RemoteConfig$RemoteConfigYearInReview remoteConfig$RemoteConfigYearInReview = this.config;
        long j = remoteConfig$RemoteConfigYearInReview.hoursReadEN;
        String quantityString = resources.getQuantityString(R.plurals.year_in_review_slide_english_reading_hours_body_first, (int) j, Long.valueOf(j));
        Resources resources2 = wikipediaApp.getResources();
        int i = remoteConfig$RemoteConfigYearInReview.yearsReadEN;
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_clock, null, wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_english_reading_hours_headline, (int) j, Long.valueOf(j)), quantityString + " " + resources2.getQuantityString(R.plurals.year_in_review_slide_english_reading_hours_body_second, i, Integer.valueOf(i), 2025), this.isLoggedIn ? "li_en_collhours" : "lo_en_collhours", false, 68);
    }

    public final YearInReviewScreenData.GeoScreen geoWithArticlesScreen() {
        YearInReviewModel yearInReviewModel = this.yearInReviewModel;
        List list = yearInReviewModel.largestClusterArticles;
        String str = yearInReviewModel.largestClusterCountryName;
        if (str.length() == 0 || list.size() < 2) {
            return null;
        }
        Pair pair = yearInReviewModel.largestClusterTopLeft;
        Pair pair2 = yearInReviewModel.largestClusterBottomRight;
        WikipediaApp wikipediaApp = this.context;
        return new YearInReviewScreenData.GeoScreen(this.isFundraisingAllowed, pair, pair2, this.pagesWithCoordinates, wikipediaApp.getResources().getString(R.string.year_in_review_slide_geo_headline, str), wikipediaApp.getResources().getString(R.string.year_in_review_slide_geo_body, str, list.get(0), list.get(1)), this.isEnglishWiki ? "li_en_readgeo" : "li_non_readgeo");
    }

    public final YearInReviewScreenData.StandardScreen localSavedArticlesScreen() {
        long j = this.config.savedArticlesApps;
        YearInReviewModel yearInReviewModel = this.yearInReviewModel;
        List list = yearInReviewModel.localSavedArticles;
        int i = yearInReviewModel.localSavedArticlesCount;
        if (i < 3) {
            return appSavedArticlesScreen();
        }
        WikipediaApp wikipediaApp = this.context;
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_cloud, null, wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_saved_articles_headline, i, Integer.valueOf(i)), wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_saved_articles_body, (int) j, list.get(0), list.get(1), list.get(2), Long.valueOf(j)), this.isEnglishWiki ? "li_en_savedcount" : "li_non_savedcount", false, 68);
    }

    public final YearInReviewScreenData.HighlightsScreen loggedInHighlightScreen() {
        ListBuilder createListBuilder = Room.createListBuilder();
        YearInReviewModel yearInReviewModel = this.yearInReviewModel;
        int i = yearInReviewModel.userEditsCount;
        List list = yearInReviewModel.localTopCategories;
        int i2 = yearInReviewModel.localReadingArticlesCount;
        long j = yearInReviewModel.totalReadingTimeMinutes;
        List list2 = yearInReviewModel.localTopVisitedArticles;
        boolean isEmpty = list2.isEmpty();
        WikipediaApp wikipediaApp = this.context;
        if (!isEmpty) {
            List take = CollectionsKt.take(list2, 3);
            String quantityString = wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_highlights_logged_in_most_read_article_title, take.size());
            quantityString.getClass();
            createListBuilder.add(new YearInReviewScreenData.HighlightItem(quantityString, null, take, ComposeColors.Blue600, 2));
        }
        NumberFormat numberFormat = this.numberFormatter;
        if (j >= 1) {
            String quantityString2 = wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_highlights_logged_in_minutes_read_title, (int) j);
            quantityString2.getClass();
            createListBuilder.add(new YearInReviewScreenData.HighlightItem(quantityString2, numberFormat.format(j), null, 0L, 12));
        }
        if (i2 >= 5) {
            String string = wikipediaApp.getResources().getString(R.string.year_in_review_highlights_logged_in_favorite_day_title);
            string.getClass();
            createListBuilder.add(new YearInReviewScreenData.HighlightItem(string, DayOfWeek.of(yearInReviewModel.favoriteDayToRead).getDisplayName(TextStyle.FULL, Locale.getDefault()), null, 0L, 12));
            String quantityString3 = wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_highlights_logged_in_articles_read_title, i2);
            quantityString3.getClass();
            createListBuilder.add(new YearInReviewScreenData.HighlightItem(quantityString3, numberFormat.format(Integer.valueOf(i2)), null, 0L, 12));
        }
        if (list.size() > 3) {
            List take2 = CollectionsKt.take(list, 3);
            String quantityString4 = wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_highlights_logged_in_articles_interested_categories_title, take2.size());
            quantityString4.getClass();
            createListBuilder.add(new YearInReviewScreenData.HighlightItem(quantityString4, null, take2, 0L, 10));
        }
        if (this.isEditor) {
            String quantityString5 = wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_highlights_logged_in_total_edits_title, i);
            quantityString5.getClass();
            createListBuilder.add(new YearInReviewScreenData.HighlightItem(quantityString5, numberFormat.format(Integer.valueOf(i)), null, 0L, 12));
        }
        ListBuilder build = Room.build(createListBuilder);
        if (build.getSize() < 2) {
            return null;
        }
        String str = this.isEnglishWiki ? "li_en_summary" : "li_non_summary";
        String string2 = wikipediaApp.getString(R.string.year_in_highlights_screenshot_url);
        string2.getClass();
        return new YearInReviewScreenData.HighlightsScreen(build, string2, str);
    }

    public final YearInReviewScreenData.StandardScreen popularEnglishArticlesScreen() {
        List list = this.config.topReadEN;
        String buildListWithNumbers = buildListWithNumbers(list);
        WikipediaApp wikipediaApp = this.context;
        String string = wikipediaApp.getString(R.string.year_in_review_most_read_english_articles_blog_url);
        string.getClass();
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_browser, null, wikipediaApp.getString(R.string.year_in_review_slide_most_read_english_articles_headline), wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_most_read_english_articles_body, list.size(), Integer.valueOf(list.size()), buildListWithNumbers, string), this.isLoggedIn ? "li_en_popular" : "lo_en_popular", false, 68);
    }

    public final YearInReviewScreenData.ReadingPatterns readingPatternsScreen() {
        YearInReviewModel yearInReviewModel = this.yearInReviewModel;
        if (yearInReviewModel.localReadingArticlesCount < 5) {
            return null;
        }
        int i = yearInReviewModel.favoriteTimeToRead;
        WikipediaApp wikipediaApp = this.context;
        String string = (i < 0 || i >= 6) ? (5 > i || i >= 13) ? (12 > i || i >= 14) ? (13 > i || i >= 18) ? (17 > i || i >= 22) ? wikipediaApp.getString(R.string.year_in_review_slide_reading_pattern_night) : wikipediaApp.getString(R.string.year_in_review_slide_reading_pattern_evening) : wikipediaApp.getString(R.string.year_in_review_slide_reading_pattern_afternoon) : wikipediaApp.getString(R.string.year_in_review_slide_reading_pattern_midday) : wikipediaApp.getString(R.string.year_in_review_slide_reading_pattern_morning) : wikipediaApp.getString(R.string.year_in_review_slide_reading_pattern_late_night);
        string.getClass();
        DayOfWeek of = DayOfWeek.of(yearInReviewModel.favoriteDayToRead);
        TextStyle textStyle = TextStyle.FULL;
        String displayName = of.getDisplayName(textStyle, Locale.getDefault());
        String displayName2 = Month.of(yearInReviewModel.favoriteMonthDidMostReading).getDisplayName(textStyle, Locale.getDefault());
        String string2 = wikipediaApp.getString(R.string.year_in_review_slide_reading_patterns_headline);
        String str = this.isEnglishWiki ? "li_en_readpattern" : "li_non_readpattern";
        displayName.getClass();
        displayName2.getClass();
        return new YearInReviewScreenData.ReadingPatterns(this.isFundraisingAllowed, R.drawable.yir_puzzle_clock, string2, null, str, string, displayName, displayName2);
    }

    public final YearInReviewScreenData.StandardScreen spentReadingMinutesScreen() {
        Object obj;
        String str;
        String str2;
        RemoteConfig$RemoteConfigYearInReview remoteConfig$RemoteConfigYearInReview = this.config;
        int i = remoteConfig$RemoteConfigYearInReview.averageArticlesReadPerYear;
        YearInReviewModel yearInReviewModel = this.yearInReviewModel;
        long j = yearInReviewModel.totalReadingTimeMinutes;
        int i2 = yearInReviewModel.localReadingArticlesCount;
        boolean z = this.isEnglishWiki;
        if (i2 < 5 || j < 1) {
            return z ? englishReadingHoursScreen() : availableLanguagesScreen();
        }
        WikipediaApp wikipediaApp = this.context;
        String str3 = wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_spent_minutes_reading_headline_first, (int) j, Long.valueOf(j)) + " " + wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_spent_minutes_reading_headline_second, i2, Integer.valueOf(i2), 2025);
        Iterator it = remoteConfig$RemoteConfigYearInReview.topReadPercentages.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            RemoteConfig$TopReadPercentage remoteConfig$TopReadPercentage = (RemoteConfig$TopReadPercentage) obj;
            if (i2 > remoteConfig$TopReadPercentage.min && i2 <= remoteConfig$TopReadPercentage.max) {
                break;
            }
        }
        RemoteConfig$TopReadPercentage remoteConfig$TopReadPercentage2 = (RemoteConfig$TopReadPercentage) obj;
        String str4 = remoteConfig$TopReadPercentage2 != null ? remoteConfig$TopReadPercentage2.identifier : null;
        String m = str4 != null ? Animation.CC.m("", wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_spent_minutes_reading_body_top, i, Animation.CC.m("<b>", str4, "</b>"), Integer.valueOf(i)), "<br /><br />") : "";
        if (z) {
            Resources resources = wikipediaApp.getResources();
            long j2 = remoteConfig$RemoteConfigYearInReview.hoursReadEN;
            String quantityString = resources.getQuantityString(R.plurals.year_in_review_slide_spent_minutes_reading_body_english_first, (int) j2, Long.valueOf(j2));
            Resources resources2 = wikipediaApp.getResources();
            int i3 = remoteConfig$RemoteConfigYearInReview.yearsReadEN;
            str = quantityString + " " + resources2.getQuantityString(R.plurals.year_in_review_slide_spent_minutes_reading_body_english_second, i3, Integer.valueOf(i3), 2025);
            str2 = "li_en_readcount";
        } else {
            Resources resources3 = wikipediaApp.getResources();
            long j3 = remoteConfig$RemoteConfigYearInReview.articles;
            String quantityString2 = resources3.getQuantityString(R.plurals.year_in_review_slide_spent_minutes_reading_body_global_first, (int) j3, Long.valueOf(j3));
            Resources resources4 = wikipediaApp.getResources();
            int i4 = remoteConfig$RemoteConfigYearInReview.languages;
            str = quantityString2 + " " + resources4.getQuantityString(R.plurals.year_in_review_slide_spent_minutes_reading_body_global_second, i4, Integer.valueOf(i4), 2025);
            str2 = "li_non_readcount";
        }
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_walk, SizeKt.FillWholeMaxSize, str3, ((Object) m) + str, str2, false, 64);
    }

    public final YearInReviewScreenData.StandardScreen topArticlesScreen() {
        List list = this.yearInReviewModel.localTopVisitedArticles;
        if (list.isEmpty()) {
            return null;
        }
        String buildListWithNumbers = buildListWithNumbers(list);
        int size = list.size();
        WikipediaApp wikipediaApp = this.context;
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_sundial, null, wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_top_articles_headline, size), wikipediaApp.getResources().getQuantityString(R.plurals.year_in_review_slide_top_articles_body, size, 2025, buildListWithNumbers), this.isEnglishWiki ? "li_en_toparticles" : "li_non_toparticles", false, 68);
    }

    public final YearInReviewScreenData.StandardScreen topCategoriesScreen() {
        List list = this.yearInReviewModel.localTopCategories;
        if (list.isEmpty() || list.size() < 3) {
            return null;
        }
        String buildListWithNumbers = buildListWithNumbers(list);
        WikipediaApp wikipediaApp = this.context;
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_farmer, null, wikipediaApp.getString(R.string.year_in_review_slide_top_categories_headline), wikipediaApp.getString(R.string.year_in_review_slide_top_categories_body, 2025, buildListWithNumbers), this.isEnglishWiki ? "li_en_readcategory" : "li_non_readcategory", false, 68);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.wikipedia.yearinreview.YearInReviewScreenData.CustomIconScreen unlockedIconRoute() {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.yearinreview.YearInReviewSlides.unlockedIconRoute():org.wikipedia.yearinreview.YearInReviewScreenData$CustomIconScreen");
    }

    public final YearInReviewScreenData.StandardScreen viewedArticlesTimesScreen() {
        WikipediaApp wikipediaApp = this.context;
        Resources resources = wikipediaApp.getResources();
        long j = this.config.viewsApps;
        return new YearInReviewScreenData.StandardScreen(this.isFundraisingAllowed, R.drawable.yir_puzzle_browser, null, resources.getQuantityString(R.plurals.year_in_review_slide_viewed_articles_times_headline, (int) j, Long.valueOf(j)), wikipediaApp.getString(R.string.year_in_review_slide_viewed_articles_times_body), this.isLoggedIn ? "li_non_collappread" : "lo_non_collappread", false, 68);
    }
}
