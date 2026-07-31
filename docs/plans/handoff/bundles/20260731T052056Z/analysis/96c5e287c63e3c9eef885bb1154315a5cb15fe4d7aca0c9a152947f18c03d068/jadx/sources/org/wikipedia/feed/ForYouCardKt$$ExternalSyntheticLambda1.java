package org.wikipedia.feed;

import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.paging.CombinedLoadStates;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Date;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cookie;
import okhttp3.MultipartBody;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.categories.db.Category;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.edit.db.EditSummary;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.feed.personalization.db.entity.InterestTopic;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;
import org.wikipedia.games.db.DailyGameHistory;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.login.LoginClient;
import org.wikipedia.offline.db.OfflineObject;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.RecommendedPage;
import org.wikipedia.settings.Prefs;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouCardKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Long valueOf = null;
        HistoryEntry historyEntry = null;
        DailyGameHistory dailyGameHistory = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((PageTitle) obj).getClass();
                return unit;
            case 1:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT year, month, title, lang, SUM (count) AS count FROM Category WHERE year = ? GROUP BY title, lang ORDER BY count DESC LIMIT ?");
                try {
                    prepare.bindLong(2025L, 1);
                    prepare.bindLong(50L, 2);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new Category((int) prepare.getLong(0), (int) prepare.getLong(1), (int) prepare.getLong(4), prepare.getText(2), prepare.getText(3)));
                    }
                    return arrayList;
                } finally {
                }
            case 2:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                try {
                    sQLiteConnection2.prepare("DELETE FROM Category").step();
                    return unit;
                } finally {
                }
            case 3:
                ((String) obj).getClass();
                return unit;
            case 4:
                Number number = (Number) obj;
                number.getClass();
                return number.toString();
            case 5:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                SQLiteStatement prepare2 = sQLiteConnection3.prepare("SELECT * FROM EditSummary ORDER BY lastUsed DESC");
                try {
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare2, "summary");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare2, "lastUsed");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare2.step()) {
                        String text = prepare2.getText(columnIndexOrThrow);
                        Date fromTimestamp = LoginClient.fromTimestamp(prepare2.isNull(columnIndexOrThrow2) ? null : Long.valueOf(prepare2.getLong(columnIndexOrThrow2)));
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        arrayList2.add(new EditSummary(text, fromTimestamp));
                    }
                    return arrayList2;
                } finally {
                }
            case 6:
                ((PageTitle) obj).getClass();
                return unit;
            case 7:
                ((PageTitle) obj).getClass();
                return unit;
            case 8:
                RecommendedPage recommendedPage = (RecommendedPage) obj;
                recommendedPage.getClass();
                return recommendedPage.apiTitle;
            case 9:
                ((CreationExtras) obj).getClass();
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                AppDatabase companion = Cookie.Companion.getInstance();
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                WikipediaApp jsoup = Jsoup.getInstance();
                WikiSite.Companion companion2 = WikiSite.Companion;
                Prefs prefs = Prefs.INSTANCE;
                String homeLanguageCode = Prefs.getHomeLanguageCode();
                companion2.getClass();
                WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(homeLanguageCode);
                Retrofit retrofit = new Retrofit(companion.topicInterestDao(), companion.articleInterestDao(), companion.historyEntryWithImageDao(), companion.readingListPageDao(), forLanguageCode);
                HistoryEntryWithImageDao_Impl historyEntryWithImageDao = companion.historyEntryWithImageDao();
                historyEntryWithImageDao.getClass();
                MultipartBody.Builder builder = new MultipartBody.Builder();
                builder.boundary = jsoup;
                builder.type = historyEntryWithImageDao;
                builder.parts = forLanguageCode;
                return new PersonalizationViewModel(retrofit, builder);
            case 10:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                try {
                    sQLiteConnection4.prepare("DELETE FROM InterestArticle").step();
                    return unit;
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                SQLiteStatement prepare3 = sQLiteConnection5.prepare("SELECT EXISTS(SELECT 1 FROM InterestArticle)");
                try {
                    if (prepare3.step()) {
                        z = ((int) prepare3.getLong(0)) != 0;
                    }
                    prepare3.close();
                    return Boolean.valueOf(z);
                } finally {
                }
            case 12:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                SQLiteStatement prepare4 = sQLiteConnection6.prepare("SELECT * FROM InterestTopic ORDER BY RANDOM()");
                try {
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare4, "topicId");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare4.step()) {
                        arrayList3.add(new InterestTopic(prepare4.getText(columnIndexOrThrow3)));
                    }
                    return arrayList3;
                } finally {
                }
            case IMAGE_VALUE:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                SQLiteStatement prepare5 = sQLiteConnection7.prepare("SELECT * FROM InterestTopic");
                try {
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare5, "topicId");
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare5.step()) {
                        arrayList4.add(new InterestTopic(prepare5.getText(columnIndexOrThrow4)));
                    }
                    return arrayList4;
                } finally {
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                SQLiteStatement prepare6 = sQLiteConnection8.prepare("SELECT EXISTS(SELECT 1 FROM InterestTopic)");
                try {
                    if (prepare6.step()) {
                        z3 = ((int) prepare6.getLong(0)) != 0;
                    }
                    prepare6.close();
                    return Boolean.valueOf(z3);
                } finally {
                }
            case 15:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                try {
                    sQLiteConnection9.prepare("DELETE FROM InterestTopic").step();
                    return unit;
                } finally {
                }
            case LAZY_VERTICAL_GRID_VALUE:
                PageTitle pageTitle = (PageTitle) obj;
                pageTitle.getClass();
                if (!pageTitle.isMainPage() && pageTitle.namespace() == Namespace.MAIN) {
                    r7 = false;
                }
                return Boolean.valueOf(r7);
            case VERTICAL_GRID_ITEM_VALUE:
                PageTitle pageTitle2 = (PageTitle) obj;
                pageTitle2.getClass();
                return pageTitle2.getPrefixedText();
            case RADIO_GROUP_VALUE:
                OnboardingTopic onboardingTopic = (OnboardingTopic) obj;
                onboardingTopic.getClass();
                return onboardingTopic.topic.topicId;
            case RADIO_BUTTON_VALUE:
                MwQueryPage mwQueryPage = (MwQueryPage) obj;
                mwQueryPage.getClass();
                MwQueryPage.PageProps pageProps = mwQueryPage.pageProps;
                return Boolean.valueOf((pageProps != null ? pageProps.disambiguation : null) == null);
            case RADIO_ROW_VALUE:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                SQLiteStatement prepare7 = sQLiteConnection10.prepare("SELECT * FROM DailyGameHistory ORDER BY year DESC, month DESC, day DESC, id DESC LIMIT 1");
                try {
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare7, "id");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare7, "gameName");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare7, "language");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare7, "year");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare7, "month");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare7, "day");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare7, "score");
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare7, "playType");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare7, "gameData");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare7, "status");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare7, "currentQuestionIndex");
                    if (prepare7.step()) {
                        dailyGameHistory = new DailyGameHistory((int) prepare7.getLong(columnIndexOrThrow5), (int) prepare7.getLong(columnIndexOrThrow6), prepare7.getText(columnIndexOrThrow7), (int) prepare7.getLong(columnIndexOrThrow8), (int) prepare7.getLong(columnIndexOrThrow9), (int) prepare7.getLong(columnIndexOrThrow10), (int) prepare7.getLong(columnIndexOrThrow11), (int) prepare7.getLong(columnIndexOrThrow12), prepare7.isNull(columnIndexOrThrow13) ? null : prepare7.getText(columnIndexOrThrow13), (int) prepare7.getLong(columnIndexOrThrow14), (int) prepare7.getLong(columnIndexOrThrow15));
                    }
                    return dailyGameHistory;
                } finally {
                }
            case RADIO_COLUMN_VALUE:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                try {
                    sQLiteConnection11.prepare("DELETE FROM HistoryEntry").step();
                    return unit;
                } finally {
                }
            case SIZE_BOX_VALUE:
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                sQLiteConnection12.getClass();
                SQLiteStatement prepare8 = sQLiteConnection12.prepare("SELECT EXISTS(SELECT 1 FROM HistoryEntry)");
                try {
                    if (prepare8.step()) {
                        z2 = ((int) prepare8.getLong(0)) != 0;
                    }
                    prepare8.close();
                    return Boolean.valueOf(z2);
                } finally {
                }
            case 23:
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                sQLiteConnection13.getClass();
                SQLiteStatement prepare9 = sQLiteConnection13.prepare("SELECT COUNT(*) FROM HistoryEntry");
                try {
                    int i2 = prepare9.step() ? (int) prepare9.getLong(0) : 0;
                    prepare9.close();
                    return Integer.valueOf(i2);
                } finally {
                }
            case 24:
                SQLiteConnection sQLiteConnection14 = (SQLiteConnection) obj;
                sQLiteConnection14.getClass();
                SQLiteStatement prepare10 = sQLiteConnection14.prepare("SELECT * FROM HistoryEntry ORDER BY timestamp DESC LIMIT 1");
                try {
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare10, "authority");
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare10, "lang");
                    int columnIndexOrThrow18 = UnsignedKt.getColumnIndexOrThrow(prepare10, "apiTitle");
                    int columnIndexOrThrow19 = UnsignedKt.getColumnIndexOrThrow(prepare10, "displayTitle");
                    int columnIndexOrThrow20 = UnsignedKt.getColumnIndexOrThrow(prepare10, "id");
                    int columnIndexOrThrow21 = UnsignedKt.getColumnIndexOrThrow(prepare10, "namespace");
                    int columnIndexOrThrow22 = UnsignedKt.getColumnIndexOrThrow(prepare10, "timestamp");
                    int columnIndexOrThrow23 = UnsignedKt.getColumnIndexOrThrow(prepare10, "source");
                    int columnIndexOrThrow24 = UnsignedKt.getColumnIndexOrThrow(prepare10, "prevId");
                    if (prepare10.step()) {
                        String text2 = prepare10.getText(columnIndexOrThrow16);
                        String text3 = prepare10.getText(columnIndexOrThrow17);
                        String text4 = prepare10.getText(columnIndexOrThrow18);
                        String text5 = prepare10.getText(columnIndexOrThrow19);
                        long j = prepare10.getLong(columnIndexOrThrow20);
                        String text6 = prepare10.getText(columnIndexOrThrow21);
                        if (!prepare10.isNull(columnIndexOrThrow22)) {
                            valueOf = Long.valueOf(prepare10.getLong(columnIndexOrThrow22));
                        }
                        Date fromTimestamp2 = LoginClient.fromTimestamp(valueOf);
                        if (fromTimestamp2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        historyEntry = new HistoryEntry(text2, text3, text4, text5, j, text6, fromTimestamp2, (int) prepare10.getLong(columnIndexOrThrow23), prepare10.getLong(columnIndexOrThrow24));
                    }
                    return historyEntry;
                } catch (Throwable th) {
                    throw th;
                }
            case 25:
                String str = (String) obj;
                str.getClass();
                return Boolean.valueOf(StringsKt__StringsJVMKt.startsWith(str, "test", false));
            case 26:
                ((String) obj).getClass();
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                return Jsoup.getInstance().getWikiSite();
            case 27:
                SQLiteConnection sQLiteConnection15 = (SQLiteConnection) obj;
                sQLiteConnection15.getClass();
                try {
                    sQLiteConnection15.prepare("DELETE FROM Notification").step();
                    return unit;
                } finally {
                }
            case 28:
                SQLiteConnection sQLiteConnection16 = (SQLiteConnection) obj;
                sQLiteConnection16.getClass();
                SQLiteStatement prepare11 = sQLiteConnection16.prepare("SELECT * FROM OfflineObject WHERE url LIKE '%' || ? || '%'");
                try {
                    prepare11.bindText(1, "action=discussiontoolspageinfo");
                    int columnIndexOrThrow25 = UnsignedKt.getColumnIndexOrThrow(prepare11, "id");
                    int columnIndexOrThrow26 = UnsignedKt.getColumnIndexOrThrow(prepare11, "url");
                    int columnIndexOrThrow27 = UnsignedKt.getColumnIndexOrThrow(prepare11, "lang");
                    int columnIndexOrThrow28 = UnsignedKt.getColumnIndexOrThrow(prepare11, "path");
                    int columnIndexOrThrow29 = UnsignedKt.getColumnIndexOrThrow(prepare11, "status");
                    int columnIndexOrThrow30 = UnsignedKt.getColumnIndexOrThrow(prepare11, "usedByStr");
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare11.step()) {
                        arrayList5.add(new OfflineObject((int) prepare11.getLong(columnIndexOrThrow25), (int) prepare11.getLong(columnIndexOrThrow29), prepare11.getText(columnIndexOrThrow26), prepare11.getText(columnIndexOrThrow27), prepare11.getText(columnIndexOrThrow28), prepare11.getText(columnIndexOrThrow30)));
                    }
                    return arrayList5;
                } finally {
                }
            default:
                return ((CombinedLoadStates) obj).refresh;
        }
    }
}
