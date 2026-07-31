package androidx.work.impl;

import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.work.OperationKt;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.text.UStringsKt;
import org.wikipedia.database.AppDatabase_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkDatabase_Impl$createOpenDelegate$_openDelegate$1 extends RoomOpenDelegate {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ RoomDatabase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(WorkDatabase_Impl workDatabase_Impl) {
        super(24, "08b926448d86528e697981ddd30459f7", "149fd8ad55885d3fe3549a37a0163243");
        this.this$0 = workDatabase_Impl;
    }

    private final RoomOpenDelegate.ValidationResult onValidateSchema$androidx$work$impl$WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
        LinkedHashSet m = ViewSizeResolver$CC.m(linkedHashMap, "prerequisite_id", new TableInfo.Column("prerequisite_id", "TEXT", true, 2, null, 1));
        m.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Room.listOf("work_spec_id"), Room.listOf("id")));
        m.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Room.listOf("prerequisite_id"), Room.listOf("id")));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(new TableInfo.Index("index_Dependency_work_spec_id", false, Room.listOf("work_spec_id"), Room.listOf("ASC")));
        linkedHashSet.add(new TableInfo.Index("index_Dependency_prerequisite_id", false, Room.listOf("prerequisite_id"), Room.listOf("ASC")));
        TableInfo tableInfo = new TableInfo("Dependency", linkedHashMap, m, linkedHashSet);
        TableInfo read = UStringsKt.read(sQLiteConnection, "Dependency");
        if (!tableInfo.equals(read)) {
            return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("Dependency(androidx.work.impl.model.Dependency).\n Expected:\n", tableInfo, "\n Found:\n", read), false);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("id", new TableInfo.Column("id", "TEXT", true, 1, null, 1));
        linkedHashMap2.put("state", new TableInfo.Column("state", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("worker_class_name", new TableInfo.Column("worker_class_name", "TEXT", true, 0, null, 1));
        linkedHashMap2.put("input_merger_class_name", new TableInfo.Column("input_merger_class_name", "TEXT", true, 0, null, 1));
        linkedHashMap2.put("input", new TableInfo.Column("input", "BLOB", true, 0, null, 1));
        linkedHashMap2.put("output", new TableInfo.Column("output", "BLOB", true, 0, null, 1));
        linkedHashMap2.put("initial_delay", new TableInfo.Column("initial_delay", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("interval_duration", new TableInfo.Column("interval_duration", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("flex_duration", new TableInfo.Column("flex_duration", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("run_attempt_count", new TableInfo.Column("run_attempt_count", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("backoff_policy", new TableInfo.Column("backoff_policy", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("backoff_delay_duration", new TableInfo.Column("backoff_delay_duration", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("last_enqueue_time", new TableInfo.Column("last_enqueue_time", "INTEGER", true, 0, "-1", 1));
        linkedHashMap2.put("minimum_retention_duration", new TableInfo.Column("minimum_retention_duration", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("schedule_requested_at", new TableInfo.Column("schedule_requested_at", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("run_in_foreground", new TableInfo.Column("run_in_foreground", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("out_of_quota_policy", new TableInfo.Column("out_of_quota_policy", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("period_count", new TableInfo.Column("period_count", "INTEGER", true, 0, "0", 1));
        linkedHashMap2.put("generation", new TableInfo.Column("generation", "INTEGER", true, 0, "0", 1));
        linkedHashMap2.put("next_schedule_time_override", new TableInfo.Column("next_schedule_time_override", "INTEGER", true, 0, "9223372036854775807", 1));
        linkedHashMap2.put("next_schedule_time_override_generation", new TableInfo.Column("next_schedule_time_override_generation", "INTEGER", true, 0, "0", 1));
        linkedHashMap2.put("stop_reason", new TableInfo.Column("stop_reason", "INTEGER", true, 0, "-256", 1));
        linkedHashMap2.put("trace_tag", new TableInfo.Column("trace_tag", "TEXT", false, 0, null, 1));
        linkedHashMap2.put("backoff_on_system_interruptions", new TableInfo.Column("backoff_on_system_interruptions", "INTEGER", false, 0, null, 1));
        linkedHashMap2.put("required_network_type", new TableInfo.Column("required_network_type", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("required_network_request", new TableInfo.Column("required_network_request", "BLOB", true, 0, "x''", 1));
        linkedHashMap2.put("requires_charging", new TableInfo.Column("requires_charging", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("requires_device_idle", new TableInfo.Column("requires_device_idle", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("requires_battery_not_low", new TableInfo.Column("requires_battery_not_low", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("requires_storage_not_low", new TableInfo.Column("requires_storage_not_low", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("trigger_content_update_delay", new TableInfo.Column("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("trigger_max_content_delay", new TableInfo.Column("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
        LinkedHashSet m2 = ViewSizeResolver$CC.m(linkedHashMap2, "content_uri_triggers", new TableInfo.Column("content_uri_triggers", "BLOB", true, 0, null, 1));
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        linkedHashSet2.add(new TableInfo.Index("index_WorkSpec_schedule_requested_at", false, Room.listOf("schedule_requested_at"), Room.listOf("ASC")));
        linkedHashSet2.add(new TableInfo.Index("index_WorkSpec_last_enqueue_time", false, Room.listOf("last_enqueue_time"), Room.listOf("ASC")));
        TableInfo tableInfo2 = new TableInfo("WorkSpec", linkedHashMap2, m2, linkedHashSet2);
        TableInfo read2 = UStringsKt.read(sQLiteConnection, "WorkSpec");
        if (!tableInfo2.equals(read2)) {
            return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n", tableInfo2, "\n Found:\n", read2), false);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("tag", new TableInfo.Column("tag", "TEXT", true, 1, null, 1));
        LinkedHashSet m3 = ViewSizeResolver$CC.m(linkedHashMap3, "work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 2, null, 1));
        m3.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Room.listOf("work_spec_id"), Room.listOf("id")));
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        linkedHashSet3.add(new TableInfo.Index("index_WorkTag_work_spec_id", false, Room.listOf("work_spec_id"), Room.listOf("ASC")));
        TableInfo tableInfo3 = new TableInfo("WorkTag", linkedHashMap3, m3, linkedHashSet3);
        TableInfo read3 = UStringsKt.read(sQLiteConnection, "WorkTag");
        if (!tableInfo3.equals(read3)) {
            return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n", tableInfo3, "\n Found:\n", read3), false);
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        linkedHashMap4.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
        linkedHashMap4.put("generation", new TableInfo.Column("generation", "INTEGER", true, 2, "0", 1));
        LinkedHashSet m4 = ViewSizeResolver$CC.m(linkedHashMap4, "system_id", new TableInfo.Column("system_id", "INTEGER", true, 0, null, 1));
        m4.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Room.listOf("work_spec_id"), Room.listOf("id")));
        TableInfo tableInfo4 = new TableInfo("SystemIdInfo", linkedHashMap4, m4, new LinkedHashSet());
        TableInfo read4 = UStringsKt.read(sQLiteConnection, "SystemIdInfo");
        if (!tableInfo4.equals(read4)) {
            return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n", tableInfo4, "\n Found:\n", read4), false);
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        linkedHashMap5.put("name", new TableInfo.Column("name", "TEXT", true, 1, null, 1));
        LinkedHashSet m5 = ViewSizeResolver$CC.m(linkedHashMap5, "work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 2, null, 1));
        m5.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Room.listOf("work_spec_id"), Room.listOf("id")));
        LinkedHashSet linkedHashSet4 = new LinkedHashSet();
        linkedHashSet4.add(new TableInfo.Index("index_WorkName_work_spec_id", false, Room.listOf("work_spec_id"), Room.listOf("ASC")));
        TableInfo tableInfo5 = new TableInfo("WorkName", linkedHashMap5, m5, linkedHashSet4);
        TableInfo read5 = UStringsKt.read(sQLiteConnection, "WorkName");
        if (!tableInfo5.equals(read5)) {
            return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("WorkName(androidx.work.impl.model.WorkName).\n Expected:\n", tableInfo5, "\n Found:\n", read5), false);
        }
        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
        linkedHashMap6.put("work_spec_id", new TableInfo.Column("work_spec_id", "TEXT", true, 1, null, 1));
        LinkedHashSet m6 = ViewSizeResolver$CC.m(linkedHashMap6, "progress", new TableInfo.Column("progress", "BLOB", true, 0, null, 1));
        m6.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Room.listOf("work_spec_id"), Room.listOf("id")));
        TableInfo tableInfo6 = new TableInfo("WorkProgress", linkedHashMap6, m6, new LinkedHashSet());
        TableInfo read6 = UStringsKt.read(sQLiteConnection, "WorkProgress");
        if (!tableInfo6.equals(read6)) {
            return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n", tableInfo6, "\n Found:\n", read6), false);
        }
        LinkedHashMap linkedHashMap7 = new LinkedHashMap();
        linkedHashMap7.put("key", new TableInfo.Column("key", "TEXT", true, 1, null, 1));
        TableInfo tableInfo7 = new TableInfo("Preference", linkedHashMap7, ViewSizeResolver$CC.m(linkedHashMap7, "long_value", new TableInfo.Column("long_value", "INTEGER", false, 0, null, 1)), new LinkedHashSet());
        TableInfo read7 = UStringsKt.read(sQLiteConnection, "Preference");
        return !tableInfo7.equals(read7) ? new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("Preference(androidx.work.impl.model.Preference).\n Expected:\n", tableInfo7, "\n Found:\n", read7), false) : new RoomOpenDelegate.ValidationResult((String) null, true);
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void createAllTables(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
        switch (i) {
            case 0:
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                ContextsKt.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                ContextsKt.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                ContextsKt.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                ContextsKt.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '08b926448d86528e697981ddd30459f7')");
                break;
            default:
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_HistoryEntry_lang_namespace_apiTitle` ON `HistoryEntry` (`lang`, `namespace`, `apiTitle`)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, `description` TEXT, `timeSpentSec` INTEGER NOT NULL, `geoLat` REAL NOT NULL, `geoLon` REAL NOT NULL, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_PageImage_lang_namespace_apiTitle` ON `PageImage` (`lang`, `namespace`, `apiTitle`)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `TalkPageSeen` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `OfflineObject` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Category` (`year` INTEGER NOT NULL, `month` INTEGER NOT NULL, `title` TEXT NOT NULL, `lang` TEXT NOT NULL, `count` INTEGER NOT NULL, PRIMARY KEY(`year`, `month`, `title`, `lang`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `DailyGameHistory` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `gameName` INTEGER NOT NULL, `language` TEXT NOT NULL, `year` INTEGER NOT NULL, `month` INTEGER NOT NULL, `day` INTEGER NOT NULL, `score` INTEGER NOT NULL, `playType` INTEGER NOT NULL, `gameData` TEXT, `status` INTEGER NOT NULL, `currentQuestionIndex` INTEGER NOT NULL)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `RecommendedPage` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `wiki` TEXT NOT NULL, `lang` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `timestamp` INTEGER NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `status` INTEGER NOT NULL, `extract` TEXT)");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `InterestTopic` (`topicId` TEXT NOT NULL, PRIMARY KEY(`topicId`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `InterestArticle` (`apiTitle` TEXT NOT NULL, `lang` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `description` TEXT NOT NULL, `thumbUrl` TEXT NOT NULL, PRIMARY KEY(`apiTitle`, `lang`, `namespace`))");
                ContextsKt.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                ContextsKt.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'b6c7b5a53187eaa550798555db600785')");
                break;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void dropAllTables(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
        switch (i) {
            case 0:
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `Dependency`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkSpec`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkTag`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `SystemIdInfo`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkName`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkProgress`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `Preference`");
                break;
            default:
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `HistoryEntry`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `PageImage`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `RecentSearch`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `TalkPageSeen`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `EditSummary`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `OfflineObject`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `ReadingList`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `ReadingListPage`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `Notification`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `TalkTemplate`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `Category`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `DailyGameHistory`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `RecommendedPage`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `InterestTopic`");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `InterestArticle`");
                break;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onCreate(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onOpen(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        RoomDatabase roomDatabase = this.this$0;
        sQLiteConnection.getClass();
        switch (i) {
            case 0:
                ContextsKt.execSQL(sQLiteConnection, "PRAGMA foreign_keys = ON");
                ((WorkDatabase_Impl) roomDatabase).internalInitInvalidationTracker(sQLiteConnection);
                break;
            default:
                int i2 = AppDatabase_Impl.$r8$clinit;
                ((AppDatabase_Impl) roomDatabase).internalInitInvalidationTracker(sQLiteConnection);
                break;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onPostMigrate(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onPreMigrate(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
        switch (i) {
            case 0:
                OperationKt.dropFtsSyncTriggers(sQLiteConnection);
                break;
            default:
                OperationKt.dropFtsSyncTriggers(sQLiteConnection);
                break;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection sQLiteConnection) {
        switch (this.$r8$classId) {
            case 0:
                return onValidateSchema$androidx$work$impl$WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(sQLiteConnection);
            default:
                sQLiteConnection.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("authority", new TableInfo.Column("authority", "TEXT", true, 0, null, 1));
                linkedHashMap.put("lang", new TableInfo.Column("lang", "TEXT", true, 0, null, 1));
                linkedHashMap.put("apiTitle", new TableInfo.Column("apiTitle", "TEXT", true, 0, null, 1));
                linkedHashMap.put("displayTitle", new TableInfo.Column("displayTitle", "TEXT", true, 0, null, 1));
                linkedHashMap.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap.put("namespace", new TableInfo.Column("namespace", "TEXT", true, 0, null, 1));
                linkedHashMap.put("timestamp", new TableInfo.Column("timestamp", "INTEGER", true, 0, null, 1));
                linkedHashMap.put("source", new TableInfo.Column("source", "INTEGER", true, 0, null, 1));
                LinkedHashSet m = ViewSizeResolver$CC.m(linkedHashMap, "prevId", new TableInfo.Column("prevId", "INTEGER", true, 0, null, 1));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add(new TableInfo.Index("index_HistoryEntry_lang_namespace_apiTitle", false, Room.listOf((Object[]) new String[]{"lang", "namespace", "apiTitle"}), Room.listOf((Object[]) new String[]{"ASC", "ASC", "ASC"})));
                TableInfo tableInfo = new TableInfo("HistoryEntry", linkedHashMap, m, linkedHashSet);
                TableInfo read = UStringsKt.read(sQLiteConnection, "HistoryEntry");
                if (!tableInfo.equals(read)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("HistoryEntry(org.wikipedia.history.HistoryEntry).\n Expected:\n", tableInfo, "\n Found:\n", read), false);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("lang", new TableInfo.Column("lang", "TEXT", true, 1, null, 1));
                linkedHashMap2.put("namespace", new TableInfo.Column("namespace", "TEXT", true, 2, null, 1));
                linkedHashMap2.put("apiTitle", new TableInfo.Column("apiTitle", "TEXT", true, 3, null, 1));
                linkedHashMap2.put("imageName", new TableInfo.Column("imageName", "TEXT", false, 0, null, 1));
                linkedHashMap2.put("description", new TableInfo.Column("description", "TEXT", false, 0, null, 1));
                linkedHashMap2.put("timeSpentSec", new TableInfo.Column("timeSpentSec", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("geoLat", new TableInfo.Column("geoLat", "REAL", true, 0, null, 1));
                LinkedHashSet m2 = ViewSizeResolver$CC.m(linkedHashMap2, "geoLon", new TableInfo.Column("geoLon", "REAL", true, 0, null, 1));
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                linkedHashSet2.add(new TableInfo.Index("index_PageImage_lang_namespace_apiTitle", false, Room.listOf((Object[]) new String[]{"lang", "namespace", "apiTitle"}), Room.listOf((Object[]) new String[]{"ASC", "ASC", "ASC"})));
                TableInfo tableInfo2 = new TableInfo("PageImage", linkedHashMap2, m2, linkedHashSet2);
                TableInfo read2 = UStringsKt.read(sQLiteConnection, "PageImage");
                if (!tableInfo2.equals(read2)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("PageImage(org.wikipedia.pageimages.db.PageImage).\n Expected:\n", tableInfo2, "\n Found:\n", read2), false);
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                linkedHashMap3.put("text", new TableInfo.Column("text", "TEXT", true, 1, null, 1));
                TableInfo tableInfo3 = new TableInfo("RecentSearch", linkedHashMap3, ViewSizeResolver$CC.m(linkedHashMap3, "timestamp", new TableInfo.Column("timestamp", "INTEGER", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read3 = UStringsKt.read(sQLiteConnection, "RecentSearch");
                if (!tableInfo3.equals(read3)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("RecentSearch(org.wikipedia.search.db.RecentSearch).\n Expected:\n", tableInfo3, "\n Found:\n", read3), false);
                }
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                TableInfo tableInfo4 = new TableInfo("TalkPageSeen", linkedHashMap4, ViewSizeResolver$CC.m(linkedHashMap4, "sha", new TableInfo.Column("sha", "TEXT", true, 1, null, 1)), new LinkedHashSet());
                TableInfo read4 = UStringsKt.read(sQLiteConnection, "TalkPageSeen");
                if (!tableInfo4.equals(read4)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("TalkPageSeen(org.wikipedia.talk.db.TalkPageSeen).\n Expected:\n", tableInfo4, "\n Found:\n", read4), false);
                }
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                linkedHashMap5.put("summary", new TableInfo.Column("summary", "TEXT", true, 1, null, 1));
                TableInfo tableInfo5 = new TableInfo("EditSummary", linkedHashMap5, ViewSizeResolver$CC.m(linkedHashMap5, "lastUsed", new TableInfo.Column("lastUsed", "INTEGER", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read5 = UStringsKt.read(sQLiteConnection, "EditSummary");
                if (!tableInfo5.equals(read5)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("EditSummary(org.wikipedia.edit.db.EditSummary).\n Expected:\n", tableInfo5, "\n Found:\n", read5), false);
                }
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                linkedHashMap6.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap6.put("url", new TableInfo.Column("url", "TEXT", true, 0, null, 1));
                linkedHashMap6.put("lang", new TableInfo.Column("lang", "TEXT", true, 0, null, 1));
                linkedHashMap6.put("path", new TableInfo.Column("path", "TEXT", true, 0, null, 1));
                linkedHashMap6.put("status", new TableInfo.Column("status", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo6 = new TableInfo("OfflineObject", linkedHashMap6, ViewSizeResolver$CC.m(linkedHashMap6, "usedByStr", new TableInfo.Column("usedByStr", "TEXT", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read6 = UStringsKt.read(sQLiteConnection, "OfflineObject");
                if (!tableInfo6.equals(read6)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("OfflineObject(org.wikipedia.offline.db.OfflineObject).\n Expected:\n", tableInfo6, "\n Found:\n", read6), false);
                }
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                linkedHashMap7.put("listTitle", new TableInfo.Column("listTitle", "TEXT", true, 0, null, 1));
                linkedHashMap7.put("description", new TableInfo.Column("description", "TEXT", false, 0, null, 1));
                linkedHashMap7.put("mtime", new TableInfo.Column("mtime", "INTEGER", true, 0, null, 1));
                linkedHashMap7.put("atime", new TableInfo.Column("atime", "INTEGER", true, 0, null, 1));
                linkedHashMap7.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap7.put("sizeBytes", new TableInfo.Column("sizeBytes", "INTEGER", true, 0, null, 1));
                linkedHashMap7.put("dirty", new TableInfo.Column("dirty", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo7 = new TableInfo("ReadingList", linkedHashMap7, ViewSizeResolver$CC.m(linkedHashMap7, "remoteId", new TableInfo.Column("remoteId", "INTEGER", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read7 = UStringsKt.read(sQLiteConnection, "ReadingList");
                if (!tableInfo7.equals(read7)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("ReadingList(org.wikipedia.readinglist.database.ReadingList).\n Expected:\n", tableInfo7, "\n Found:\n", read7), false);
                }
                LinkedHashMap linkedHashMap8 = new LinkedHashMap();
                linkedHashMap8.put("wiki", new TableInfo.Column("wiki", "TEXT", true, 0, null, 1));
                linkedHashMap8.put("namespace", new TableInfo.Column("namespace", "INTEGER", true, 0, null, 1));
                linkedHashMap8.put("displayTitle", new TableInfo.Column("displayTitle", "TEXT", true, 0, null, 1));
                linkedHashMap8.put("apiTitle", new TableInfo.Column("apiTitle", "TEXT", true, 0, null, 1));
                linkedHashMap8.put("description", new TableInfo.Column("description", "TEXT", false, 0, null, 1));
                linkedHashMap8.put("thumbUrl", new TableInfo.Column("thumbUrl", "TEXT", false, 0, null, 1));
                linkedHashMap8.put("listId", new TableInfo.Column("listId", "INTEGER", true, 0, null, 1));
                linkedHashMap8.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap8.put("mtime", new TableInfo.Column("mtime", "INTEGER", true, 0, null, 1));
                linkedHashMap8.put("atime", new TableInfo.Column("atime", "INTEGER", true, 0, null, 1));
                linkedHashMap8.put("offline", new TableInfo.Column("offline", "INTEGER", true, 0, null, 1));
                linkedHashMap8.put("status", new TableInfo.Column("status", "INTEGER", true, 0, null, 1));
                linkedHashMap8.put("sizeBytes", new TableInfo.Column("sizeBytes", "INTEGER", true, 0, null, 1));
                linkedHashMap8.put("lang", new TableInfo.Column("lang", "TEXT", true, 0, null, 1));
                linkedHashMap8.put("revId", new TableInfo.Column("revId", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo8 = new TableInfo("ReadingListPage", linkedHashMap8, ViewSizeResolver$CC.m(linkedHashMap8, "remoteId", new TableInfo.Column("remoteId", "INTEGER", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read8 = UStringsKt.read(sQLiteConnection, "ReadingListPage");
                if (!tableInfo8.equals(read8)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("ReadingListPage(org.wikipedia.readinglist.database.ReadingListPage).\n Expected:\n", tableInfo8, "\n Found:\n", read8), false);
                }
                LinkedHashMap linkedHashMap9 = new LinkedHashMap();
                linkedHashMap9.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap9.put("wiki", new TableInfo.Column("wiki", "TEXT", true, 2, null, 1));
                linkedHashMap9.put("read", new TableInfo.Column("read", "TEXT", false, 0, null, 1));
                linkedHashMap9.put("category", new TableInfo.Column("category", "TEXT", true, 0, null, 1));
                linkedHashMap9.put("type", new TableInfo.Column("type", "TEXT", true, 0, null, 1));
                linkedHashMap9.put("revid", new TableInfo.Column("revid", "INTEGER", true, 0, null, 1));
                linkedHashMap9.put("title", new TableInfo.Column("title", "TEXT", false, 0, null, 1));
                linkedHashMap9.put("agent", new TableInfo.Column("agent", "TEXT", false, 0, null, 1));
                linkedHashMap9.put("timestamp", new TableInfo.Column("timestamp", "TEXT", false, 0, null, 1));
                TableInfo tableInfo9 = new TableInfo("Notification", linkedHashMap9, ViewSizeResolver$CC.m(linkedHashMap9, "contents", new TableInfo.Column("contents", "TEXT", false, 0, null, 1)), new LinkedHashSet());
                TableInfo read9 = UStringsKt.read(sQLiteConnection, "Notification");
                if (!tableInfo9.equals(read9)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("Notification(org.wikipedia.notifications.db.Notification).\n Expected:\n", tableInfo9, "\n Found:\n", read9), false);
                }
                LinkedHashMap linkedHashMap10 = new LinkedHashMap();
                linkedHashMap10.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap10.put("type", new TableInfo.Column("type", "INTEGER", true, 0, null, 1));
                linkedHashMap10.put("order", new TableInfo.Column("order", "INTEGER", true, 0, null, 1));
                linkedHashMap10.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, 1));
                linkedHashMap10.put("subject", new TableInfo.Column("subject", "TEXT", true, 0, null, 1));
                TableInfo tableInfo10 = new TableInfo("TalkTemplate", linkedHashMap10, ViewSizeResolver$CC.m(linkedHashMap10, "message", new TableInfo.Column("message", "TEXT", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read10 = UStringsKt.read(sQLiteConnection, "TalkTemplate");
                if (!tableInfo10.equals(read10)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("TalkTemplate(org.wikipedia.talk.db.TalkTemplate).\n Expected:\n", tableInfo10, "\n Found:\n", read10), false);
                }
                LinkedHashMap linkedHashMap11 = new LinkedHashMap();
                linkedHashMap11.put("year", new TableInfo.Column("year", "INTEGER", true, 1, null, 1));
                linkedHashMap11.put("month", new TableInfo.Column("month", "INTEGER", true, 2, null, 1));
                linkedHashMap11.put("title", new TableInfo.Column("title", "TEXT", true, 3, null, 1));
                linkedHashMap11.put("lang", new TableInfo.Column("lang", "TEXT", true, 4, null, 1));
                TableInfo tableInfo11 = new TableInfo("Category", linkedHashMap11, ViewSizeResolver$CC.m(linkedHashMap11, "count", new TableInfo.Column("count", "INTEGER", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read11 = UStringsKt.read(sQLiteConnection, "Category");
                if (!tableInfo11.equals(read11)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("Category(org.wikipedia.categories.db.Category).\n Expected:\n", tableInfo11, "\n Found:\n", read11), false);
                }
                LinkedHashMap linkedHashMap12 = new LinkedHashMap();
                linkedHashMap12.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap12.put("gameName", new TableInfo.Column("gameName", "INTEGER", true, 0, null, 1));
                linkedHashMap12.put("language", new TableInfo.Column("language", "TEXT", true, 0, null, 1));
                linkedHashMap12.put("year", new TableInfo.Column("year", "INTEGER", true, 0, null, 1));
                linkedHashMap12.put("month", new TableInfo.Column("month", "INTEGER", true, 0, null, 1));
                linkedHashMap12.put("day", new TableInfo.Column("day", "INTEGER", true, 0, null, 1));
                linkedHashMap12.put("score", new TableInfo.Column("score", "INTEGER", true, 0, null, 1));
                linkedHashMap12.put("playType", new TableInfo.Column("playType", "INTEGER", true, 0, null, 1));
                linkedHashMap12.put("gameData", new TableInfo.Column("gameData", "TEXT", false, 0, null, 1));
                linkedHashMap12.put("status", new TableInfo.Column("status", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo12 = new TableInfo("DailyGameHistory", linkedHashMap12, ViewSizeResolver$CC.m(linkedHashMap12, "currentQuestionIndex", new TableInfo.Column("currentQuestionIndex", "INTEGER", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read12 = UStringsKt.read(sQLiteConnection, "DailyGameHistory");
                if (!tableInfo12.equals(read12)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("DailyGameHistory(org.wikipedia.games.db.DailyGameHistory).\n Expected:\n", tableInfo12, "\n Found:\n", read12), false);
                }
                LinkedHashMap linkedHashMap13 = new LinkedHashMap();
                linkedHashMap13.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap13.put("wiki", new TableInfo.Column("wiki", "TEXT", true, 0, null, 1));
                linkedHashMap13.put("lang", new TableInfo.Column("lang", "TEXT", true, 0, null, 1));
                linkedHashMap13.put("namespace", new TableInfo.Column("namespace", "INTEGER", true, 0, null, 1));
                linkedHashMap13.put("timestamp", new TableInfo.Column("timestamp", "INTEGER", true, 0, null, 1));
                linkedHashMap13.put("apiTitle", new TableInfo.Column("apiTitle", "TEXT", true, 0, null, 1));
                linkedHashMap13.put("displayTitle", new TableInfo.Column("displayTitle", "TEXT", true, 0, null, 1));
                linkedHashMap13.put("description", new TableInfo.Column("description", "TEXT", false, 0, null, 1));
                linkedHashMap13.put("thumbUrl", new TableInfo.Column("thumbUrl", "TEXT", false, 0, null, 1));
                linkedHashMap13.put("status", new TableInfo.Column("status", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo13 = new TableInfo("RecommendedPage", linkedHashMap13, ViewSizeResolver$CC.m(linkedHashMap13, "extract", new TableInfo.Column("extract", "TEXT", false, 0, null, 1)), new LinkedHashSet());
                TableInfo read13 = UStringsKt.read(sQLiteConnection, "RecommendedPage");
                if (!tableInfo13.equals(read13)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("RecommendedPage(org.wikipedia.readinglist.database.RecommendedPage).\n Expected:\n", tableInfo13, "\n Found:\n", read13), false);
                }
                LinkedHashMap linkedHashMap14 = new LinkedHashMap();
                TableInfo tableInfo14 = new TableInfo("InterestTopic", linkedHashMap14, ViewSizeResolver$CC.m(linkedHashMap14, "topicId", new TableInfo.Column("topicId", "TEXT", true, 1, null, 1)), new LinkedHashSet());
                TableInfo read14 = UStringsKt.read(sQLiteConnection, "InterestTopic");
                if (!tableInfo14.equals(read14)) {
                    return new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("InterestTopic(org.wikipedia.feed.personalization.db.entity.InterestTopic).\n Expected:\n", tableInfo14, "\n Found:\n", read14), false);
                }
                LinkedHashMap linkedHashMap15 = new LinkedHashMap();
                linkedHashMap15.put("apiTitle", new TableInfo.Column("apiTitle", "TEXT", true, 1, null, 1));
                linkedHashMap15.put("lang", new TableInfo.Column("lang", "TEXT", true, 2, null, 1));
                linkedHashMap15.put("namespace", new TableInfo.Column("namespace", "INTEGER", true, 3, null, 1));
                linkedHashMap15.put("displayTitle", new TableInfo.Column("displayTitle", "TEXT", true, 0, null, 1));
                linkedHashMap15.put("description", new TableInfo.Column("description", "TEXT", true, 0, null, 1));
                TableInfo tableInfo15 = new TableInfo("InterestArticle", linkedHashMap15, ViewSizeResolver$CC.m(linkedHashMap15, "thumbUrl", new TableInfo.Column("thumbUrl", "TEXT", true, 0, null, 1)), new LinkedHashSet());
                TableInfo read15 = UStringsKt.read(sQLiteConnection, "InterestArticle");
                return !tableInfo15.equals(read15) ? new RoomOpenDelegate.ValidationResult(ViewSizeResolver$CC.m("InterestArticle(org.wikipedia.feed.personalization.db.entity.InterestArticle).\n Expected:\n", tableInfo15, "\n Found:\n", read15), false) : new RoomOpenDelegate.ValidationResult((String) null, true);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(AppDatabase_Impl appDatabase_Impl) {
        super(34, "b6c7b5a53187eaa550798555db600785", "c1e56b502c218a42f6b77388d1961ee3");
        this.this$0 = appDatabase_Impl;
    }
}
