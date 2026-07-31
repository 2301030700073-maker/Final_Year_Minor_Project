package org.wikipedia.talk.db;

import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.WorkTagDao_Impl;
import coil3.util.UtilsKt;
import okio.ByteString;
import okio.Path;
import org.wikipedia.feed.personalization.db.entity.InterestArticle;
import org.wikipedia.feed.personalization.db.entity.InterestTopic;
import org.wikipedia.games.db.DailyGameHistory;
import org.wikipedia.login.LoginClient;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.offline.db.OfflineObject;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.database.RecommendedPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTemplateDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfTalkTemplate = new WorkTagDao_Impl.AnonymousClass1(20);
    public final AnonymousClass2 __updateAdapterOfTalkTemplate = new AnonymousClass2(0);

    public TalkTemplateDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.talk.db.TalkTemplateDao_Impl$2, reason: invalid class name */
    public final class AnonymousClass2 extends UtilsKt {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass2(int i) {
            this.$r8$classId = i;
        }

        @Override // coil3.util.UtilsKt
        public final void bind(SQLiteStatement sQLiteStatement, Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    TalkTemplate talkTemplate = (TalkTemplate) obj;
                    sQLiteStatement.getClass();
                    talkTemplate.getClass();
                    long j = talkTemplate.id;
                    sQLiteStatement.bindLong(j, 1);
                    sQLiteStatement.bindLong(talkTemplate.type, 2);
                    sQLiteStatement.bindLong(talkTemplate.order, 3);
                    sQLiteStatement.bindText(4, talkTemplate.title);
                    sQLiteStatement.bindText(5, talkTemplate.subject);
                    sQLiteStatement.bindText(6, talkTemplate.message);
                    sQLiteStatement.bindLong(j, 7);
                    break;
                case 1:
                    InterestArticle interestArticle = (InterestArticle) obj;
                    sQLiteStatement.getClass();
                    interestArticle.getClass();
                    sQLiteStatement.bindText(1, interestArticle.apiTitle);
                    sQLiteStatement.bindText(2, interestArticle.lang);
                    if (ByteString.Companion.namespaceToInt(interestArticle.namespace) != null) {
                        sQLiteStatement.bindLong(r1.intValue(), 3);
                        break;
                    } else {
                        sQLiteStatement.bindNull(3);
                        break;
                    }
                case 2:
                    InterestTopic interestTopic = (InterestTopic) obj;
                    sQLiteStatement.getClass();
                    interestTopic.getClass();
                    sQLiteStatement.bindText(1, interestTopic.topicId);
                    break;
                case 3:
                    DailyGameHistory dailyGameHistory = (DailyGameHistory) obj;
                    sQLiteStatement.getClass();
                    dailyGameHistory.getClass();
                    long j2 = dailyGameHistory.id;
                    sQLiteStatement.bindLong(j2, 1);
                    sQLiteStatement.bindLong(dailyGameHistory.gameName, 2);
                    sQLiteStatement.bindText(3, dailyGameHistory.language);
                    sQLiteStatement.bindLong(dailyGameHistory.year, 4);
                    sQLiteStatement.bindLong(dailyGameHistory.month, 5);
                    sQLiteStatement.bindLong(dailyGameHistory.day, 6);
                    sQLiteStatement.bindLong(dailyGameHistory.score, 7);
                    sQLiteStatement.bindLong(dailyGameHistory.playType, 8);
                    String str = dailyGameHistory.gameData;
                    if (str == null) {
                        sQLiteStatement.bindNull(9);
                    } else {
                        sQLiteStatement.bindText(9, str);
                    }
                    sQLiteStatement.bindLong(dailyGameHistory.status, 10);
                    sQLiteStatement.bindLong(dailyGameHistory.currentQuestionIndex, 11);
                    sQLiteStatement.bindLong(j2, 12);
                    break;
                case 4:
                    Notification notification = (Notification) obj;
                    sQLiteStatement.getClass();
                    notification.getClass();
                    long j3 = notification.id;
                    sQLiteStatement.bindLong(j3, 1);
                    String str2 = notification.wiki;
                    sQLiteStatement.bindText(2, str2);
                    String str3 = notification.read;
                    if (str3 == null) {
                        sQLiteStatement.bindNull(3);
                    } else {
                        sQLiteStatement.bindText(3, str3);
                    }
                    sQLiteStatement.bindText(4, notification.category);
                    sQLiteStatement.bindText(5, notification.type);
                    sQLiteStatement.bindLong(notification.revid, 6);
                    String titleToString = Path.Companion.titleToString(notification.title);
                    if (titleToString == null) {
                        sQLiteStatement.bindNull(7);
                    } else {
                        sQLiteStatement.bindText(7, titleToString);
                    }
                    String agentToString = Path.Companion.agentToString(notification.agent);
                    if (agentToString == null) {
                        sQLiteStatement.bindNull(8);
                    } else {
                        sQLiteStatement.bindText(8, agentToString);
                    }
                    String timestampToString = Path.Companion.timestampToString(notification.timestamp);
                    if (timestampToString == null) {
                        sQLiteStatement.bindNull(9);
                    } else {
                        sQLiteStatement.bindText(9, timestampToString);
                    }
                    String contentsToString = Path.Companion.contentsToString(notification.contents);
                    if (contentsToString == null) {
                        sQLiteStatement.bindNull(10);
                    } else {
                        sQLiteStatement.bindText(10, contentsToString);
                    }
                    sQLiteStatement.bindLong(j3, 11);
                    sQLiteStatement.bindText(12, str2);
                    break;
                case 5:
                    sQLiteStatement.getClass();
                    ((OfflineObject) obj).getClass();
                    sQLiteStatement.bindLong(r1.id, 1);
                    break;
                case 6:
                    OfflineObject offlineObject = (OfflineObject) obj;
                    sQLiteStatement.getClass();
                    offlineObject.getClass();
                    long j4 = offlineObject.id;
                    sQLiteStatement.bindLong(j4, 1);
                    sQLiteStatement.bindText(2, offlineObject.url);
                    sQLiteStatement.bindText(3, offlineObject.lang);
                    sQLiteStatement.bindText(4, offlineObject.path);
                    sQLiteStatement.bindLong(offlineObject.status, 5);
                    sQLiteStatement.bindText(6, offlineObject.usedByStr);
                    sQLiteStatement.bindLong(j4, 7);
                    break;
                case 7:
                    ReadingList readingList = (ReadingList) obj;
                    sQLiteStatement.getClass();
                    readingList.getClass();
                    sQLiteStatement.bindLong(readingList.id, 1);
                    break;
                case 8:
                    ReadingList readingList2 = (ReadingList) obj;
                    sQLiteStatement.getClass();
                    readingList2.getClass();
                    sQLiteStatement.bindText(1, readingList2.listTitle);
                    String str4 = readingList2.description;
                    if (str4 == null) {
                        sQLiteStatement.bindNull(2);
                    } else {
                        sQLiteStatement.bindText(2, str4);
                    }
                    sQLiteStatement.bindLong(readingList2.mtime, 3);
                    sQLiteStatement.bindLong(readingList2.atime, 4);
                    sQLiteStatement.bindLong(readingList2.id, 5);
                    sQLiteStatement.bindLong(readingList2.sizeBytes, 6);
                    sQLiteStatement.bindLong(readingList2.dirty ? 1L : 0L, 7);
                    sQLiteStatement.bindLong(readingList2.remoteId, 8);
                    sQLiteStatement.bindLong(readingList2.id, 9);
                    break;
                case 9:
                    ReadingListPage readingListPage = (ReadingListPage) obj;
                    sQLiteStatement.getClass();
                    readingListPage.getClass();
                    sQLiteStatement.bindLong(readingListPage.id, 1);
                    break;
                case 10:
                    ReadingListPage readingListPage2 = (ReadingListPage) obj;
                    sQLiteStatement.getClass();
                    readingListPage2.getClass();
                    String wikiSiteToString = LoginClient.wikiSiteToString(readingListPage2.wiki);
                    if (wikiSiteToString == null) {
                        sQLiteStatement.bindNull(1);
                    } else {
                        sQLiteStatement.bindText(1, wikiSiteToString);
                    }
                    if (ByteString.Companion.namespaceToInt(readingListPage2.namespace) == null) {
                        sQLiteStatement.bindNull(2);
                    } else {
                        sQLiteStatement.bindLong(r13.intValue(), 2);
                    }
                    sQLiteStatement.bindText(3, readingListPage2.displayTitle);
                    sQLiteStatement.bindText(4, readingListPage2.apiTitle);
                    String str5 = readingListPage2.description;
                    if (str5 == null) {
                        sQLiteStatement.bindNull(5);
                    } else {
                        sQLiteStatement.bindText(5, str5);
                    }
                    String str6 = readingListPage2.thumbUrl;
                    if (str6 == null) {
                        sQLiteStatement.bindNull(6);
                    } else {
                        sQLiteStatement.bindText(6, str6);
                    }
                    sQLiteStatement.bindLong(readingListPage2.listId, 7);
                    sQLiteStatement.bindLong(readingListPage2.id, 8);
                    sQLiteStatement.bindLong(readingListPage2.mtime, 9);
                    sQLiteStatement.bindLong(readingListPage2.atime, 10);
                    sQLiteStatement.bindLong(readingListPage2.offline ? 1L : 0L, 11);
                    sQLiteStatement.bindLong(readingListPage2.status, 12);
                    sQLiteStatement.bindLong(readingListPage2.sizeBytes, 13);
                    sQLiteStatement.bindText(14, readingListPage2.lang);
                    sQLiteStatement.bindLong(readingListPage2.revId, 15);
                    sQLiteStatement.bindLong(readingListPage2.remoteId, 16);
                    sQLiteStatement.bindLong(readingListPage2.id, 17);
                    break;
                default:
                    RecommendedPage recommendedPage = (RecommendedPage) obj;
                    sQLiteStatement.getClass();
                    recommendedPage.getClass();
                    long j5 = recommendedPage.id;
                    sQLiteStatement.bindLong(j5, 1);
                    String wikiSiteToString2 = LoginClient.wikiSiteToString(recommendedPage.wiki);
                    if (wikiSiteToString2 == null) {
                        sQLiteStatement.bindNull(2);
                    } else {
                        sQLiteStatement.bindText(2, wikiSiteToString2);
                    }
                    sQLiteStatement.bindText(3, recommendedPage.lang);
                    if (ByteString.Companion.namespaceToInt(recommendedPage.namespace) == null) {
                        sQLiteStatement.bindNull(4);
                    } else {
                        sQLiteStatement.bindLong(r11.intValue(), 4);
                    }
                    Long dateToTimestamp = LoginClient.dateToTimestamp(recommendedPage.timestamp);
                    if (dateToTimestamp == null) {
                        sQLiteStatement.bindNull(5);
                    } else {
                        sQLiteStatement.bindLong(dateToTimestamp.longValue(), 5);
                    }
                    sQLiteStatement.bindText(6, recommendedPage.apiTitle);
                    sQLiteStatement.bindText(7, recommendedPage.displayTitle);
                    String str7 = recommendedPage.description;
                    if (str7 == null) {
                        sQLiteStatement.bindNull(8);
                    } else {
                        sQLiteStatement.bindText(8, str7);
                    }
                    String str8 = recommendedPage.thumbUrl;
                    if (str8 == null) {
                        sQLiteStatement.bindNull(9);
                    } else {
                        sQLiteStatement.bindText(9, str8);
                    }
                    sQLiteStatement.bindLong(recommendedPage.status, 10);
                    String str9 = recommendedPage.extract;
                    if (str9 == null) {
                        sQLiteStatement.bindNull(11);
                    } else {
                        sQLiteStatement.bindText(11, str9);
                    }
                    sQLiteStatement.bindLong(j5, 12);
                    break;
            }
        }

        @Override // coil3.util.UtilsKt
        public final String createQuery() {
            switch (this.$r8$classId) {
                case 0:
                    return "UPDATE OR REPLACE `TalkTemplate` SET `id` = ?,`type` = ?,`order` = ?,`title` = ?,`subject` = ?,`message` = ? WHERE `id` = ?";
                case 1:
                    return "DELETE FROM `InterestArticle` WHERE `apiTitle` = ? AND `lang` = ? AND `namespace` = ?";
                case 2:
                    return "DELETE FROM `InterestTopic` WHERE `topicId` = ?";
                case 3:
                    return "UPDATE `DailyGameHistory` SET `id` = ?,`gameName` = ?,`language` = ?,`year` = ?,`month` = ?,`day` = ?,`score` = ?,`playType` = ?,`gameData` = ?,`status` = ?,`currentQuestionIndex` = ? WHERE `id` = ?";
                case 4:
                    return "UPDATE OR REPLACE `Notification` SET `id` = ?,`wiki` = ?,`read` = ?,`category` = ?,`type` = ?,`revid` = ?,`title` = ?,`agent` = ?,`timestamp` = ?,`contents` = ? WHERE `id` = ? AND `wiki` = ?";
                case 5:
                    return "DELETE FROM `OfflineObject` WHERE `id` = ?";
                case 6:
                    return "UPDATE OR REPLACE `OfflineObject` SET `id` = ?,`url` = ?,`lang` = ?,`path` = ?,`status` = ?,`usedByStr` = ? WHERE `id` = ?";
                case 7:
                    return "DELETE FROM `ReadingList` WHERE `id` = ?";
                case 8:
                    return "UPDATE OR REPLACE `ReadingList` SET `listTitle` = ?,`description` = ?,`mtime` = ?,`atime` = ?,`id` = ?,`sizeBytes` = ?,`dirty` = ?,`remoteId` = ? WHERE `id` = ?";
                case 9:
                    return "DELETE FROM `ReadingListPage` WHERE `id` = ?";
                case 10:
                    return "UPDATE OR REPLACE `ReadingListPage` SET `wiki` = ?,`namespace` = ?,`displayTitle` = ?,`apiTitle` = ?,`description` = ?,`thumbUrl` = ?,`listId` = ?,`id` = ?,`mtime` = ?,`atime` = ?,`offline` = ?,`status` = ?,`sizeBytes` = ?,`lang` = ?,`revId` = ?,`remoteId` = ? WHERE `id` = ?";
                default:
                    return "UPDATE OR ABORT `RecommendedPage` SET `id` = ?,`wiki` = ?,`lang` = ?,`namespace` = ?,`timestamp` = ?,`apiTitle` = ?,`displayTitle` = ?,`description` = ?,`thumbUrl` = ?,`status` = ?,`extract` = ? WHERE `id` = ?";
            }
        }

        public /* synthetic */ AnonymousClass2(int i, Object obj) {
            this.$r8$classId = i;
        }
    }
}
