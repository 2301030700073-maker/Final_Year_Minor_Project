package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkTagDao_Impl {
    public final RoomDatabase __db;
    public final AnonymousClass1 __insertAdapterOfWorkTag = new AnonymousClass1(0);

    public WorkTagDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.work.impl.model.WorkTagDao_Impl$1, reason: invalid class name */
    public final class AnonymousClass1 extends RegexKt {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:155:0x04fa  */
        /* JADX WARN: Removed duplicated region for block: B:158:0x05d4  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x05d7  */
        /* JADX WARN: Removed duplicated region for block: B:189:0x04fe  */
        @Override // kotlin.text.RegexKt
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void bind(androidx.sqlite.SQLiteStatement r17, java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 1844
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkTagDao_Impl.AnonymousClass1.bind(androidx.sqlite.SQLiteStatement, java.lang.Object):void");
        }

        @Override // kotlin.text.RegexKt
        public final String createQuery() {
            switch (this.$r8$classId) {
                case 0:
                    return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
                case 1:
                    return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
                case 2:
                    return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
                case 3:
                    return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
                case 4:
                    return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
                case 5:
                    return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                case 6:
                    return "INSERT OR REPLACE INTO `Category` (`year`,`month`,`title`,`lang`,`count`) VALUES (?,?,?,?,?)";
                case 7:
                    return "INSERT OR REPLACE INTO `EditSummary` (`summary`,`lastUsed`) VALUES (?,?)";
                case 8:
                    return "INSERT OR IGNORE INTO `InterestArticle` (`apiTitle`,`lang`,`namespace`,`displayTitle`,`description`,`thumbUrl`) VALUES (?,?,?,?,?,?)";
                case 9:
                    return "INSERT OR IGNORE INTO `InterestTopic` (`topicId`) VALUES (?)";
                case 10:
                    return "INSERT INTO `DailyGameHistory` (`id`,`gameName`,`language`,`year`,`month`,`day`,`score`,`playType`,`gameData`,`status`,`currentQuestionIndex`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)";
                case 11:
                    return "INSERT OR REPLACE INTO `HistoryEntry` (`authority`,`lang`,`apiTitle`,`displayTitle`,`id`,`namespace`,`timestamp`,`source`,`prevId`) VALUES (?,?,?,?,nullif(?, 0),?,?,?,?)";
                case 12:
                    return "INSERT OR REPLACE INTO `Notification` (`id`,`wiki`,`read`,`category`,`type`,`revid`,`title`,`agent`,`timestamp`,`contents`) VALUES (?,?,?,?,?,?,?,?,?,?)";
                case IMAGE_VALUE:
                    return "INSERT OR REPLACE INTO `OfflineObject` (`id`,`url`,`lang`,`path`,`status`,`usedByStr`) VALUES (nullif(?, 0),?,?,?,?,?)";
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    return "INSERT OR REPLACE INTO `PageImage` (`lang`,`namespace`,`apiTitle`,`imageName`,`description`,`timeSpentSec`,`geoLat`,`geoLon`) VALUES (?,?,?,?,?,?,?,?)";
                case 15:
                    return "INSERT OR REPLACE INTO `ReadingList` (`listTitle`,`description`,`mtime`,`atime`,`id`,`sizeBytes`,`dirty`,`remoteId`) VALUES (?,?,?,?,nullif(?, 0),?,?,?)";
                case LAZY_VERTICAL_GRID_VALUE:
                    return "INSERT OR REPLACE INTO `ReadingListPage` (`wiki`,`namespace`,`displayTitle`,`apiTitle`,`description`,`thumbUrl`,`listId`,`id`,`mtime`,`atime`,`offline`,`status`,`sizeBytes`,`lang`,`revId`,`remoteId`) VALUES (?,?,?,?,?,?,?,nullif(?, 0),?,?,?,?,?,?,?,?)";
                case VERTICAL_GRID_ITEM_VALUE:
                    return "INSERT OR REPLACE INTO `RecommendedPage` (`id`,`wiki`,`lang`,`namespace`,`timestamp`,`apiTitle`,`displayTitle`,`description`,`thumbUrl`,`status`,`extract`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)";
                case RADIO_GROUP_VALUE:
                    return "INSERT OR REPLACE INTO `RecentSearch` (`text`,`timestamp`) VALUES (?,?)";
                case RADIO_BUTTON_VALUE:
                    return "INSERT OR IGNORE INTO `TalkPageSeen` (`sha`) VALUES (?)";
                default:
                    return "INSERT OR REPLACE INTO `TalkTemplate` (`id`,`type`,`order`,`title`,`subject`,`message`) VALUES (nullif(?, 0),?,?,?,?,?)";
            }
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
        }
    }
}
