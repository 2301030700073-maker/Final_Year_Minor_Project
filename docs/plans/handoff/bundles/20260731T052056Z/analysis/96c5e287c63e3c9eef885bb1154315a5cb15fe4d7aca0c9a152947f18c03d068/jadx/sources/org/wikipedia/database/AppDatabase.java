package org.wikipedia.database;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import coil3.util.ContextsKt;
import j$.time.LocalDate;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.categories.db.CategoryDao_Impl;
import org.wikipedia.edit.db.EditSummaryDao_Impl;
import org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl;
import org.wikipedia.feed.personalization.db.dao.InterestTopicDao_Impl;
import org.wikipedia.games.db.DailyGameHistoryDao_Impl;
import org.wikipedia.history.db.HistoryEntryDao_Impl;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.notifications.db.NotificationDao_Impl;
import org.wikipedia.offline.db.OfflineObjectDao_Impl;
import org.wikipedia.pageimages.db.PageImageDao_Impl;
import org.wikipedia.readinglist.db.ReadingListDao_Impl;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;
import org.wikipedia.readinglist.db.RecommendedPageDao_Impl;
import org.wikipedia.search.db.RecentSearchDao_Impl;
import org.wikipedia.staticdata.MainPageNameData;
import org.wikipedia.talk.db.TalkPageSeenDao_Impl;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/database/AppDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AppDatabase extends RoomDatabase {
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_19_20;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_20_21;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_21_22;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_22_23;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_23_24;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_24_25;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_25_26;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_26_27;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_26_28;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_27_28;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_28_29;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_29_30;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_30_31;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_31_32;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_32_33;
    public static final AppDatabase$Companion$MIGRATION_19_20$1 MIGRATION_33_34;
    public static final Lazy instance$delegate;

    /* JADX WARN: Type inference failed for: r0v0, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v10, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v11, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v12, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v13, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v14, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v15, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v4, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v5, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v6, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v7, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v8, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    /* JADX WARN: Type inference failed for: r0v9, types: [org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1] */
    static {
        final int i = 19;
        final int i2 = 20;
        final int i3 = 0;
        MIGRATION_19_20 = new Migration(i, i2) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i3) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i4 = 1;
        final int i5 = 21;
        MIGRATION_20_21 = new Migration(i2, i5) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i4) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i6 = 2;
        final int i7 = 22;
        MIGRATION_21_22 = new Migration(i5, i7) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i6) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i8 = 3;
        final int i9 = 23;
        MIGRATION_22_23 = new Migration(i7, i9) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i8) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i10 = 4;
        final int i11 = 24;
        MIGRATION_23_24 = new Migration(i9, i11) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i10) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i12 = 5;
        final int i13 = 25;
        MIGRATION_24_25 = new Migration(i11, i13) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i12) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i14 = 6;
        final int i15 = 26;
        MIGRATION_25_26 = new Migration(i13, i15) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i14) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i16 = 7;
        final int i17 = 27;
        MIGRATION_26_27 = new Migration(i15, i17) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i16) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i18 = 9;
        final int i19 = 28;
        MIGRATION_27_28 = new Migration(i17, i19) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i18) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i20 = 8;
        MIGRATION_26_28 = new Migration(i15, i19) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i20) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i21 = 10;
        final int i22 = 29;
        MIGRATION_28_29 = new Migration(i19, i22) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i21) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i23 = 11;
        final int i24 = 30;
        MIGRATION_29_30 = new Migration(i22, i24) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i23) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i25 = 12;
        final int i26 = 31;
        MIGRATION_30_31 = new Migration(i24, i26) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i25) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i27 = 13;
        final int i28 = 32;
        MIGRATION_31_32 = new Migration(i26, i28) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i27) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i29 = 14;
        final int i30 = 33;
        MIGRATION_32_33 = new Migration(i28, i30) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i29) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        final int i31 = 34;
        final int i32 = 15;
        MIGRATION_33_34 = new Migration(i30, i31) { // from class: org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1
            @Override // androidx.room.migration.Migration
            public final void migrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                Cursor query;
                switch (i32) {
                    case 0:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 1:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 2:
                        frameworkSQLiteDatabase.getClass();
                        return;
                    case 3:
                        frameworkSQLiteDatabase.getClass();
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                        String authority = Jsoup.getInstance().getWikiSite().authority();
                        String valueFor = MainPageNameData.valueFor(appOrSystemLanguageCode);
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches");
                        } catch (Exception unused) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS recentsearches");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='talkpageseen'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE talkpageseen");
                                }
                                query.close();
                            } finally {
                            }
                        } catch (Exception unused2) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries");
                        } catch (Exception unused3) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS editsummaries");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                        try {
                            query = frameworkSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE type='table' AND name='offlineobject'");
                            try {
                                if (query.getCount() > 0) {
                                    frameworkSQLiteDatabase.execSQL("INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject");
                                    frameworkSQLiteDatabase.execSQL("DROP TABLE offlineobject");
                                }
                                query.close();
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE OfflineObject_temp RENAME TO OfflineObject");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS readinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,''), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist");
                            frameworkSQLiteDatabase.execSQL("INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage");
                        } catch (Exception unused5) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglist");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS localreadinglistpage");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,'" + authority + "'), COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(title,'" + valueFor + "'), COALESCE(displayTitle,''), COALESCE(namespace,''), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history");
                        } catch (Exception unused6) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                        try {
                            frameworkSQLiteDatabase.execSQL("INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,'" + appOrSystemLanguageCode + "'), COALESCE(namespace,''), COALESCE(title,'" + valueFor + "'), imageName FROM pageimages");
                        } catch (Exception unused7) {
                        }
                        frameworkSQLiteDatabase.execSQL("DROP TABLE pageimages");
                        return;
                    case 4:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                        return;
                    case 5:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))");
                        return;
                    case 6:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT ''");
                        return;
                    case 7:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        return;
                    case 8:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT ''");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)");
                        return;
                    case 9:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)");
                        frameworkSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)");
                        return;
                    case 10:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)");
                        return;
                    case 11:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT 'en',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)");
                        return;
                    case 12:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))");
                        frameworkSQLiteDatabase.execSQL("INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime('%Y', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getYear() + ") AS year,        COALESCE(CAST(strftime('%m', timeStamp / 1000, 'unixepoch') AS INTEGER), " + LocalDate.now().getMonthValue() + ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang");
                        frameworkSQLiteDatabase.execSQL("DROP TABLE Category");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE Category_temp RENAME TO Category");
                        return;
                    case IMAGE_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1");
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5");
                        return;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))");
                        frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))");
                        return;
                    default:
                        frameworkSQLiteDatabase.getClass();
                        frameworkSQLiteDatabase.execSQL("ALTER TABLE RecommendedPage ADD COLUMN extract TEXT");
                        return;
                }
            }
        };
        instance$delegate = ContextsKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new AppDatabase$$ExternalSyntheticLambda0(i3));
    }

    public abstract InterestArticleDao_Impl articleInterestDao();

    public abstract CategoryDao_Impl categoryDao();

    public abstract DailyGameHistoryDao_Impl dailyGameHistoryDao();

    public abstract EditSummaryDao_Impl editSummaryDao();

    public abstract HistoryEntryDao_Impl historyEntryDao();

    public abstract HistoryEntryWithImageDao_Impl historyEntryWithImageDao();

    public abstract NotificationDao_Impl notificationDao();

    public abstract OfflineObjectDao_Impl offlineObjectDao();

    public abstract PageImageDao_Impl pageImagesDao();

    public abstract ReadingListDao_Impl readingListDao();

    public abstract ReadingListPageDao_Impl readingListPageDao();

    public abstract RecentSearchDao_Impl recentSearchDao();

    public abstract RecommendedPageDao_Impl recommendedPageDao();

    public abstract TalkPageSeenDao_Impl talkPageSeenDao();

    public abstract TalkTemplateDao_Impl talkTemplateDao();

    public abstract InterestTopicDao_Impl topicInterestDao();
}
